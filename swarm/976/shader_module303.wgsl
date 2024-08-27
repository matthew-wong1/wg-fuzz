struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> f32 {
    var var_0 = vec3<u32>(~u_input.a.x, u_input.d.x, select(1u, ~u_input.d.x, false) & ((u_input.a.x & (34023u << (u_input.a.x % 32u))) & 1u));
    return -301f;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_0.a.c.c.xz;
    let var_1 = Struct_2(Struct_1(-111f, -1i, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(arg_0.a.c.b.c), arg_1.c.d.c), vec2<i32>(4125i ^ arg_1.d.c.x, -u_input.e))), arg_0.a.b, vec4<f32>(arg_1.c.b.a, -702f, -536f, -2654f), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a.c.c.x, _wgslsmith_f_op_f32(-arg_1.b.a)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), arg_0.a.a.b, vec2<i32>(-1i) * -(~arg_0.a.b.c)));
    let var_2 = var_1.a.a;
    let var_3 = Struct_5(1u != arg_2.x);
    var var_4 = arg_0.a.c;
    return -var_4.d.c;
}

fn func_2() -> Struct_1 {
    var var_0 = (_wgslsmith_sub_u32(_wgslsmith_div_u32(min(u_input.d.x, 47426u), ~u_input.c), ~(~u_input.a.x)) >= abs(_wgslsmith_mod_u32(59062u, 23283u))) | (true && any(vec3<bool>(false, true, true)));
    var var_1 = Struct_3(Struct_1(218f, 0i, _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -32320i, -2935i), vec2<i32>(1i >> (u_input.a.x % 32u), -1i))), Struct_1(-1291f, -1i, ~vec2<i32>(0i, 76038i)), Struct_2(Struct_1(1f, u_input.b, _wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -25225i), func_3(Struct_4(Struct_3(Struct_1(357f, -57564i, vec2<i32>(55507i, 2147483647i)), Struct_1(223f, u_input.b, vec2<i32>(-2147483647i, u_input.b)), Struct_2(Struct_1(-594f, -68108i, vec2<i32>(u_input.b, 5200i)), Struct_1(970f, 0i, vec2<i32>(-2147483647i, 1i)), vec4<f32>(-1000f, -370f, 1200f, -1759f), Struct_1(479f, 25989i, vec2<i32>(29100i, 9841i))), Struct_1(1000f, 1i, vec2<i32>(u_input.e, u_input.b))), u_input.d.ywx, 73630u, vec4<u32>(45767u, u_input.d.x, u_input.a.x, 24900u), u_input.a.x), Struct_3(Struct_1(-647f, -2147483647i, vec2<i32>(-1i, -40736i)), Struct_1(338f, u_input.b, vec2<i32>(u_input.b, u_input.e)), Struct_2(Struct_1(-294f, 7692i, vec2<i32>(-34982i, u_input.b)), Struct_1(-1264f, 2147483647i, vec2<i32>(-32730i, 1216i)), vec4<f32>(-307f, -1606f, 1000f, -314f), Struct_1(-1026f, -44772i, vec2<i32>(1i, u_input.b))), Struct_1(-184f, u_input.b, vec2<i32>(-9384i, u_input.b))), vec2<u32>(u_input.d.x, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1173f, 432f, false)), -1032f, true)), firstTrailingBit(u_input.e), vec2<i32>(_wgslsmith_div_i32(-1i, u_input.b), _wgslsmith_mod_i32(u_input.e, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(468f, 589f, -830f, 1671f) - vec4<f32>(756f, 1296f, -989f, 245f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -536f), -(u_input.b << (0u % 32u)), vec2<i32>(u_input.e, u_input.e))), Struct_1(951f, min(3739i, 1i), vec2<i32>(0i, u_input.b)));
    var_1 = Struct_3(var_1.d, var_1.d, Struct_2(Struct_1(var_1.b.a, u_input.b, var_1.d.c), var_1.c.b, var_1.c.c, Struct_1(var_1.a.a, _wgslsmith_div_i32(u_input.e, u_input.e) & (u_input.e ^ 2147483647i), vec2<i32>(2964i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.a.b, var_1.b.b), vec2<i32>(var_1.c.a.b, var_1.c.a.c.x))))), var_1.b);
    var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(-412f, var_1.c.a.a), firstTrailingBit(var_1.b.c.x), countOneBits(-firstTrailingBit(vec2<i32>(-2147483647i, -86702i)))), var_1.c.d, Struct_2(Struct_1(-1000f, _wgslsmith_sub_i32(firstTrailingBit(u_input.e), -2147483647i), ~select(vec2<i32>(0i, 55998i), var_1.b.c, false)), Struct_1(var_1.b.a, _wgslsmith_mod_i32(max(0i, 14367i), u_input.e | u_input.e), _wgslsmith_mult_vec2_i32(var_1.a.c << (u_input.a % vec2<u32>(32u)), vec2<i32>(-11073i, -20705i))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d.a)) * var_1.b.a), _wgslsmith_f_op_f32(step(var_1.c.d.a, _wgslsmith_f_op_f32(ceil(-1064f)))), _wgslsmith_f_op_f32(-876f - _wgslsmith_f_op_f32(abs(193f)))), var_1.a), Struct_1(-1267f, abs(u_input.b), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a.c, var_1.d.c), _wgslsmith_mod_vec2_i32(vec2<i32>(-51219i, u_input.b), var_1.b.c)) ^ _wgslsmith_mult_vec2_i32(abs(var_1.c.b.c), var_1.b.c)));
    var var_2 = Struct_5(true);
    return var_1.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.a * -1424f), -208f), _wgslsmith_f_op_vec2_f32(-arg_0.zx), true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.c.c.yx - arg_1.c.c.wz), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b.a, var_0.c.x)))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -241f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.a.a, 433f) - vec2<f32>(1000f, var_0.d.a))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.c.ww)), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a + -955f), _wgslsmith_f_op_f32(f32(-1f) * -2024f)))));
    var var_2 = Struct_3(arg_1.c.a, Struct_1(_wgslsmith_f_op_f32(trunc(1943f)), ~_wgslsmith_mod_i32(i32(-1i) * -9126i, ~20934i), arg_3), arg_1.c, func_2());
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.c.xx)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), 395f, -972f);
    var var_1 = _wgslsmith_add_i32(59390i, i32(-1i) * -1i);
    var var_2 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, var_0.x, 1164f) - vec3<f32>(-1788f, 1153f, var_0.x)) + vec3<f32>(-167f, -1682f, -105f))), Struct_3(Struct_1(1686f, -2147483647i, -vec2<i32>(u_input.e, 20606i)), Struct_1(var_0.x, -1i, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 1i), vec2<i32>(u_input.e, u_input.e))), Struct_2(Struct_1(var_0.x, -1i, vec2<i32>(69545i, -21361i)), func_2(), vec4<f32>(var_0.x, 1582f, 299f, var_0.x), func_2()), Struct_1(_wgslsmith_f_op_f32(1259f - 472f), ~u_input.b, vec2<i32>(0i, u_input.b))), select(vec2<bool>(false, false), vec2<bool>(false, any(vec2<bool>(false, false))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), func_3(Struct_4(Struct_3(Struct_1(-134f, -11530i, vec2<i32>(u_input.b, 9941i)), Struct_1(var_0.x, -1i, vec2<i32>(u_input.b, -1i)), Struct_2(Struct_1(441f, -4438i, vec2<i32>(2147483647i, -37683i)), Struct_1(1060f, -2147483647i, vec2<i32>(u_input.b, 2147483647i)), vec4<f32>(-170f, 469f, -263f, 742f), Struct_1(701f, u_input.e, vec2<i32>(u_input.b, -16907i))), Struct_1(var_0.x, -1i, vec2<i32>(1i, 2147483647i))), vec3<u32>(u_input.d.x, u_input.a.x, 0u), u_input.d.x, ~u_input.d, u_input.c), Struct_3(Struct_1(var_0.x, u_input.b, vec2<i32>(u_input.e, 2147483647i)), Struct_1(var_0.x, u_input.b, vec2<i32>(1i, u_input.b)), Struct_2(Struct_1(1663f, 0i, vec2<i32>(u_input.e, 2147483647i)), Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.b, 1i)), vec4<f32>(605f, 1000f, var_0.x, -448f), Struct_1(var_0.x, u_input.b, vec2<i32>(u_input.e, u_input.e))), func_2()), firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)))), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, var_0.x, -190f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1166f) - vec3<f32>(-597f, var_0.x, 1627f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -137f, -502f), vec3<f32>(var_0.x, -310f, 125f), vec3<bool>(false, false, false))))), Struct_3(Struct_1(-1524f, abs(u_input.b), func_3(Struct_4(Struct_3(Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.b, -41812i)), Struct_1(-2072f, -27943i, vec2<i32>(-10969i, u_input.b)), Struct_2(Struct_1(var_0.x, -2147483647i, vec2<i32>(1i, u_input.b)), Struct_1(-1049f, 2147483647i, vec2<i32>(-1i, u_input.b)), vec4<f32>(var_0.x, 815f, var_0.x, var_0.x), Struct_1(var_0.x, u_input.b, vec2<i32>(-5838i, 15866i))), Struct_1(-840f, 10423i, vec2<i32>(u_input.e, -27222i))), u_input.d.zxy, 21468u, u_input.d, 19210u), Struct_3(Struct_1(var_0.x, u_input.b, vec2<i32>(u_input.b, -54528i)), Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.b, -2147483647i)), Struct_2(Struct_1(var_0.x, u_input.e, vec2<i32>(-16642i, 0i)), Struct_1(267f, u_input.e, vec2<i32>(54342i, 27590i)), vec4<f32>(var_0.x, 1030f, var_0.x, var_0.x), Struct_1(var_0.x, 0i, vec2<i32>(u_input.b, -7779i))), Struct_1(-1580f, u_input.b, vec2<i32>(1i, -1i))), u_input.d.xw)), func_2(), Struct_2(func_4(vec3<f32>(-122f, var_0.x, -791f), Struct_3(Struct_1(-1520f, 1i, vec2<i32>(u_input.b, 1i)), Struct_1(var_0.x, -14616i, vec2<i32>(-2147483647i, u_input.b)), Struct_2(Struct_1(238f, u_input.b, vec2<i32>(42877i, -1i)), Struct_1(1122f, u_input.e, vec2<i32>(26268i, u_input.b)), vec4<f32>(1282f, 1530f, var_0.x, -1000f), Struct_1(972f, u_input.b, vec2<i32>(u_input.b, 0i))), Struct_1(-640f, -7155i, vec2<i32>(u_input.b, u_input.b))), vec2<bool>(true, true), vec2<i32>(u_input.b, u_input.b)), func_4(vec3<f32>(252f, var_0.x, 124f), Struct_3(Struct_1(1378f, u_input.e, vec2<i32>(-771i, 41166i)), Struct_1(-477f, u_input.b, vec2<i32>(u_input.b, u_input.e)), Struct_2(Struct_1(var_0.x, u_input.e, vec2<i32>(10756i, u_input.b)), Struct_1(var_0.x, 28134i, vec2<i32>(-25385i, u_input.b)), vec4<f32>(var_0.x, 1791f, -743f, 502f), Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.e, -28908i))), Struct_1(var_0.x, 3393i, vec2<i32>(-2536i, 1788i))), vec2<bool>(false, true), vec2<i32>(u_input.b, 6612i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(486f, var_0.x, 785f, var_0.x) - vec4<f32>(499f, var_0.x, -1480f, 267f)), Struct_1(315f, -6140i, vec2<i32>(-18057i, -1i))), Struct_1(-1182f, -2147483647i, ~vec2<i32>(u_input.e, u_input.e))), vec2<bool>(false, true), func_3(Struct_4(Struct_3(Struct_1(var_0.x, -19868i, vec2<i32>(-1i, -20378i)), Struct_1(-378f, -48733i, vec2<i32>(-1i, u_input.e)), Struct_2(Struct_1(1504f, 42608i, vec2<i32>(u_input.e, u_input.e)), Struct_1(var_0.x, 16887i, vec2<i32>(u_input.b, u_input.b)), vec4<f32>(var_0.x, 118f, var_0.x, var_0.x), Struct_1(var_0.x, u_input.b, vec2<i32>(-21462i, u_input.e))), Struct_1(-253f, 1i, vec2<i32>(u_input.b, u_input.b))), vec3<u32>(4294967295u, 1u, 7489u), ~u_input.d.x, u_input.d, ~21822u), Struct_3(Struct_1(152f, -5714i, vec2<i32>(u_input.e, u_input.e)), func_4(vec3<f32>(var_0.x, -800f, var_0.x), Struct_3(Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.e, u_input.e)), Struct_1(357f, u_input.b, vec2<i32>(-1i, u_input.b)), Struct_2(Struct_1(-375f, 341i, vec2<i32>(5288i, -22990i)), Struct_1(var_0.x, 27840i, vec2<i32>(1i, 2147483647i)), vec4<f32>(294f, -990f, var_0.x, var_0.x), Struct_1(var_0.x, u_input.e, vec2<i32>(5894i, 0i))), Struct_1(var_0.x, u_input.b, vec2<i32>(u_input.e, u_input.e))), vec2<bool>(true, false), vec2<i32>(8183i, u_input.b)), Struct_2(Struct_1(1157f, u_input.e, vec2<i32>(u_input.b, -30513i)), Struct_1(var_0.x, u_input.b, vec2<i32>(24102i, -2147483647i)), vec4<f32>(var_0.x, 172f, var_0.x, var_0.x), Struct_1(-568f, u_input.b, vec2<i32>(u_input.b, u_input.e))), Struct_1(var_0.x, -44244i, vec2<i32>(u_input.b, 2147483647i))), ~vec2<u32>(73679u, 1u))), Struct_2(Struct_1(var_0.x, ~(i32(-1i) * -1i), vec2<i32>(countOneBits(u_input.b), -u_input.e)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1001f)), 33861i, func_2().c), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-610f, _wgslsmith_f_op_f32(trunc(-168f)), 622f, _wgslsmith_f_op_f32(round(-2892f))))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(737f, -102f, -341f), vec3<f32>(-653f, var_0.x, var_0.x), vec3<bool>(true, false, true)))), Struct_3(Struct_1(703f, -40014i, vec2<i32>(26582i, u_input.e)), Struct_1(-1596f, u_input.b, vec2<i32>(-1691i, u_input.b)), Struct_2(Struct_1(var_0.x, u_input.e, vec2<i32>(u_input.b, u_input.e)), Struct_1(var_0.x, 2147483647i, vec2<i32>(2147483647i, 2147483647i)), vec4<f32>(-328f, var_0.x, 179f, -795f), Struct_1(-1000f, 0i, vec2<i32>(u_input.e, u_input.b))), func_2()), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<i32>(countOneBits(-1i), _wgslsmith_add_i32(-56327i, u_input.e)))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), 1000f, _wgslsmith_f_op_f32(var_0.x * -1046f))), Struct_3(Struct_1(var_0.x, u_input.e, vec2<i32>(-1030i, u_input.e)), Struct_1(_wgslsmith_f_op_f32(var_0.x - 1590f), func_2().b, vec2<i32>(1i, u_input.e) ^ vec2<i32>(1i, u_input.b)), Struct_2(Struct_1(var_0.x, -1i, vec2<i32>(u_input.e, u_input.e)), Struct_1(var_0.x, 1i, vec2<i32>(u_input.b, 0i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 611f, var_0.x, -1000f), vec4<f32>(475f, 1714f, -460f, var_0.x), vec4<bool>(false, true, false, true))), Struct_1(1752f, u_input.b, vec2<i32>(27781i, u_input.e))), Struct_1(_wgslsmith_f_op_f32(sign(1345f)), -19503i, vec2<i32>(u_input.b, -8789i))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<i32>(_wgslsmith_add_i32(reverseBits(4291i), reverseBits(29866i)), ~(~(-1i)))));
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-1i) * -(vec4<i32>(var_2.b.b, var_2.d.c.x, 1i, u_input.b) | vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e))), u_input.e, ~(~(~reverseBits(vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.c)))));
}

