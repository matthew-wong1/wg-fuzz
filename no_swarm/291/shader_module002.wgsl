struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(284f, 1000f);

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(579f, 1000f, 583f, -396f), vec4<f32>(815f, -763f, -1000f, -1107f), vec4<f32>(435f, -394f, -482f, 446f), vec4<f32>(-1935f, -1070f, 1089f, 1073f), vec4<f32>(-883f, 746f, -102f, 922f), vec4<f32>(-522f, 479f, -759f, 1654f), vec4<f32>(488f, 1185f, -402f, -1000f), vec4<f32>(-2114f, -900f, 1000f, -1600f), vec4<f32>(-262f, 1640f, -1000f, -337f), vec4<f32>(1384f, 1195f, 1664f, -1000f), vec4<f32>(760f, 799f, -807f, -548f), vec4<f32>(983f, 776f, -409f, -1071f), vec4<f32>(445f, 280f, -1361f, -848f), vec4<f32>(-132f, 908f, -1117f, -711f), vec4<f32>(450f, 1662f, -1872f, 1039f), vec4<f32>(-435f, -317f, -487f, -386f));

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = array<vec4<f32>, 16>();
    global0 = vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_1.a));
    var var_0 = ~(~(arg_1.b ^ ~24677u));
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(arg_2.b, arg_1.b) << (~u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, u_input.b)), abs(~arg_2.b), 121609u), abs(u_input.b));
    var_0 = ~(~(~(~(~64541u))));
    return any(vec3<bool>(all(!vec4<bool>(false, false, true, arg_0)), true != !arg_0, true));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var_0 = all(!(!vec3<bool>(any(vec4<bool>(false, true, true, false)), false, func_3(true, Struct_1(arg_1.a, u_input.b.x), global2[_wgslsmith_index_u32(16383u, 18u)]))));
    var var_2 = select(vec3<bool>(!(!(u_input.d == arg_0.x)), _wgslsmith_f_op_f32(min(-248f, _wgslsmith_f_op_f32(trunc(200f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -766f)), false), select(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), false), true), vec3<bool>(true, true, true));
    let var_3 = select(select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.x, false, var_2.x), true), !vec4<bool>(true, false, false, func_3(false, Struct_1(1000f, u_input.b.x), Struct_1(global0.x, 0u))), vec4<bool>(true, true, var_2.x, false)), select(select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), !vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x != true, true, func_3(false, Struct_1(arg_1.a, 3692u), Struct_1(102f, 4294967295u)), true)), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, true, select(true, false, var_2.x)), select(vec4<bool>(false, false, true, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), any(vec3<bool>(var_2.x, false, var_2.x)))), select(!(!vec4<bool>(false, true, true, var_2.x)), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), !var_2.x), vec4<bool>(true, false, true, false))), !vec4<bool>(!var_2.x, true, true, false));
    return Struct_1(_wgslsmith_f_op_f32(sign(global0.x)), 99329u << (arg_1.b % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(541f));
    var var_1 = all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))))) || ((_wgslsmith_dot_vec3_i32(vec3<i32>(76435i, u_input.a.x, -1i), -vec3<i32>(-2147483647i, -2147483647i, u_input.d)) == (i32(-1i) * -24554i)) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -581f) < arg_0.a));
    let var_2 = Struct_1(-1374f, 0u);
    global1 = array<vec4<f32>, 16>();
    global0 = arg_1.zx;
    return Struct_1(1173f, 0u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, -2611f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(119f, arg_1.a))) + vec2<f32>(1f, 1f)))));
    let var_1 = vec2<u32>(17664u, _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32((u_input.b >> (vec4<u32>(1u, 46360u, 9339u, u_input.b.x) % vec4<u32>(32u))) & ~u_input.b, u_input.b, vec4<u32>(1u, 93377u, 0u, abs(u_input.b.x)))));
    let var_2 = Struct_1(arg_1.a, arg_0.b);
    var var_3 = Struct_1(-111f, arg_0.b);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + -949f) * func_2(vec2<i32>(-1i, 23481i), Struct_1(-181f, 1u)).a)) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.a), -1505f));
    return Struct_1(1068f, arg_0.b);
}

fn func_1() -> bool {
    global1 = array<vec4<f32>, 16>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))), global0.x, global0.x);
    global1 = array<vec4<f32>, 16>();
    let var_1 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + var_0.x))), u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(-193f - -996f), 1836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -138f)), func_2(u_input.c, Struct_1(-482f, 0u))), Struct_1(global0.x, u_input.b.x));
    let var_2 = any(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b.x < 76429u), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec2<bool>(false, func_3(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 4984u), 18u)], Struct_1(global0.x, 40510u)))));
    return _wgslsmith_add_u32(~(~max(u_input.b.x, 13873u)), 48441u) > abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(51488u, 0u, u_input.b.x), ~(~u_input.b.xzy)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    global1 = array<vec4<f32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x)) + -279f) + _wgslsmith_f_op_f32(global0.x * 725f));
    var var_1 = u_input.b;
    let var_2 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), u_input.a.x > -9813i), vec4<bool>(true, true, true, func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(floor(var_0)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.b.x) & _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(105993u, u_input.b.x, 1u, var_1.x)), u_input.b.x));
}

