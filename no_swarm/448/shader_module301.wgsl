struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(u_input.a);
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(abs(var_0.a), firstTrailingBit(abs(u_input.a))));
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(var_1.a);
    let var_4 = vec4<bool>(!(!(select(false, false, true) & false)), 0u < firstTrailingBit(83763u), true, -1208f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-2909f)))) - global0.x));
    return select(vec3<u32>(var_1.a.x, 86262u >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.a.x, 70898u), u_input.a.x >> (0u % 32u), 1u) % 32u), var_1.a.x | ~(~var_1.a.x)), vec3<u32>(~(~0u), _wgslsmith_div_u32(~(var_1.a.x & var_0.a.x), _wgslsmith_div_u32(~15093u, _wgslsmith_mult_u32(var_3.a.x, 5075u))), _wgslsmith_mult_u32(47585u, abs(0u))), var_4.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = max(-firstLeadingBit(~u_input.b.x), ~u_input.b.x) ^ abs(0i);
    var var_1 = arg_2;
    let var_2 = vec2<bool>(all(vec4<bool>(true, true, true, true)) & true, !select(true, any(vec4<bool>(true, false, false, false)), global0.x <= _wgslsmith_f_op_f32(f32(-1f) * -2690f)));
    var_1 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~63133u, arg_2.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(~17267u, arg_2.a.x), vec2<u32>(~arg_1.a.x, _wgslsmith_add_u32(arg_1.a.x, 4294967295u)))));
    var var_3 = 38895u;
    return var_2.x;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_1(abs(_wgslsmith_div_vec2_u32(u_input.a, u_input.a)));
    var var_1 = min(u_input.a.x, 0u);
    var_1 = _wgslsmith_div_u32(u_input.a.x, abs(_wgslsmith_dot_vec3_u32(func_2(), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_0.a.x, var_0.a.x), vec3<u32>(4294967295u, 24201u, 18443u)))) & min(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, 4028u, u_input.a.x), vec4<u32>(6768u, 64625u, u_input.a.x, 4294967295u)), reverseBits(~var_0.a.x)));
    global0 = vec2<f32>(arg_0, global0.x);
    let var_2 = vec3<bool>(!func_3(Struct_1(~vec2<u32>(u_input.a.x, var_0.a.x)), var_0, var_0), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, false, true, true))), false);
    return all(!select(select(!vec4<bool>(var_2.x, false, true, var_2.x), select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), false & var_2.x), !(!vec4<bool>(var_2.x, var_2.x, false, false)), !select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, true, false), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1661f - 1000f) - -1000f) - global0.x) - -865f)));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), abs(1u << (u_input.a.x % 32u)) >> (u_input.a.x % 32u)));
    var var_2 = vec4<u32>(44630u, _wgslsmith_sub_u32(86316u, 57795u), 0u, var_1.a.x);
    var var_3 = Struct_1(~u_input.a);
    var var_4 = vec4<bool>(false, any(vec3<bool>(!(u_input.b.x == 0i), !func_1(789f), u_input.b.x != max(2083i, 0i))), false, true);
    let var_5 = Struct_1(~abs(min(vec2<u32>(4294967295u, u_input.a.x), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 1909f, -1396f, global0.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, 113f, global0.x), vec4<f32>(586f, 1296f, 276f, 139f), var_4.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1107f, global0.x, 563f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(2661f, 474f, global0.x, 1113f) + vec4<f32>(global0.x, 838f, global0.x, 249f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, -2049f, 202f), vec4<f32>(global0.x, -1204f, 2436f, global0.x))))))));
}

