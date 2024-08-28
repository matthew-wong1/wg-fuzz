struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 23101i, 2147483647i);

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<f32>(-1534f, -638f), vec4<i32>(-44741i, 16064i, i32(-2147483648), -24583i)), Struct_3(vec2<f32>(149f, -684f), vec4<i32>(2787i, 58468i, -2861i, -1i)), Struct_3(vec2<f32>(-841f, 161f), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648))), Struct_3(vec2<f32>(-971f, -1373f), vec4<i32>(-17943i, 14677i, -40084i, 1i)), Struct_3(vec2<f32>(2413f, 1052f), vec4<i32>(-29285i, 28003i, -1i, 25782i)), Struct_3(vec2<f32>(731f, 1479f), vec4<i32>(0i, 29913i, -1i, i32(-2147483648))), Struct_3(vec2<f32>(-1000f, -787f), vec4<i32>(2147483647i, -1i, 43283i, 0i)), Struct_3(vec2<f32>(478f, -1483f), vec4<i32>(0i, -29434i, 0i, 24384i)), Struct_3(vec2<f32>(-617f, -855f), vec4<i32>(1i, -15282i, 40768i, 15426i)), Struct_3(vec2<f32>(-1118f, -844f), vec4<i32>(-11052i, 14838i, 2147483647i, 1i)), Struct_3(vec2<f32>(-983f, 341f), vec4<i32>(2147483647i, -1i, -28772i, 57276i)), Struct_3(vec2<f32>(287f, 1136f), vec4<i32>(1i, i32(-2147483648), -988i, 16955i)), Struct_3(vec2<f32>(424f, 1000f), vec4<i32>(37610i, 17911i, 27980i, 1i)), Struct_3(vec2<f32>(522f, -1602f), vec4<i32>(-13762i, 1i, -1i, 20749i)), Struct_3(vec2<f32>(-1954f, 1655f), vec4<i32>(1i, 2147483647i, 0i, 2147483647i)), Struct_3(vec2<f32>(797f, 136f), vec4<i32>(-43010i, 1i, i32(-2147483648), 57260i)), Struct_3(vec2<f32>(-514f, 1732f), vec4<i32>(-1i, i32(-2147483648), -1515i, i32(-2147483648))), Struct_3(vec2<f32>(-488f, -406f), vec4<i32>(3847i, -1299i, 1i, 1i)), Struct_3(vec2<f32>(-664f, 962f), vec4<i32>(-1i, 11770i, 1i, -29672i)), Struct_3(vec2<f32>(1710f, 1000f), vec4<i32>(1i, -27172i, 0i, -15336i)), Struct_3(vec2<f32>(1000f, 163f), vec4<i32>(-43040i, -57367i, -20777i, -1i)), Struct_3(vec2<f32>(-2218f, -1645f), vec4<i32>(5014i, -13981i, -2636i, 15646i)), Struct_3(vec2<f32>(463f, -1000f), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -10657i)), Struct_3(vec2<f32>(750f, -1154f), vec4<i32>(2145i, 2147483647i, 30153i, 0i)), Struct_3(vec2<f32>(555f, -1018f), vec4<i32>(1i, -1i, 0i, i32(-2147483648))), Struct_3(vec2<f32>(1407f, -993f), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 31108i)));

