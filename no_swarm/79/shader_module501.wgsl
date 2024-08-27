struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(2147483647i, Struct_2(false, 436f), Struct_2(false, 797f), vec2<i32>(i32(-2147483648), -16672i)), Struct_3(1i, Struct_2(false, 348f), Struct_2(true, 440f), vec2<i32>(1i, 0i)), Struct_3(-39742i, Struct_2(true, -1000f), Struct_2(true, -703f), vec2<i32>(1i, 0i)), Struct_3(1i, Struct_2(true, 423f), Struct_2(false, -642f), vec2<i32>(1i, 28650i)), Struct_3(74994i, Struct_2(true, 167f), Struct_2(false, -203f), vec2<i32>(-39341i, 34528i)), Struct_3(8891i, Struct_2(true, -265f), Struct_2(true, -1054f), vec2<i32>(-1i, 15419i)), Struct_3(-1i, Struct_2(true, -1104f), Struct_2(true, -544f), vec2<i32>(11589i, 15473i)), Struct_3(1i, Struct_2(true, -377f), Struct_2(true, 542f), vec2<i32>(-1i, 1i)), Struct_3(2147483647i, Struct_2(true, 1224f), Struct_2(false, -1357f), vec2<i32>(1i, -1i)), Struct_3(1i, Struct_2(true, -424f), Struct_2(false, 291f), vec2<i32>(1i, 11746i)), Struct_3(-1i, Struct_2(true, 663f), Struct_2(false, 892f), vec2<i32>(42844i, 31723i)), Struct_3(24658i, Struct_2(false, -1010f), Struct_2(false, 1000f), vec2<i32>(-18553i, 6432i)), Struct_3(36873i, Struct_2(true, 359f), Struct_2(false, -1075f), vec2<i32>(71036i, -17044i)), Struct_3(2147483647i, Struct_2(true, 396f), Struct_2(true, 548f), vec2<i32>(-56682i, 0i)), Struct_3(-9960i, Struct_2(true, -538f), Struct_2(true, -1225f), vec2<i32>(2147483647i, 5472i)), Struct_3(307i, Struct_2(true, -413f), Struct_2(true, 2738f), vec2<i32>(-35126i, 16735i)), Struct_3(28253i, Struct_2(true, 272f), Struct_2(false, 155f), vec2<i32>(1i, -48389i)), Struct_3(-1i, Struct_2(true, 1000f), Struct_2(true, -1000f), vec2<i32>(-70211i, 6389i)), Struct_3(3884i, Struct_2(false, 1423f), Struct_2(true, -757f), vec2<i32>(2147483647i, -13684i)), Struct_3(1472i, Struct_2(false, -686f), Struct_2(true, -327f), vec2<i32>(-1i, 0i)), Struct_3(14105i, Struct_2(false, 333f), Struct_2(true, 643f), vec2<i32>(71943i, -6230i)), Struct_3(14408i, Struct_2(false, 240f), Struct_2(true, 1730f), vec2<i32>(-16300i, -1i)), Struct_3(0i, Struct_2(true, 1000f), Struct_2(false, 522f), vec2<i32>(1i, -10091i)), Struct_3(1i, Struct_2(true, 494f), Struct_2(false, -130f), vec2<i32>(-1i, 8338i)), Struct_3(32296i, Struct_2(false, -1668f), Struct_2(false, 1651f), vec2<i32>(1i, 62869i)), Struct_3(i32(-2147483648), Struct_2(true, 263f), Struct_2(false, 889f), vec2<i32>(1i, i32(-2147483648))), Struct_3(-1i, Struct_2(false, -1606f), Struct_2(false, -1000f), vec2<i32>(1i, 48543i)), Struct_3(9996i, Struct_2(false, -2181f), Struct_2(true, -1000f), vec2<i32>(-31567i, 20667i)), Struct_3(i32(-2147483648), Struct_2(false, -1438f), Struct_2(false, 2066f), vec2<i32>(-1i, 3343i)), Struct_3(-1i, Struct_2(true, -403f), Struct_2(false, -842f), vec2<i32>(i32(-2147483648), 3718i)));

var<private> global2: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1274f, arg_1) * vec2<f32>(-447f, arg_1))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, -1558f))) + vec2<f32>(arg_1, -189f)), vec2<f32>(arg_1, -1000f), vec2<bool>(true, true))))));
    global0 = array<u32, 21>();
    global2 = Struct_5(56424i);
    var var_1 = Struct_5(2147483647i);
    global0 = array<u32, 21>();
    return 460f;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_5(~global2.a);
    var var_1 = true;
    global1 = array<Struct_3, 30>();
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(~1u), 21u)], _wgslsmith_mod_u32(select(u_input.a.x, 1u, false), 31964u << (u_input.b.x % 32u))), u_input.b.x), 4294967295u);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1871f, -1139f)) * vec2<f32>(432f, -1244f))))));
    return any(select(select(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true, any(vec4<bool>(true, false, false, false))), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), (global2.a << (1u % 32u)) > (i32(-1i) * -21387i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), any(vec4<bool>(false, true, true, true))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false))), 517f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1313f)))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_3, 30>();
    global0 = array<u32, 21>();
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, false, true))), select(!func_3(vec4<i32>(global2.a, -31122i, u_input.c, -40697i)), any(vec4<bool>(true, true, true, true)), true));
    return Struct_1(true, !vec4<bool>(true, !select(true, var_0.x, true), func_3(vec4<i32>(40332i, -2147483647i, 2147483647i, global2.a) | vec4<i32>(u_input.c, global2.a, 1790i, u_input.c)), select(all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), func_3(vec4<i32>(-1i, -1i, global2.a, 1i)), any(vec2<bool>(true, var_0.x)))), !(!all(vec3<bool>(true, var_0.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(func_1(~(~global0[_wgslsmith_index_u32(85226u, 21u)] << (79161u % 32u)), -247f)));
    var var_1 = !var_0.a;
    let var_2 = 16982i;
    var var_3 = func_2();
    var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(942f, _wgslsmith_f_op_f32(751f * var_0.b))), vec2<bool>(var_3.b.x, false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, 1156f))))) * vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-259f))))));
    var var_5 = 17362u >> (_wgslsmith_sub_u32(~countOneBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(97029u, 21u)], global0[_wgslsmith_index_u32(39717u, 21u)])), 0u) % 32u);
    let var_6 = ~global0[_wgslsmith_index_u32(0u & ~_wgslsmith_add_u32(9930u, u_input.b.x), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1150f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2023f, var_4.x))))), var_0.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 1u, 46149u, u_input.a.x)), vec4<u32>(7940u, var_6, u_input.b.x, global0[_wgslsmith_index_u32(var_6, 21u)])), 44814u), (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(var_6, 21u)]), 21u)] << (var_6 % 32u)) >> (~1u % 32u));
}

