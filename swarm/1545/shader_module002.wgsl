struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(false, true, false, false), 1u, vec3<f32>(450f, -1000f, 721f)), Struct_1(vec4<bool>(false, false, true, true), 55795u, vec3<f32>(530f, 1336f, -1814f)), Struct_1(vec4<bool>(true, true, false, true), 68927u, vec3<f32>(-1046f, -1234f, -1604f)), Struct_1(vec4<bool>(true, true, true, false), 1u, vec3<f32>(-531f, 1000f, 344f)), Struct_1(vec4<bool>(false, true, false, true), 0u, vec3<f32>(-173f, 337f, 1000f)), Struct_1(vec4<bool>(true, true, true, true), 26887u, vec3<f32>(-655f, -1622f, 770f)), Struct_1(vec4<bool>(true, true, true, false), 1u, vec3<f32>(-314f, -188f, 1038f)), Struct_1(vec4<bool>(false, false, true, true), 1u, vec3<f32>(-348f, -1473f, -810f)), Struct_1(vec4<bool>(false, false, true, true), 44210u, vec3<f32>(-1136f, 669f, -114f)), Struct_1(vec4<bool>(true, true, true, true), 42980u, vec3<f32>(-1697f, -1205f, -980f)), Struct_1(vec4<bool>(true, false, true, true), 1u, vec3<f32>(1138f, 736f, -1411f)), Struct_1(vec4<bool>(false, true, false, true), 2558u, vec3<f32>(-319f, -1162f, -1000f)), Struct_1(vec4<bool>(true, false, true, true), 14451u, vec3<f32>(299f, -305f, -355f)), Struct_1(vec4<bool>(true, false, true, true), 58584u, vec3<f32>(184f, 1564f, 144f)), Struct_1(vec4<bool>(true, true, false, true), 4294967295u, vec3<f32>(-1339f, -613f, 1592f)), Struct_1(vec4<bool>(false, false, false, true), 1u, vec3<f32>(497f, 916f, -916f)), Struct_1(vec4<bool>(false, true, false, false), 33897u, vec3<f32>(1733f, -1990f, -1492f)), Struct_1(vec4<bool>(false, true, false, true), 79003u, vec3<f32>(1506f, 468f, -1000f)), Struct_1(vec4<bool>(true, false, true, false), 0u, vec3<f32>(-304f, -1430f, -509f)), Struct_1(vec4<bool>(true, true, false, false), 48183u, vec3<f32>(588f, -1300f, -1448f)), Struct_1(vec4<bool>(false, false, false, true), 59979u, vec3<f32>(1273f, -1143f, -134f)), Struct_1(vec4<bool>(true, true, false, false), 55067u, vec3<f32>(782f, 1263f, 1143f)));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<u32, 16> = array<u32, 16>(0u, 0u, 1u, 8819u, 93518u, 40758u, 1u, 46598u, 50429u, 1u, 904u, 0u, 0u, 2842u, 1u, 39399u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = -2147483647i ^ u_input.c;
    global2 = array<Struct_1, 29>();
    global1 = !select(arg_2.a.yxy, !arg_2.a.xxy, any(select(vec4<bool>(global1.x, global1.x, arg_0.x, true), !arg_2.a, arg_2.a.x)));
    return ~arg_2.b;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    return ~func_3(!vec2<bool>(u_input.a < u_input.c, var_0.a.x), arg_0.c.x, Struct_1(!(!var_0.a), _wgslsmith_add_u32(2990u, select(var_0.b, 1u, global1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.x, 1000f, arg_0.c.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    var var_0 = global1.x;
    global0 = array<Struct_1, 22>();
    var_0 = true;
    var var_1 = !global1.x;
    var var_2 = arg_0;
    return vec3<bool>(!(all(arg_0.a.xwz) == arg_0.a.x), var_2.a.x, arg_0.a.x == true);
}

fn func_1() -> vec3<bool> {
    global1 = func_4(Struct_1(!(!vec4<bool>(global1.x, false, false, global1.x)), func_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 16u)] << (1u % 32u), 22u)]), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1027f - -328f), -388f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -677f))))), _wgslsmith_mult_u32(~u_input.d.x >> (_wgslsmith_mod_u32(func_2(Struct_1(vec4<bool>(global1.x, global1.x, global1.x, global1.x), 3694u, vec3<f32>(-1000f, 273f, -362f))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)] << (u_input.d.x % 32u)) % 32u), ~u_input.d.x));
    global3 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(f32(-1f) * -121f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1365f, -456f)), !global1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1146f, -310f), vec2<f32>(-473f, 1988f)))))));
    var var_1 = vec2<bool>(global1.x, false);
    var var_2 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    return select(func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.d.yy, ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 24771u), u_input.d.yy)), 29u)], select(4294967295u, 4294967295u, select(select(true, true, global1.x), !var_1.x, 51006i <= u_input.c))), vec3<bool>(false, var_2.x >= _wgslsmith_f_op_f32(1757f + _wgslsmith_f_op_f32(-var_0.x)), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(365f)), _wgslsmith_f_op_f32(exp2(var_0.x))) - var_0.x) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global1 = select(!vec3<bool>(all(vec4<bool>(true, global1.x, global1.x, global1.x)), !global1.x, false), select(select(!vec3<bool>(true, true, global1.x), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false), global1.x), false), select(select(vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x, global1.x), any(vec2<bool>(true, false))), vec3<bool>(false, true, global1.x), !all(vec3<bool>(false, false, false))), global1.x), !vec3<bool>(!any(global1.yz), true || !global1.x, true));
    global0 = array<Struct_1, 22>();
    global1 = !select(select(!vec3<bool>(true, false, global1.x), vec3<bool>(true, all(vec3<bool>(global1.x, true, false)), any(vec2<bool>(false, true))), (global3[_wgslsmith_index_u32(56086u, 16u)] ^ 0u) <= 1u), select(vec3<bool>(global1.x, any(vec4<bool>(true, false, false, true)), true), func_1(), select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, true), func_1())), !(!(!vec3<bool>(true, global1.x, true))));
    let var_0 = _wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.d.yy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.xww), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1768f + -2897f) - _wgslsmith_f_op_f32(-814f + -1294f)) + -742f)));
}

