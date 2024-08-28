struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(13826u, vec4<u32>(27118u, 4294967295u, 39481u, 10089u), vec4<f32>(-217f, 1105f, -1189f, -1599f), vec2<i32>(-20656i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = -u_input.c;
    let var_1 = ~(global0.a << (1u % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_div_f32(global0.c.x, -174f)))))));
    let var_3 = Struct_5(_wgslsmith_mod_u32(~var_1, max(~global0.b.x << (_wgslsmith_dot_vec2_u32(global0.b.xz, vec2<u32>(23639u, global0.a)) % 32u), var_1)), global0.b, _wgslsmith_f_op_vec4_f32(step(global0.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_f_op_f32(f32(-1f) * -990f)), global0.c.x, var_2))), select(select(u_input.b.wy, vec2<i32>(-1i) * -vec2<i32>(var_0, global0.d.x), true), min(~vec2<i32>(u_input.c, -1i), countOneBits(global0.d)), (true | any(vec4<bool>(false, true, true, false))) | (all(vec2<bool>(true, true)) | all(vec2<bool>(false, true)))));
    var var_4 = -630f;
    return ~57767u;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    global0 = Struct_5(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~global0.b.wxx, vec3<u32>(arg_1.b.x, 4294967295u, 0u)), min(4294967295u, 89305u)), global0.b, global0.c, -u_input.b.yy);
    let var_0 = -178f;
    var var_1 = Struct_3(countOneBits(select(select(vec4<u32>(u_input.e, 0u, 26014u, global0.b.x), global0.b, vec4<bool>(arg_1.a, true, false, false)) | vec4<u32>(global0.a, arg_1.b.x, 0u, 4294967295u), abs(~vec4<u32>(arg_1.b.x, global0.a, arg_1.b.x, arg_1.b.x)), vec4<bool>(true, any(vec2<bool>(true, false)), arg_1.a, arg_1.a))), arg_1, arg_1.a);
    var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(func_3(), arg_1.b.x ^ ~15619u, ~_wgslsmith_mult_u32(u_input.e, 1u), 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, arg_1.b.x)), abs(var_1.b.b)), 62466u, firstTrailingBit(global0.b.x << (0u % 32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 43575u), global0.b.x ^ 7920u)), select(~abs(vec4<u32>(arg_1.b.x, var_1.a.x, var_1.a.x, u_input.a)), var_1.a, any(select(vec3<bool>(var_1.b.a, false, true), vec3<bool>(true, arg_1.a, arg_1.a), false)))), var_1.b, arg_1.a);
    var_1 = Struct_3(vec4<u32>(arg_1.b.x, _wgslsmith_div_u32(~firstTrailingBit(arg_1.b.x), ~_wgslsmith_sub_u32(58575u, 30029u)), arg_1.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.b.x, global0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.a, 1u, 46608u), vec4<u32>(global0.a, 31127u, var_1.b.b.x, 1u))) & 13345u), Struct_2(!arg_1.a, vec2<u32>(_wgslsmith_sub_u32(select(4294967295u, 85169u, false), u_input.a), 1u)), !all(vec2<bool>(false, true)) | arg_1.a);
    return _wgslsmith_f_op_f32(var_0 + 1298f);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), true, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), global0.c.x, 768f, _wgslsmith_f_op_f32(func_2(-15008i, Struct_2(any(vec4<bool>(true, false, true, false)), _wgslsmith_mult_vec2_u32(global0.b.xz, vec2<u32>(u_input.a, global0.a)))))));
    let var_1 = max(global0.d, u_input.b.yx);
    global0 = Struct_5(u_input.a, ~global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-393f, var_0.c.x, var_0.c.x, global0.c.x), vec4<f32>(1811f, 1179f, 272f, var_0.a))))), global0.c)), reverseBits(firstLeadingBit(select(vec2<i32>(u_input.c, var_1.x), vec2<i32>(-1i, u_input.b.x), all(vec2<bool>(false, false))))));
    let var_2 = -(~u_input.b.x);
    var var_3 = Struct_5(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.b.zyz, vec3<u32>(global0.a, u_input.e, u_input.e)), _wgslsmith_mod_u32(max(19655u, global0.a), ~11014u))), ~global0.b, global0.c, -firstLeadingBit(global0.d));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = !vec3<bool>(_wgslsmith_div_f32(global0.c.x, 1f) != -220f, global0.b.x == 48045u, !any(vec4<bool>(true, false, false, true)));
    var var_2 = global0.b.yx;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, global0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)))), -287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + 779f) - -189f), global0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f)))));
    var var_4 = ~vec3<u32>(firstLeadingBit(u_input.a), u_input.a, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(846f, -383f, 1661f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), -1000f))), ~(~select(func_3(), var_4.x, !var_1.x)));
}

