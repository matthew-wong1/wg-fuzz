struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1642f, -411f, -312f, _wgslsmith_f_op_f32(-1000f - -1006f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-633f, 305f, 228f, -1643f), vec4<f32>(1138f, 397f, 130f, 1269f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1288f, 778f, 170f, -795f))))))));
    let var_1 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-32116i, ~arg_2.x, 1i), arg_2.zzx | arg_2.wyx));
    let var_2 = 4666u;
    let var_3 = arg_2.xwy;
    let var_4 = !(!arg_1.xx);
    return ~(-2147483647i);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = !vec2<bool>(!((u_input.a >= u_input.a) & any(arg_0)), true);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1287f);
    var var_2 = max(firstTrailingBit(~countOneBits(firstTrailingBit(vec2<i32>(-33723i, 0i)))), countOneBits(vec2<i32>(min(75903i, select(-58859i, -1i, true)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(48091i, 78809i, 1i), vec3<i32>(46027i, 6845i, 2147483647i)), func_3(arg_0.x, arg_0.xyw, vec4<i32>(1i, 0i, -1i, -2147483647i), u_input.a)))));
    let var_3 = Struct_2(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(sign(178f)), 1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1985f)))));
    var var_4 = vec2<i32>((36794i << (_wgslsmith_mod_u32(u_input.a, abs(52691u)) % 32u)) ^ firstLeadingBit(var_2.x ^ ~var_2.x), abs((i32(-1i) * -1791i) << (~u_input.a % 32u)));
    return Struct_1(!arg_0.x, vec2<u32>(u_input.a, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(28763u, 21181u), vec2<u32>(0u, 100275u)) >> (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_1(true, ~firstLeadingBit(arg_0.b));
    var var_1 = Struct_4(Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(568f, -334f, 780f) - vec3<f32>(-1617f, 1186f, 518f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, -558f, -932f))) * vec3<f32>(_wgslsmith_f_op_f32(471f * -1879f), 2127f, _wgslsmith_f_op_f32(round(1003f))))), vec3<i32>(1561i, -abs(i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(16702i, ~(-17247i)), 1i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.b.x, var_0.b.x), vec3<u32>(1u, 14199u, arg_0.b.x)) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 9053u, arg_1), vec3<u32>(1u, 1u, 16649u)));
    var var_2 = Struct_4(Struct_2(_wgslsmith_div_u32(41571u | arg_1, _wgslsmith_mult_u32(arg_0.b.x, 4294967295u)) < 50011u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), var_1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1004f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.b)))), ~(~max(select(vec3<i32>(-1i, 1159i, -1i), var_1.b, vec3<bool>(true, true, true)), vec3<i32>(1i, 1i, 14920i))), var_1.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.b + vec3<f32>(2980f, var_1.a.b.x, var_2.a.b.x))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.x, -445f, var_2.a.b.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.b.x, 959f, var_1.a.b.x), var_2.a.b))), var_2.a.b))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-699f, _wgslsmith_f_op_f32(min(var_2.a.b.x, var_3.x)))) * _wgslsmith_f_op_f32(-var_1.a.b.x))) - _wgslsmith_f_op_f32(-716f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f), 1064f)));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, ~abs(46939u)), var_1.c.xy), ~_wgslsmith_mod_u32(~countOneBits(u_input.a), arg_0.b.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(true, ~firstTrailingBit(func_4(func_2(vec4<bool>(true, false, false, true)), u_input.a)));
    return select(vec3<bool>(_wgslsmith_f_op_f32(433f * _wgslsmith_f_op_f32(sign(-1043f))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(floor(-1583f)), var_0.a)), true, true), vec3<bool>(firstTrailingBit(_wgslsmith_clamp_i32(-1i, 1028i, 2147483647i)) <= 1i, false, false), all(!(!vec4<bool>(false, var_0.a, var_0.a, true))) & !all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1810f, -741f, -295f) - vec3<f32>(-1252f, 1427f, 2027f)), vec3<f32>(-1031f, -1372f, -666f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, 1146f, 1600f)))));
    let var_1 = true;
    var_0 = Struct_2(!any(func_1()), var_0.b);
    var_0 = Struct_2(false, _wgslsmith_f_op_vec3_f32(-var_0.b));
    let var_2 = func_2(!vec4<bool>(any(vec4<bool>(true, false, var_1, true)), _wgslsmith_f_op_f32(-var_0.b.x) <= _wgslsmith_div_f32(-854f, 369f), true, var_0.a));
    var_0 = Struct_2(!(!(var_1 || var_2.a)) && func_1().x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(206f, 1408f, var_0.a)), _wgslsmith_f_op_f32(round(var_0.b.x)))), 711f)));
    let var_3 = ~(~abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(59597u, 1u, var_2.b.x), vec3<u32>(var_2.b.x, 19431u, u_input.a), false), ~vec3<u32>(1u, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.b.x, _wgslsmith_mult_u32(70388u, var_3.x) & (~var_3.x & var_3.x)), max(_wgslsmith_clamp_i32(abs(1i), ~(~(-55682i)), func_3(true, vec3<bool>(true, var_1, true), ~vec4<i32>(-4341i, 1i, 30288i, -1i), ~1u)), ~(-1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -446f, 678f, var_0.b.x), vec4<f32>(-225f, -1781f, var_0.b.x, var_0.b.x))) - vec4<f32>(var_0.b.x, 1f, _wgslsmith_f_op_f32(446f - 1105f), -654f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, -840f, var_0.b.x, var_0.b.x))), vec4<f32>(var_0.b.x, 1354f, var_0.b.x, 2592f), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, var_0.b.x, -1201f, 280f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -1556f, var_0.b.x, var_0.b.x)))))), !select(!vec4<bool>(var_2.a, var_0.a, true, var_2.a), select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_0.a, var_2.a, var_1), vec4<bool>(var_2.a, var_1, false, false)), true))), ~vec3<i32>(1i, 1i, 1i));
}