var<private> global3: array<vec4<u32>, 24>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    let var_0 = !any(vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 335f)))), firstTrailingBit(vec4<i32>(~u_input.e, -16138i, firstTrailingBit(u_input.e), u_input.a.x | u_input.c.x)) ^ vec4<i32>(-1i & u_input.a.x, global1.x, global1.x, 882i));
    let var_2 = Struct_1(abs(u_input.a.wz), vec3<i32>(_wgslsmith_div_i32(u_input.e, 1i ^ (global1.x >> (1u % 32u))), 66375i, var_1.b.x), vec4<f32>(var_1.a.x, -862f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(max(-2698f, -648f))), -426f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, -474f), _wgslsmith_div_f32(var_1.a.x, 1649f), all(select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, var_0), true), var_0 == var_0)))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.x))))));
    global0 = array<Struct_1, 3>();
    let var_3 = !(u_input.d.x != _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, 0u, 50131u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, 0u, u_input.d.x)) ^ vec3<u32>(u_input.b.x, 13499u, u_input.b.x)));
    return -vec2<i32>(_wgslsmith_add_i32(min(i32(-1i) * -2147483647i, i32(-1i) * -38826i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.a.x, global1.x), abs(-23487i))), _wgslsmith_div_i32(var_2.b.x, -9072i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = firstLeadingBit(87199u);
    let var_1 = !(!all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = global2[_wgslsmith_index_u32(3402u, 26u)];
    let var_3 = Struct_1(vec2<i32>(~(~global1.x >> (u_input.b.x % 32u)), u_input.c.x), firstLeadingBit(countOneBits(vec3<i32>(max(1i, 11152i), -48019i, _wgslsmith_clamp_i32(-68486i, u_input.e, global1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f)), _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(-arg_1.c.x))), arg_1.e, _wgslsmith_f_op_f32(-var_2.a.x));
    global1 = _wgslsmith_mult_vec3_i32(reverseBits(arg_1.b), vec3<i32>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-823f, 191f, 701f) - vec3<f32>(-361f, 1665f, -507f))).x, ~arg_1.b.x, global1.x) << (~(vec3<u32>(arg_0.a.x, 0u, u_input.b.x) << (vec3<u32>(arg_0.a.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1492f)))))), _wgslsmith_f_op_f32(550f + 1374f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-369f, var_3.d, true)) + _wgslsmith_div_f32(1845f, var_2.a.x)), -146f, false)), arg_1.c.x) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1.c))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-689f)), _wgslsmith_f_op_f32(round(458f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2022f, 512f) - vec2<f32>(-364f, -1630f))))), _wgslsmith_mult_vec4_i32(-(~(~u_input.c)), u_input.a));
    let var_1 = u_input.e;
    global0 = array<Struct_1, 3>();
    var var_2 = ~(~(~vec3<u32>(39180u, u_input.d.x, _wgslsmith_mod_u32(4294967295u, u_input.b.x))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), Struct_1(func_3(vec3<f32>(var_0.a.x, 438f, 467f)), max(u_input.c.zyy, vec3<i32>(var_0.b.x, -33481i, var_1)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -515f, var_0.a.x, var_0.a.x), vec4<f32>(-1423f, var_0.a.x, var_0.a.x, -1187f))), var_0.a.x, 459f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)), -988f, _wgslsmith_f_op_f32(f32(-1f) * -1178f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1207f, -347f, -1000f, var_0.a.x) - _wgslsmith_div_vec4_f32(vec4<f32>(410f, var_0.a.x, -2072f, -1061f), vec4<f32>(524f, 126f, -1000f, 103f)))))), !(_wgslsmith_div_i32(1i, 35018i) >= (_wgslsmith_mod_i32(0i, -1i) & -u_input.c.x))));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(9709u, ~(1u & firstTrailingBit(u_input.d.x)), 4294967295u) % 32u), 26u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(685f, var_1.x)))), 271f);
    let var_3 = 1u;
    let var_4 = _wgslsmith_dot_vec3_u32(~(firstLeadingBit(vec3<u32>(u_input.d.x, var_3, u_input.d.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, 57646u, 1u), vec3<u32>(var_3, var_3, u_input.d.x))) << (~(_wgslsmith_div_vec3_u32(vec3<u32>(51174u, u_input.b.x, u_input.d.x), vec3<u32>(var_3, var_3, u_input.d.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 25496u, 1u), vec3<u32>(0u, 4144u, var_3), vec3<u32>(u_input.b.x, var_3, var_3)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~u_input.b.x, u_input.b.x, _wgslsmith_add_u32(~_wgslsmith_add_u32(var_3, var_3), 26897u)));
    return !any(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26951u & firstLeadingBit(u_input.b.x);
    var var_1 = Struct_2(firstLeadingBit(global3[_wgslsmith_index_u32(~var_0 ^ 98739u, 24u)]));
    let var_2 = select(~var_1.a.yxw, vec3<u32>(~min(u_input.d.x, var_1.a.x), 0u, 75652u), !(_wgslsmith_mult_u32(33989u, var_0) >= (u_input.d.x << (u_input.b.x % 32u))) & select(select(true, true, true), func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 27846i), u_input.a.zz)), true));
    let var_3 = !vec3<bool>(true, !func_1(vec2<i32>(global1.x, -2147483647i)), true);
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(514f, -1454f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-766f, -216f), vec2<f32>(-1643f, 1087f), vec2<bool>(true, var_3.x))), true)))), -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -25920i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.b.x, global1.x, 2147483647i), var_4.b.zzw), vec3<i32>(2147483647i, 1i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-var_4.a), 1i, ~select(reverseBits(~var_2), var_1.a.wwy, select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), var_3, var_3.x), !vec3<bool>(var_3.x, false, true), var_3.x)));
}

