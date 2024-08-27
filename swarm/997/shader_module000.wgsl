struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.b.zwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(105f, _wgslsmith_f_op_f32(1187f + arg_0.x), _wgslsmith_f_op_f32(arg_0.x * 1445f)))));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(u_input.c), arg_3.a.x), ~(~5182u)) ^ arg_3.a.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1774f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    var var_3 = 804f;
    return (u_input.b << (0u % 32u)) >> (4294967295u % 32u);
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f), 700f))), -899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(768f)) + -1132f)), 2172f), _wgslsmith_sub_vec3_i32(abs(reverseBits(vec3<i32>(-50138i, 2147483647i, u_input.b))), ~(~(~vec3<i32>(u_input.b, -1i, u_input.b)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2065f - _wgslsmith_f_op_f32(f32(-1f) * -1024f)))), _wgslsmith_f_op_f32(sign(1236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1185f - -454f) - 375f)))));
    var var_1 = reverseBits(~u_input.a.x ^ arg_1);
    var var_2 = vec2<bool>(arg_0, arg_1 > abs(7166u));
    var_2 = vec2<bool>(!all(select(vec3<bool>(arg_0, true, true), vec3<bool>(false, var_2.x, true), vec3<bool>(true, var_2.x, false))) != (var_2.x && (_wgslsmith_mod_u32(arg_1, 7880u) == _wgslsmith_mult_u32(u_input.c, 41369u))), var_2.x);
    let var_3 = ~(~vec4<i32>(abs(~(-1i)), u_input.b, ~(u_input.b << (u_input.a.x % 32u)), _wgslsmith_mod_i32(firstLeadingBit(87221i), 1i)));
    return abs(reverseBits(~0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> vec3<i32> {
    let var_0 = select(_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.x ^ arg_1.x, _wgslsmith_div_i32(0i, arg_1.x), func_2(vec2<f32>(1997f, -1214f), Struct_4(vec3<f32>(1000f, -1693f, 338f)), Struct_1(vec4<u32>(arg_0.x, 1u, u_input.a.x, u_input.a.x), vec4<f32>(419f, 548f, 1190f, -973f), arg_1.ywz, vec2<f32>(1049f, -1598f), -445f), Struct_1(u_input.a, vec4<f32>(-1263f, 408f, -166f, 826f), arg_1.zxz, vec2<f32>(-1422f, 454f), 1670f))), 10941i) < (select(arg_1.x, reverseBits(arg_1.x), all(vec3<bool>(arg_2, arg_2, false))) >> (_wgslsmith_dot_vec3_u32(arg_0.wwx, reverseBits(vec3<u32>(arg_3, u_input.c, arg_3))) % 32u)), !(arg_1.x > arg_1.x), false);
    var var_1 = Struct_4(vec3<f32>(1000f, 1711f, -1239f));
    var var_2 = false;
    var_1 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(1287f, -496f, var_1.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)) + vec3<f32>(1361f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, -221f, var_1.a.x))))));
    var var_3 = vec4<u32>(abs(arg_3), u_input.a.x, ~(~38760u), 0u);
    return arg_1.ywz;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec4<u32>(17326u, arg_0, firstLeadingBit(arg_0), u_input.a.x), arg_3.a.b, arg_3.c.c, _wgslsmith_f_op_vec2_f32(arg_3.a.d + arg_3.a.b.yy), _wgslsmith_f_op_f32(-arg_3.a.e)), select(reverseBits(vec2<i32>(~arg_3.b.x, firstTrailingBit(0i))), arg_1.xy, all(!select(vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(false, arg_2.x, true, arg_2.x), false))), arg_3.c);
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(4294967295u), ~(4177u & u_input.c));
    var_1 = 132569u;
    let var_2 = arg_3.a;
    let var_3 = Struct_3(countOneBits(~var_2.a.x), ~_wgslsmith_mod_i32(77261i, -1i));
    return var_0;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = func_5(u_input.a.x, func_4(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), vec4<i32>(func_2(vec2<f32>(579f, 376f), Struct_4(arg_0.wwx), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(arg_0.x, 217f, arg_0.x, 1185f), vec3<i32>(48134i, u_input.b, u_input.b), vec2<f32>(-1381f, 456f), arg_0.x), Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.c, 55820u), vec4<f32>(arg_0.x, -374f, 806f, arg_0.x), vec3<i32>(u_input.b, u_input.b, u_input.b), arg_0.wz, -741f)), _wgslsmith_mult_i32(i32(-1i) * -66760i, 26691i), u_input.b, u_input.b), any(vec3<bool>(true, true, true)), ~func_3(-2284f < arg_0.x, 6580u << (1u % 32u))), select(vec3<bool>(true, true, true), !vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), Struct_2(Struct_1(abs(u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(749f, -1039f, arg_0.x, -1444f)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(217i, u_input.b, 855i) ^ vec3<i32>(0i, 0i, 2147483647i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * vec2<f32>(934f, 575f)))), 617f), ~((vec2<i32>(-2147483647i, 35133i) | vec2<i32>(u_input.b, u_input.b)) ^ select(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, 0i), vec2<bool>(false, false))), Struct_1(~min(vec4<u32>(53335u, 0u, u_input.a.x, 41677u), u_input.a), arg_0, vec3<i32>(reverseBits(u_input.b), -u_input.b, ~u_input.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, -661f))))), _wgslsmith_f_op_f32(round(1000f)))));
    var_0 = func_5(abs(min(0u, ~20969u)), ~(var_0.c.c & _wgslsmith_clamp_vec3_i32(var_0.a.c, var_0.c.c, var_0.a.c)), !vec3<bool>(true, any(vec3<bool>(true, true, true)), true), func_5((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, 1u), vec2<u32>(var_0.c.a.x, u_input.a.x)) & 62205u) & _wgslsmith_mult_u32(87267u, u_input.c << (0u % 32u)), var_0.c.c, select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), func_5(99829u, vec3<i32>(func_4(vec4<u32>(9737u, u_input.c, 39096u, 39446u), vec4<i32>(-1i, u_input.b, 1i, var_0.a.c.x), true, var_0.a.a.x).x, ~var_0.a.c.x, -1i), vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), true), Struct_2(func_5(u_input.c, vec3<i32>(-8341i, 11607i, u_input.b), vec3<bool>(true, true, false), Struct_2(var_0.a, vec2<i32>(u_input.b, -27540i), Struct_1(u_input.a, arg_0, var_0.a.c, arg_0.yz, arg_0.x))).c, var_0.c.c.yy, Struct_1(vec4<u32>(1u, var_0.a.a.x, u_input.c, 1u), arg_0, vec3<i32>(20309i, u_input.b, u_input.b), vec2<f32>(var_0.c.b.x, var_0.c.b.x), 903f)))));
    var var_1 = Struct_3(0u, _wgslsmith_mod_i32(11135i, abs(-2147483647i)));
    let var_2 = Struct_4(vec3<f32>(-430f, var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-312f)), 666f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_0.a.b.x)))));
    var_0 = Struct_2(Struct_1(~var_0.a.a, vec4<f32>(1318f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-941f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1425f)))), 1f), _wgslsmith_div_vec3_i32(abs(~var_0.c.c), ~var_0.a.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1160f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-328f)) * var_2.a.x)), var_0.a.c.yx, func_5(select(7419u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.a.x, 66403u), ~7849u), all(vec2<bool>(true, false))), vec3<i32>(var_0.a.c.x, 19730i, ~firstLeadingBit(var_0.a.c.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), func_5(15022u, var_0.a.c >> (var_0.a.a.yww % vec3<u32>(32u)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), func_5(~0u, vec3<i32>(u_input.b, var_1.b, var_1.b), vec3<bool>(false, true, true), Struct_2(var_0.a, var_0.a.c.yy, Struct_1(vec4<u32>(1u, 4294967295u, 36089u, 23798u), vec4<f32>(103f, var_0.a.d.x, -1636f, var_0.a.e), var_0.c.c, var_0.c.b.zw, arg_0.x))))).a);
    return all(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true))) && false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(select(false, true, false), u_input.c > u_input.a.x), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1106f, -458f, -497f, 547f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1320f, -931f, -814f, -658f))), vec4<bool>(true, true, true, true)))));
    var var_1 = !select(true, all(!vec4<bool>(false, true, var_0.x, false)), true) && var_0.x;
    var_1 = any(vec2<bool>(false, all(vec2<bool>(true, var_0.x)))) == false;
    var_1 = var_0.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, -1588f, 1184f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(162f, -455f, 1919f))))))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, var_2.a.x, 340f)), var_2.a)))));
    var_3 = Struct_4(var_3.a);
    let var_4 = _wgslsmith_add_i32(u_input.b, u_input.b);
    let var_5 = func_5(reverseBits(~0u), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_4, var_4, u_input.b), func_5(_wgslsmith_sub_u32(u_input.c, u_input.a.x), ~vec3<i32>(4466i, 1i, 18724i), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, false)), func_5(71337u, vec3<i32>(var_4, var_4, 5612i), vec3<bool>(var_0.x, var_0.x, false), Struct_2(Struct_1(u_input.a, vec4<f32>(var_2.a.x, var_3.a.x, var_2.a.x, 668f), vec3<i32>(u_input.b, u_input.b, 72275i), vec2<f32>(var_3.a.x, var_2.a.x), var_2.a.x), vec2<i32>(u_input.b, u_input.b), Struct_1(u_input.a, vec4<f32>(var_2.a.x, var_3.a.x, var_3.a.x, 1019f), vec3<i32>(-22009i, var_4, 0i), vec2<f32>(441f, var_3.a.x), var_2.a.x)))).c.c, -vec3<i32>(u_input.b, var_4, -1i)), func_5(~u_input.c, vec3<i32>(u_input.b, 27741i, -20737i) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) % vec3<u32>(32u)), !vec3<bool>(true, var_0.x, false), func_5(~43407u, countOneBits(vec3<i32>(0i, 0i, 13708i)), vec3<bool>(var_0.x, true, var_0.x), func_5(u_input.c, vec3<i32>(var_4, 2147483647i, 1i), vec3<bool>(false, var_0.x, false), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c), vec4<f32>(412f, var_2.a.x, var_2.a.x, -976f), vec3<i32>(var_4, -29379i, -10230i), vec2<f32>(-1000f, -866f), var_2.a.x), vec2<i32>(64255i, 0i), Struct_1(u_input.a, vec4<f32>(var_2.a.x, 1060f, 202f, var_3.a.x), vec3<i32>(-662i, var_4, u_input.b), vec2<f32>(441f, var_2.a.x), var_3.a.x))))).c.c), vec3<bool>(true, var_0.x, !var_0.x), func_5(u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_4, 0i) << (reverseBits(vec3<u32>(u_input.c, 4294967295u, 41363u)) % vec3<u32>(32u)), ~vec3<i32>(-1i, var_4, var_4) ^ firstTrailingBit(vec3<i32>(var_4, 16407i, -26998i))), vec3<bool>(select(u_input.c, 25085u, var_0.x) >= _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(23832u, u_input.a.x)), false || (-1379f >= var_2.a.x), true), Struct_2(Struct_1(min(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 154f, -623f, var_2.a.x)), min(vec3<i32>(64511i, 1i, u_input.b), vec3<i32>(var_4, var_4, 2147483647i)), _wgslsmith_f_op_vec2_f32(ceil(var_3.a.zx)), _wgslsmith_f_op_f32(-var_3.a.x)), select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 28789i), vec2<i32>(63624i, u_input.b)), vec2<i32>(var_4, 2147483647i), var_0.x), func_5(0u, func_4(vec4<u32>(u_input.a.x, 118622u, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, 1i, var_4, u_input.b), true, 0u), vec3<bool>(var_0.x, true, var_0.x), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.c), vec4<f32>(-438f, var_2.a.x, var_2.a.x, var_3.a.x), vec3<i32>(u_input.b, u_input.b, u_input.b), vec2<f32>(var_3.a.x, 885f), 833f), vec2<i32>(u_input.b, 0i), Struct_1(u_input.a, vec4<f32>(928f, var_3.a.x, 538f, 551f), vec3<i32>(1i, 2147483647i, -9621i), var_3.a.zy, var_2.a.x))).a))).a;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(u_input.a.x, var_5.c, !vec3<bool>(var_0.x != true, u_input.a.x <= 1u, var_0.x), Struct_2(Struct_1(~var_5.a, var_5.b, vec3<i32>(28146i, var_5.c.x, -31221i), var_3.a.yy, var_5.d.x), reverseBits(vec2<i32>(1i, var_5.c.x)), func_5(u_input.c, vec3<i32>(var_4, -2147483647i, -2147483647i), !vec3<bool>(var_0.x, var_0.x, true), Struct_2(Struct_1(vec4<u32>(var_5.a.x, u_input.a.x, var_5.a.x, 1u), var_5.b, vec3<i32>(-10087i, var_4, 4730i), var_2.a.xy, var_5.b.x), var_5.c.xy, var_5)).a)).a.d.x, select(vec2<i32>(var_5.c.x, select(var_5.c.x, -59726i, var_0.x | var_0.x)), _wgslsmith_clamp_vec2_i32(abs(var_5.c.zx), vec2<i32>(-1i, u_input.b) & -var_5.c.yx, abs(var_5.c.xx << (u_input.a.zy % vec2<u32>(32u)))), select(vec2<bool>(311f <= var_2.a.x, -157f >= var_2.a.x), var_0, vec2<bool>(false & var_0.x, var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -848f))), 324f, var_0.x)), ~var_5.a.x);
}

