struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-283f, 2147483647i), Struct_2(-752f, -35485i), Struct_2(-527f, 0i), Struct_2(903f, 2147483647i), Struct_2(495f, 0i), Struct_2(-281f, 1i), Struct_2(-720f, -65224i), Struct_2(294f, 15734i));

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, false, false);

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(1348f, 161f, 212f), vec3<f32>(-1810f, -882f, -582f), vec3<f32>(1000f, 539f, -420f), vec3<f32>(-1320f, -286f, -1115f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> u32 {
    global1 = array<bool, 8>();
    var var_0 = select(!vec4<bool>(true, any(select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_3.c), arg_1)), select(select(global1[_wgslsmith_index_u32(77610u, 8u)], false, false), false, true), global1[_wgslsmith_index_u32(~31561u, 8u)]), vec4<bool>(true || !(arg_3.b.b >= 38917u), true, 1u == ~(4294967295u & arg_3.b.c.x), false), select(!vec4<bool>(false || arg_2, arg_1, !arg_1, true), vec4<bool>(true, all(select(vec3<bool>(arg_3.c, false, arg_3.c), vec3<bool>(arg_3.c, true, arg_3.c), arg_2)), false, false), false));
    let var_1 = arg_3;
    let var_2 = 71910u;
    var_0 = vec4<bool>(arg_3.c, !arg_2, any(select(select(select(vec3<bool>(arg_1, arg_1, true), var_0.wxw, vec3<bool>(var_1.c, arg_2, false)), var_0.xwx, select(vec3<bool>(arg_3.c, arg_2, true), vec3<bool>(arg_1, arg_2, global1[_wgslsmith_index_u32(var_2, 8u)]), vec3<bool>(arg_1, false, true))), vec3<bool>(all(vec4<bool>(true, false, var_0.x, false)), all(var_0.xy), arg_1), var_0.wyz)), all(!(!vec2<bool>(var_1.c, global1[_wgslsmith_index_u32(var_2, 8u)]))));
    return 43109u;
}

fn func_2() -> f32 {
    var var_0 = vec4<u32>(1u, 66362u, _wgslsmith_add_u32(5560u, ~0u ^ func_3(global0[_wgslsmith_index_u32(1u, 8u)], !global1[_wgslsmith_index_u32(25389u, 8u)], false, Struct_3(Struct_1(20135i, 1u, vec2<u32>(20723u, 0u), u_input.a), Struct_1(-36495i, 4294967295u, vec2<u32>(1u, 0u), -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 8u)]))), func_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f + -766f) - -676f), max(9650i, u_input.a) ^ ~u_input.a), true, false & global1[_wgslsmith_index_u32(1u, 8u)], Struct_3(Struct_1(i32(-1i) * -67720i, 0u, vec2<u32>(42896u, 48231u), -u_input.a), Struct_1(~2147483647i, ~0u, ~vec2<u32>(92139u, 1u), 1i), !all(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 8u)])))));
    global0 = array<Struct_2, 8>();
    let var_1 = ~42076u;
    var var_2 = global0[_wgslsmith_index_u32(abs(countOneBits(5045u) ^ (_wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(41374u, var_0.x)) << (var_0.x % 32u))) >> ((~_wgslsmith_mod_u32(reverseBits(var_0.x), var_0.x) | 46042u) % 32u), 8u)];
    var_2 = Struct_2(_wgslsmith_f_op_f32(-686f * var_2.a), reverseBits(-(~var_2.b | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -14793i, u_input.a, var_2.b), vec4<i32>(-2147483647i, 37401i, var_2.b, -25916i)))));
    return _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - -494f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_2.a) * 856f), global1[_wgslsmith_index_u32(4294967295u, 8u)] && all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_1, 8u)]))))))));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = !vec2<bool>(!global1[_wgslsmith_index_u32(10262u, 8u)], false);
    global0 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-2041f - -2512f), _wgslsmith_f_op_f32(sign(-729f)), _wgslsmith_f_op_f32(102f + 537f), _wgslsmith_div_f32(-157f, 706f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, -127f, -874f, 2204f))))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-880f - -176f), _wgslsmith_f_op_f32(select(996f, -1000f, true)), _wgslsmith_f_op_f32(step(694f, 352f)), _wgslsmith_f_op_f32(-1517f * 580f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-185f, -395f)) * _wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(485f, 2055f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -665f)))));
    return select(var_0, select(var_0, !var_0, !vec2<bool>(select(var_0.x, true, true), false)), vec2<bool>(select((i32(-1i) * -15420i) == u_input.a, false, !(arg_0 > 0u)), any(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 8u)] & var_0.x, true, true, global1[_wgslsmith_index_u32(arg_0, 8u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u);
    let var_1 = _wgslsmith_mult_vec2_i32(min(max(vec2<i32>(~(-1i), 0i), max(-vec2<i32>(-1i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a, 57337i)))), vec2<i32>(u_input.a, -1i) & (firstLeadingBit(vec2<i32>(56389i, -2147483647i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(23280i ^ u_input.a, u_input.a), -min(vec2<i32>(-16440i, -35561i), vec2<i32>(-50468i, u_input.a)))));
    let var_2 = Struct_3(Struct_1(var_1.x, ~(~1u), _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), var_0), ~vec2<u32>(1u, 0u)) ^ reverseBits(vec2<u32>(1u, 1u)), 0i), Struct_1(_wgslsmith_div_i32(-40231i, 2147483647i) ^ select(1i, 1i | u_input.a, true), ~1u, vec2<u32>(1u, 1u) << (~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(16036u, 4294967295u), false) % vec2<u32>(32u)), -46304i), !func_1(1u).x);
    global2 = array<vec3<f32>, 4>();
    var var_3 = vec3<i32>(~39320i, abs(min(~(-1i), var_1.x)), ~select(u_input.a, ~2147483647i, false));
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-1292f)), _wgslsmith_f_op_f32(-1000f - 1411f)))))), min(reverseBits(max(vec3<i32>(var_2.b.d, -22071i, 15676i), vec3<i32>(u_input.a, -38880i, -52342i))) ^ vec3<i32>(-64494i, 0i, 1i ^ u_input.a), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(10764i, u_input.a, -1i), vec3<i32>(var_2.b.a, u_input.a, u_input.a))) | -(~vec3<i32>(var_1.x, var_3.x, var_3.x))), _wgslsmith_mod_u32(_wgslsmith_add_u32(14538u, 0u), (countOneBits(var_2.b.c.x) & reverseBits(0u)) >> (~1u % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -2374f)), -1919f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(456f))))))), 1008f);
}

