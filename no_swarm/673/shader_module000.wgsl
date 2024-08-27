struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(83518u, 77813u, 0u);

var<private> global1: array<u32, 20> = array<u32, 20>(0u, 1u, 1u, 88020u, 51179u, 0u, 41049u, 61176u, 1u, 36716u, 1u, 0u, 0u, 33489u, 0u, 55539u, 75454u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<i32>(-40107i, -1i), Struct_1(248f), vec3<bool>(true, true, false), true, false), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(379f), vec3<bool>(true, false, false), false, false), Struct_2(vec2<i32>(21352i, -49076i), Struct_1(1152f), vec3<bool>(false, true, true), false, true), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(370f), vec3<bool>(false, false, true), false, false), Struct_2(vec2<i32>(36877i, 10733i), Struct_1(475f), vec3<bool>(true, true, true), false, false), Struct_2(vec2<i32>(i32(-2147483648), 4634i), Struct_1(381f), vec3<bool>(false, false, true), true, true), Struct_2(vec2<i32>(-42437i, 2290i), Struct_1(-929f), vec3<bool>(true, false, false), false, true), Struct_2(vec2<i32>(-20553i, -58936i), Struct_1(1847f), vec3<bool>(false, false, true), true, true), Struct_2(vec2<i32>(0i, -8766i), Struct_1(-631f), vec3<bool>(true, false, true), false, false), Struct_2(vec2<i32>(-1i, -1i), Struct_1(1133f), vec3<bool>(false, false, true), false, true), Struct_2(vec2<i32>(-49748i, 1i), Struct_1(-256f), vec3<bool>(true, false, true), false, true), Struct_2(vec2<i32>(0i, -45311i), Struct_1(439f), vec3<bool>(false, false, false), false, false), Struct_2(vec2<i32>(-31907i, 1i), Struct_1(184f), vec3<bool>(true, true, true), false, false), Struct_2(vec2<i32>(-61725i, 24416i), Struct_1(-121f), vec3<bool>(true, false, false), true, true), Struct_2(vec2<i32>(-5274i, 22212i), Struct_1(1347f), vec3<bool>(false, false, true), true, true), Struct_2(vec2<i32>(-1i, -21852i), Struct_1(-688f), vec3<bool>(false, true, false), false, false), Struct_2(vec2<i32>(-1i, 15409i), Struct_1(-982f), vec3<bool>(false, true, true), true, false), Struct_2(vec2<i32>(0i, 0i), Struct_1(1248f), vec3<bool>(true, true, true), false, true), Struct_2(vec2<i32>(-3321i, 1i), Struct_1(867f), vec3<bool>(false, true, false), false, false), Struct_2(vec2<i32>(2147483647i, -45328i), Struct_1(442f), vec3<bool>(false, true, true), false, true), Struct_2(vec2<i32>(2903i, 1i), Struct_1(100f), vec3<bool>(false, true, false), false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = any(vec2<bool>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-13638i, u_input.a), u_input.d) <= u_input.b, !(any(vec2<bool>(true, false)) & true)));
    var var_1 = vec2<f32>(-1963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - _wgslsmith_f_op_f32(ceil(-813f))))));
    return _wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(531f * var_1.x)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.a);
    global1 = array<u32, 20>();
    var var_1 = !vec4<bool>(all(!vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, true, arg_0.x || true);
    global1 = array<u32, 20>();
    var var_2 = !(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(26465u, _wgslsmith_sub_u32(1u, u_input.c.x))), 20u)] < global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 20u)]);
    return _wgslsmith_f_op_f32(floor(2434f));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~(~u_input.c.x);
    global1 = array<u32, 20>();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1264f, 966f)) - -1289f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1368f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, false), Struct_3(vec2<f32>(-636f, 970f)), Struct_1(-485f)))))))));
    var var_2 = vec3<bool>(true, true, all(vec3<bool>(true, true, any(vec2<bool>(false, false)))) | true);
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~4294967295u), vec2<bool>(false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false || var_2.x, var_2.x, var_2.x, var_2.x && true), Struct_3(vec2<f32>(1000f, -492f)), Struct_1(_wgslsmith_div_f32(var_1.x, -1000f))))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.yz, vec2<u32>(u_input.c.x, 1u), vec2<u32>(global1[_wgslsmith_index_u32(var_0, 20u)], u_input.c.x)), vec2<u32>(102482u, 4294967295u)), _wgslsmith_mult_u32(15402u, 8200u), ~0u << (u_input.c.x % 32u)), u_input.c.x, 4294967295u), 21u)]);
    return StorageBuffer(-1685f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(ceil(-186f))))));
    global2 = array<Struct_2, 21>();
    global1 = array<u32, 20>();
    let x = u_input.a;
    s_output = func_1();
}

