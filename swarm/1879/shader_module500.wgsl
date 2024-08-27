struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    return !(true & !(!any(vec2<bool>(false, true))));
}

fn func_2(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = true;
    var_0 = arg_0.x;
    var_0 = any(select(vec3<bool>(arg_0.x, !(!arg_0.x), !func_3(u_input.b)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x && (true || arg_0.x)), vec3<bool>(~u_input.c.x >= 1u, true, arg_0.x)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-696f * -897f), 1858f, _wgslsmith_f_op_f32(f32(-1f) * -560f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-973f - 292f), 776f)), 1199f, _wgslsmith_f_op_f32(abs(222f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1629f, 1086f, -120f), vec3<f32>(343f, 1027f, -2145f), arg_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1818f, 1672f, 391f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = vec4<i32>(arg_2.e.x, -arg_2.d.x, u_input.a.x, u_input.a.x & ~(min(arg_3.x, arg_3.x) << (firstLeadingBit(arg_2.c.a) % 32u)));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.zw, u_input.b.yx);
    var var_2 = -2543i;
    var_0 = reverseBits(select(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-1i, -53288i, 28624i, var_0.x)), vec4<i32>(-2147483647i, ~var_0.x, var_0.x | u_input.a.x, -1i), ~max(vec4<i32>(56851i, 0i, 0i, var_1.x), vec4<i32>(arg_3.x, 0i, 13191i, -2147483647i))), vec4<i32>((arg_2.d.x & arg_2.d.x) << ((arg_0.b | 0u) % 32u), min(min(arg_2.d.x, arg_2.e.x), firstTrailingBit(arg_3.x)), -arg_2.e.x, 0i), arg_2.a.d.x));
    var var_3 = arg_2.a.d.yx;
    return select(max(~vec4<i32>(0i, var_1.x, var_1.x, arg_3.x), ~firstTrailingBit(vec4<i32>(-2147483647i, var_1.x, arg_3.x, -1i))) >> (~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 36678u, 0u), vec4<u32>(33446u, 8011u, u_input.c.x, 22840u)), select(vec4<u32>(30182u, u_input.c.x, 4294967295u, arg_2.c.a), vec4<u32>(arg_0.b, arg_2.a.c.x, u_input.c.x, 8610u), false)) % vec4<u32>(32u)), vec4<i32>(-1i) * -min(-vec4<i32>(-10736i, arg_2.d.x, arg_3.x, var_0.x), ~vec4<i32>(2147483647i, arg_3.x, 23075i, var_1.x)), select(select(select(select(arg_2.a.d, vec4<bool>(false, arg_2.c.d.x, arg_2.a.d.x, true), arg_2.a.d.x), vec4<bool>(arg_2.c.d.x, true, true, false), select(arg_2.c.d, arg_2.a.d, true)), vec4<bool>(false, arg_2.a.d.x || false, false && var_3.x, u_input.c.x > u_input.c.x), arg_2.a.d.x), !vec4<bool>(true, arg_2.a.d.x, !arg_2.a.d.x, true), vec4<bool>(false, all(vec3<bool>(false, arg_2.c.d.x, var_3.x)), arg_2.a.d.x && false, -22872i != _wgslsmith_dot_vec4_i32(vec4<i32>(24284i, 38978i, 51358i, var_0.x), vec4<i32>(-21822i, -25400i, arg_2.d.x, 26299i)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_2.a.d;
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2.d, arg_2.c.c), arg_2.d, select(arg_2.d, arg_2.a.c, select(arg_1.d, vec4<bool>(var_0.d.x >= 41553i, true, true, true), !(2147483647i < var_0.e.x))));
    var_1 = func_4(arg_2.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-537f, arg_2.c.d.b.x, 2171f), vec3<f32>(arg_1.b.x, 559f, -616f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(arg_2.c.a.x, true, false))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.b.x, 1034f, arg_1.b.x)))))))), arg_2.a.d, vec2<i32>(reverseBits(abs(1i)), ~abs(u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, arg_2.c.d.a.b.x, 966f, arg_1.b.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1278f)) + var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(sign(710f)), arg_1.b.x))));
    var_0 = arg_2.a.d;
    return _wgslsmith_div_f32(arg_1.b.x, -1354f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.x ^ -31758i, Struct_1(u_input.c.x, vec2<f32>(1880f, 604f), vec3<u32>(4294967295u, 39482u, 33135u), vec4<bool>(true, false, false, true), 1u), Struct_5(Struct_3(vec2<bool>(false, true), vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, -1i, u_input.b.x, u_input.a.x), Struct_2(Struct_1(3421u, vec2<f32>(-2130f, -1764f), vec3<u32>(1u, u_input.c.x, 16877u), vec4<bool>(true, true, false, false), u_input.c.x), vec3<f32>(384f, 206f, -1481f), Struct_1(1u, vec2<f32>(-1484f, 1271f), vec3<u32>(u_input.c.x, u_input.c.x, 19660u), vec4<bool>(true, false, true, false), u_input.c.x), u_input.a, vec3<i32>(u_input.b.x, 1i, 0i))), Struct_4(-493f, 57253u), Struct_3(vec2<bool>(true, false), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 0i), vec4<i32>(u_input.a.x, -1i, u_input.b.x, -2147483647i), Struct_2(Struct_1(0u, vec2<f32>(-1119f, 1000f), vec3<u32>(0u, 0u, 13816u), vec4<bool>(false, false, true, false), u_input.c.x), vec3<f32>(644f, -447f, 343f), Struct_1(0u, vec2<f32>(-679f, -1000f), vec3<u32>(105843u, u_input.c.x, 0u), vec4<bool>(true, true, true, true), 11781u), vec2<i32>(u_input.a.x, u_input.b.x), u_input.b)), vec4<i32>(-5893i, -2147483647i, u_input.a.x, 0i)), vec3<u32>(44988u, 31755u, u_input.c.x) << (vec3<u32>(u_input.c.x, 1u, 0u) % vec3<u32>(32u)))), -723f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, 1517f) - vec2<f32>(301f, -120f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-137f, 577f)))))))), select(vec3<u32>(~10232u, reverseBits(u_input.c.x), ~79191u), ~countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.c.x, 102429u, u_input.c.x) % vec3<u32>(32u))), true), !vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), u_input.a.x < (i32(-1i) * -47686i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(36295i, u_input.a.x)) != -10382i), max(11629u, u_input.c.x));
    let var_1 = Struct_1(_wgslsmith_mult_u32(16919u, 0u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x)) * var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(true, true, true))).yz)))), ~firstTrailingBit(var_0.c | var_0.c) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 49189u, 4294967295u, var_0.c.x), vec4<u32>(var_0.a, var_0.e, u_input.c.x, 1u)), ~(~29689u), ~11553u) % vec3<u32>(32u)), !var_0.d, 41671u);
    let var_2 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 1296f))), -1000f, -888f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(-168f, 1142f)), _wgslsmith_f_op_f32(floor(-321f)), _wgslsmith_div_f32(503f, var_1.b.x)), vec3<f32>(148f, _wgslsmith_f_op_f32(round(var_0.b.x)), -461f)))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(var_1.a), ~1u), countOneBits(var_0.e | 49927u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, _wgslsmith_f_op_f32(1394f * var_1.b.x))), abs(_wgslsmith_mult_vec3_u32(var_0.c, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(739u, 0u, u_input.c.x)))), !var_0.d, 0u), ~vec2<i32>(u_input.b.x, 0i), u_input.b);
    let var_3 = Struct_1(~4294967295u, vec2<f32>(1731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * 1f)), firstTrailingBit(var_1.c), vec4<bool>(select(true, var_1.d.x, !var_1.d.x | (var_2.e.x == -1i)), var_0.d.x, all(select(var_2.a.d.wx, var_0.d.zy, false && var_0.d.x)), false), var_0.c.x);
    var var_4 = all(vec3<bool>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, var_2.a.e, 4294967295u), 4294967295u) <= 34034u, func_3(vec3<i32>(-6346i, -2147483647i, u_input.a.x) | firstTrailingBit(u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + var_0.b.x), _wgslsmith_div_f32(-848f, -246f)) <= -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(var_1.b.x, -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(var_0.d.zxw)).x, var_3.b.x))))), u_input.b.x, 44350u, _wgslsmith_sub_i32(-(2147483647i ^ u_input.b.x), ~(i32(-1i) * -2147483647i)), reverseBits(vec4<i32>(_wgslsmith_div_i32(abs(u_input.b.x), _wgslsmith_add_i32(42411i, 0i)), _wgslsmith_mod_i32(u_input.b.x, countOneBits(u_input.a.x)), max(2147483647i, -32995i), min(68555i, var_2.d.x))));
}

