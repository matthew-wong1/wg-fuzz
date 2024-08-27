struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(1u, -138f, Struct_1(vec2<f32>(2163f, 1435f), i32(-2147483648), vec4<bool>(true, true, true, false), false, vec3<u32>(0u, 0u, 41948u)), vec4<u32>(4294967295u, 1u, 4294967295u, 15594u), Struct_1(vec2<f32>(-692f, -2057f), -8118i, vec4<bool>(true, true, false, true), true, vec3<u32>(4294967295u, 1u, 3043u))), Struct_3(40678u, 470f, Struct_1(vec2<f32>(-411f, 1094f), i32(-2147483648), vec4<bool>(false, false, true, true), true, vec3<u32>(0u, 4294967295u, 30862u)), vec4<u32>(4294967295u, 29177u, 56394u, 4294967295u), Struct_1(vec2<f32>(-2503f, 2206f), 2147483647i, vec4<bool>(true, false, false, true), false, vec3<u32>(1082u, 55995u, 133712u))), Struct_3(25759u, 941f, Struct_1(vec2<f32>(-441f, 511f), 0i, vec4<bool>(false, true, true, false), false, vec3<u32>(4294967295u, 4294967295u, 75889u)), vec4<u32>(65397u, 0u, 1u, 0u), Struct_1(vec2<f32>(861f, 527f), i32(-2147483648), vec4<bool>(false, true, true, false), false, vec3<u32>(37751u, 8968u, 83746u))), Struct_3(0u, -199f, Struct_1(vec2<f32>(-555f, 242f), 1i, vec4<bool>(true, false, true, true), false, vec3<u32>(26551u, 60008u, 0u)), vec4<u32>(0u, 1u, 4294967295u, 62672u), Struct_1(vec2<f32>(798f, -218f), -1i, vec4<bool>(false, true, false, false), false, vec3<u32>(4294967295u, 43679u, 1u))), Struct_3(13201u, 585f, Struct_1(vec2<f32>(-388f, -1000f), -9988i, vec4<bool>(true, true, false, false), true, vec3<u32>(4169u, 4294967295u, 4294967295u)), vec4<u32>(35161u, 0u, 4294967295u, 87294u), Struct_1(vec2<f32>(-182f, 1383f), 7080i, vec4<bool>(true, false, true, true), true, vec3<u32>(1u, 1u, 65001u))), Struct_3(0u, 742f, Struct_1(vec2<f32>(440f, 1336f), -8051i, vec4<bool>(false, false, true, true), false, vec3<u32>(89300u, 8336u, 0u)), vec4<u32>(4294967295u, 35170u, 0u, 0u), Struct_1(vec2<f32>(-1257f, 1144f), -954i, vec4<bool>(false, true, true, false), true, vec3<u32>(0u, 27760u, 11324u))));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<Struct_3, 6>();
    var var_0 = ~countOneBits(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(93812u), ~(~arg_1.e.x)));
    let var_1 = !vec3<bool>(all(select(arg_2.b, !vec4<bool>(arg_1.c.x, true, true, arg_1.c.x), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.d, arg_2.c.c.x, arg_3.b.x, true), vec4<bool>(true, false, false, arg_2.b.x)))), any(!vec4<bool>(false, arg_2.c.d, true, false)), arg_1.d);
    var var_2 = arg_2;
    let var_3 = vec2<u32>(4294967295u, ~0u);
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(select(vec4<u32>(arg_3.c.e.x, u_input.b, arg_1.e.x, arg_1.e.x), vec4<u32>(u_input.b, u_input.b, 77880u, 18920u), vec4<bool>(var_2.c.d, arg_3.b.x, arg_3.b.x, true))), ~(~vec4<u32>(arg_2.c.e.x, var_2.c.e.x, 0u, 66656u))), ~vec4<u32>(~0u, arg_1.e.x, 1u, _wgslsmith_mod_u32(1u, 35643u))) & ((reverseBits(firstTrailingBit(vec4<u32>(32734u, 1u, 31332u, 186u))) | vec4<u32>(6325u, ~0u, 24364u, _wgslsmith_mult_u32(var_2.c.e.x, arg_1.e.x))) & ~vec4<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), select(arg_1.e.x, u_input.b, var_2.b.x), _wgslsmith_sub_u32(arg_3.c.e.x, 4294967295u), select(var_3.x, u_input.b, arg_2.c.d)));
}

