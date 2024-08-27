struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(-1014f, -3802i), 354f, Struct_1(261f, 0i), Struct_1(-1000f, -1i), vec3<bool>(true, false, false)), Struct_2(Struct_1(-650f, i32(-2147483648)), -650f, Struct_1(-528f, i32(-2147483648)), Struct_1(652f, -51234i), vec3<bool>(true, true, false)), Struct_2(Struct_1(193f, 3728i), 944f, Struct_1(-321f, -774i), Struct_1(-429f, 733i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-372f, 2147483647i), -238f, Struct_1(-2268f, -1i), Struct_1(-1188f, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_2(Struct_1(-990f, 31063i), -1000f, Struct_1(882f, 0i), Struct_1(163f, 1i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-142f, -34133i), -1602f, Struct_1(-2155f, -8480i), Struct_1(518f, 1i), vec3<bool>(true, false, false)), Struct_2(Struct_1(603f, -44380i), 414f, Struct_1(1119f, -1i), Struct_1(341f, 0i), vec3<bool>(false, false, false)), Struct_2(Struct_1(204f, 38033i), -562f, Struct_1(975f, i32(-2147483648)), Struct_1(-1000f, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_2(Struct_1(-551f, -17888i), -205f, Struct_1(-701f, 12942i), Struct_1(688f, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_2(Struct_1(626f, 27175i), 1429f, Struct_1(351f, 4743i), Struct_1(-1002f, -1i), vec3<bool>(true, true, false)), Struct_2(Struct_1(465f, -25486i), -1647f, Struct_1(-1000f, -13584i), Struct_1(540f, -1i), vec3<bool>(false, false, false)), Struct_2(Struct_1(135f, -1i), 730f, Struct_1(-1578f, -52043i), Struct_1(919f, 21032i), vec3<bool>(false, false, false)), Struct_2(Struct_1(-1357f, 2147483647i), 575f, Struct_1(-147f, 0i), Struct_1(1674f, -1i), vec3<bool>(false, true, false)), Struct_2(Struct_1(-206f, -1i), -860f, Struct_1(788f, i32(-2147483648)), Struct_1(-515f, -7555i), vec3<bool>(false, false, false)), Struct_2(Struct_1(-1089f, 0i), 305f, Struct_1(1191f, 2147483647i), Struct_1(-1335f, -63460i), vec3<bool>(true, false, false)), Struct_2(Struct_1(1094f, -1i), -675f, Struct_1(730f, 15845i), Struct_1(-413f, -1i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-2315f, 8851i), 1000f, Struct_1(198f, -7539i), Struct_1(928f, 40542i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-236f, 0i), 1000f, Struct_1(788f, -5423i), Struct_1(-933f, 6793i), vec3<bool>(false, false, true)), Struct_2(Struct_1(797f, i32(-2147483648)), 544f, Struct_1(-667f, 0i), Struct_1(-1082f, 79317i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-1124f, 0i), 1042f, Struct_1(696f, -1i), Struct_1(-1687f, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_2(Struct_1(-656f, 21943i), 312f, Struct_1(1977f, i32(-2147483648)), Struct_1(233f, -1i), vec3<bool>(true, false, true)), Struct_2(Struct_1(648f, i32(-2147483648)), -1042f, Struct_1(-208f, -1030i), Struct_1(-383f, 2147483647i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-561f, i32(-2147483648)), 661f, Struct_1(1062f, 2147483647i), Struct_1(-277f, 0i), vec3<bool>(false, false, false)), Struct_2(Struct_1(1122f, -63011i), -364f, Struct_1(1000f, -1i), Struct_1(-2188f, 1i), vec3<bool>(true, false, true)), Struct_2(Struct_1(-1441f, -20618i), 591f, Struct_1(-695f, i32(-2147483648)), Struct_1(963f, -1i), vec3<bool>(false, false, true)), Struct_2(Struct_1(927f, 32422i), -517f, Struct_1(690f, 14498i), Struct_1(2030f, -2549i), vec3<bool>(false, true, true)), Struct_2(Struct_1(714f, 0i), -158f, Struct_1(-1058f, 1i), Struct_1(1129f, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_2(Struct_1(-2739f, -15867i), 164f, Struct_1(886f, 1i), Struct_1(108f, 27062i), vec3<bool>(true, true, false)), Struct_2(Struct_1(-2446f, i32(-2147483648)), 621f, Struct_1(-293f, i32(-2147483648)), Struct_1(619f, 25578i), vec3<bool>(false, true, false)), Struct_2(Struct_1(-1000f, 6766i), -190f, Struct_1(-257f, 14089i), Struct_1(-526f, -1i), vec3<bool>(true, true, true)), Struct_2(Struct_1(-1177f, -10490i), -1000f, Struct_1(975f, -18340i), Struct_1(520f, -20266i), vec3<bool>(true, false, true)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = abs(4294967295u);
    global0 = array<Struct_2, 31>();
    var var_1 = vec4<u32>((~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47747u, arg_1.x, 0u), vec4<u32>(4294967295u, var_0, arg_1.x, 7562u)) | _wgslsmith_dot_vec3_u32(arg_1, arg_1)) ^ var_0, 11832u, _wgslsmith_div_u32(arg_1.x, _wgslsmith_add_u32(var_0, 1u | _wgslsmith_mod_u32(arg_1.x, var_0))), _wgslsmith_clamp_u32(var_0, _wgslsmith_sub_u32(select(0u, 4294967295u, false), ~27829u), 52588u) << (1u % 32u));
    let var_2 = global0[_wgslsmith_index_u32(~45940u, 31u)];
    global0 = array<Struct_2, 31>();
    return ~0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(332f + arg_1.c.a), _wgslsmith_add_i32(countOneBits(arg_1.a.b) << (_wgslsmith_clamp_u32(55253u, 1u, 2137u) % 32u), _wgslsmith_div_i32(1i, 9321i)) << (4294967295u % 32u));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(31995u), ~(~40070u)), _wgslsmith_sub_u32(30569u, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2747f, var_0.a, arg_1.b, 1000f)), vec3<u32>(1u, 1u, 1u), Struct_1(-2658f, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(684f, var_0.a) + vec2<f32>(arg_1.a.a, 130f))))), 31u)];
    let var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(514f + 316f), firstTrailingBit(15890i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a, -683f) * _wgslsmith_div_f32(122f, var_0.a)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -231f))));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global0 = array<Struct_2, 31>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), Struct_2(Struct_1(817f, 2147483647i), -1013f, Struct_1(998f, -3711i), Struct_1(-1025f, 2147483647i), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(ceil(293f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -919f)))), reverseBits(arg_0));
    let var_1 = !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, var_0.a, -1464f, var_0.a) + vec4<f32>(var_0.a, -422f, var_0.a, var_0.a)))), vec3<u32>(1u, 1u, 1u), Struct_1(_wgslsmith_f_op_f32(var_0.a + var_0.a), -15072i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, 787f))))), 20918u >> (~(~0u) % 32u)), reverseBits(_wgslsmith_mult_u32(0u << (1u % 32u), 27290u)), _wgslsmith_add_u32(~min(1u, ~11803u), abs(_wgslsmith_mult_u32(func_3(vec4<f32>(var_0.a, 1000f, var_0.a, -353f), vec3<u32>(4294967295u, 21859u, 41212u), Struct_1(-681f, -14428i), vec2<f32>(-2060f, 555f)), min(14014u, 846u)))));
    let var_3 = var_0.b;
    return firstTrailingBit(vec4<u32>(~select(0u, 4294967295u, true), 34094u, var_2.x ^ countOneBits(var_2.x), 1u)) & firstLeadingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u), vec4<u32>(var_2.x, 0u, 0u, 13452u)), _wgslsmith_sub_vec4_u32(vec4<u32>(39786u, 54975u, var_2.x, 20967u) << (vec4<u32>(71538u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u)), vec4<u32>(var_2.x, var_2.x, 58684u, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    let var_0 = func_1(_wgslsmith_div_i32(0i, u_input.c ^ u_input.b));
    global0 = array<Struct_2, 31>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 4294967295u), 31u)];
    let var_2 = vec4<i32>(var_1.c.b, -12733i, -13063i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b, 2147483647i), vec2<i32>(var_1.d.b, 1i)), 1i, var_1.d.b >> (var_0.x % 32u))), vec4<i32>(-u_input.c, max(~2147483647i, -20199i), u_input.a.x, 2147483647i)));
    let var_3 = var_1.c.b;
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_2, var_2), u_input.a.x, ~u_input.b), countOneBits(-1i)), 1i);
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.x, _wgslsmith_div_i32(10583i, _wgslsmith_sub_i32(var_4, 0i)), var_4 == _wgslsmith_dot_vec4_i32(var_2, var_2)) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b, ~var_4), vec2<i32>(u_input.c, 2147483647i)), _wgslsmith_div_i32(~(-_wgslsmith_clamp_i32(-5896i, u_input.a.x, -37125i)), _wgslsmith_dot_vec2_i32(max(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_2.x, -8789i)), ~var_2.yw), vec2<i32>(var_2.x, 1i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f - -193f) * _wgslsmith_f_op_f32(min(-462f, var_1.c.a))) * var_1.c.a), var_1.c.a), 783f);
}

