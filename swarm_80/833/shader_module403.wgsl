struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    let var_0 = arg_1;
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 439f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -2270f, -162f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, 1646f, 268f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -1111f)))));
    var var_2 = 1u;
    var_2 = _wgslsmith_mod_u32(arg_1.e, ~max(var_0.e, 4294967295u) | abs(~(~u_input.b.x)));
    var_2 = _wgslsmith_div_u32(38312u, 54225u);
    return false;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(all(vec2<bool>(arg_0, !arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-582f, _wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_div_f32(1098f, 417f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 1267f, arg_3.x)))))), Struct_1(true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1124f, 179f, 204f)), arg_3.zwx)), _wgslsmith_f_op_vec3_f32(floor(arg_3.xwx))))));
    var var_1 = Struct_1(true || !(_wgslsmith_f_op_f32(arg_3.x * -274f) >= var_0.a.b.x), var_0.b.b);
    var_1 = var_0.a;
    var_0 = Struct_2(Struct_1(arg_1 && (func_1(vec4<i32>(u_input.d, 7865i, u_input.a.x, u_input.a.x), Struct_3(vec2<f32>(arg_3.x, 1000f), u_input.a.wxy, 1i, arg_3, u_input.c)) || !arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zyx) * arg_3.wzw)), Struct_1(true, var_0.a.b));
    var_0 = Struct_2(var_0.b, Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, arg_3.x, arg_3.x)), vec3<f32>(735f, var_0.a.b.x, var_1.b.x)))))));
    return -u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = select(firstTrailingBit(u_input.a.zw), vec2<i32>(-4167i, _wgslsmith_mult_i32(-2147483647i, ~arg_0.x & ~u_input.a.x)), (_wgslsmith_mult_i32(46716i, -u_input.d) > u_input.d) | !(!select(arg_1.c, arg_1.c, arg_1.c)));
    let var_1 = _wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.b.x, 1u, u_input.c, _wgslsmith_clamp_u32(0u, u_input.b.x, arg_1.d.x))), u_input.b);
    var_0 = max(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-29832i, arg_0.x), vec2<i32>(1197i, arg_1.a.x), arg_0.zy)) >> ((_wgslsmith_div_vec2_u32(var_1.xx, select(vec2<u32>(0u, var_1.x), var_1.xz, arg_1.c)) & min(vec2<u32>(var_1.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(37249u, 71381u), arg_3))) % vec2<u32>(32u)), reverseBits(vec2<i32>(~reverseBits(var_0.x), u_input.d)));
    let var_2 = Struct_4(vec2<i32>(func_3(arg_1.b.b.a, select(any(vec3<bool>(arg_1.c, true, true)), arg_1.b.b.a, arg_1.b.b.a || true), ~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.b.x, arg_2.x, 1677f, arg_1.b.a.b.x))).x, ~(-3200i)), arg_1.b, arg_1.b.a.a, vec3<u32>(u_input.b.x | ~1u, u_input.c, arg_1.d.x));
    let var_3 = arg_1.b.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1102f, 1000f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = -875f;
    var_0 = -804f;
    var var_1 = Struct_1(!(!(u_input.a.x == abs(0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, -227f, -1289f))))));
    var_0 = var_1.b.x;
    var_0 = _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(min(u_input.a, vec4<i32>(u_input.d, 61587i, -41549i, 7720i)) & func_3(arg_0, false, 98421u, vec4<f32>(var_1.b.x, var_1.b.x, 139f, 1176f)), Struct_4(~u_input.a.zy, Struct_2(Struct_1(arg_0, var_1.b), Struct_1(var_1.a, vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x))), arg_0, ~vec3<u32>(u_input.b.x, 10532u, 2330u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1242f, var_1.b.x, var_1.b.x, 857f), vec4<f32>(-385f, var_1.b.x, 986f, var_1.b.x), vec4<bool>(arg_0, var_1.a, false, false))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, 1308f, var_1.b.x, -1000f), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1462f)))), abs(countOneBits(vec2<u32>(u_input.c, u_input.c))))) + var_1.b.x));
    return Struct_1(!(abs(_wgslsmith_div_i32(1i, 39113i)) > -(24152i >> (u_input.c % 32u))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * _wgslsmith_f_op_f32(var_1.b.x * 620f)), _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 407f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, 1003f, var_1.b.x), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 1079f, var_1.b.x) - _wgslsmith_f_op_vec3_f32(-var_1.b))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    let var_0 = select(vec3<i32>(firstTrailingBit(u_input.d) ^ 16647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2112i, 2147483647i, 1i), u_input.a.zyz), ~arg_0.a.x & reverseBits(arg_0.a.x)) ^ func_3(true, arg_1.a.a, ~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -166f, 425f, -1096f))).zzw, countOneBits(-countOneBits(vec3<i32>(u_input.a.x, -1i, 2147483647i)) | u_input.a.yxx), !(!vec3<bool>(func_2(false).a, false, arg_0.a.x >= -2147483647i)));
    let var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, arg_0.b.b.b.x) * arg_1.b.b.yy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.a.b.xx)))))), _wgslsmith_div_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(26705i, var_0.x), arg_0.a.x, 1i), -(~vec3<i32>(var_0.x, var_1.a.x, 2147483647i)), func_2(true).a & false), firstTrailingBit(select(vec3<i32>(-8753i, -16583i, var_1.a.x), -vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), vec3<bool>(arg_0.c, var_1.c, var_1.b.a.a)))), max(~func_3(false, arg_1.a.a | arg_0.c, ~arg_0.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1763f, 1069f, -638f))).x, -(~1i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.b.a.b.x, 1000f)), _wgslsmith_f_op_f32(arg_0.b.a.b.x + 1476f), var_1.b.a.b.x, 247f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(167f)), _wgslsmith_f_op_f32(-751f - _wgslsmith_div_f32(var_1.b.b.b.x, arg_1.a.b.x)), 116f, _wgslsmith_f_op_f32(-arg_1.b.b.x)))), 1u);
    var var_3 = u_input.a;
    let var_4 = select(~(-(u_input.a | vec4<i32>(-1i, 47321i, u_input.d, var_3.x))), _wgslsmith_sub_vec4_i32(abs(u_input.a), vec4<i32>(var_1.a.x, -27204i, 25502i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(var_3.x, arg_0.a.x))))), select(!vec4<bool>(arg_1.a.a, var_0.x < var_0.x, arg_0.b.b.a, func_2(var_1.c).a), select(vec4<bool>(true, var_1.a.x > -34103i, arg_1.a.a, var_1.c), select(select(vec4<bool>(false, false, true, arg_0.b.a.a), vec4<bool>(false, var_1.c, false, true), var_1.c), !vec4<bool>(var_1.c, var_1.b.b.a, true, true), var_1.c), vec4<bool>(all(vec2<bool>(var_1.b.a.a, var_1.b.a.a)), var_1.b.a.a, true, var_1.c)), select(!vec4<bool>(arg_1.b.a, arg_1.a.a, false, true), vec4<bool>(var_1.c, false, var_1.c, true), arg_0.b.b.a)));
    return _wgslsmith_div_u32(1u, ~firstTrailingBit(_wgslsmith_mult_u32(1u, abs(42765u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zy;
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(u_input.b.xyw)), _wgslsmith_add_vec3_u32(vec3<u32>(23284u, var_0.x, 58614u), abs(vec3<u32>(1u, u_input.c, u_input.b.x)))), _wgslsmith_add_u32(1u, min(var_0.x, abs(36202u)))) & vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x));
    var var_1 = vec3<i32>(~u_input.d, _wgslsmith_mult_i32(27311i, abs(u_input.a.x)), u_input.d);
    var_0 = vec2<u32>(~(~(~0u)), func_5(Struct_4(-countOneBits(vec2<i32>(u_input.d, 10763i)), Struct_2(Struct_1(false, vec3<f32>(1486f, -319f, -1635f)), Struct_1(false, vec3<f32>(-1054f, -1941f, -1182f))), func_1(-vec4<i32>(-45466i, var_1.x, -2147483647i, var_1.x), Struct_3(vec2<f32>(-118f, -341f), u_input.a.zyx, var_1.x, vec4<f32>(213f, 827f, -856f, -791f), 0u)), vec3<u32>(~var_0.x, ~0u, 78263u)), Struct_2(func_2(true), func_2(true))));
    var var_2 = _wgslsmith_clamp_u32(u_input.c, select(47392u, 72630u, !all(vec4<bool>(true, false, true, true)) & false), _wgslsmith_clamp_u32(~(~_wgslsmith_clamp_u32(var_0.x, 1u, var_0.x)), firstLeadingBit(~1u | _wgslsmith_sub_u32(7529u, var_0.x)), ~func_5(Struct_4(vec2<i32>(-2147483647i, u_input.d), Struct_2(Struct_1(true, vec3<f32>(973f, -1143f, 1366f)), Struct_1(true, vec3<f32>(-1000f, -798f, 995f))), false, u_input.b.yyx), Struct_2(Struct_1(false, vec3<f32>(-974f, 1289f, -411f)), Struct_1(true, vec3<f32>(364f, -598f, -199f))))));
    var_0 = max(max(abs(max(u_input.b.wz, u_input.b.xw)), vec2<u32>(1u, u_input.c)), vec2<u32>(31313u, u_input.c)) | ~vec2<u32>(u_input.b.x, ~30437u);
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(26805u, u_input.c) ^ var_3.xx), ~(~vec2<u32>(0u, var_0.x))) >> (_wgslsmith_sub_vec2_u32(~var_3.yz >> (u_input.b.wx % vec2<u32>(32u)), ~(~vec2<u32>(u_input.c, 12441u))) % vec2<u32>(32u)), firstTrailingBit(-min(-u_input.a, u_input.a)), ~_wgslsmith_clamp_vec4_i32(func_3(all(vec4<bool>(false, true, false, true)), u_input.d > 1i, var_3.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -1664f, -1353f, 1000f))), _wgslsmith_mult_vec4_i32(u_input.a, ~vec4<i32>(u_input.d, u_input.d, var_1.x, var_1.x)), -u_input.a), -229f, _wgslsmith_mult_u32(var_3.x, ~(~(u_input.c ^ u_input.c))));
}