fn func_4(arg_0: u32) -> vec2<i32> {
    global0 = array<Struct_3, 6>();
    let var_0 = vec3<bool>(true, ~arg_0 == _wgslsmith_sub_u32(u_input.a.x, 14908u), !(!(_wgslsmith_div_i32(0i, u_input.c.x) >= abs(0i))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1998f) * -699f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(426f, 490f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-179f, 1561f)))))))), ~(u_input.c.x >> (~60647u % 32u)), !vec4<bool>(var_0.x, select(!var_0.x, var_0.x, var_0.x), (u_input.b == arg_0) & var_0.x, false), true, ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 4294967295u)), ~vec3<u32>(arg_0, u_input.b, 1u)), ~(vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(4294967295u, arg_0, arg_0) % vec3<u32>(32u)))));
    let var_2 = Struct_1(var_1.a, ~(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 0i, 30820i, -2147483647i)), select(vec4<i32>(1i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(53232i, 20337i, 0i, -481i), var_0.x))), var_1.c, !var_0.x, var_1.e);
    let var_3 = min(vec4<u32>(58849u ^ _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4796u, arg_0, u_input.a.x)), select(vec4<u32>(1u, u_input.b, arg_0, var_2.e.x), vec4<u32>(4294967295u, var_2.e.x, u_input.a.x, u_input.b), var_2.c.x)), 20206u, var_1.e.x, arg_0), ~(~(~abs(vec4<u32>(arg_0, var_1.e.x, 41342u, 19328u)))));
    return _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, -32838i), _wgslsmith_sub_vec2_i32(-u_input.c, select(vec2<i32>(u_input.c.x, var_1.b), vec2<i32>(-1i, 3755i), vec2<bool>(var_2.d, true))))), _wgslsmith_add_vec2_i32(-vec2<i32>(var_1.b, u_input.c.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.e.x, 4294967295u), firstLeadingBit(var_1.e.zx), ~var_1.e.zz) % vec2<u32>(32u)), u_input.c));
}

