struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.d.x >> (u_input.b % 32u);
    var_0 = i32(-1i) * -24310i;
    var var_1 = Struct_1(~(-u_input.c.x | _wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, -1i)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(1102f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(658f, -621f, true)), _wgslsmith_f_op_f32(abs(-343f)), _wgslsmith_f_op_f32(-310f - -801f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, 393f, -1135f))))), -29167i | (min(-14376i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.c.x, u_input.a.x, u_input.d.x))) | u_input.d.x));
    var_0 = -u_input.a.x;
    let var_2 = ~(~reverseBits(vec4<u32>(u_input.b, 53120u, 109771u, 95949u))) ^ vec4<u32>(1u, ~min(1u, ~4294967295u), 100094u, u_input.b);
    return vec4<bool>(var_1.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.x)) * -1334f)), true, !(_wgslsmith_f_op_f32(min(-3583f, -1000f)) <= var_1.b) & true, false);
}

fn func_2() -> Struct_4 {
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(44523i << (u_input.b % 32u), -u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 519f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1372f, 982f, -153f) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1441f, -438f, 2348f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-321f, -1996f, -436f), vec3<f32>(330f, 353f, -434f)))))), -7942i), Struct_2(-1277f), Struct_1(_wgslsmith_div_i32(max(u_input.a.x & 0i, min(2147483647i, 44594i)), -42735i), _wgslsmith_f_op_f32(sign(563f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1820f, -1000f, 361f) * vec3<f32>(-1216f, -526f, 1020f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1759f, -1778f, -1759f)), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, -859f, -332f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1346f, -250f, 1992f)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(u_input.d.x), 2147483647i), -2147483647i)), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), func_3())), u_input.b);
    var_0 = Struct_3(Struct_1(~var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-405f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.b.a, 405f)), _wgslsmith_f_op_vec3_f32(floor(var_0.c.c))))), var_0.a.a), var_0.b, var_0.c, vec4<bool>(any(!select(vec4<bool>(false, false, var_0.d.x, false), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), true)), select(any(select(vec3<bool>(false, var_0.d.x, true), vec3<bool>(false, var_0.d.x, var_0.d.x), false)), var_0.d.x, var_0.d.x), all(select(vec2<bool>(var_0.d.x, var_0.d.x), var_0.d.xw, var_0.d.x)), var_0.b.a < var_0.a.c.x), ~var_0.e);
    var var_1 = Struct_5(Struct_2(422f));
    var_1 = Struct_5(var_1.a);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(var_1.a.a - var_0.a.b)), var_0.c, !all(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), Struct_3(Struct_1(-_wgslsmith_div_i32(var_0.c.a, var_0.c.d), _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, -1159f, 331f) - var_0.a.c), _wgslsmith_f_op_vec3_f32(-var_0.c.c)), var_0.c.a << (var_0.e % 32u)), var_1.a, Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1409f * -124f)), vec3<f32>(807f, _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(max(1078f, -251f))), i32(-1i) * -15424i), var_0.d, var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -1164f));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = reverseBits(arg_2.wxx ^ (vec3<u32>(arg_3, arg_3, arg_3) >> (_wgslsmith_sub_vec3_u32(arg_2.yww, arg_2.wxz) % vec3<u32>(32u)))) & arg_2.xxz;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f * 700f)) - _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(f32(-1f) * -450f))), -298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(299f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(929f + -509f), _wgslsmith_f_op_f32(1441f - -885f))), _wgslsmith_f_op_f32(-336f * -538f)));
    var var_2 = u_input.c.x;
    var_0 = ~vec3<u32>(min(_wgslsmith_sub_u32(arg_2.x, 73721u), _wgslsmith_div_u32(arg_2.x, var_0.x)), ~max(u_input.b, var_0.x), 4294967295u) | ~max(firstTrailingBit(~vec3<u32>(4294967295u, 80909u, arg_2.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(17242u, arg_3, 23292u), vec3<u32>(var_0.x, 94133u, 1u)), vec3<u32>(4294967295u, arg_2.x, var_0.x) << (vec3<u32>(var_0.x, 0u, var_0.x) % vec3<u32>(32u)), ~vec3<u32>(15068u, 99483u, var_0.x)));
    var var_3 = func_2();
    return Struct_3(func_2().d.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), Struct_1(-1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, -886f))), _wgslsmith_div_vec3_f32(var_3.d.a.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_3.b.c + vec3<f32>(var_3.b.c.x, var_1.x, var_3.d.b.a))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 50334i, -39350i), -arg_1.xwx)), vec4<bool>(true, arg_0, true, true), ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 14>();
    var var_0 = func_1(_wgslsmith_div_i32(~(-2147483647i ^ u_input.c.x), u_input.c.x) <= ~_wgslsmith_mod_i32(1i, ~71105i), u_input.a ^ vec4<i32>(-34051i, u_input.c.x, ~1i, u_input.a.x), vec4<u32>(u_input.b, u_input.b, ~(4294967295u ^ u_input.b), _wgslsmith_mod_u32(7871u, u_input.b)), ~(~firstTrailingBit(reverseBits(u_input.b))));
    var_0 = func_1(!(u_input.c.x == _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -14986i, u_input.c.x, var_0.c.a), vec4<i32>(2147483647i, -2147483647i, 0i, 77927i)), abs(vec4<i32>(2147483647i, 27500i, -28485i, var_0.c.d)))), max(abs(-vec4<i32>(u_input.a.x, u_input.c.x, u_input.d.x, u_input.c.x)), vec4<i32>(_wgslsmith_add_i32(u_input.d.x, var_0.c.d), var_0.c.a, _wgslsmith_div_i32(1i, -2147483647i), _wgslsmith_mult_i32(1i, var_0.a.d))) & vec4<i32>(~(~var_0.c.a), 0i, _wgslsmith_div_i32(var_0.c.d, var_0.a.d) & var_0.a.d, _wgslsmith_sub_i32(u_input.d.x, 32034i) ^ (2147483647i ^ var_0.a.d)), reverseBits(vec4<u32>(select(firstTrailingBit(var_0.e), _wgslsmith_div_u32(45259u, u_input.b), true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.e, var_0.e, var_0.e), vec4<u32>(var_0.e, var_0.e, var_0.e, var_0.e)), 1u, 67465u)), u_input.b);
    var var_1 = func_2().d;
    global0 = array<vec4<f32>, 14>();
    let var_2 = Struct_3(var_1.c, var_1.b, func_1(select(!var_0.d.x, _wgslsmith_f_op_f32(413f * -380f) != var_0.a.b, true), _wgslsmith_add_vec4_i32(-(~u_input.a), vec4<i32>(i32(-1i) * -21601i, -var_0.a.d, var_0.c.a ^ u_input.c.x, -u_input.c.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(18002u, var_1.e, var_0.e, u_input.b), vec4<u32>(abs(u_input.b), ~var_1.e, u_input.b, 4294967295u)), ~_wgslsmith_mult_u32(firstLeadingBit(var_1.e), var_0.e)).c, vec4<bool>(false, func_3().x, func_2().c, true), u_input.b);
    let var_3 = _wgslsmith_sub_i32(countOneBits(-17191i) >> (var_2.e % 32u), _wgslsmith_div_i32(~14033i, var_2.c.d)) ^ var_2.c.a;
    var var_4 = Struct_4(var_2.b, Struct_1(-6285i, var_2.b.a, var_1.a.c, -firstTrailingBit(-2147483647i)), var_0.d.x, func_2().d, _wgslsmith_f_op_f32(select(var_1.b.a, _wgslsmith_f_op_f32(ceil(-2012f)), func_3().x && true)));
    var var_5 = Struct_5(func_1(!select(!var_1.d.x, var_0.d.x, !var_0.d.x), -(u_input.a ^ firstLeadingBit(u_input.a)), (~vec4<u32>(19963u, var_2.e, var_4.d.e, 1u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.d.e, 37048u, 1u, 0u), vec4<u32>(var_0.e, var_2.e, var_0.e, var_4.d.e)) % vec4<u32>(32u))) << (vec4<u32>(var_4.d.e, 4294967295u, _wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_clamp_u32(41424u, var_2.e, var_4.d.e)) % vec4<u32>(32u)), 27166u).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~43953i, u_input.c.x), vec3<u32>(var_2.e, 4294967295u, var_4.d.e), var_1.e);
}

