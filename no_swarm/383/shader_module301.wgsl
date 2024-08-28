struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_3(vec3<i32>(~u_input.b, max(abs(1i & arg_1.x), -21288i), -((arg_1.x & u_input.b) | select(u_input.c, u_input.c, true))), Struct_2(true));
    let var_1 = min(u_input.b, select(2147483647i | arg_1.x, select(_wgslsmith_mult_i32(firstTrailingBit(-37321i), -u_input.b), -1576i, all(!vec4<bool>(var_0.b.a, true, var_0.b.a, true))), var_0.b.a || true));
    let var_2 = Struct_4(-var_1, u_input.a, ~vec3<u32>(37175u, ~16929u, 2274u), 916f);
    var var_3 = vec4<bool>(true, true, all(vec2<bool>(!var_0.b.a, true)), !all(select(vec3<bool>(true, true, var_0.b.a), select(vec3<bool>(var_0.b.a, true, var_0.b.a), vec3<bool>(false, true, var_0.b.a), vec3<bool>(true, true, var_0.b.a)), !vec3<bool>(var_0.b.a, false, var_0.b.a))));
    var_3 = !(!vec4<bool>(var_3.x, true, all(!var_3.xzz), true));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_4(arg_1.x, max(~1u, ~arg_0), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) | vec3<u32>(~4294967295u, ~72715u, ~arg_0)), -1000f);
    var var_1 = vec4<bool>(all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, any(vec3<bool>(false, true, false)), true), false)), true, true, true);
    var var_2 = Struct_2(select(all(vec3<bool>(var_1.x && false, var_1.x, var_1.x)), var_1.x | true, any(vec3<bool>(var_0.d != var_0.d, true, true))));
    var var_3 = var_0.d;
    var_1 = !vec4<bool>(true, var_1.x, any(vec2<bool>(1000f >= var_0.d, func_3(1u, arg_1.wz))), true);
    return -(~(-max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.c, arg_1.x), vec3<i32>(-2147483647i, u_input.c, var_0.a)), _wgslsmith_mult_i32(-3018i, 0i))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1624f)));
    let var_1 = Struct_2(true);
    let var_2 = ~firstLeadingBit(55320u) < (46889u ^ reverseBits(~(u_input.a | u_input.a)));
    var var_3 = vec3<bool>(_wgslsmith_mod_i32(u_input.c, i32(-1i) * -1i) <= arg_0.a.x, true, any(arg_1.xw));
    var var_4 = select(!select(!arg_1, select(arg_1, vec4<bool>(true, false, arg_1.x, false), vec4<bool>(arg_1.x, false, true, var_1.a)), !(arg_3.x >= arg_3.x)), arg_1, false);
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = func_4(Struct_5(select(vec3<i32>(func_2(u_input.a, vec4<i32>(u_input.c, u_input.b, 34602i, u_input.c)), _wgslsmith_add_i32(u_input.b, -2147483647i), -33396i), _wgslsmith_clamp_vec3_i32(vec3<i32>(52873i, u_input.c, u_input.c), vec3<i32>(u_input.b, -1i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.b, u_input.c, -5043i))), !all(vec3<bool>(true, true, false)))), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true)))), true, !any(vec3<bool>(true, true, true)), false & (~1i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 6663i), vec2<i32>(-16443i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, -1000f, 1000f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-157f, -396f, -1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(354f, 392f, -477f), vec3<f32>(1088f, -1184f, -1668f)))), vec3<f32>(_wgslsmith_f_op_f32(-585f - -2183f), -1963f, _wgslsmith_f_op_f32(f32(-1f) * -504f))))));
    var var_1 = Struct_5(var_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1561f, 210f)), -810f)))));
    var_1 = var_0;
    var_1 = func_4(func_4(func_4(var_0, vec4<bool>(true, true, false, true), -1523f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, 570f, -886f)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), any(vec4<bool>(true, true, false, false))), var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(352f, -1000f, 272f))))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(324f - 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1079f, -1278f))) - 434f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-957f, var_2))) + var_2)));
    return 384f;
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = Struct_2(all(vec2<bool>(true, true)));
    var var_1 = (-firstLeadingBit(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(14314u, max(4294967295u, 1u), ~4294967295u, ~u_input.a), vec4<u32>(u_input.a, 59628u, u_input.a, 0u) & countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))) | vec4<i32>(u_input.c, abs(2147483647i), abs(_wgslsmith_mult_i32(u_input.c, 1i) >> (u_input.a % 32u)), _wgslsmith_mult_i32(u_input.b, -u_input.b | ~u_input.b));
    let var_2 = Struct_3(_wgslsmith_sub_vec3_i32(-select(firstLeadingBit(vec3<i32>(var_1.x, var_1.x, 0i)), vec3<i32>(var_1.x, var_1.x, u_input.b), vec3<bool>(var_0.a, false, true)), abs(vec3<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), u_input.b, -u_input.c))), Struct_2(!var_0.a));
    var var_3 = -28517i;
    var var_4 = select(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.a.x, var_1.x), ~0i), 0i), 2147483647i, func_3(~0u, abs(vec2<i32>(var_2.a.x, var_2.a.x)) << (vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 19970u, u_input.a), vec3<u32>(568u, 2994u, 78205u))) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(926f, _wgslsmith_f_op_f32(arg_1 - arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-594f))), 1548f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.a, 26047u, u_input.a), vec3<u32>(u_input.a, u_input.a, 11252u)), vec3<u32>(4921u, u_input.a, u_input.a) | vec3<u32>(9662u, 1u, u_input.a)), vec3<u32>(61552u, ~u_input.a, _wgslsmith_add_u32(u_input.a, 26654u))));
    var var_1 = var_0;
    var var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)) * -1225f), _wgslsmith_f_op_f32(-723f * -1462f));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-408f, -1000f), _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1114f, -621f, var_2.x)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(2764f)), -699f, _wgslsmith_f_op_f32(select(var_2.x, 524f, true))))), var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))));
    var_1 = var_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2040f));
    let var_5 = -countOneBits(firstLeadingBit(vec3<i32>(u_input.c << (var_0.x % 32u), u_input.c, select(-12954i, u_input.c, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), vec2<f32>(_wgslsmith_f_op_f32(trunc(-699f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(-var_3.x)), var_4, 3132u != (u_input.a << (u_input.a % 32u))))), vec4<u32>(u_input.a, _wgslsmith_mod_u32(~var_1.x, 31812u) ^ reverseBits(firstLeadingBit(var_0.x)), abs(~0u), ~var_0.x >> (abs(~var_1.x) % 32u)));
}

