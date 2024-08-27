struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 67366u;

var<private> global1: array<f32, 13> = array<f32, 13>(-473f, 261f, 312f, -1583f, 1041f, 1802f, -477f, 688f, 589f, 700f, -118f, 1732f, 173f);

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = array<f32, 13>();
    global3 = vec2<bool>(any(vec4<bool>(global3.x, any(vec3<bool>(true, true, true)), all(!vec4<bool>(true, false, global3.x, arg_0)), false)), any(select(!select(vec2<bool>(arg_0, global3.x), vec2<bool>(global3.x, global3.x), global3.x), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), !vec2<bool>(arg_0, true))));
    global0 = 0u;
    global1 = array<f32, 13>();
    let var_0 = vec3<bool>(true, any(vec4<bool>(global3.x, true, true, arg_0)), global2.a < (global2.a << (~reverseBits(u_input.d.x) % 32u)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a >> (~u_input.d.x % 32u), -12323i), ~u_input.a);
}

fn func_2() -> vec4<f32> {
    var var_0 = -(-vec4<i32>(global2.a, func_3(false), u_input.a.x, _wgslsmith_sub_i32(global2.a, 2147483647i)) | vec4<i32>(_wgslsmith_clamp_i32(~u_input.c, i32(-1i) * -21878i, ~0i), u_input.a.x, 0i, ~max(u_input.a.x, u_input.c)));
    let var_1 = (max(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(15426u, 47211u))), ~u_input.d.xy) << (u_input.d.zz % vec2<u32>(32u))) ^ u_input.d.zx;
    let var_2 = abs(~min(~(~var_1), _wgslsmith_mod_vec2_u32(var_1, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 40458u)))));
    var var_3 = true;
    var var_4 = 0u >> ((var_1.x & ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.x, var_1.x, var_2.x, 4294967295u), vec4<u32>(4294967295u, var_2.x, 4294967295u, var_1.x)), abs(vec4<u32>(u_input.b, 0u, var_1.x, u_input.b)))) % 32u);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(15910u, 13u)] - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_2.x, 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(36403u, var_1.x, 42970u, 10812u), vec4<u32>(4294967295u, 1u, 58285u, var_1.x)), _wgslsmith_clamp_u32(var_1.x, u_input.b, 94378u)), 13u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(526f + global1[_wgslsmith_index_u32(var_1.x, 13u)]))))), vec4<f32>(-1398f, 500f, 174f, _wgslsmith_f_op_f32(1336f + _wgslsmith_f_op_f32(ceil(-1765f)))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(18917u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(arg_2.x, 13u)], 561f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1045f, -552f, 1231f, -2033f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-874f, global1[_wgslsmith_index_u32(8107u, 13u)], 814f, global1[_wgslsmith_index_u32(arg_2.x, 13u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], 365f), vec4<f32>(-222f, -690f, -176f, 899f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, global1[_wgslsmith_index_u32(u_input.b, 13u)], 1000f, global1[_wgslsmith_index_u32(41871u, 13u)]))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()))), !(!(!(!vec4<bool>(global3.x, false, global3.x, global3.x))))));
    var_0 = vec4<f32>(var_0.x, -1399f, _wgslsmith_f_op_f32(-1743f - var_0.x), -482f);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~min(u_input.b, 28256u), 13u)]), global1[_wgslsmith_index_u32(arg_2.x, 13u)], -288f));
    var var_1 = !select(!vec3<bool>(true, any(vec4<bool>(true, true, false, global3.x)), any(vec4<bool>(true, global3.x, global3.x, global3.x))), !(!(!vec3<bool>(false, global3.x, false))), global3.x);
    var_0 = vec4<f32>(-655f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(1493u, 13u)], true | global3.x)))) + var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 13u)]);
    return Struct_1(arg_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_1(-(i32(-1i) * -2147483647i), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.x, u_input.a.x, global2.a), vec4<i32>(-10973i, 2041i, arg_0.x, u_input.c)), -vec4<i32>(global2.a, arg_0.x, u_input.c, -30187i)) & -arg_0.x, -42192i, _wgslsmith_mult_i32(global2.a, _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-7299i, arg_0.x, 21580i) >> (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))))), _wgslsmith_div_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(4294967295u, u_input.b)), ~min(vec2<u32>(u_input.b, u_input.b), u_input.d.xy)), (~u_input.d.yy << (~u_input.d.xz % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 11847u), _wgslsmith_div_u32(u_input.d.x, 60135u)) % vec2<u32>(32u))));
    let var_1 = 3822i;
    var var_2 = -2147483647i;
    var var_3 = func_1(var_0.a, (arg_0 & ~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a, var_1, u_input.c), arg_0)) | _wgslsmith_clamp_vec3_i32(arg_0, arg_0, vec3<i32>(-61839i << (u_input.d.x % 32u), -26291i, global2.a)), vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 63679u)));
    global3 = !(!vec2<bool>(!all(vec4<bool>(true, global3.x, global3.x, true)), any(!vec3<bool>(true, true, global3.x))));
    return func_1(_wgslsmith_div_i32(~_wgslsmith_add_i32(1i, countOneBits(2147483647i)), 2147483647i), arg_0, vec2<u32>(0u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(global3.x, true)), select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(global3.x, global3.x), global3.x), !select(vec2<bool>(true, true), vec2<bool>(global3.x, global3.x), vec2<bool>(true, false)), 4294967295u <= ~max(u_input.b, 0u));
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(-1i, -2311i) & -countOneBits(firstTrailingBit(1i)));
    let var_1 = func_4(-(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(1i, global2.a, 19704i), vec3<i32>(-8458i, global2.a, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-506f)), global1[_wgslsmith_index_u32(~39120u, 13u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(7181u, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)]) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)])) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(674f, -700f)))))), func_1(u_input.c, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.e, var_0, global2.a)), max(countOneBits(vec3<i32>(global2.a, 27038i, 68027i)), vec3<i32>(13692i, var_0, 1i))), vec2<u32>(u_input.b, max(1u, u_input.d.x))));
    var var_2 = var_1;
    global0 = ~reverseBits(firstTrailingBit(97034u));
    global2 = var_1;
    let var_3 = (abs(~_wgslsmith_clamp_u32(u_input.d.x, u_input.b, 54645u)) >> (52079u % 32u)) < 1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1451f, global1[_wgslsmith_index_u32(1u, 13u)], 541f, global1[_wgslsmith_index_u32(4294967295u, 13u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], 1104f, global1[_wgslsmith_index_u32(u_input.b, 13u)], -1211f) + vec4<f32>(2121f, global1[_wgslsmith_index_u32(1u, 13u)], -416f, global1[_wgslsmith_index_u32(1u, 13u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], 1267f, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], -1036f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1561f, global1[_wgslsmith_index_u32(u_input.b, 13u)], 937f, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<f32>(-1000f, 322f, -1190f, global1[_wgslsmith_index_u32(u_input.d.x, 13u)]))))), all(select(!vec3<bool>(global3.x, global3.x, false), select(vec3<bool>(true, false, var_3), vec3<bool>(global3.x, true, var_3), vec3<bool>(true, true, var_3)), select(vec3<bool>(global3.x, false, true), vec3<bool>(var_3, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec2<i32>(var_1.a << (4294967295u % 32u), ~(-9123i))), ~u_input.b);
}

