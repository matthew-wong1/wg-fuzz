struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1439f, 338f, 1275f, 1468f), vec4<f32>(1074f, -910f, -394f, -434f), vec4<f32>(993f, -986f, -923f, 227f), vec4<f32>(-588f, 1000f, 1061f, 1577f), vec4<f32>(1997f, -356f, -134f, 200f), vec4<f32>(1000f, -680f, -327f, -484f), vec4<f32>(-187f, -1532f, -1639f, 219f), vec4<f32>(389f, -1259f, -266f, -1033f), vec4<f32>(-1183f, -977f, 161f, -423f), vec4<f32>(-212f, 1092f, 477f, 183f), vec4<f32>(1000f, 256f, -678f, -934f), vec4<f32>(-1010f, 1000f, -1825f, -226f), vec4<f32>(1000f, 1089f, 1057f, 677f), vec4<f32>(-788f, 400f, 191f, -517f), vec4<f32>(960f, -288f, 970f, 717f), vec4<f32>(-921f, -795f, 1437f, 413f), vec4<f32>(-1007f, 401f, -987f, -1285f), vec4<f32>(-270f, 1607f, -240f, 424f), vec4<f32>(-1804f, -1687f, -694f, 1626f), vec4<f32>(771f, 1082f, 1065f, 192f), vec4<f32>(-103f, 1786f, 242f, -214f), vec4<f32>(-1321f, -656f, 1415f, -709f), vec4<f32>(-826f, -349f, 721f, -668f));

var<private> global1: i32;

var<private> global2: array<f32, 24> = array<f32, 24>(245f, 1044f, 922f, 472f, 297f, -343f, -631f, -177f, 969f, -1000f, -268f, -1023f, -461f, 993f, 1930f, 1057f, 1597f, -209f, -326f, -1110f, 1561f, -1297f, 1000f, 1693f);

var<private> global3: array<u32, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> bool {
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, firstLeadingBit(arg_0.b.b.b)), arg_0.e.b, abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(15090i, 1i), arg_0.e.b)), -7490i), -vec4<i32>(abs(arg_0.e.a), 2147483647i, 912i, -8647i));
    var var_0 = arg_0.b.d;
    global1 = 2147483647i;
    let var_1 = arg_0.a;
    var_0 = Struct_2(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.a, -2013i), vec3<i32>(arg_0.b.e.b, -15448i, 8560i)), -vec3<i32>(arg_0.e.a, var_0.a, 1i)));
    return true;
}

