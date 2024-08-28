struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 56766u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1;
    global0 = 11506u;
    global0 = _wgslsmith_sub_u32(arg_0, 12379u);
    var var_1 = u_input.a;
    var_0 = Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-arg_1.d.b), !arg_1.e.c), true, Struct_1(select(select(vec4<bool>(arg_1.a.c.x, var_0.e.c.x, arg_1.a.a.x, true), vec4<bool>(var_0.b, var_0.c.a.x, var_0.b, var_0.d.c.x), vec4<bool>(arg_2.a.x, true, arg_1.e.a.x, var_0.d.c.x)), !select(var_0.c.a, vec4<bool>(true, false, false, true), arg_2.a.x), select(arg_1.a.c.x, any(var_0.e.a.yx), true)), arg_1.c.b, select(vec3<bool>(any(vec4<bool>(true, arg_1.a.a.x, false, true)), true, any(vec3<bool>(true, false, arg_2.c.x))), arg_2.a.xxx, arg_0 >= _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), arg_1.a, Struct_1(arg_2.a, vec3<f32>(arg_2.b.x, var_0.d.b.x, -1224f), !(!var_0.d.c)));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> vec4<f32> {
    global0 = ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(~65740u, 4294967295u, ~1u, _wgslsmith_div_u32(u_input.b.x, 64125u)), arg_1), arg_1);
    global0 = ~(~(~_wgslsmith_mult_u32(37672u, func_3(u_input.b.x, Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(1216f, 1503f, 585f), vec3<bool>(true, true, true)), false, Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(350f, 862f, -905f), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(751f, -1000f, 1000f), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1000f, 737f, 204f), vec3<bool>(true, false, false))), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1000f, 560f, -467f), vec3<bool>(false, true, false))))));
    var var_0 = Struct_1(select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), true | all(vec4<bool>(true, true, false, false)), true, true)), vec3<f32>(-722f, 1141f, _wgslsmith_f_op_f32(-767f + _wgslsmith_f_op_f32(floor(-1472f)))), vec3<bool>(all(vec3<bool>(1u >= u_input.b.x, true, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), u_input.a >= countOneBits(~arg_0)));
    let var_1 = Struct_2(Struct_1(vec4<bool>(all(!var_0.c.yy), true, false, true), var_0.b, var_0.c), true, Struct_1(select(!vec4<bool>(var_0.a.x, var_0.c.x, var_0.a.x, var_0.a.x), select(var_0.a, !var_0.a, false), any(var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(754f, 1196f, var_0.b.x), var_0.c.x)))), vec3<bool>(true, var_0.a.x, var_0.a.x)), Struct_1(vec4<bool>(var_0.b.x <= _wgslsmith_f_op_f32(trunc(var_0.b.x)), var_0.c.x, !all(var_0.a.yx), _wgslsmith_div_i32(u_input.a, arg_0) <= arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1580f, 150f, var_0.b.x))))), var_0.a.xxz), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), -960f) - vec3<f32>(-1946f, -876f, _wgslsmith_f_op_f32(-769f * var_0.b.x))), vec3<bool>(true, false || (true & var_0.c.x), all(!vec4<bool>(var_0.c.x, false, false, false)))));
    var var_2 = !var_0.c;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b.x, var_1.e.b.x, var_0.b.x, var_1.a.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(315f, var_1.d.b.x, -1880f, 482f) + vec4<f32>(var_0.b.x, 272f, var_0.b.x, var_1.d.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.b.x, 230f, -1381f, -617f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(floor(var_0.b.x)), var_2.x)), _wgslsmith_f_op_f32(var_0.b.x - var_1.c.b.x), -1395f, -886f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-613f, var_1.d.b.x, var_0.b.x, 349f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1296f, 650f, -102f, -1216f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, -2094f, var_1.a.b.x, 217f)), select(vec4<bool>(true, var_2.x, false, var_0.c.x), !var_0.a, var_0.a)))), var_0.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec3<bool>(true, !(arg_0.x < ~arg_0.x), all(vec3<bool>(!any(vec2<bool>(true, true)), false, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -524f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1686f, 292f)))), -188f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, 125f) * vec2<f32>(-1508f, -325f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, _wgslsmith_f_op_f32(floor(826f))))));
    global0 = ~0u;
    var var_2 = arg_2.wzw;
    let var_3 = _wgslsmith_f_op_vec4_f32(func_2(~arg_2.x, ~min(~vec4<u32>(u_input.b.x, arg_0.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x | 36927u, u_input.b.x, ~arg_0.x, arg_0.x)), _wgslsmith_sub_i32(~abs(abs(u_input.a)), arg_2.x), arg_0.x));
    return !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), var_0), vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, true)), select(var_0, select(vec3<bool>(var_0.x, var_0.x, false), var_0, var_0), true), false == (any(vec3<bool>(true, var_0.x, false)) & (arg_0.x >= 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false && any(func_1(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) << (firstLeadingBit(vec4<u32>(74393u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 12686i, -27059i, u_input.a), -vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_i32(2147483647i, abs(u_input.a)), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 4294967295u, 13598u, u_input.b.x), true), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 23978u)) << (_wgslsmith_sub_vec4_u32(~select(vec4<u32>(29165u, u_input.b.x, 76681u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true), reverseBits(max(vec4<u32>(24005u, 0u, 33673u, 29739u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21377u)))) % vec4<u32>(32u)), u_input.a, u_input.b.x));
    let var_2 = Struct_2(Struct_1(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), var_1.zyy, vec3<bool>(func_1(abs(vec4<u32>(u_input.b.x, u_input.b.x, 35581u, u_input.b.x)), u_input.a ^ -12664i, firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))).x, false, true)), false, Struct_1(vec4<bool>(true, (2147483647i << (u_input.b.x % 32u)) > reverseBits(u_input.a), true, true), var_1.yzx, vec3<bool>(true, true, true)), Struct_1(vec4<bool>(1u == u_input.b.x, true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_1.x - 163f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_1.x + -170f)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), Struct_1(vec4<bool>(false, true, any(vec4<bool>(true, true, false, false)), abs(-15230i) < firstTrailingBit(-25989i)), var_1.wyz, vec3<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)) && all(vec2<bool>(false, true)), select(u_input.a < -33106i, true, all(vec2<bool>(true, true))))));
    var var_3 = all(vec2<bool>(!(!var_2.e.c.x), 56275u > ~u_input.b.x)) || !(any(var_2.d.c.zx) || var_2.d.c.x);
    var var_4 = Struct_2(Struct_1(select(!vec4<bool>(false, var_2.b, false, var_2.b), !var_2.e.a, vec4<bool>(any(var_2.e.c.yz), any(var_2.d.c), var_2.b | true, any(vec4<bool>(true, var_2.c.a.x, true, var_2.e.a.x)))), vec3<f32>(-1459f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1632f + -667f))), _wgslsmith_f_op_f32(floor(959f))), !func_1(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u), u_input.a, min(vec4<i32>(90003i, u_input.a, -64187i, u_input.a), vec4<i32>(26349i, u_input.a, -2147483647i, u_input.a)))), true, var_2.d, var_2.e, Struct_1(!select(var_2.a.a, vec4<bool>(false, var_2.a.c.x, true, var_2.e.c.x), var_2.d.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1417f, _wgslsmith_f_op_f32(var_1.x + var_1.x))), var_2.e.a.zxy));
    var var_5 = !func_1(vec4<u32>(func_3(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), var_2, Struct_1(var_4.d.a, var_1.xxz, vec3<bool>(true, true, false))), select(1u, max(0u, 91724u), true), (u_input.b.x << (u_input.b.x % 32u)) ^ min(u_input.b.x, u_input.b.x), 52740u), -3278i, vec4<i32>(-1i) * -abs(vec4<i32>(-1i, u_input.a, 1i, -23322i)));
    global0 = u_input.b.x;
    global0 = 0u;
    var var_6 = Struct_2(var_4.c, false, Struct_1(vec4<bool>(var_4.b, true, !var_4.c.c.x, (u_input.a ^ u_input.a) <= ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.e.b.x, 156f, var_2.d.b.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_2.d.b.x)), var_2.e.b)), !func_1(vec4<u32>(0u, 11912u, 0u, u_input.b.x), -1i, -vec4<i32>(u_input.a, 32640i, -2147483647i, -2147483647i))), var_4.c, Struct_1(select(var_2.a.a, !select(vec4<bool>(true, var_5.x, false, var_4.b), var_4.a.a, var_4.e.a), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(func_2(0i, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), _wgslsmith_dot_vec2_i32(vec2<i32>(3285i, 2147483647i), -vec2<i32>(u_input.a, u_input.a)), u_input.b.x)).xyz, vec3<bool>(any(var_4.a.c.xx), var_2.a.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(vec4<u32>(u_input.b.x, firstTrailingBit(u_input.b.x), ~4294967295u, ~u_input.b.x))), _wgslsmith_f_op_f32(var_6.a.b.x * -601f), 23655u);
}

