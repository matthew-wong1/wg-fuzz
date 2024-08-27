struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
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

var<private> global0: bool;

var<private> global1: i32 = -1i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global1 = -_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-18718i, 6489i, 4998i), -vec3<i32>(u_input.a.x, u_input.a.x, -60871i)), _wgslsmith_div_i32(-u_input.a.x & -2889i, 12892i));
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-781f)) * 444f), -234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-663f))), _wgslsmith_div_f32(1801f, _wgslsmith_f_op_f32(ceil(-433f)))) + vec4<f32>(-771f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(529f, 2289f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1450f) - _wgslsmith_f_op_f32(ceil(-483f))), _wgslsmith_f_op_f32(f32(-1f) * -131f))), Struct_1(vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f - 304f) - 1008f)), max(u_input.b.wx, ~_wgslsmith_clamp_vec2_u32(u_input.b.xw, u_input.b.yw, u_input.b.yw)), vec3<f32>(-158f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2196f), 1061f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f))), _wgslsmith_add_vec2_u32(u_input.b.xw, ~vec2<u32>(u_input.b.x, u_input.b.x) | vec2<u32>(35356u, u_input.d))), Struct_2(u_input.a.x, ~u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, -246f, 643f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 365f, -1419f) - vec3<f32>(1478f, -1773f, -883f))), u_input.b.wy, vec3<f32>(-505f, _wgslsmith_f_op_f32(804f + -458f), 714f), ~(~vec2<u32>(4294967295u, u_input.d))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, -772f, 210f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-889f, 288f, 334f)))), u_input.b.yx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, -598f, -1292f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, 239f, 618f))), vec2<u32>(_wgslsmith_mult_u32(37463u, u_input.d), u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(736f, -118f, 1557f), vec3<f32>(-434f, 1063f, 1802f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1747f, 661f, 100f)))), vec2<u32>(u_input.d, u_input.d), vec3<f32>(1f, 1f, 1f), min(~vec2<u32>(u_input.c, u_input.d), ~vec2<u32>(u_input.b.x, u_input.c)))), Struct_2(u_input.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 1i, u_input.a.x), abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(419f, 768f, 1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-195f, 387f, 1260f), vec3<f32>(766f, -269f, 562f)))), ~(~u_input.b.zx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1778f, 401f, -312f))), u_input.b.wy), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -637f, 1098f)), vec2<u32>(u_input.b.x | u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.d)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(898f, 400f, 1000f))), _wgslsmith_sub_vec2_u32(vec2<u32>(28128u, u_input.b.x), ~vec2<u32>(9243u, u_input.d))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1598f, -152f, -1279f)))), select(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.b.x, u_input.d), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(max(1898f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_mult_vec2_u32(~u_input.b.yw, _wgslsmith_mod_vec2_u32(u_input.b.yw, u_input.b.zy)))));
    var var_1 = var_0.d.d.a.xy;
    let var_2 = vec4<bool>(true, all(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)) | true, _wgslsmith_mult_i32(var_0.d.a, 58644i) != ~(-1i))), select(any(vec2<bool>(49286u == var_0.c.d.b.x, all(vec4<bool>(true, false, true, true)))), true, true), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, arg_0), u_input.a);
    global1 = -1i;
    var_0 = countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, var_0.x), u_input.a)) >> (vec2<u32>(~func_3(), abs(arg_2)) % vec2<u32>(32u));
    let var_1 = ~countOneBits(~(~abs(vec4<u32>(0u, 39028u, u_input.d, arg_2))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 261f))), arg_1.x)), 1000f)), 596f);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_2(u_input.a.x, vec3<f32>(-1000f, -556f, -677f), 25043u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(func_2(abs(u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(1450f, 841f, 1000f), vec3<f32>(-653f, 813f, -1178f)), ~60196u, vec4<i32>(-1i, -5342i, u_input.a.x, u_input.a.x))), -1439f, _wgslsmith_f_op_f32(floor(-264f))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2116f, 448f, 963f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(432f, -515f, 846f)))), u_input.b.zz, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(511f, -677f, -1164f), vec3<f32>(-1000f, 407f, 461f))), _wgslsmith_div_vec3_f32(vec3<f32>(755f, 766f, -734f), vec3<f32>(-940f, 1448f, 1625f)))), _wgslsmith_clamp_vec2_u32(u_input.b.zw, vec2<u32>(u_input.d, 0u), u_input.b.wz) ^ u_input.b.yw), Struct_2(u_input.a.x >> (u_input.d % 32u), select(u_input.a.x, 1i, true), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(995f, 1266f, -1000f))), select(u_input.b.xz, u_input.b.wy, false), _wgslsmith_div_vec3_f32(vec3<f32>(585f, 879f, 1410f), vec3<f32>(349f, 437f, 870f)), ~vec2<u32>(u_input.c, 25515u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1748f, -118f, 178f)), select(u_input.b.wz, u_input.b.zx, true), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1074f, -1063f, 166f))), abs(vec2<u32>(64231u, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 586f, 179f), vec3<f32>(-796f, -919f, -629f), vec3<bool>(true, true, true))), ~u_input.b.zw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(416f, -315f, -1000f)), u_input.b.wy)), Struct_2(2147483647i, u_input.a.x, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(831f, 397f, 1181f), vec3<f32>(398f, -478f, 1349f)), select(u_input.b.xy, vec2<u32>(u_input.d, 50366u), vec2<bool>(true, true)), vec3<f32>(-1270f, 295f, 179f), ~u_input.b.xw), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, -2383f, 236f)), u_input.b.zw, _wgslsmith_div_vec3_f32(vec3<f32>(453f, 638f, 180f), vec3<f32>(-1000f, -1000f, 451f)), u_input.b.xz), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(705f, -152f, -1471f) - vec3<f32>(1783f, 527f, -939f)), vec2<u32>(u_input.b.x, 42452u), vec3<f32>(1f, 1f, 1f), ~u_input.b.zy))), !(true & select(u_input.c < 10106u, true, false)), Struct_2(~u_input.a.x >> (_wgslsmith_mod_u32(u_input.d, 0u) % 32u), firstLeadingBit(-2147483647i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, 613f)), _wgslsmith_f_op_f32(func_2(-2147483647i, vec3<f32>(-1000f, -222f, 1048f), u_input.c, vec4<i32>(-1i, 64435i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(abs(-1859f))), _wgslsmith_mod_vec2_u32(max(u_input.b.xz, vec2<u32>(42258u, 30843u)), u_input.b.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(133f, 529f, 1879f), vec3<f32>(-928f, -1000f, 476f), vec3<bool>(false, true, true)))), vec2<u32>(u_input.c, firstLeadingBit(u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1047f, 703f, 1092f), vec3<f32>(-424f, 1175f, 672f), vec3<bool>(true, true, true))), u_input.b.zx, vec3<f32>(304f, _wgslsmith_div_f32(765f, -1360f), -602f), reverseBits(u_input.b.yw)), Struct_1(vec3<f32>(-955f, _wgslsmith_f_op_f32(-1417f - 959f), _wgslsmith_f_op_f32(ceil(-380f))), _wgslsmith_clamp_vec2_u32(u_input.b.wx, vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(30542u, u_input.b.x), u_input.b.wy, vec2<u32>(u_input.b.x, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1004f, -473f, -626f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1127f, -444f))), vec2<u32>(_wgslsmith_mult_u32(44960u, 0u), abs(31925u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-314f, -494f, -1932f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-494f, 485f, 540f), vec3<f32>(843f, -1792f, 2113f)))), vec3<bool>(true, false, all(vec3<bool>(false, false, true)))))));
    let var_1 = var_0.a;
    global0 = false;
    global1 = select(u_input.a.x, var_0.a.d.a, true);
    var var_2 = -var_1.c.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(var_0.c.e.a * vec3<f32>(-1375f, _wgslsmith_div_f32(-1324f, var_0.a.d.c.a.x), _wgslsmith_f_op_f32(sign(-1746f))))), var_1.c.d.b, vec3<f32>(var_1.c.e.c.x, 410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(498f)))) * 412f)), vec2<u32>(~_wgslsmith_mod_u32(u_input.c, ~4294967295u), _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.e.b.x, var_1.d.c.b.x, var_1.c.d.b.x, var_0.a.c.e.b.x), vec4<u32>(71122u, var_1.c.d.d.x, 42944u, 1u)), ~vec4<u32>(8316u, var_1.c.d.d.x, u_input.d, var_1.c.e.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.e.d.x, 29787u, 4294967295u, var_1.d.e.d.x), ~vec4<u32>(u_input.d, 876u, var_0.c.c.d.x, var_0.c.c.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(12393u, var_0.c.d.b.x, var_0.a.b.b.x, 70914u), u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~u_input.b.zx;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -202f, var_0.c.x, -885f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.c.x, -400f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(118f, var_0.a.x, var_0.c.x, var_0.a.x))) - vec4<f32>(var_0.c.x, -1163f, -421f, -1275f))), Struct_1(var_0.c, ~(~vec2<u32>(4294967295u, 25148u)), vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(828f * var_0.c.x), _wgslsmith_f_op_f32(-208f + -226f)), vec2<u32>(16423u, _wgslsmith_mod_u32(u_input.b.x, var_1.x))), Struct_2(-firstTrailingBit(u_input.a.x), (i32(-1i) * -32345i) >> (~var_0.d.x % 32u), Struct_1(vec3<f32>(1210f, -917f, var_0.c.x), _wgslsmith_div_vec2_u32(var_0.b, var_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.c.x, var_0.c.x), vec3<f32>(-647f, var_0.c.x, -1827f)), abs(var_0.b)), func_1(), func_1()), Struct_2(1i, u_input.a.x, Struct_1(var_0.a, var_0.d, vec3<f32>(var_0.c.x, var_0.a.x, var_0.a.x), func_1().d), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(882f, -559f, 723f) + var_0.c), vec2<u32>(4294967295u, 0u), vec3<f32>(382f, var_0.c.x, var_0.a.x), func_1().d))), select(all(vec2<bool>(true, true)), false & (var_0.a.x <= _wgslsmith_f_op_f32(-var_0.a.x)), false), Struct_2(1i, ~u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(526f, var_0.a.x, var_0.a.x))), vec2<u32>(35600u, 1u | u_input.d), _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(vec3<f32>(1017f, -568f, 474f) + var_0.c)), var_0.d), func_1(), func_1()), var_0.a);
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(reverseBits(-(~u_input.a.x)), -20334i), 0i, _wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -35637i, -1054i), 1i));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(_wgslsmith_clamp_vec3_i32(var_3, var_3, var_3)) | -(~var_3), var_3));
}