fn func_2() -> i32 {
    global2 = array<f32, 24>();
    let var_0 = ~(~select(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(87234u, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 1u, 12635u)), 1u, func_3(Struct_4(true, Struct_3(true, Struct_2(16883i, -2147483647i), 1u, Struct_2(-28815i, -42820i), Struct_2(-1i, 2147483647i)), vec4<f32>(global2[_wgslsmith_index_u32(17571u, 24u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29651u, 2u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), global2[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_2(-1i, 0i)), true, true, vec3<bool>(true, true, true))));
    global3 = array<u32, 2>();
    global0 = array<vec4<f32>, 23>();
    var var_1 = Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.xz)), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), min(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 0i)), vec2<i32>(-1i, 1i)), select(vec2<i32>(-36772i, 29721i), vec2<i32>(7056i, 0i), vec2<bool>(true, true))), -min(-vec2<i32>(9014i, 1i), vec2<i32>(-65341i, -34404i))));
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<u32> {
    global2 = array<f32, 24>();
    let var_0 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(select(~abs(vec2<u32>(12960u, 4294967295u)), max(~u_input.a, u_input.b.zw), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<u32>(u_input.a.x, firstLeadingBit(1u))), ~_wgslsmith_clamp_u32(0u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.a.x), vec3<u32>(u_input.b.x, 26913u, 0u))), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1391u, 2u)], u_input.a.x) << (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(22705u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]) % 32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u & global3[_wgslsmith_index_u32(19194u, 2u)], ~(~5381u)), 0u));
    var var_1 = arg_0;
    let var_2 = true;
    let var_3 = !(!select(vec3<bool>(true, any(vec4<bool>(var_2, var_2, true, true)), -1i != arg_0.a), vec3<bool>(true, true, !var_2), !select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, var_2, false), false)));
    return _wgslsmith_add_vec2_u32(u_input.b.wx, _wgslsmith_div_vec2_u32(select(var_0.xz, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(20691u, global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<u32>(50745u, 0u)), u_input.a), false), ~_wgslsmith_mult_vec2_u32(vec2<u32>(63765u, u_input.b.x), vec2<u32>(53010u, global3[_wgslsmith_index_u32(29171u, 2u)]))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(round(-370f)), _wgslsmith_f_op_f32(abs(509f)))), _wgslsmith_f_op_vec3_f32(-arg_2.xxx), 35350u > u_input.a.x)));
    let var_2 = arg_1.x ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.wwy, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 1u, global3[_wgslsmith_index_u32(1u, 2u)]) & vec3<u32>(global3[_wgslsmith_index_u32(0u, 2u)], 78310u, 46081u), vec3<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(11956u, 2u)]))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(2778u, u_input.b.x), 28607u));
    var var_3 = min(_wgslsmith_mult_u32(10831u, ~(~global3[_wgslsmith_index_u32(~48116u, 2u)])), 0u);
    var var_4 = vec3<u32>(1u, _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(arg_1.x, var_2)), 1u | (global3[_wgslsmith_index_u32(~1u, 2u)] ^ abs(global3[_wgslsmith_index_u32(30342u, 2u)]))), ~var_2);
    return Struct_4(!(_wgslsmith_div_i32(~(-20739i), arg_0.a) != -(~var_0)), Struct_3(true, arg_0, 1u, arg_0, arg_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f + arg_2.x)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, var_2, 12813u), vec4<u32>(var_4.x, 30535u, arg_1.x, global3[_wgslsmith_index_u32(var_2, 2u)])), ~u_input.b), vec4<u32>(1u, ~6077u, 28151u, min(arg_1.x, arg_1.x))), 2u)], 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f * 663f))), 1316f), 1320f, arg_0);
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = func_5(arg_0.d, func_4(Struct_2(func_2(), ~(-1i & arg_0.b.b)), global0[_wgslsmith_index_u32(~u_input.b.x, 23u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.c, u_input.a.x), 23u)]) * vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_0.c, 24u)])), -1688f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c >> (arg_0.c % 32u), 2u)], 24u)], global2[_wgslsmith_index_u32(arg_0.c, 24u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, -1003f, _wgslsmith_f_op_f32(-1871f + global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(9874u, 24u)] + 880f)))));
    var var_1 = arg_0.e;
    global2 = array<f32, 24>();
    let var_2 = abs(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(~global3[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.b.c) ^ u_input.b.wz));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(490f, global2[_wgslsmith_index_u32(func_4(Struct_2(1i, var_0.b.e.b), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 23u)] * vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 24u)], global2[_wgslsmith_index_u32(0u, 24u)], var_0.c.x, 565f))).x, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(231f, 127f, _wgslsmith_f_op_f32(sign(282f))) + _wgslsmith_f_op_vec3_f32(var_0.c.wxx * _wgslsmith_f_op_vec3_f32(var_0.c.yyz - var_0.c.zyy))), vec3<bool>(all(vec4<bool>(false, var_0.a, false, var_0.b.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.e.b), vec2<i32>(-20218i, var_1.b)) < (i32(-1i) * -79510i), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), global2[_wgslsmith_index_u32(var_2.x, 24u)], 375f)) + var_0.c.yxw));
    return !(!select(!select(vec4<bool>(var_0.a, true, var_0.a, arg_0.a), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, false, arg_0.a, true)), vec4<bool>(var_0.a, arg_0.a, true, var_2.x < 44676u), select(vec4<bool>(arg_0.a, false, true, var_0.a), !vec4<bool>(false, true, arg_0.a, false), vec4<bool>(var_0.a, false, true, var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true | (any(func_1(Struct_3(false, Struct_2(-2147483647i, -1i), 4294967295u, Struct_2(7626i, 2045i), Struct_2(-2147483647i, 2147483647i)))) & false), Struct_3(false, Struct_2(_wgslsmith_mod_i32(24329i >> (u_input.b.x % 32u), 1i), -1i), global3[_wgslsmith_index_u32(1u, 2u)], func_5(func_5(func_5(Struct_2(2147483647i, 2147483647i), u_input.a, vec4<f32>(434f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], 24u)], 745f, global2[_wgslsmith_index_u32(20990u, 24u)])).e, vec2<u32>(0u, u_input.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-196f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(85707u, 24u)], global2[_wgslsmith_index_u32(55861u, 24u)]), vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18585u, 2u)], 2u)], 24u)], -728f, -707f, 719f)))).e, firstLeadingBit(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(0u, 23u)], vec4<f32>(global2[_wgslsmith_index_u32(123u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(79613u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(76016u, 24u)], 140f, global2[_wgslsmith_index_u32(8008u, 24u)]), global0[_wgslsmith_index_u32(u_input.b.x, 23u)])))).b.b, Struct_2(4181i, ~func_5(Struct_2(1i, -2147483647i), vec2<u32>(39743u, 37335u), vec4<f32>(-374f, -597f, 601f, 825f)).b.e.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), -1000f, -2467f, -2049f), -1945f, func_5(func_5(Struct_2(-25097i, 1i), countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(21765u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(50077u, 24u)], -400f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6272u, 2u)], 2u)], 24u)], 2653f)))).b.b, vec2<u32>(~(~8908u), min(0u, u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(35884u, global3[_wgslsmith_index_u32(~abs(u_input.b.x), 2u)]), 23u)]).e);
    let var_1 = Struct_1(var_0.b.c, select(func_1(Struct_3(true, Struct_2(var_0.b.b.a, 1i), ~var_0.b.c, func_5(Struct_2(var_0.e.a, 11633i), u_input.a, vec4<f32>(var_0.c.x, -301f, -1805f, 355f)).e, Struct_2(-8181i, -2147483647i))).yxz, !vec3<bool>(any(vec4<bool>(true, true, var_0.a, var_0.b.a)), true, !var_0.b.a), select(func_1(Struct_3(true, Struct_2(var_0.b.b.b, -1i), 46385u, Struct_2(-9929i, var_0.e.a), var_0.e)).ywx, func_1(func_5(Struct_2(0i, -1813i), vec2<u32>(var_0.b.c, var_0.b.c), vec4<f32>(var_0.c.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(58734u, 24u)], -468f)).b).xyx, select(func_1(var_0.b).wzw, !vec3<bool>(var_0.b.a, true, var_0.b.a), !vec3<bool>(var_0.a, var_0.b.a, var_0.a)))), -select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.d.b, var_0.b.d.a) & vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, 4787i)), select(vec2<i32>(0i, var_0.b.d.a), vec2<i32>(0i, var_0.e.b), var_0.b.a) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.b.b, 39012i), vec2<i32>(-5638i, 8128i)), func_1(func_5(Struct_2(var_0.e.b, -42231i), vec2<u32>(global3[_wgslsmith_index_u32(var_0.b.c, 2u)], u_input.a.x), vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 24u)], var_0.d, global2[_wgslsmith_index_u32(4294967295u, 24u)], 306f)).b).x));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.a ^ ~u_input.a, ~u_input.b.zy >> (vec2<u32>(~(global3[_wgslsmith_index_u32(35478u, 2u)] ^ 19844u), abs(min(var_0.b.c, 1u))) % vec2<u32>(32u)));
    var var_3 = var_1;
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-abs(var_1.c.x), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(0i, 33032i, var_3.c.x), -vec3<i32>(var_1.c.x, 18106i, 17697i), any(vec4<bool>(false, false, var_3.b.x, false))), -vec3<i32>(var_1.c.x, var_3.c.x, -20103i)), 2147483647i, i32(-1i) * -100969i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(5221i, var_3.c.x, var_1.c.x, -2147483647i), vec4<i32>(func_2(), 2147483647i, -1i, _wgslsmith_mult_i32(~var_3.c.x, var_0.e.b | 25770i))));
    var var_5 = Struct_1(~4758u, var_3.b, var_3.c);
    var_4 = vec4<i32>(-var_0.b.b.a, var_1.c.x, ~select(~(-28044i), reverseBits(-2147483647i), all(vec2<bool>(var_1.b.x, var_5.b.x))), firstTrailingBit(_wgslsmith_sub_i32(-var_0.b.d.b, -30020i))) >> (~countOneBits(u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_6 = all(!vec4<bool>(func_1(func_5(Struct_2(var_3.c.x, -6191i), vec2<u32>(var_5.a, 21588u), vec4<f32>(global2[_wgslsmith_index_u32(17621u, 24u)], 490f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], 24u)], var_0.c.x)).b).x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 24u)]) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.a, 2u)], 24u)]), var_3.b.x, var_3.b.x));
    var var_7 = reverseBits(4739u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, global2[_wgslsmith_index_u32(8601u, 24u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, 108f)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(14229u, global3[_wgslsmith_index_u32(var_5.a, 2u)]), vec2<u32>(abs(firstTrailingBit(global3[_wgslsmith_index_u32(63638u, 2u)])), reverseBits(var_2.x | 1u))), max(func_5(var_0.e, vec2<u32>(~4294967295u, ~global3[_wgslsmith_index_u32(28080u, 2u)]), var_0.c).e.a, _wgslsmith_div_i32(-66258i | var_3.c.x, var_5.c.x) ^ var_0.b.e.a), -220f);
}

