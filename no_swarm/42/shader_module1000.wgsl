struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, vec4<i32>(0i, -21042i, 53128i, 45299i), -107f, vec3<f32>(-403f, -616f, -1200f), 16153u), Struct_1(false, vec4<i32>(-5505i, 60125i, 3128i, 11419i), 563f, vec3<f32>(309f, 823f, -983f), 4294967295u), Struct_1(true, vec4<i32>(1i, 63058i, 12694i, i32(-2147483648)), 536f, vec3<f32>(1266f, -1614f, 621f), 20126u), Struct_1(false, vec4<i32>(26904i, 0i, 0i, -1i), -174f, vec3<f32>(-288f, 1201f, -744f), 16140u), Struct_1(false, vec4<i32>(26104i, i32(-2147483648), -9221i, -25487i), 423f, vec3<f32>(1000f, -1199f, -368f), 1u), Struct_1(false, vec4<i32>(0i, -1i, 1i, 41032i), -1000f, vec3<f32>(1265f, -1037f, -812f), 47530u), Struct_1(false, vec4<i32>(66134i, 32707i, -1i, 21872i), -222f, vec3<f32>(-336f, -1488f, -308f), 4294967295u), Struct_1(false, vec4<i32>(i32(-2147483648), -32682i, i32(-2147483648), 1i), -137f, vec3<f32>(-1397f, 884f, 1752f), 0u), Struct_1(true, vec4<i32>(2147483647i, 0i, 0i, 14783i), 1045f, vec3<f32>(-1000f, -247f, -244f), 81472u), Struct_1(true, vec4<i32>(37379i, 11574i, 30579i, -11774i), -2671f, vec3<f32>(-160f, 1502f, -306f), 60073u), Struct_1(true, vec4<i32>(31965i, 1i, 34598i, -1i), 1000f, vec3<f32>(2164f, 281f, 1777f), 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = -2221f;
    global0 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), arg_0.d.x, arg_0.c) + _wgslsmith_div_vec3_f32(vec3<f32>(-1244f, arg_0.d.x, arg_0.c), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -320f, arg_0.c), vec3<f32>(var_0, var_0, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(trunc(var_0))), -538f, var_0)));
    global0 = array<Struct_1, 11>();
    let var_2 = arg_0;
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(~(0i >> (~u_input.a % 32u)) == _wgslsmith_dot_vec2_i32(arg_2.b.wy, countOneBits(_wgslsmith_div_vec2_i32(arg_2.b.zx, arg_2.b.ww))), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(~arg_2.b.x), 2147483647i, -1i, arg_2.b.x), vec4<i32>(-1i, -41155i, arg_2.b.x, -2147483647i)), -988f, arg_2.d, 4294967295u);
    var var_1 = arg_2.b.x;
    let var_2 = Struct_1(func_3(Struct_1(var_0.a, _wgslsmith_sub_vec4_i32(~arg_2.b, arg_2.b), 960f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d * arg_2.d)), _wgslsmith_mod_u32(71876u, var_0.e) & arg_2.e), vec3<u32>(~(var_0.e & 1u), 41073u, 0u), ~vec4<u32>(abs(32041u), ~arg_2.e, var_0.e, ~75540u)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(reverseBits(vec4<i32>(4834i, 1i, -3740i, var_0.b.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.b.zz, arg_2.b.zy), var_0.b.x ^ -1398i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_2.b.x), var_0.b.xy), 18355i), arg_2.b), reverseBits(abs(arg_2.b))), 327f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(625f)), 440f))), _wgslsmith_mod_u32(1u, max(4170u << (0u % 32u), u_input.a)) & (50289u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 41869u, 0u), vec3<u32>(var_0.e, u_input.a, arg_2.e) >> (vec3<u32>(arg_2.e, u_input.a, var_0.e) % vec3<u32>(32u))) % 32u)));
    var_0 = global0[_wgslsmith_index_u32(arg_2.e, 11u)];
    let var_3 = vec4<u32>(1u, select(_wgslsmith_div_u32(select(~var_0.e, _wgslsmith_add_u32(u_input.a, 1u), u_input.a >= arg_2.e), ~_wgslsmith_clamp_u32(11800u, var_2.e, 0u)), 0u, !(select(1i, 62125i, var_0.a) > arg_2.b.x)), ~(~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~28543u, ~u_input.a), var_0.e, var_0.e) ^ 14879u);
    return select(arg_2.b, vec4<i32>(abs(countOneBits(11477i)) ^ _wgslsmith_mult_i32(~(-30970i), _wgslsmith_div_i32(3068i, arg_2.b.x)), ~_wgslsmith_mod_i32(-2147483647i, select(9355i, var_2.b.x, var_2.a)), 2147483647i, reverseBits(_wgslsmith_mod_i32(u_input.b, 1i))), !var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 11>();
    let var_1 = arg_3.a;
    let var_2 = Struct_1(arg_1.a, _wgslsmith_sub_vec4_i32(var_0.b, vec4<i32>(arg_3.b.x, arg_2 | -28908i, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_1.b.x, 27895i), ~37155i), _wgslsmith_div_i32(~arg_0.b.x, _wgslsmith_mod_i32(arg_0.b.x, u_input.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x)))), arg_0.d, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, arg_3.e), vec3<u32>(0u, 1u, 4294967295u)) ^ select(vec3<u32>(92146u, 179u, var_0.e), vec3<u32>(u_input.a, arg_1.e, 0u), vec3<bool>(false, arg_1.a, true)), ~vec3<u32>(42369u, var_0.e, arg_1.e)), vec3<u32>(select(arg_1.e, _wgslsmith_mod_u32(arg_1.e, 44775u), var_0.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 32274u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.e, 11962u, 12791u, 38727u), vec4<u32>(arg_3.e, arg_1.e, 0u, arg_0.e))), firstLeadingBit(_wgslsmith_sub_u32(40407u, var_0.e)))));
    var var_3 = ~_wgslsmith_mult_vec3_i32(var_0.b.wxw, -vec3<i32>(-25026i, -2147483647i, ~var_0.b.x));
    return ~27847u;
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 41396u), vec3<u32>(u_input.a, u_input.a, 4294967295u)) | (u_input.a | _wgslsmith_mod_u32(1u, u_input.a)), _wgslsmith_mult_u32(countOneBits(68564u) & u_input.a, 48569u | u_input.a)), 11u)], Struct_1(false, _wgslsmith_clamp_vec4_i32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1137f, -188f) - vec2<f32>(408f, 435f)), true, Struct_1(false, vec4<i32>(-1280i, -1i, u_input.b, u_input.b), 1699f, vec3<f32>(197f, -447f, 1348f), u_input.a)), vec4<i32>(u_input.b << (0u % 32u), ~u_input.b, -64060i, -2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -15674i), vec4<i32>(1i, 0i, 2939i, u_input.b)), vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1907f)), _wgslsmith_f_op_f32(823f - 543f), true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))))), ~_wgslsmith_div_u32(~u_input.a, u_input.a >> (0u % 32u))), u_input.b, Struct_1(false, vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-33856i, 16728i, 1i, u_input.b), vec4<i32>(u_input.b, 4158i, -2147483647i, u_input.b), vec4<bool>(false, false, false, false)), vec4<i32>(1i, 1i, 1i, 1i)), -2147483647i, _wgslsmith_mult_i32(u_input.b, min(-1i, 2147483647i)), ~50410i), 607f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-481f, -1000f, 944f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(430f)), _wgslsmith_div_f32(-485f, -1000f), _wgslsmith_f_op_f32(max(-238f, 180f)))), ~(36937u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(2025u, u_input.a, 4294967295u, u_input.a), vec4<u32>(30621u, u_input.a, u_input.a, u_input.a))))), 11u)];
    var var_1 = vec4<bool>(!(!var_0.a), var_0.a, var_0.a, all(select(vec4<bool>(var_0.d.x < var_0.d.x, all(vec2<bool>(false, var_0.a)), all(vec2<bool>(var_0.a, false)), true), select(!vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(true, true, var_0.a, true), vec4<bool>(var_0.a, true, true, var_0.a)), max(-18077i, var_0.b.x) <= u_input.b)));
    var_1 = vec4<bool>(!(!(!var_0.a) | true), var_0.a, all(select(vec2<bool>(true, any(vec4<bool>(true, var_0.a, var_0.a, var_0.a))), vec2<bool>(true, func_3(global0[_wgslsmith_index_u32(var_0.e, 11u)], vec3<u32>(35702u, 41324u, 4294967295u), vec4<u32>(70009u, var_0.e, 1u, 56214u))), !any(vec4<bool>(var_0.a, var_1.x, true, false)))), all(var_1.yw));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(-1547f + _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1208f)) + _wgslsmith_f_op_f32(max(1323f, -1697f)))))), _wgslsmith_f_op_vec3_f32(-var_0.d), u_input.a);
    var_1 = vec4<bool>(var_0.a, all(select(vec2<bool>(var_0.a, false), !var_1.yw, var_1.x || var_1.x)) | false, select(!any(var_1.yx), var_0.a, all(select(var_1.xx, vec2<bool>(false, true), false)) || true), true);
    return global0[_wgslsmith_index_u32(~63382u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = ~(-vec3<i32>(u_input.b, 8861i, select(~(-28238i), _wgslsmith_mult_i32(u_input.b, u_input.b), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(858f, -492f) * vec2<f32>(1952f, 566f)) - vec2<f32>(-229f, 457f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(1927f)), 1414f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1263f, -298f) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -2347f), vec2<f32>(-321f, -498f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-965f, 977f) + vec2<f32>(-1385f, -1120f)) + vec2<f32>(220f, 1000f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1365f, -626f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 778f) - vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, -894f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-251f, var_1.x)))))));
    var var_2 = func_1();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 101f, 102f, -1787f) * vec4<f32>(var_2.d.x, 190f, var_1.x, -1962f)), vec4<f32>(-264f, var_2.c, var_2.d.x, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1210f, -1045f, var_1.x, -949f) + vec4<f32>(var_1.x, var_1.x, var_1.x, -973f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1415f, var_1.x, -750f, var_2.c), vec4<f32>(-248f, 581f, var_2.d.x, 1097f)))), !(!vec4<bool>(true, var_3, false, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -721f, -497f, var_2.d.x), vec4<f32>(var_2.d.x, var_1.x, 106f, var_2.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.d.x, var_1.x, -655f) * vec4<f32>(var_2.c, -239f, 131f, var_2.c))))), 14925i);
}

