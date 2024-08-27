struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec3<f32>(-1000f, 480f, -1248f), vec4<f32>(-134f, -1800f, 1000f, 127f), vec2<f32>(1733f, -1366f)), Struct_1(vec3<f32>(1000f, -397f, -753f), vec4<f32>(1000f, 1364f, -1659f, 1629f), vec2<f32>(-1232f, -100f)), true, true), Struct_2(Struct_1(vec3<f32>(325f, -510f, -983f), vec4<f32>(1212f, 386f, 1378f, -1000f), vec2<f32>(189f, 1114f)), Struct_1(vec3<f32>(1223f, -1267f, -909f), vec4<f32>(-1000f, 200f, 1000f, -1088f), vec2<f32>(-498f, 1303f)), false, false), Struct_2(Struct_1(vec3<f32>(606f, -352f, -1618f), vec4<f32>(1376f, -819f, 1199f, 2357f), vec2<f32>(1298f, -1006f)), Struct_1(vec3<f32>(1000f, 1243f, -509f), vec4<f32>(-396f, -1249f, -204f, -1297f), vec2<f32>(1718f, 506f)), true, true), Struct_2(Struct_1(vec3<f32>(975f, 1041f, 594f), vec4<f32>(-707f, 259f, -1000f, -496f), vec2<f32>(-347f, 1050f)), Struct_1(vec3<f32>(515f, 1456f, 1523f), vec4<f32>(1379f, -156f, 871f, 104f), vec2<f32>(501f, -1028f)), false, true), Struct_2(Struct_1(vec3<f32>(-563f, 325f, -656f), vec4<f32>(-2481f, 642f, 1122f, 353f), vec2<f32>(-704f, -622f)), Struct_1(vec3<f32>(-1676f, 2003f, -505f), vec4<f32>(-856f, 364f, 308f, 853f), vec2<f32>(1788f, -1000f)), true, false), Struct_2(Struct_1(vec3<f32>(1879f, 1378f, -942f), vec4<f32>(2498f, 1318f, -1688f, -1401f), vec2<f32>(357f, -1027f)), Struct_1(vec3<f32>(-890f, -2083f, 154f), vec4<f32>(1391f, -1000f, 1535f, 674f), vec2<f32>(742f, 844f)), false, false), Struct_2(Struct_1(vec3<f32>(394f, -2036f, -1000f), vec4<f32>(-457f, -1005f, 833f, -326f), vec2<f32>(1374f, -531f)), Struct_1(vec3<f32>(1449f, 584f, 636f), vec4<f32>(-2071f, -1877f, 299f, -904f), vec2<f32>(-1000f, -848f)), true, true), Struct_2(Struct_1(vec3<f32>(1243f, 592f, -233f), vec4<f32>(828f, -1302f, -328f, -739f), vec2<f32>(-311f, -1607f)), Struct_1(vec3<f32>(927f, 447f, 1206f), vec4<f32>(-535f, -621f, -684f, 295f), vec2<f32>(769f, -358f)), false, false));

