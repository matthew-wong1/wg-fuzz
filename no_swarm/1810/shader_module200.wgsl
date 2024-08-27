struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_2 {
    global1 = Struct_2(global1.b, Struct_1(global1.a.a, _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.b, 4294967295u), ~4294967295u))));
    var var_0 = vec3<u32>(35677u, ~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(33471u, 0u, 13687u)), firstLeadingBit(vec3<u32>(1u, 10697u, arg_1)))), max(~reverseBits(arg_0.b), min(global1.a.b, _wgslsmith_clamp_u32(~global1.b.b, 38090u, global1.a.b >> (1u % 32u)))));
    let var_1 = Struct_2(global1.b, Struct_1(false, countOneBits(arg_1)));
    var var_2 = all(vec3<bool>(!(false && select(var_1.b.a, arg_2, false)), true, all(vec4<bool>(arg_2, any(vec4<bool>(true, true, var_1.b.a, arg_0.a)), !global1.a.a, u_input.a < u_input.a))));
    let var_3 = var_1;
    return Struct_2(Struct_1(true, 1u), Struct_1(!all(select(vec3<bool>(true, true, var_3.a.a), vec3<bool>(arg_0.a, var_3.b.a, true), vec3<bool>(global1.a.a, false, false))), _wgslsmith_mult_u32(var_0.x, firstLeadingBit(1u)) & 1u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = false && ((-22440i < (u_input.a & abs(arg_1.a))) | (abs(-26586i) >= u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-735f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(808f * 986f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = 11222i;
    let var_4 = global1.a;
    return _wgslsmith_mod_vec4_u32(~reverseBits(abs(reverseBits(vec4<u32>(arg_0.b.b, 0u, 0u, 4294967295u)))), ~(~vec4<u32>(~1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, var_4.b, var_4.b, global1.b.b), vec4<u32>(global1.a.b, var_4.b, 7346u, 42685u)), ~var_4.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(func_3(func_2(global1.b, 6974u, !global1.b.a), Struct_3(-_wgslsmith_mult_i32(u_input.a, u_input.a)), Struct_1(true, 51195u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) + _wgslsmith_f_op_f32(f32(-1f) * -2152f)))));
    global1 = Struct_2(Struct_1(!global1.b.a, 43347u), Struct_1(true, var_0.x | max(_wgslsmith_mod_u32(global1.b.b, 0u), ~0u)));
    let var_2 = Struct_3(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a));
    var var_3 = vec4<u32>(~(~1u), var_0.x, global1.b.b, ~(~32341u));
    return func_2(global1.a, func_2(global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 123u), var_3.zx) >> (var_0.x % 32u), any(select(select(vec2<bool>(true, global1.b.a), vec2<bool>(true, true), vec2<bool>(global1.b.a, global1.b.a)), vec2<bool>(global1.a.a, global1.a.a), select(vec2<bool>(global1.a.a, true), vec2<bool>(global1.b.a, global1.b.a), true)))).a.b, global1.a.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(), func_1());
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    let var_0 = true | !(!all(vec4<bool>(true, true, global1.a.a, global1.b.a)));
    let var_1 = Struct_2(global1.b, global1.b);
    let var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

