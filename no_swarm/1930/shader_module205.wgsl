struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 53852u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -169f))))))));
    global0 = _wgslsmith_mult_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(~global0.x, max(52100u, global0.x)), arg_1.yy)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.zz, _wgslsmith_clamp_vec2_u32(~arg_1.zz, arg_1.xx, ~arg_1.yy)), vec2<u32>(arg_0 | u_input.d.x, 1u), vec2<u32>(2761u, countOneBits(~4294967295u))));
    var var_1 = abs(1i);
    var var_2 = !select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, select(true, false, true))), vec3<bool>(all(vec3<bool>(true, true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 106396u, arg_1.x, global0.x), u_input.d) > 7064u, false));
    var var_3 = ~vec4<i32>(arg_2.x, 2147483647i, -select(arg_2.x, -arg_2.x, true), min(arg_2.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(64305i, u_input.c.x, -56387i, u_input.c.x), vec4<i32>(arg_2.x, 2147483647i, -69071i, arg_2.x)))));
    return -335f;
}

fn func_2() -> Struct_1 {
    var var_0 = -463f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-210f * 208f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) * _wgslsmith_f_op_f32(func_3(countOneBits(global0.x), vec3<u32>(global0.x, global0.x, u_input.d.x) ^ vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec2<i32>(-54930i, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(599f)) + _wgslsmith_div_f32(1391f, -181f)))));
    var_0 = -339f;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 11051i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 39398i, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, -56966i, -24102i, u_input.c.x)))), max(select(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -6255i, u_input.c.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.c.x, -18680i, 2147483647i))), select(-vec4<i32>(-14130i, -1i, -2147483647i, 2147483647i), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 9106i, u_input.b.x)), true), vec4<bool>(true, true, select(true, false, true), true)), min(vec4<i32>(u_input.c.x << (4294967295u % 32u), u_input.b.x, -2147483647i, firstLeadingBit(51230i)), firstTrailingBit(vec4<i32>(-26539i, -22480i, -2147483647i, u_input.c.x) >> (u_input.d % vec4<u32>(32u))))));
    var_0 = _wgslsmith_f_op_f32(max(-476f, -1102f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -558f, 168f)))) + vec3<f32>(-101f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(821f * var_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -634f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 232f) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1f))), false);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = 4294967295u;
    var_0 = arg_1.x;
    var var_2 = func_2();
    let var_3 = select(_wgslsmith_mult_u32(~firstTrailingBit(u_input.d.x), u_input.d.x), _wgslsmith_mult_u32(u_input.d.x, 39008u), any(vec2<bool>(true | any(vec2<bool>(var_2.b, var_2.b)), var_2.b)));
    return _wgslsmith_clamp_u32(var_3, min(u_input.d.x, ~(~var_3)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(reverseBits(_wgslsmith_div_u32(func_1(select(vec3<i32>(1i, -1i, -830i), vec3<i32>(-35025i, -2147483647i, u_input.b.x), true), u_input.b), reverseBits(global0.x))), global0.x, 1u, _wgslsmith_mod_u32(~9858u, 4294967295u));
    var_0 = ~vec4<u32>(global0.x, _wgslsmith_add_u32(global0.x, ~_wgslsmith_mod_u32(var_0.x, global0.x)), ~81107u ^ _wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)), abs(~(global0.x | 72183u)));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.zz << (~(~vec2<u32>(6023u, 6559u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.d.zx, ~(~vec2<u32>(1u, 0u)))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.d.x ^ 4294967295u), ~u_input.d.xy), u_input.d.xz, vec2<bool>(true, true)));
    var_1 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), firstLeadingBit(5147u)) & abs(var_0.zy);
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, u_input.a.yy);
}