fn func_2() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x)) ^ func_3(2147483647i, Struct_1(vec2<f32>(-680f, -340f), u_input.c.x, vec4<bool>(true, false, false, true), false, vec3<u32>(43606u, 10281u, u_input.a.x)), Struct_2(vec3<i32>(49098i, u_input.c.x, u_input.c.x), vec4<bool>(true, true, false, true), Struct_1(vec2<f32>(1775f, 520f), -1i, vec4<bool>(true, true, true, true), false, vec3<u32>(u_input.b, 1u, u_input.b))), Struct_2(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec4<bool>(true, false, false, true), Struct_1(vec2<f32>(2025f, 519f), u_input.c.x, vec4<bool>(false, true, false, true), false, vec3<u32>(u_input.b, 4294967295u, 43608u)))), vec4<u32>(69566u, 1u, u_input.a.x, 4294967295u)));
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2007f, -616f, false)), _wgslsmith_f_op_f32(floor(759f))))) == _wgslsmith_f_op_f32(select(109f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1203f, 603f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1228f))))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), select(true, true, false)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-492f)))) - vec2<f32>(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2084f))))), abs(func_4(~(~1u)).x), vec4<bool>(var_1, var_1, !(!var_1), all(vec4<bool>(true, true, true, true))), true, vec3<u32>(u_input.a.x, func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, -63046i, -7216i, -2147483647i), ~vec4<i32>(36199i, var_0.x, var_0.x, 1570i)), Struct_1(vec2<f32>(-101f, -580f), var_0.x, vec4<bool>(false, true, var_1, var_1), var_1 || false, ~vec3<u32>(u_input.b, 46418u, u_input.b)), Struct_2(-vec3<i32>(2147483647i, 1i, -1i), vec4<bool>(var_1, var_1, var_1, false), Struct_1(vec2<f32>(778f, -572f), var_0.x, vec4<bool>(var_1, var_1, var_1, var_1), false, vec3<u32>(u_input.a.x, u_input.b, 1u))), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, var_0.x), vec3<i32>(var_0.x, -22381i, var_0.x)), vec4<bool>(var_1, true, var_1, false), Struct_1(vec2<f32>(-393f, -345f), 9768i, vec4<bool>(true, var_1, false, false), true, vec3<u32>(1u, u_input.b, u_input.b)))).x, 4294967295u));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = false;
    var var_1 = -abs(min(_wgslsmith_sub_i32(0i, arg_2), -2147483647i)) != ~(~(firstLeadingBit(arg_2) << (u_input.b % 32u)));
    var var_2 = func_2();
    let var_3 = func_2();
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, var_3.a.x), vec2<f32>(1854f, 1416f))))), var_3.a)), firstLeadingBit(-1i), vec4<bool>((_wgslsmith_mod_u32(var_3.e.x, 0u) <= 37382u) && !(var_3.d || var_2.d), var_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 74141u), ~vec3<u32>(u_input.a.x, 8770u, var_2.e.x)) < ~49284u, var_3.c.x & any(!var_2.c)), !(var_2.b >= min(-5864i ^ var_2.b, ~20560i)), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.e.x, 0u, 7265u), vec3<u32>(var_2.e.x, 22770u, var_3.e.x)), vec3<u32>(38733u, 0u | abs(var_2.e.x), countOneBits(abs(u_input.a.x)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(select(true, any(vec3<bool>(true, true, true)), true) && !(_wgslsmith_f_op_f32(floor(-1494f)) >= -121f), false, true);
    let var_1 = select(select(vec4<bool>(func_1(u_input.b <= u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1096f, -1084f, -1420f), vec4<f32>(-1973f, -1431f, -1155f, 2139f), vec4<bool>(var_0.x, false, false, true))), -u_input.c.x, vec3<i32>(u_input.c.x, -9169i, 2147483647i) & vec3<i32>(-2147483647i, u_input.c.x, -1i)), all(!vec4<bool>(var_0.x, var_0.x, false, false)), var_0.x, var_0.x), !func_2().c, !var_0.x), func_2().c, true);
    let var_2 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c.x, -38936i) | (vec4<i32>(4429i, -40539i, 0i, 75814i) << (vec4<u32>(0u, 4294967295u, 68108u, u_input.a.x) % vec4<u32>(32u))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 2400i), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -1i), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x)), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))) ^ _wgslsmith_mult_vec4_i32(abs(~select(vec4<i32>(u_input.c.x, 20449i, u_input.c.x, -10700i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.x))), ~vec4<i32>(1i, u_input.c.x, 36097i, 0i));
    var_0 = vec3<bool>((~abs(4294967295u) << (u_input.b % 32u)) <= func_2().e.x, var_0.x, true & var_1.x);
    let var_3 = var_0.xy;
    var_0 = !(!select(vec3<bool>(select(var_3.x, var_1.x, false), func_1(true, vec4<f32>(775f, -216f, 109f, -661f), u_input.c.x, var_2.xyy), var_3.x), vec3<bool>(false, var_1.x, func_2().c.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_3.x), !vec3<bool>(false, false, var_0.x))));
    let var_4 = Struct_2(-var_2.yyz, !func_2().c, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b, 45516u, var_4.a.yz << (var_4.c.e.yy % vec2<u32>(32u)));
}

