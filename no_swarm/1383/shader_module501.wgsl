struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-1i, vec2<i32>(2147483647i, -4699i), vec2<f32>(-465f, -374f), -259f, false), Struct_1(20713i, vec2<i32>(-89514i, i32(-2147483648)), vec2<f32>(1000f, 202f), 248f, true), Struct_1(18807i, vec2<i32>(-64514i, 31273i), vec2<f32>(1583f, -606f), -1000f, true), Struct_1(0i, vec2<i32>(0i, -61594i), vec2<f32>(1355f, -358f), 413f, false), Struct_1(-1i, vec2<i32>(1i, 13716i), vec2<f32>(-289f, 115f), -705f, true), Struct_1(i32(-2147483648), vec2<i32>(1i, 2147483647i), vec2<f32>(-312f, -551f), 617f, false), Struct_1(31718i, vec2<i32>(-74068i, 1i), vec2<f32>(946f, 815f), 222f, true), Struct_1(-1i, vec2<i32>(-7916i, i32(-2147483648)), vec2<f32>(-188f, 652f), -1465f, false), Struct_1(-1i, vec2<i32>(-34053i, 32117i), vec2<f32>(-1185f, 1000f), 2367f, false), Struct_1(i32(-2147483648), vec2<i32>(19220i, -14398i), vec2<f32>(-859f, -346f), -1258f, true), Struct_1(5393i, vec2<i32>(-44989i, 1i), vec2<f32>(-650f, -1051f), 581f, false), Struct_1(-1i, vec2<i32>(0i, 28337i), vec2<f32>(-2206f, 300f), -1019f, false));

var<private> global1: i32 = 0i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_2(vec3<bool>(false, !all(select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, true, false, arg_0), vec4<bool>(true, arg_0, arg_0, true))), false), Struct_1(~(-firstLeadingBit(u_input.c.x)), abs(-u_input.c.zx >> (~u_input.d % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -431f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1127f, 274f)) + _wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(337f)))), false)), !all(vec3<bool>(true, true, arg_0))), _wgslsmith_mult_i32(u_input.c.x, firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(44382i, -33751i, 18088i, 16231i), u_input.c))), Struct_1(-_wgslsmith_dot_vec2_i32(abs(u_input.c.yz), u_input.c.ww), reverseBits(_wgslsmith_div_vec2_i32(u_input.c.xw, vec2<i32>(-61355i, u_input.c.x))) >> (u_input.d % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, -318f)))) * vec2<f32>(_wgslsmith_f_op_f32(486f - 128f), _wgslsmith_f_op_f32(abs(1574f)))), _wgslsmith_f_op_f32(step(-659f, _wgslsmith_f_op_f32(1018f - 1425f))), true));
    let var_1 = vec2<i32>(-49168i, var_0.d.b.x);
    global0 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_mult_u32(firstTrailingBit(abs(~11062u) & min(u_input.d.x, _wgslsmith_sub_u32(u_input.a, u_input.b.x))), _wgslsmith_sub_u32(16893u, countOneBits(~77819u)));
    global0 = array<Struct_1, 12>();
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = !func_3(u_input.a <= ~120422u);
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = ~u_input.b.x;
    return global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global1 = arg_1.b.x;
    let var_0 = Struct_1(1i, vec2<i32>(select(~(-1i), _wgslsmith_dot_vec2_i32(~arg_1.b, vec2<i32>(arg_1.b.x, arg_2.x)), !all(vec4<bool>(true, false, arg_1.e, arg_1.e))), _wgslsmith_mult_i32(-1i, arg_2.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f + _wgslsmith_f_op_f32(-arg_1.d)))), arg_1.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, _wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.d)), arg_1.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-846f, var_0.c.x, 1629f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, -771f, var_0.c.x) * vec3<f32>(-586f, 176f, arg_1.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(295f, var_0.c.x, arg_1.c.x) - vec3<f32>(-1529f, var_0.c.x, 771f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(276f, arg_1.d), _wgslsmith_f_op_f32(f32(-1f) * -470f), arg_1.c.x)))));
    return _wgslsmith_dot_vec4_i32(-u_input.c, u_input.c);
}

fn func_1() -> bool {
    var var_0 = vec3<i32>(-32628i, u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, 14395i), func_4(u_input.d.x, func_2(), ~reverseBits(vec3<i32>(-29460i, u_input.c.x, -16011i)), u_input.d.x), _wgslsmith_sub_i32(~u_input.c.x, -11153i)));
    let var_1 = any(vec4<bool>(true, true, all(vec4<bool>(true, false, true, any(vec3<bool>(false, false, true)))), any(vec4<bool>(true, true, true, true))));
    var var_2 = Struct_1(((u_input.c.x & 0i) & 23624i) >> ((abs(u_input.d.x) << (~1u % 32u)) % 32u), -firstTrailingBit(-vec2<i32>(-2147483647i, u_input.c.x) ^ reverseBits(u_input.c.wz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(896f, 1019f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + 1822f)), true);
    var var_3 = func_2();
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.c.x + var_2.d)));
    return -(i32(-1i) * -max(-1i, var_3.a)) < (-2147483647i | _wgslsmith_div_i32(_wgslsmith_mod_i32(~13186i, var_2.a), _wgslsmith_mult_i32(var_2.b.x, ~var_3.b.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<i32>) -> StorageBuffer {
    var var_0 = arg_0.x;
    var var_1 = func_2();
    let var_2 = _wgslsmith_sub_vec2_i32(arg_1.d.d.b, u_input.c.yy);
    let var_3 = _wgslsmith_f_op_f32(arg_0.x + 1177f);
    let var_4 = abs(u_input.c.zzy);
    return StorageBuffer(vec2<i32>(34422i, -24463i) << (~countOneBits(u_input.d << (vec2<u32>(u_input.a, arg_2.x) % vec2<u32>(32u))) % vec2<u32>(32u)), firstTrailingBit(min(arg_1.d.b.a, -_wgslsmith_sub_i32(1i, 3779i))), _wgslsmith_f_op_vec3_f32(-arg_1.c.zxy), u_input.b.zx, _wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))))), Struct_3(vec4<bool>(false, any(vec2<bool>(false, true)), true, func_1() != true), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a) >> (vec4<u32>(32724u, 11928u, u_input.b.x, 15468u) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(0u), ~4294967295u, u_input.b.x, ~1u), min(~vec4<u32>(1u, 1u, u_input.b.x, 50371u), _wgslsmith_add_vec4_u32(vec4<u32>(34038u, 0u, u_input.a, u_input.d.x), vec4<u32>(47026u, 70869u, u_input.d.x, u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2268f + -2357f), -1904f)), 1f), Struct_2(vec3<bool>(true, true, true), func_2(), _wgslsmith_dot_vec4_i32(u_input.c, max(u_input.c, u_input.c)), Struct_1(-14315i, u_input.c.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(897f, -984f)), _wgslsmith_f_op_f32(f32(-1f) * -1399f), true))), _wgslsmith_div_vec3_u32(u_input.b, ~((u_input.b << (u_input.b % vec3<u32>(32u))) ^ ~u_input.b)), (min(vec3<i32>(-9942i, 33713i, -17362i), _wgslsmith_sub_vec3_i32(u_input.c.xwz, vec3<i32>(u_input.c.x, -34453i, -2147483647i))) & -u_input.c.yyz) & _wgslsmith_add_vec3_i32(u_input.c.zyw, vec3<i32>(2147483647i, ~(-22066i), -24878i)));
}

