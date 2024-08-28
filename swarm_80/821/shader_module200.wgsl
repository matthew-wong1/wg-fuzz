struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(602f - arg_2.b.x)))), 865f, arg_1.x, arg_0.b.x) + arg_1);
    return select(!vec4<bool>(!(true & arg_2.a), arg_0.a && arg_2.a, !(arg_0.b.x != arg_2.b.x), true), !vec4<bool>(!arg_2.d.x, true, !(!arg_2.d.x), !(arg_0.a && false)), !arg_2.d);
}

fn func_3() -> vec3<bool> {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1025f, 177f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1722f, -308f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, 1368f))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1173f, 1986f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(546f, 448f))))), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(265f, 791f))), _wgslsmith_f_op_f32(ceil(-1000f)))));
    var var_1 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(~(-13885i), abs(-9544i), -2147483647i), -select(vec3<i32>(-18006i, -1i, 4907i), vec3<i32>(-1i, -1i, -51902i), vec3<bool>(true, true, true))) << (countOneBits(firstTrailingBit(vec3<u32>(98403u, u_input.a, 11269u) & vec3<u32>(u_input.c, 0u, 4294967295u))) % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_div_i32(1i, ~28478i), i32(-1i) * -2930i, min(2147483647i, -51038i)));
    var var_2 = all(vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)) && true, func_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), select(vec2<i32>(2147483647i, -50204i), vec2<i32>(-2147483647i, 43740i), vec2<bool>(false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), abs(vec2<u32>(25798u, u_input.a))), vec4<f32>(332f, var_0.x, -1587f, _wgslsmith_f_op_f32(sign(-1295f))), Struct_1(-253f >= var_0.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2337f, -973f), vec2<f32>(1220f, -475f), false)), select(vec2<i32>(0i, -30595i), vec2<i32>(893i, -5736i), vec2<bool>(true, true)), vec4<bool>(true, true, true, true), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 18295u), vec2<u32>(u_input.b, 42719u))), select(countOneBits(u_input.b), u_input.c, true)).x));
    var_2 = -2597i != countOneBits(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 41641i), -61338i, _wgslsmith_sub_i32(1i, 4185i))));
    return !vec3<bool>(true, !func_2(Struct_1(true, vec2<f32>(743f, var_0.x), vec2<i32>(7528i, 1i), vec4<bool>(true, true, false, true), vec2<u32>(1u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, var_0.x, var_0.x, -2481f)), Struct_1(false, vec2<f32>(var_0.x, -1364f), vec2<i32>(26295i, -7353i), vec4<bool>(true, true, false, false), vec2<u32>(53336u, u_input.b)), _wgslsmith_mult_u32(0u, 0u)).x, true && (true || all(vec3<bool>(false, false, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(210f)), _wgslsmith_f_op_f32(-arg_3)))), vec2<i32>(countOneBits(~19190i), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, ~3108i), -10973i)), !(!(!(!vec4<bool>(arg_1.x, true, true, true)))), vec2<u32>(4735u, 4294967295u));
    let var_1 = any(var_0.d.wy) & var_0.d.x;
    var_0 = Struct_1((_wgslsmith_add_i32(~1i, ~(-12925i)) | var_0.c.x) != _wgslsmith_mult_i32(i32(-1i) * -13851i, _wgslsmith_dot_vec2_i32(-var_0.c, -vec2<i32>(var_0.c.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(step(-395f, arg_3)), 736f), any(select(var_0.d.xz, var_0.d.wy, vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1947f))))), ~var_0.c, !vec4<bool>(var_1, true, !(!var_0.a), true), ~var_0.e);
    var var_2 = var_0.b;
    let var_3 = arg_0.xy;
    return (i32(-1i) * -1i) != _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(firstLeadingBit(var_0.c.x) & var_0.c.x, var_0.c.x << (~u_input.b % 32u)));
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    global0 = !(!((true && any(vec2<bool>(false, false))) & false));
    global0 = all(vec3<bool>(any(func_2(Struct_1(true, vec2<f32>(-986f, -571f), vec2<i32>(-4969i, 1i), vec4<bool>(false, false, true, false), vec2<u32>(u_input.a, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-744f, 953f, 576f, 1061f) * vec4<f32>(-3059f, 1018f, -1000f, 1451f)), Struct_1(false, vec2<f32>(-575f, 386f), vec2<i32>(2147483647i, -53392i), vec4<bool>(true, false, false, false), vec2<u32>(0u, u_input.b)), 4294967295u)), !(!(4294967295u != u_input.c)), true));
    global0 = any(!select(vec4<bool>(u_input.a >= arg_0.x, true, true, true), vec4<bool>(true, true, false, false), func_2(Struct_1(true, vec2<f32>(118f, -538f), vec2<i32>(642i, 2147483647i), vec4<bool>(false, true, false, false), vec2<u32>(44277u, u_input.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-131f, 460f, 498f, -262f), vec4<f32>(-760f, -511f, -1000f, -1094f)), Struct_1(true, vec2<f32>(-943f, 623f), vec2<i32>(-1i, -2147483647i), vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 4294967295u)), ~52064u)));
    var var_0 = Struct_1(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true)) & func_4(vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, false))), select(func_3(), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1185f - 868f) - _wgslsmith_div_f32(-2086f, 1963f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1628f, 431f)))))), max(countOneBits(vec2<i32>(-1i, 0i)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(30217i, 56609i), vec2<i32>(10179i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -8008i), vec2<i32>(0i, 0i), vec2<i32>(30866i, 13636i)))) << (~(~vec2<u32>(u_input.a, 1572u)) % vec2<u32>(32u)), vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !all(vec4<bool>(true, true, true, true)), !(true || func_4(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false, -696f))), arg_0);
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, -1745f, -345f), vec3<f32>(var_1, var_1, 369f))), vec3<f32>(1135f, var_1, var_1)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(var_1 + 1752f)), var_1, var_1)));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> StorageBuffer {
    let var_0 = ~_wgslsmith_add_u32(~(~max(u_input.a, 0u)), abs(u_input.c) << (reverseBits(1u) % 32u));
    var var_1 = Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.xx))))), arg_2.yy, select(func_2(Struct_1(arg_1, vec2<f32>(arg_2.x, 2077f), vec2<i32>(5802i, 1i), vec4<bool>(true, arg_1, true, arg_1), vec2<u32>(arg_0, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1608f, arg_2.x, -567f, 410f) + vec4<f32>(-1325f, 178f, arg_2.x, -1004f)), Struct_1(false, arg_2.yx, vec2<i32>(-24164i, 2147483647i), vec4<bool>(arg_1, arg_1, arg_1, false), vec2<u32>(33393u, var_0)), var_0).xz, vec2<bool>(arg_1, all(vec3<bool>(arg_1, arg_1, arg_1))), arg_1))), ~vec2<i32>(1i, -2147483647i), select(func_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, arg_2.x))), vec2<i32>(1i, 1i), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1)), vec2<u32>(35302u, 48467u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, 1119f, arg_2.x, arg_2.x)))), Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)), ~vec2<i32>(-31654i, -30613i), !vec4<bool>(false, arg_1, false, arg_1), vec2<u32>(0u, 7757u)), ~4294967295u), !vec4<bool>(true, true, true, arg_1), func_3().x), ~select(~(~vec2<u32>(4294967295u, 0u)), reverseBits(~vec2<u32>(1u, 4130u)), !vec2<bool>(false, arg_1)));
    var var_2 = firstTrailingBit(_wgslsmith_add_i32(~(~(var_1.c.x ^ 59312i)), -39422i));
    var_1 = Struct_1((_wgslsmith_mult_i32(var_1.c.x, var_1.c.x) | max(~(-26586i), _wgslsmith_mod_i32(var_1.c.x, -1892i))) < (2147483647i << (_wgslsmith_clamp_u32(4294967295u, ~4294967295u, var_0) % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-959f, arg_2.x) - vec2<f32>(-1313f, _wgslsmith_f_op_f32(floor(var_1.b.x)))), var_1.c, vec4<bool>(-775f <= arg_2.x, arg_1, false, false), var_1.e);
    let var_3 = var_0;
    return StorageBuffer(vec4<u32>(var_0, 1u, 15970u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(abs(~_wgslsmith_sub_u32(~u_input.a, u_input.c)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -400f, 1198f) - vec3<f32>(-309f, -537f, 882f)), _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(u_input.c, u_input.a)))) * vec3<f32>(-1420f, -602f, _wgslsmith_f_op_f32(527f * 789f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1000f, -218f), vec3<f32>(232f, -1128f, -409f), vec3<bool>(true, true, false))), _wgslsmith_div_vec3_f32(vec3<f32>(-186f, 202f, 1886f), vec3<f32>(686f, -146f, 189f))))));
}

