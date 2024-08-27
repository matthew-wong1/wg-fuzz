struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = !(!arg_0.xz);
    var_0 = select(arg_0.yz, select(!arg_0.yx, !select(arg_0.zy, arg_0.xy, true), select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x & false), vec2<bool>(true, all(arg_0)), all(!arg_0))), arg_0.zy);
    var_0 = !vec2<bool>(!all(!vec4<bool>(var_0.x, arg_0.x, arg_0.x, true)), true);
    var var_1 = Struct_5(0u, vec4<bool>(arg_0.x, all(arg_0.yy), true, arg_0.x), Struct_4(select(max(-u_input.b.x, ~(-33542i)), 9592i, any(select(arg_0, vec3<bool>(true, false, var_0.x), arg_0))), abs(vec4<u32>(1u, 1u, 1u, 1u)), ~firstLeadingBit(vec2<u32>(31037u, 4294967295u)) >> ((~vec2<u32>(25412u, 4294967295u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(65348u, 71185u), vec2<u32>(1u, 34185u), vec2<u32>(107975u, 97267u)) % vec2<u32>(32u))) % vec2<u32>(32u)), !select(arg_0, select(arg_0, vec3<bool>(arg_0.x, true, arg_0.x), var_0.x), arg_0)));
    var var_2 = Struct_2(Struct_1(arg_0.x, u_input.a));
    return vec2<f32>(_wgslsmith_f_op_f32(round(745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-619f, -763f, false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2424f))))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global0 = 250f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + _wgslsmith_f_op_f32(1450f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1177f)))));
    let var_0 = !(!vec4<bool>(_wgslsmith_sub_i32(0i, u_input.a) != 1i, select(false, false, true), all(vec2<bool>(true, false)), true));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(var_0.zyz)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1160f, -1414f))), var_0.x))))), vec2<f32>(308f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-223f, 1748f)), -1851f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1647f, 843f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(274f, -353f, -501f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, var_1.x, var_1.x) + vec3<f32>(-839f, 313f, -642f))))))));
    return var_1.x;
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(abs(abs(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -18189i)))))), _wgslsmith_f_op_f32(select(-1627f, _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1711f + -1646f))), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, false)))))));
    global1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(~u_input.a, max(5007i, -3985i), 0i, u_input.a), -firstLeadingBit(vec4<i32>(-40002i, u_input.a, u_input.b.x, -16842i)))), -vec4<i32>(-19494i ^ u_input.a, i32(-1i) * -25208i, _wgslsmith_div_i32(abs(-3689i), _wgslsmith_sub_i32(u_input.a, -2147483647i)), u_input.b.x >> (min(31341u, 79636u) % 32u)));
    let var_0 = abs(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, 18396i, u_input.a), vec4<i32>(8326i, u_input.a, u_input.a, u_input.b.x) & vec4<i32>(-58735i, u_input.b.x, u_input.b.x, 42459i))) >> (~abs(~vec4<u32>(31972u, 0u, 1u, 59u)) % vec4<u32>(32u)));
    let var_1 = -523f;
    global1 = -(~(-var_0.x));
    return Struct_3(Struct_1(!((var_1 == var_1) & (0i > var_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 2147483647i, u_input.a), var_0.wzx, var_0.zwz), select(vec3<i32>(30090i, -26008i, var_0.x), var_0.xyx, vec3<bool>(true, true, true)))), var_1, Struct_2(Struct_1(any(vec3<bool>(false, true, true)), u_input.b.x)), Struct_2(Struct_1(select(true, true, true) || true, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-702f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f * -612f))));
    var var_0 = func_1();
    var_0 = Struct_3(func_1().d.a, _wgslsmith_div_f32(-591f, var_0.b), Struct_2(func_1().c.a), var_0.d);
    var_0 = func_1();
    var_0 = func_1();
    let var_1 = -325f;
    var var_2 = abs(vec3<i32>(max(1i, 1i), firstTrailingBit(-48962i), min(var_0.c.a.b, -51076i)));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(~countOneBits(5183u), _wgslsmith_mod_u32(1u, ~(1u << (0u % 32u)))), ~(~_wgslsmith_div_u32(44221u, 1u)) | max(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(101940u, 4294967295u))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), var_1, vec3<f32>(_wgslsmith_f_op_f32(var_0.b * 170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))) + _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(floor(173f))))), _wgslsmith_add_vec2_u32(firstLeadingBit(var_3.xz) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_3.zx & (var_3.yx << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), vec2<u32>(~var_3.x, var_3.x))));
}