var<private> global1: array<u32, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec3<bool>(false, !((false & select(false, false, true)) != false), false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1797f, -549f, true)), _wgslsmith_f_op_f32(floor(1000f)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(1913f + -798f))), 107f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-582f + 1648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) * _wgslsmith_f_op_f32(floor(1766f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(754f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(-396f - -1234f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1946f)), _wgslsmith_f_op_f32(108f - 1694f)) * vec2<f32>(-727f, -1000f))));
    let var_2 = Struct_1(vec3<f32>(658f, var_1.a.x, _wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(min(355f, _wgslsmith_f_op_f32(max(var_1.a.x, var_1.b.x)))), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(round(-485f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 1f, _wgslsmith_div_f32(var_1.b.x, -2257f), var_1.a.x), _wgslsmith_f_op_vec4_f32(min(var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 850f, -218f, var_1.b.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-465f, _wgslsmith_f_op_f32(f32(-1f) * -1711f))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.c.x, _wgslsmith_f_op_f32(-675f + var_1.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, var_1.a.x, true)), var_1.b.x, _wgslsmith_f_op_f32(-var_2.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(796f, var_1.b.x, 188f) * var_1.a), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, -1217f, 498f), var_2.a))) - vec3<f32>(_wgslsmith_f_op_f32(round(-1037f)), -175f, -804f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2.b))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.yw) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-209f, var_2.b.x)))), _wgslsmith_f_op_vec2_f32(-var_2.b.wx)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(189f + var_2.c.x), 1f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1531f, -617f, var_2.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -294f, -1000f) * var_2.a))))));
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-740f, var_1.a.x))) * _wgslsmith_f_op_f32(max(-1306f, _wgslsmith_f_op_f32(var_2.a.x + 1517f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(876f + 1379f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(select(-757f, var_3.x, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x - -313f), _wgslsmith_f_op_f32(max(-648f, _wgslsmith_f_op_f32(-1201f * var_1.a.x))))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, -2425f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1141f, -800f))), ~global1[_wgslsmith_index_u32(4294967295u, 5u)] > select(4466u, reverseBits(1u), any(vec2<bool>(false, true))))), 60625u != global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~1u, 5u)], 1u), 5u)]));
    global1 = array<u32, 5>();
    let var_1 = var_0.x > -395f;
    let var_2 = false;
    global1 = array<u32, 5>();
    return ~u_input.b | _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, u_input.a.x), 0i);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_0 >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] % 32u), func_2())), _wgslsmith_add_vec2_i32(u_input.c, -(~vec2<i32>(u_input.a.x, u_input.a.x)))) | func_2();
    global1 = array<u32, 5>();
    var_0 = countOneBits(arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_3.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a.x, arg_2, arg_2, arg_2), vec4<f32>(-2325f, 656f, arg_2, arg_3.a.x), false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_3.b)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32((21243u & global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90099u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)]), 5u)]) << (~1u % 32u), firstTrailingBit(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 5u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]))) | select(9158u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 5u)] << (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86811u, 5u)], 5u)]), 5u)] % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9215u, 5u)], 5u)], 5u)], 5u)], 5u)], 56012u) >> (~0u % 32u)), 5u)], arg_1.x), 8u)];
    return var_2.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    var var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(~(~vec4<i32>(34887i, 14515i, u_input.c.x, -2147483647i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 60066i, -24735i, -1i), vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x)), select(vec4<i32>(u_input.a.x, 10863i, 23513i, 1i), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.c.x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))))), vec4<i32>(-1i) * -((vec4<i32>(1i, -45168i, 2147483647i, -2147483647i) >> (vec4<u32>(23042u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 0u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2447u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23689u, 5u)], 5u)], 29391u, 18412u) % vec4<u32>(32u))));
    var var_1 = false;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f - 181f))), 407f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f - -973f) + _wgslsmith_f_op_f32(floor(1891f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, vec4<bool>(false, true, false, false), -283f, Struct_1(vec3<f32>(308f, -554f, -705f), vec4<f32>(699f, 532f, 985f, -1000f), vec2<f32>(1666f, 285f)))) + 1003f)))), 196f);
    let var_3 = Struct_1(var_2.wwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, var_2.x, var_2.x, -1154f) - var_2) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2267f, var_2.x, -1000f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, 1000f, var_2.x, -260f))))))), _wgslsmith_f_op_vec2_f32(-var_2.zw));
    let var_4 = Struct_3(firstLeadingBit(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~46481u, 5u)], 5u)], 5u)]));
    let var_5 = ~min(73730u, var_4.a);
    var var_6 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_3.a.xx, vec2<f32>(-680f, _wgslsmith_f_op_f32(f32(-1f) * -1261f))))))));
    var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zz) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(360f, var_6.x) * var_3.c), _wgslsmith_f_op_vec2_f32(-var_3.a.xx))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1882f), _wgslsmith_f_op_f32(f32(-1f) * -915f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_6.x, var_3.b.x))))), var_2.x, _wgslsmith_add_vec4_i32(reverseBits(-(~vec4<i32>(u_input.b, var_0.x, -40711i, var_0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -53673i, 1i, -2147483647i), vec4<i32>(var_0.x, var_0.x, u_input.a.x, -37268i)), _wgslsmith_div_i32(u_input.a.x, -2147483647i), _wgslsmith_sub_i32(var_0.x, u_input.c.x), -var_0.x), abs(vec4<i32>(var_0.x, u_input.a.x, 1i, 1i)) | vec4<i32>(u_input.c.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -19345i, u_input.c.x, var_0.x))), select(vec4<u32>(39119u, var_4.a, ~var_5, ~_wgslsmith_add_u32(var_4.a, 13286u)), countOneBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(69424u, var_4.a, global1[_wgslsmith_index_u32(17298u, 5u)], 44436u)), ~vec4<u32>(1u, var_4.a, 1u, var_5))), vec4<bool>(true, true, true, true)), -2147483647i ^ min(select(_wgslsmith_div_i32(var_0.x, var_0.x), ~u_input.c.x, true), abs(u_input.c.x)));
}

