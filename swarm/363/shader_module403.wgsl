struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(-2264f, 1036f, -1551f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(max(0u, 17370u), _wgslsmith_div_u32(u_input.a.x, 1u));
    return !select(vec3<bool>(global1.a, 57130u == u_input.a.x, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), !select(!vec3<bool>(false, global1.a, arg_3.x), vec3<bool>(true, arg_3.x, true), vec3<bool>(global1.a, arg_1.x, arg_3.x)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> vec3<bool> {
    var var_0 = global1.b;
    global1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(-934f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + global1.b.x), 1733f))));
    global0 = false;
    var var_1 = var_0.x;
    let var_2 = vec3<u32>(4294967295u, 0u, 4294967295u) | min(vec3<u32>(~abs(68463u), ~(~arg_2), ~32465u >> (~u_input.a.x % 32u)), select(~u_input.a.ywy, ~vec3<u32>(arg_2, arg_2, arg_2) | u_input.a.wyy, global1.a));
    return select(vec3<bool>(false, !(arg_0.x | arg_0.x), (19248u <= (arg_2 >> (119276u % 32u))) && !global1.a), !(!(!select(vec3<bool>(arg_0.x, true, false), vec3<bool>(false, false, global1.a), vec3<bool>(true, arg_0.x, global1.a)))), func_2(~u_input.c, select(select(!arg_0, func_2(22610i, vec2<bool>(arg_0.x, global1.a), u_input.b, vec2<bool>(false, arg_0.x)).xy, !vec2<bool>(global1.a, global1.a)), vec2<bool>(true, u_input.c != -2147483647i), true), select(reverseBits(abs(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x))), abs(u_input.b), true), !vec2<bool>(-2147483647i > u_input.b.x, 2147483647i == u_input.c)));
}

fn func_1() -> bool {
    global0 = !global1.a;
    let var_0 = firstTrailingBit(u_input.c);
    var var_1 = Struct_1(any(select(vec3<bool>(all(vec4<bool>(global1.a, true, false, false)), global1.a, true), vec3<bool>(any(vec4<bool>(false, global1.a, true, global1.a)), true, -1i > u_input.b.x), func_2(u_input.c, vec2<bool>(true, true), u_input.b, !vec2<bool>(global1.a, true)))), global1.b);
    return any(func_3(select(!vec2<bool>(false, var_1.a), func_2(-var_0, !vec2<bool>(global1.a, var_1.a), vec3<i32>(var_0, u_input.c, -18479i), vec2<bool>(var_1.a, false)).yx, any(select(vec4<bool>(var_1.a, var_1.a, false, global1.a), vec4<bool>(global1.a, var_1.a, true, true), vec4<bool>(global1.a, true, var_1.a, var_1.a)))), -609f, _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.a.x), ~84407u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!(!(!vec2<bool>(true, global1.a))));
    global0 = func_1();
    global1 = Struct_1(!(!(func_1() != all(vec2<bool>(var_0, global1.a)))), global1.b);
    var var_1 = Struct_2(Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), _wgslsmith_f_op_f32(global1.b.x * global1.b.x), _wgslsmith_f_op_f32(1521f + global1.b.x))))));
    var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 520f, -1307f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2592f, var_1.a.b.x, 567f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.x, var_1.a.b.x, -2024f))), _wgslsmith_f_op_vec3_f32(-global1.b))))));
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(153f, var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.b.x, -1531f, var_0)) * _wgslsmith_f_op_f32(563f + var_1.a.b.x))), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x))))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(u_input.a.zyw << (u_input.a.xxx % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 2158u), u_input.a.xzy), u_input.a.wyw)), _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(4294967295u >> (1u % 32u), 0u >> (0u % 32u)))), 1u, ~(~_wgslsmith_mod_i32(16568i, 9106i) & countOneBits(u_input.b.x << (u_input.a.x % 32u))));
}

