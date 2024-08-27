struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(489f, 503f, -1369f, -289f, -1042f, -159f, -343f, -167f, -337f, -2136f, 141f, -649f, -427f, 135f, -1047f, -689f, -874f, 1682f, -452f, 639f, 935f, -951f, -1537f, -627f, 1388f, -1353f, -115f, -1000f, -399f, 2051f, -1255f);

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(4294967295u, 844u, 8193u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(67683u, 1u, 1u), vec3<u32>(4294967295u, 32085u, 11539u), vec3<u32>(15588u, 4294967295u, 59853u), vec3<u32>(54008u, 43808u, 62142u), vec3<u32>(4294967295u, 7919u, 0u), vec3<u32>(1u, 5362u, 32017u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(32476u, 1u, 29335u), vec3<u32>(19691u, 4294967295u, 36172u));

var<private> global2: i32 = -26587i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    global0 = array<f32, 31>();
    let var_0 = Struct_4(Struct_3(Struct_1(arg_0.x), ~((vec2<u32>(27232u, 26556u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) ^ vec2<u32>(u_input.d, 79566u)), Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d, 31u)])), Struct_1(-652f)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 28561u), vec2<u32>(1u, 1u)) & _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(15743u, u_input.d)), vec2<u32>(70150u, 84406u))), u_input.d, Struct_2(arg_0.x));
    var var_1 = 1000f;
    var var_2 = var_0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(16105u, _wgslsmith_sub_u32(~98353u, u_input.d)), 31u)])) + _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = !any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(false, true, true)), all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-631f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))), vec2<f32>(global0[_wgslsmith_index_u32(1u, 31u)], -754f)), _wgslsmith_sub_i32(-40811i, _wgslsmith_add_i32(u_input.a, u_input.c.x))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(51064u, 32994u))), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 48801u) << (vec2<u32>(4294967295u, 21220u) % vec2<u32>(32u))))), 31u)]);
    global1 = array<vec3<u32>, 11>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 31u)]))))))));
    var var_2 = u_input.d;
    return _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.d, 1u)), select(countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(9276u, u_input.d), vec2<u32>(4294967295u, u_input.d))), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.d), abs(vec2<u32>(4294967295u, 18174u))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(41086u, u_input.d)), vec2<u32>(u_input.d, u_input.d)), true), true));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = u_input.d >> (firstLeadingBit(u_input.d) % 32u);
    let var_1 = _wgslsmith_div_vec4_i32(-(~select(u_input.c, u_input.c, vec4<bool>(true, true, true, false)) ^ _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, -34907i, u_input.a, u_input.b)), ~u_input.c)), (-u_input.c >> (~vec4<u32>(0u, var_0, 1u, u_input.d) % vec4<u32>(32u))) & u_input.c);
    global2 = i32(-1i) * -2147483647i;
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(4294967295u >> (var_0 % 32u)) & firstLeadingBit(~(func_2(vec4<i32>(var_1.x, 2147483647i, -308i, var_1.x)) >> (4294967295u % 32u))), 11u)];
    let var_3 = Struct_3(Struct_1(arg_0.a), vec2<u32>(min(_wgslsmith_mod_u32(35036u, u_input.d >> (u_input.d % 32u)), firstTrailingBit(abs(var_2.x))), ~1u), Struct_2(arg_0.a), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(35724u, 17556u), vec2<u32>(4294967295u, u_input.d))), 31u)]));
    return !select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false)) | true), vec4<bool>(false, true, true, any(vec3<bool>(true, true, true))), select(vec4<bool>(all(vec2<bool>(false, true)), true, false, all(vec3<bool>(true, true, false))), vec4<bool>(var_3.d.a != 996f, u_input.d <= u_input.d, false, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 11>();
    global0 = array<f32, 31>();
    let var_0 = !func_1(Struct_2(-912f));
    var var_1 = u_input.c;
    let var_2 = Struct_4(Struct_3(Struct_1(672f), vec2<u32>(~52949u >> (0u % 32u), countOneBits(u_input.d)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(34127u, 31u)])))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-987f, global0[_wgslsmith_index_u32(u_input.d, 31u)])))), ~(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.d), u_input.d) >> (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), 3505u, Struct_2(_wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(trunc(-1212f)))));
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_2.c, 31u)])) + _wgslsmith_f_op_f32(1598f + -620f))), ~vec2<u32>(var_2.a.b.x, _wgslsmith_clamp_u32(u_input.d, 1u, u_input.d)), var_2.a.c, Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(var_2.d.a))))), ~vec2<u32>(1u, ~92420u), 1u << (u_input.d % 32u), var_2.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_1.x, 2147483647i), -vec3<i32>(var_1.x, -1i, 2580i)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(21852i, 8535i, -2147483647i), var_1.wxz))));
}

