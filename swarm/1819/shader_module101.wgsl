struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(30958u, false, 1296f, vec4<f32>(471f, -462f, 1640f, 127f), -15492i), Struct_1(31994u, false, 658f, vec4<f32>(-102f, 505f, 1545f, 813f), i32(-2147483648)), Struct_1(4294967295u, true, 1000f, vec4<f32>(-1000f, 2523f, -1000f, 627f), 25885i), Struct_1(1u, true, 802f, vec4<f32>(-419f, 956f, 704f, -2224f), -20141i), Struct_1(49345u, true, -1000f, vec4<f32>(971f, -876f, -706f, 1740f), -41074i), Struct_1(76607u, false, -608f, vec4<f32>(853f, 848f, 784f, 481f), -1i), Struct_1(0u, true, 2257f, vec4<f32>(248f, -261f, 480f, 314f), -1i), Struct_1(69561u, true, -1000f, vec4<f32>(-1000f, 643f, 296f, 1124f), i32(-2147483648)), Struct_1(4294967295u, false, 1519f, vec4<f32>(259f, -544f, -831f, -828f), 46664i), Struct_1(16271u, false, 1907f, vec4<f32>(1549f, -342f, -973f, 691f), -34736i), Struct_1(60871u, false, -1432f, vec4<f32>(-866f, -174f, -361f, 1212f), 2147483647i), Struct_1(12573u, false, -264f, vec4<f32>(531f, 2162f, 1499f, 1443f), -5552i), Struct_1(0u, true, -242f, vec4<f32>(-1280f, -615f, -1711f, 315f), 1i), Struct_1(1u, true, -1154f, vec4<f32>(-1550f, 1335f, -1510f, 1770f), -1i), Struct_1(99412u, true, 688f, vec4<f32>(-634f, 560f, -1343f, 690f), 11254i), Struct_1(4294967295u, true, 2809f, vec4<f32>(-514f, 705f, 1702f, -348f), 52721i), Struct_1(4294967295u, true, -873f, vec4<f32>(464f, -480f, -785f, 145f), -1i), Struct_1(0u, true, -771f, vec4<f32>(-299f, 741f, -520f, 1000f), -12173i), Struct_1(1u, true, 504f, vec4<f32>(869f, -571f, 1867f, -398f), 2147483647i), Struct_1(29514u, true, -790f, vec4<f32>(-1682f, 482f, 872f, 1844f), -24513i), Struct_1(79633u, true, 1465f, vec4<f32>(-1000f, 435f, -1603f, -375f), 19048i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = !any(!vec4<bool>(false || arg_0.b.b, arg_0.b.b, false || arg_0.b.b, select(false, arg_0.b.b, false)));
    global0 = array<Struct_1, 21>();
    return ~(arg_0.a ^ -arg_1);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec3<f32> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 21u)];
    let var_1 = Struct_2(-1i, Struct_1(u_input.e.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) + _wgslsmith_f_op_f32(var_0.c + var_0.c))), var_0.d, -22438i & -_wgslsmith_mod_i32(u_input.c, var_0.e)), -195f);
    let var_2 = global0[_wgslsmith_index_u32(arg_1.x, 21u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.d.yxw))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.d.xww)))))) * var_1.b.d.xwy);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = select(vec4<bool>(!(_wgslsmith_f_op_f32(round(-493f)) < 132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.b.c, 156f, true))) < _wgslsmith_f_op_f32(max(-353f, _wgslsmith_f_op_f32(trunc(arg_3.c)))), arg_0, any(!select(vec4<bool>(arg_3.b.b, arg_0, arg_3.b.b, false), vec4<bool>(arg_3.b.b, true, arg_0, false), arg_3.b.b))), !select(!(!vec4<bool>(arg_0, true, true, false)), !vec4<bool>(true, true, arg_0, arg_3.b.b), arg_3.b.b), !vec4<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, arg_0), vec4<bool>(false, arg_3.b.b, true, arg_3.b.b))), false, true, !all(vec4<bool>(arg_0, false, false, false))));
    global0 = array<Struct_1, 21>();
    var var_1 = !(!select(var_0, !vec4<bool>(arg_3.b.b, true, false, arg_0), vec4<bool>(true, any(var_0), false, true)));
    var var_2 = false;
    let var_3 = !vec4<bool>(all(!select(vec4<bool>(false, false, var_1.x, var_0.x), vec4<bool>(var_1.x, arg_3.b.b, var_1.x, true), true)), false, true, arg_3.b.b);
    return Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_1.x), u_input.d.zy, vec2<i32>(0i, u_input.c)), firstTrailingBit(arg_1.yx)), arg_1.yx), arg_3.b, 1f);
}

fn func_1() -> i32 {
    let var_0 = func_4(false | (9372i < min(u_input.d.x, -1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-17873i, 53202i, -39561i ^ u_input.c), _wgslsmith_add_vec3_i32(u_input.d, u_input.d)), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(-27872i, -10033i, 11990i), u_input.d)), -vec3<i32>(u_input.d.x, func_2(Struct_2(-1i, Struct_1(u_input.b.x, true, -176f, vec4<f32>(1285f, 275f, 1228f, 953f), u_input.c), -415f), u_input.c), _wgslsmith_add_i32(41965i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(45152u, 4294967295u, u_input.a.x), vec2<u32>(0u, 4294967295u)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-192f, 2648f, -1629f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(279f, -1412f, 1161f), vec3<f32>(-163f, 348f, -2473f), vec3<bool>(false, false, false)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(275f)) * -608f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + _wgslsmith_f_op_f32(select(433f, -789f, true))), -1650f)), Struct_2(u_input.c << (firstLeadingBit(38649u) % 32u), Struct_1(73713u, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -1683f), vec4<f32>(_wgslsmith_div_f32(-191f, 524f), -523f, _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(f32(-1f) * -824f)), _wgslsmith_mult_i32(~u_input.c, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.e, vec2<u32>(4294967295u, 4294967295u))).x * -1621f)));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_1 = reverseBits(abs(_wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.c, -57540i)), vec2<i32>(2147483647i, var_0.a))));
    return -_wgslsmith_mod_i32(-1i, i32(-1i) * -18034i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    global0 = array<Struct_1, 21>();
    let var_1 = u_input.b.x;
    let var_2 = true;
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_3 = vec2<bool>(all(vec3<bool>(!var_2 != var_2, true, true)), all(vec3<bool>(false, var_2, all(vec4<bool>(var_2, var_2, var_2, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~func_1()), _wgslsmith_f_op_vec3_f32(func_3(~(~u_input.e), ~vec2<u32>(0u, 6958u))).x, u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1189f)), -831f, _wgslsmith_f_op_f32(f32(-1f) * -1465f))));
}

