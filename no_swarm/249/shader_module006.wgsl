struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = 115f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b.x, max(global0.a, 0i), true);
    var var_1 = ~select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 1u, var_0.a) << (vec3<u32>(28160u, var_0.a, u_input.e) % vec3<u32>(32u)), vec3<u32>(70869u, 42651u, var_0.a)), min(var_0.a << (var_0.a % 32u), ~31898u), _wgslsmith_mod_u32(firstLeadingBit(1u), var_0.a ^ 4294967295u), 4294967295u), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(51223u, u_input.e, 57678u, 10979u)) >> (~vec4<u32>(14498u, u_input.b.x, 21199u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(max(20638u, 41915u), 10933u, ~62053u, _wgslsmith_div_u32(var_0.a, var_0.a))), vec4<bool>(false, false, any(!arg_1.xy), _wgslsmith_mod_i32(var_0.b, 2147483647i) <= reverseBits(-14948i)));
    var var_2 = 1u;
    let var_3 = _wgslsmith_add_vec3_u32(var_1.wwz, ~firstTrailingBit(~reverseBits(var_1.wxz)));
    let var_4 = Struct_1(107723u, 1i, true);
    return arg_2;
}

fn func_2() -> f32 {
    let var_0 = Struct_4(0i, vec3<bool>(any(select(select(vec2<bool>(false, global0.c.x), global0.b.zz, global0.b.yx), vec2<bool>(global0.c.x, false), global0.b.xx)), all(select(select(vec4<bool>(false, true, global0.c.x, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), !vec4<bool>(global0.c.x, global0.c.x, true, false), false)), u_input.c >= (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 21307u, 66664u), vec3<u32>(u_input.b.x, u_input.d.x, 29169u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 89998u), vec3<u32>(u_input.d.x, u_input.a.x, u_input.b.x)) % 32u))), func_3(firstLeadingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, global0.a, global0.a), ~vec3<i32>(global0.a, 24492i, global0.a), -vec3<i32>(global0.a, global0.a, 2147483647i))), vec3<bool>(false, true, !global0.b.x), vec3<bool>(true == (76905u < u_input.a.x), true, (global0.a >> (26443u % 32u)) <= 1i)));
    global0 = var_0;
    global1 = _wgslsmith_f_op_f32(-366f + 1261f);
    var var_1 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f * 869f) - _wgslsmith_f_op_f32(round(625f))), _wgslsmith_f_op_f32(select(906f, _wgslsmith_f_op_f32(-972f + 745f), var_0.b.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1573f - _wgslsmith_f_op_f32(1f * -402f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1146f))))) - _wgslsmith_f_op_f32(f32(-1f) * -627f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(641f, 1000f)))), -1036f))) * -875f);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-511f * -208f), _wgslsmith_f_op_f32(f32(-1f) * -1233f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2251f, -1090f), 731f, all(global0.c))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, 202f))) - vec2<f32>(1674f, _wgslsmith_f_op_f32(1062f + -1335f)))));
    let var_3 = reverseBits(_wgslsmith_dot_vec4_u32(min(max(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, 10299u, u_input.b.x, u_input.e)), ~vec4<u32>(u_input.e, 0u, 39377u, u_input.c)) << (select(~vec4<u32>(86637u, u_input.e, u_input.b.x, 15463u), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.d.x, 12965u, u_input.a.x)), global0.a > global0.a) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(89972u, u_input.d.x, u_input.d.x, u_input.e))));
    let var_4 = var_2.x;
    return Struct_3(global0.a, Struct_1(_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(_wgslsmith_sub_u32(u_input.c, var_3), ~var_3)), global0.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(abs(-vec2<i32>(global0.a, 1i)));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(trunc(123f))), 1f)), 1f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f)), 1f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, 159f, -1125f, 1055f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1245f, 1000f, 190f, -589f), vec4<f32>(-2136f, -673f, -1131f, -626f)))), vec4<f32>(_wgslsmith_f_op_f32(1491f * 883f), -342f, _wgslsmith_f_op_f32(303f * -898f), _wgslsmith_f_op_f32(-1000f + -1386f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1101f)) * 1053f))), var_0.x ^ abs(abs(~var_1.b.b)));
}

