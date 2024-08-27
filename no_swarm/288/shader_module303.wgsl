struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1887i), Struct_1(-34303i), Struct_1(32137i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(-47714i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(422i), Struct_1(3516i), Struct_1(i32(-2147483648)), Struct_1(-34201i), Struct_1(30624i), Struct_1(0i), Struct_1(-1i), Struct_1(-1i), Struct_1(-12705i), Struct_1(2147483647i), Struct_1(-15812i), Struct_1(7281i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-1i), Struct_1(-18752i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = reverseBits(abs(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 57506u), vec2<u32>(11758u, 0u), vec2<u32>(u_input.b, 4294967295u)))));
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_1 = Struct_3(select(vec3<u32>(1u, ~var_0.x, var_0.x), select(~(~vec3<u32>(u_input.b, var_0.x, var_0.x)), vec3<u32>(countOneBits(var_0.x), _wgslsmith_mod_u32(53314u, u_input.b), _wgslsmith_sub_u32(53812u, u_input.b)), !vec3<bool>(arg_1.x, true, false)), arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - _wgslsmith_f_op_f32(ceil(917f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(2184f, 970f)))))), _wgslsmith_div_f32(-2257f, _wgslsmith_f_op_f32(-958f - -1113f))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -1301f))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -957f)))), ~abs(~22265u));
    global0 = array<Struct_1, 25>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-630f + -1016f), 171f, 1000f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-807f, 1521f, -161f) * vec3<f32>(var_1.c.a.x, -441f, var_1.c.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, var_1.b, var_1.c.a.x)))))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), -899f));
    var var_1 = var_0;
    let var_2 = Struct_1(min(-29444i, (-2147483647i >> (abs(u_input.b) % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 12170u, 4294967295u, 70084u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 82381u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) % 32u)));
    var var_3 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b & u_input.b, 13966u << (u_input.b % 32u)), firstTrailingBit(u_input.b) << (~1u % 32u)), vec2<u32>(~select(u_input.b, u_input.b, false), ~(~u_input.b)));
    return !vec2<bool>(arg_1.x, !arg_1.x && select(arg_2, false, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>) -> i32 {
    let var_0 = vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.a.x))));
    let var_1 = 1i;
    return -4998i;
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, ~u_input.b), 1u, _wgslsmith_mod_u32(~10092u, 28026u)) >= u_input.b, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    global0 = array<Struct_1, 25>();
    let var_1 = vec3<bool>(!any(vec4<bool>(true | var_0.x, true, var_0.x, true)), func_4(Struct_2(vec2<f32>(193f, -989f)), func_3(-1852f, !vec4<bool>(true, false, var_0.x, false), !var_0.x), vec2<i32>(u_input.a.x, u_input.a.x) | -u_input.c.xz) > ~u_input.c.x, var_0.x & (u_input.c.x >= 1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-975f, 759f, 1633f), vec3<f32>(105f, -1348f, -643f))))) - vec3<f32>(1000f, -2397f, _wgslsmith_f_op_f32(floor(-101f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(sign(171f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-437f)))), _wgslsmith_f_op_vec3_f32(func_1(!(var_0.x && var_1.x), var_1)).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1825f)), _wgslsmith_f_op_f32(-1707f * _wgslsmith_f_op_f32(-553f - 484f)))))));
    var var_3 = Struct_2(var_2.xy);
    return 39414u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(!any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -2435f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(193f))), true));
    let var_1 = false;
    global0 = array<Struct_1, 25>();
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(all(!vec2<bool>(var_0, var_1)), vec3<bool>(false, true | all(vec3<bool>(false, true, true)), select(true, !var_1, true)))));
    let var_4 = vec2<u32>(func_2(), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~abs(~vec4<u32>(0u, var_4.x, 4294967295u, var_4.x)), ~vec4<u32>(16702u << (var_4.x % 32u), countOneBits(u_input.b), func_2(), ~var_4.x)), 1u);
}

