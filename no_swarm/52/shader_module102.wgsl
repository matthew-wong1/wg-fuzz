struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<f32, 23> = array<f32, 23>(292f, 1223f, -116f, 381f, 413f, -159f, 2093f, 1752f, 480f, -188f, 663f, 1917f, -2107f, -820f, 1000f, 510f, -253f, 1470f, 701f, 2033f, 1523f, 542f, -239f);

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -1i, 48014i);

var<private> global3: u32 = 17978u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(-378f + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, global0[_wgslsmith_index_u32(arg_2.b, 29u)])) - _wgslsmith_f_op_f32(arg_0.x - -542f)), arg_1.a))));
    var var_1 = ~select(arg_2.b, arg_1.b, !arg_1.a);
    global0 = array<f32, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.xzw, vec3<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.b), 29u)])), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.b, 29u)]))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zwz - vec3<f32>(717f, global0[_wgslsmith_index_u32(arg_1.b, 29u)], 983f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_0.xxz, vec3<f32>(1000f, global1[_wgslsmith_index_u32(arg_2.b, 23u)], 257f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2188f, global0[_wgslsmith_index_u32(0u, 29u)], 497f) * arg_0.zyw))))), all(vec3<bool>(all(vec2<bool>(true, true)), arg_1.a | false, false)))));
    let var_3 = Struct_1(arg_3, arg_2.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)) * _wgslsmith_f_op_vec4_f32(-arg_0)) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f)), 976f, _wgslsmith_f_op_f32(1201f + _wgslsmith_f_op_f32(select(-1000f, -1001f, arg_2.a))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(abs(1673f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-273f - global0[_wgslsmith_index_u32(71277u, 29u)]), 1258f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(33687u, 29u)]))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 23u)] + global1[_wgslsmith_index_u32(1u, 23u)])))), _wgslsmith_f_op_f32(floor(-433f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1012f, -1000f, global0[_wgslsmith_index_u32(4294967295u, 29u)], -960f))) + _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(global0[_wgslsmith_index_u32(20454u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], -2154f, 1564f), Struct_1(true, 62340u), Struct_1(false, 1u), false)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    let var_2 = 42517u;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f))), global1[_wgslsmith_index_u32(~var_2 & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(80579u, 1u)), _wgslsmith_add_u32(1u, var_2), 4294967295u), 23u)], 2382f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1))), var_1, vec4<bool>(true, any(vec3<bool>(false, false, false)), (0u ^ var_2) != 0u, arg_1 >= u_input.b.x))));
    var var_3 = ~_wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(1i), 4552i), 2147483647i >> (~var_2 % 32u));
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, 4294967295u), vec3<u32>(3830u, var_2, 3493u)), var_2), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2) >> ((vec2<u32>(43613u, var_2) & vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), reverseBits(max(vec2<u32>(81785u, var_2), vec2<u32>(var_2, 4294967295u)))), 14594u), vec3<u32>(0u, 159263u, var_2) << (vec3<u32>(16970u, 1u, abs(var_2)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global3 = 11096u;
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_0.b, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_2(vec4<i32>(-34017i, 2147483647i, 60072i, 2147483647i), global2.x), vec3<u32>(46295u, 27404u, 3862u)), 29u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_2(min(vec4<i32>(36197i, global2.x, u_input.b.x, u_input.c.x), vec4<i32>(4020i, 1i, 24037i, -2147483647i)), -15548i), vec3<u32>(~25916u, ~arg_0.b, arg_0.b << (arg_0.b % 32u))), 29u)], 1033f));
    let var_2 = arg_0;
    global2 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, 1i, global2.x), vec3<i32>(-12934i, u_input.b.x, u_input.b.x), vec3<i32>(47159i, arg_1, 9238i)) | vec3<i32>(17181i, global2.x, 24576i), ~vec3<i32>(u_input.b.x, arg_1, -47726i)) >> ((~(vec3<u32>(11481u, 72964u, 1u) >> (vec3<u32>(arg_0.b, arg_0.b, 0u) % vec3<u32>(32u))) & ~(vec3<u32>(var_2.b, 1u, 1u) & vec3<u32>(arg_0.b, 51694u, 4294967295u))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-10840i, ~global2.x, abs(global2.x)), reverseBits(~vec3<i32>(u_input.a, -2147483647i, arg_1))));
    return Struct_1(!(!any(vec3<bool>(true, true, true))) && true, max(~var_2.b, min(func_2(select(vec4<i32>(u_input.a, u_input.c.x, global2.x, 13311i), vec4<i32>(u_input.a, 7949i, -2147483647i, -16580i), false), -1i).x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1028f * global1[_wgslsmith_index_u32(1u, 23u)]))), global0[_wgslsmith_index_u32(25528u, 29u)], -1128f);
    let var_1 = func_1(Struct_1(true, countOneBits(2224u)), -u_input.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(var_1.b, 23u)], global0[_wgslsmith_index_u32(var_1.b, 29u)]))), vec3<f32>(global1[_wgslsmith_index_u32(var_1.b, 23u)], global0[_wgslsmith_index_u32(var_1.b, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_1.b, 29u)], global1[_wgslsmith_index_u32(var_1.b, 23u)], -1494f)))))));
    var var_2 = vec3<i32>(~u_input.b.x ^ (~0i | firstTrailingBit(15522i & global2.x)), u_input.b.x << (_wgslsmith_sub_u32(var_1.b & func_1(var_1, 2147483647i).b, 71092u >> (var_1.b % 32u)) % 32u), u_input.b.x);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 51771i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2036f + -1025f) - _wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(75584u, 23u)]), _wgslsmith_f_op_f32(step(-1824f, var_0.x)), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_3.b, 23u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1021f, -1166f, var_0.x, var_0.x), var_1, Struct_1(var_1.a, var_3.b), true)).x))));
}

