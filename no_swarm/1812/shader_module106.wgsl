struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i), 1i, Struct_1(0i), vec2<i32>(-1i, -33661i));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(22289i), 0i, Struct_1(2147483647i), vec2<i32>(6408i, -45133i)), Struct_2(Struct_1(-1i), -49623i, Struct_1(2147483647i), vec2<i32>(-23405i, -1i)), Struct_2(Struct_1(1i), 2983i, Struct_1(-10058i), vec2<i32>(-22162i, -1i)), Struct_2(Struct_1(0i), i32(-2147483648), Struct_1(i32(-2147483648)), vec2<i32>(-29005i, 1i)), Struct_2(Struct_1(-1i), 25073i, Struct_1(2147483647i), vec2<i32>(-49381i, -23468i)), Struct_2(Struct_1(-16370i), i32(-2147483648), Struct_1(41402i), vec2<i32>(1i, -10271i)), Struct_2(Struct_1(-17710i), 1i, Struct_1(-12730i), vec2<i32>(-194i, i32(-2147483648))), Struct_2(Struct_1(-63480i), -17552i, Struct_1(0i), vec2<i32>(-10021i, 12044i)), Struct_2(Struct_1(-10883i), 0i, Struct_1(-65049i), vec2<i32>(-5113i, -14710i)), Struct_2(Struct_1(-60807i), 1i, Struct_1(59715i), vec2<i32>(-1i, -11910i)), Struct_2(Struct_1(2147483647i), -1i, Struct_1(0i), vec2<i32>(16660i, i32(-2147483648))), Struct_2(Struct_1(30339i), -1i, Struct_1(1i), vec2<i32>(-1i, 31568i)), Struct_2(Struct_1(-10118i), 404i, Struct_1(0i), vec2<i32>(1i, -1i)), Struct_2(Struct_1(50656i), -19221i, Struct_1(2147483647i), vec2<i32>(-30076i, -14162i)), Struct_2(Struct_1(-6605i), -21481i, Struct_1(18333i), vec2<i32>(-23133i, 0i)), Struct_2(Struct_1(16083i), 2147483647i, Struct_1(-40043i), vec2<i32>(-1i, -1i)), Struct_2(Struct_1(-1i), 18787i, Struct_1(2147483647i), vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(-31109i), -19954i, Struct_1(-1i), vec2<i32>(-11157i, 38955i)), Struct_2(Struct_1(0i), -29673i, Struct_1(1i), vec2<i32>(-63137i, 1i)), Struct_2(Struct_1(-7305i), 9451i, Struct_1(-6803i), vec2<i32>(13839i, 2147483647i)), Struct_2(Struct_1(37952i), 0i, Struct_1(i32(-2147483648)), vec2<i32>(10090i, i32(-2147483648))), Struct_2(Struct_1(1i), 41784i, Struct_1(2147483647i), vec2<i32>(51791i, 0i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(select(779f, -605f, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(1559f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, var_0, -525f, -159f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(353f, -420f, -274f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), _wgslsmith_f_op_f32(abs(-100f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 2599f)))))));
    let var_2 = vec4<bool>(-1513f > var_1.x, !all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true))), !any(vec4<bool>(all(vec3<bool>(false, true, true)), var_0 <= 958f, all(vec4<bool>(true, true, true, false)), true)), false);
    let var_3 = 10867u;
    let var_4 = Struct_2(global0.c, 2147483647i, Struct_1(_wgslsmith_add_i32(-4568i, ~arg_0.x)), -vec2<i32>(u_input.b, -2989i));
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(-u_input.b | ~1i, func_3(~(-vec4<i32>(u_input.b, 35355i, global0.c.a, 1i)), reverseBits(~4294967295u))), -1i, u_input.b);
    global1 = array<Struct_2, 22>();
    var_0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, global0.d.x, global0.c.a) >> (select(u_input.a, vec3<u32>(4294967295u, 39680u, u_input.a.x), true) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.b), vec3<i32>(2147483647i, var_0.x, 13716i))), -vec3<i32>(u_input.b, -28787i, -43256i)), _wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.a, var_0.x, -28918i), vec3<i32>(global0.c.a, 5913i, var_0.x)), max(~vec3<i32>(-1i, -1i, global0.b), min(vec3<i32>(u_input.b, -20105i, 0i), vec3<i32>(u_input.b, global0.a.a, u_input.b)))), vec3<i32>(_wgslsmith_mult_i32(max(-2147483647i, 9485i), u_input.b), var_0.x, -47853i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1263f - 558f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(238f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1780f + _wgslsmith_f_op_f32(floor(219f))))), _wgslsmith_f_op_f32(f32(-1f) * -999f));
    return Struct_1(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(-24954i, abs(1i), firstLeadingBit(-27605i))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = global0.c;
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    global0 = Struct_2(func_2(_wgslsmith_div_i32(-11422i, 2147483647i), ~reverseBits(4294967295u >> (u_input.a.x % 32u))), var_0.a, Struct_1(abs(~var_0.a >> (1u % 32u))), global0.d | ~(-(~vec2<i32>(-2147483647i, -80359i))));
    var var_1 = Struct_3(1997i, global0.c, !vec4<bool>(_wgslsmith_f_op_f32(trunc(998f)) < _wgslsmith_f_op_f32(select(1017f, 121f, arg_0.x)), false, all(arg_0.xy), any(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, false, true), vec3<bool>(true, arg_0.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -236f), select(vec4<bool>(!(arg_0.x & arg_0.x), (u_input.b ^ -2147483647i) <= global0.c.a, any(!arg_0), !arg_0.x || true), select(vec4<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, true, false)), select(arg_0.x, arg_0.x, arg_0.x), !arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, true, true, true), arg_0.x), select(!vec4<bool>(arg_0.x, false, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, true, true, arg_0.x)), vec4<bool>(true, arg_0.x, arg_0.x, false))), vec4<bool>(false, false, select(true, true, true), all(select(arg_0.zx, arg_0.xx, arg_0.xx)))));
    return 470f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(func_2(select(min(-10030i, global0.b), _wgslsmith_clamp_i32(abs(u_input.b), _wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 63346i, u_input.b), vec3<i32>(u_input.b, global0.a.a, -15252i))), all(vec3<bool>(true, true, true))), 4294967295u), 2147483647i, func_2(-(~u_input.b), 81370u), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global0.d, global0.d), vec2<i32>(-10093i, _wgslsmith_sub_i32(-u_input.b, global0.b))));
    global0 = Struct_2(Struct_1(_wgslsmith_mult_i32(global0.a.a, countOneBits(global0.d.x))), -_wgslsmith_sub_i32(51159i >> (u_input.c.x % 32u), global0.c.a >> (u_input.c.x % 32u)) << (max(~(u_input.c.x << (61549u % 32u)), ~42598u) % 32u), func_2(~(func_3(vec4<i32>(-19135i, -1i, global0.c.a, global0.b), 93179u) | ~global0.b), 99094u), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.d), ~(-global0.d))));
    let var_0 = Struct_2(Struct_1(abs(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-25334i, -1i, u_input.b), vec3<i32>(global0.b, global0.c.a, 18665i))))), ~1i, func_2(firstTrailingBit(u_input.b) & _wgslsmith_mult_i32(-787i | u_input.b, _wgslsmith_mult_i32(0i, global0.c.a)), ~4294967295u), vec2<i32>(-10235i, 7172i));
    let var_1 = ~vec4<u32>(firstTrailingBit(abs(u_input.c.x)), 1u, ~_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.c.x), vec3<bool>(true, false, true)), u_input.a), u_input.a.x);
    let var_2 = Struct_2(func_2(1i, 12132u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-3762i, ~u_input.b), ~1i), -(~_wgslsmith_div_vec2_i32(vec2<i32>(global0.b, -2147483647i), global0.d))), Struct_1(global0.d.x), reverseBits(global0.d));
    return Struct_2(global0.c, abs(func_3(min(vec4<i32>(61384i, 14185i, 2147483647i, -2147483647i) >> (vec4<u32>(0u, var_1.x, var_1.x, 1u) % vec4<u32>(32u)), min(vec4<i32>(0i, 2147483647i, -62268i, -1i), vec4<i32>(global0.c.a, global0.a.a, var_0.a.a, u_input.b))), 1u)), func_2(26213i, ~var_1.x), vec2<i32>(abs(_wgslsmith_div_i32(var_2.c.a ^ -33077i, ~(-1i))), global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<f32>(-1147f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(864f + -730f), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true)))) + _wgslsmith_f_op_f32(-1f)), -758f));
    let var_0 = vec3<bool>(all(vec2<bool>(true, true)), true, u_input.a.x <= u_input.a.x);
    global0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1647f, _wgslsmith_f_op_f32(2134f * -865f), _wgslsmith_f_op_f32(floor(159f)))))));
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    var var_1 = Struct_3(_wgslsmith_mult_i32(~u_input.b, firstTrailingBit(-1i)) & _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(global0.d.x, u_input.b, u_input.b, global0.b)), ~vec4<i32>(21916i, u_input.b, -24483i, u_input.b) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(global0.a.a, 55152i, global0.d.x, global0.c.a))), Struct_1(_wgslsmith_mult_i32(countOneBits(-1i), countOneBits(~global0.d.x))), vec4<bool>((u_input.a.x < ~u_input.a.x) && (true || var_0.x), -2299f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1577f)))), var_0.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1107f, -241f, true)))), _wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(f32(-1f) * -209f))), !(!vec4<bool>(true, true || var_0.x, var_0.x, var_0.x)));
    let var_2 = ~(~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, 0u), ~14459u, firstTrailingBit(49375u), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.a, func_2(-2147483647i, 4294967295u).a, _wgslsmith_add_i32(-19704i, 5066i)));
}

