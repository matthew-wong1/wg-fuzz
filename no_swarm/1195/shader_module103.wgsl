struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: i32) -> bool {
    let var_0 = Struct_1(select(!vec2<bool>(arg_0.x, true), !(!(!vec2<bool>(true, arg_0.x))), select(vec2<bool>(any(arg_0.zy), arg_0.x && false), vec2<bool>(false, any(vec2<bool>(false, false))), select(arg_2.wx, vec2<bool>(arg_0.x, false), !arg_2.x))));
    global0 = vec3<u32>(4294967295u, global0.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstLeadingBit(global0.x), 75836u, max(~arg_1.x, arg_1.x >> (0u % 32u))), firstLeadingBit(~countOneBits(u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(round(-942f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-583f, 870f)) + -361f)))));
    var var_2 = var_0.a.x;
    var var_3 = any(vec3<bool>(var_1 == var_1, var_0.a.x, true));
    return any(arg_2.zz);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-arg_2.c)) + 299f));
    global0 = vec3<u32>(abs(u_input.a), 41954u, abs(firstLeadingBit(_wgslsmith_add_u32(global0.x, 46098u))));
    let var_1 = Struct_3(arg_2.b);
    global0 = vec3<u32>(~_wgslsmith_sub_u32(global0.x, abs(max(0u, u_input.a))), max(17522u, ~8668u), _wgslsmith_add_u32(global0.x, ~firstLeadingBit(~u_input.a)));
    let var_2 = true;
    return ~global0.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.b;
    var var_1 = firstLeadingBit(~global0.xz);
    global0 = vec3<u32>(~(~(9031u >> (u_input.a % 32u))) | _wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, global0.x)))), func_4(true, vec4<bool>(func_3(vec3<bool>(false, false, false), select(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 1u), vec2<bool>(false, false)), vec4<bool>(false, false, false, true), max(var_0, var_0)), all(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, false)), false), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(897f, -646f, -1171f), vec3<f32>(-1745f, 298f, -1929f))), Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-293f)) * 1f)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(-1136f, -1567f)), _wgslsmith_f_op_f32(floor(-1177f)), _wgslsmith_f_op_f32(min(-590f, 1086f))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-637f + 131f), _wgslsmith_f_op_f32(547f + 194f)))), abs(4294967295u));
    var var_2 = countOneBits(select(u_input.c.zx, u_input.c.zz, select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-239f, -1000f, -2665f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, -640f, 1324f))))), Struct_1(vec2<bool>(true, true)), 910f);
    return var_3.b.a;
}

fn func_1() -> Struct_1 {
    global0 = ~vec3<u32>(_wgslsmith_add_u32(49854u, global0.x), 4294967295u, ~(~global0.x << (global0.x % 32u)));
    let var_0 = ~(-u_input.d.yy);
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 0u)), 39549u), 1u, _wgslsmith_mod_u32(u_input.a, ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, 0u), vec3<u32>(global0.x, u_input.a, u_input.a)))), 0u);
    let var_2 = 32774i;
    return Struct_1(select(vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), all(vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(false, false)), true), !func_2()));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    global0 = vec3<u32>(global0.x, ~_wgslsmith_clamp_u32(u_input.a, 0u, ~_wgslsmith_div_u32(48u, 1u)), u_input.a);
    var var_0 = Struct_3(func_1());
    var_0 = Struct_3(arg_0);
    var var_1 = arg_1.yzw;
    global0 = vec3<u32>(global0.x, 19814u, global0.x);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(any(vec4<bool>(true, true, true, false)) | true, true, 4294967295u >= u_input.a), vec3<bool>(true, true, true), true), !(!vec3<bool>(u_input.b > u_input.b, true, true)), !func_5(func_1(), vec4<bool>(any(vec2<bool>(true, false)), true, true, func_2().x)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2461f + _wgslsmith_f_op_f32(796f * -1955f)), -794f) - 1f)));
    let var_2 = any(vec2<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 47950u, u_input.a), ~vec3<u32>(global0.x, 1u, u_input.a)) == ~(~5859u), true));
    let var_3 = !var_2;
    let var_4 = Struct_1(vec2<bool>(var_3, var_0.x));
    var var_5 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1304f)) - -393f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), 856f))), func_1(), var_1);
    let var_6 = reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-2809f, vec3<u32>(reverseBits(12465u), 20848u, 1u));
}

