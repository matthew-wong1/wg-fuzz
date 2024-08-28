struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec3<f32>(764f, -573f, 1000f), false), Struct_1(vec3<f32>(908f, -567f, -1000f), true)), Struct_2(Struct_1(vec3<f32>(-1000f, -673f, -1757f), false), Struct_1(vec3<f32>(-316f, -881f, 1774f), false)), Struct_2(Struct_1(vec3<f32>(-1000f, -272f, 1041f), false), Struct_1(vec3<f32>(1000f, 274f, 917f), true)), Struct_2(Struct_1(vec3<f32>(572f, -1000f, -554f), false), Struct_1(vec3<f32>(-937f, 1063f, -971f), false)), Struct_2(Struct_1(vec3<f32>(378f, -823f, -387f), false), Struct_1(vec3<f32>(869f, -509f, -796f), true)), Struct_2(Struct_1(vec3<f32>(317f, -145f, -158f), true), Struct_1(vec3<f32>(789f, -941f, 861f), false)), Struct_2(Struct_1(vec3<f32>(-515f, -134f, 274f), true), Struct_1(vec3<f32>(-636f, -858f, 356f), true)), Struct_2(Struct_1(vec3<f32>(-1477f, 1000f, 897f), false), Struct_1(vec3<f32>(263f, 344f, -992f), false)), Struct_2(Struct_1(vec3<f32>(1479f, -1181f, 1036f), true), Struct_1(vec3<f32>(597f, -397f, -1392f), true)), Struct_2(Struct_1(vec3<f32>(275f, 1000f, 205f), true), Struct_1(vec3<f32>(-1416f, -1015f, -1284f), false)), Struct_2(Struct_1(vec3<f32>(-362f, -2577f, -169f), false), Struct_1(vec3<f32>(1558f, 114f, 1286f), true)), Struct_2(Struct_1(vec3<f32>(-669f, -1000f, 1542f), true), Struct_1(vec3<f32>(428f, 986f, -1000f), false)), Struct_2(Struct_1(vec3<f32>(963f, -182f, -1000f), true), Struct_1(vec3<f32>(-392f, -3499f, 650f), false)), Struct_2(Struct_1(vec3<f32>(206f, -642f, 747f), false), Struct_1(vec3<f32>(604f, -838f, -1704f), false)), Struct_2(Struct_1(vec3<f32>(-1103f, 1638f, 469f), false), Struct_1(vec3<f32>(1154f, 115f, 775f), true)), Struct_2(Struct_1(vec3<f32>(1316f, 880f, -1039f), false), Struct_1(vec3<f32>(-346f, 1000f, 328f), true)));

var<private> global1: array<vec4<u32>, 15>;

var<private> global2: array<i32, 26>;

var<private> global3: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(428f, 310f, -453f), true), Struct_1(vec3<f32>(1603f, -664f, 1187f), true)), 1172f, vec3<f32>(1394f, -770f, -942f)), Struct_1(vec3<f32>(1146f, 1400f, 708f), true)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-3262f, 1115f, 2065f), true), Struct_1(vec3<f32>(916f, -1318f, 1573f), false)), -894f, vec3<f32>(-1176f, -339f, -730f)), Struct_1(vec3<f32>(1252f, 1996f, 286f), true)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, -1191f, -454f), true), Struct_1(vec3<f32>(-252f, 100f, 447f), true)), 1626f, vec3<f32>(1971f, 423f, 1446f)), Struct_1(vec3<f32>(911f, 949f, -1000f), true)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(224f, 1665f, 1000f), false), Struct_1(vec3<f32>(-453f, -1877f, -1018f), false)), -1154f, vec3<f32>(1088f, 1446f, 325f)), Struct_1(vec3<f32>(1450f, 268f, 1000f), false)), Struct_4(Struct_3(Struct_2(Struct_1(vec3<f32>(-1216f, 1000f, -2101f), false), Struct_1(vec3<f32>(200f, 784f, -1038f), true)), 1000f, vec3<f32>(2282f, 1000f, 182f)), Struct_1(vec3<f32>(-581f, -1312f, -546f), false)));

var<private> global4: array<Struct_4, 25>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 897f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(928f, 568f) - vec2<f32>(-2177f, -1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(f32(-1f) * -1603f))), all(select(!vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, false), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(950f, 980f), vec2<f32>(867f, 178f), vec2<bool>(arg_0, true))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-841f, 1000f))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1083f, -1226f))))), !vec2<bool>(!(!arg_0), arg_0)));
    var var_1 = !arg_0;
    let var_2 = select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, 22669i), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], 2147483647i)), reverseBits(vec3<i32>(2147483647i, -41071i, -4396i))) << (~(~vec3<u32>(1u, u_input.b.x, 0u)) % vec3<u32>(32u)), min(vec3<i32>(global2[_wgslsmith_index_u32(~u_input.b.x, 26u)], ~42654i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 26u)]), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<i32>(16539i, 1i, 4286i), arg_0), ~vec3<i32>(22476i, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)]))), !select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, false)), any(vec3<bool>(arg_0, true, arg_0)))) & min(vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(3368u, 26u)]), -global2[_wgslsmith_index_u32(42695u, 26u)], -21752i) | vec3<i32>(-global2[_wgslsmith_index_u32(u_input.b.x, 26u)], 0i, select(1i, 0i, false)), vec3<i32>(_wgslsmith_mod_i32(1i & global2[_wgslsmith_index_u32(32820u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), countOneBits(0i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(select(u_input.b.x, u_input.d.x, arg_0), 26u)], ~global2[_wgslsmith_index_u32(u_input.b.x, 26u)])));
    let var_3 = global4[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(~u_input.b.x)), 20024u), 25u)];
    let var_4 = firstTrailingBit(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(0u, u_input.b.x)), select(u_input.d, u_input.c, true)), ~(~(vec2<u32>(u_input.a, 1u) | u_input.b))));
    return -728f;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<f32>(-205f, _wgslsmith_f_op_f32(f32(-1f) * -2455f), -1000f), ~1i < global2[_wgslsmith_index_u32(40772u, 26u)]), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1723f, 639f, -486f), vec3<f32>(-690f, 374f, -244f), true)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-496f, 1000f, -986f), vec3<f32>(198f, 275f, 462f), true))), any(vec3<bool>(true, true, true)))), 1120f, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f * -2289f)), _wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, false)))))), -1374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-684f, -1142f, any(vec2<bool>(true, true)))))));
    var var_1 = -_wgslsmith_mult_i32(abs(~(2147483647i | global2[_wgslsmith_index_u32(u_input.b.x, 26u)])), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 26191i), vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(48101u, 26u)]), -15332i, global2[_wgslsmith_index_u32(~6384u, 26u)])));
    var var_2 = vec2<i32>(-9195i, ~(i32(-1i) * -max(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)])));
    let var_3 = 1u;
    var_0 = Struct_3(global0[_wgslsmith_index_u32(abs(firstLeadingBit(var_3)) >> (u_input.a % 32u), 16u)], _wgslsmith_div_f32(var_0.c.x, -751f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1161f, -466f) - vec3<f32>(401f, 1583f, 1642f))) * var_0.a.b.a))));
    return ~(~31386u);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    return _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(13141i, 34308i) | (vec2<i32>(-33488i, global2[_wgslsmith_index_u32(1u, 26u)]) ^ vec2<i32>(48346i, 2147483647i)), vec2<i32>(30126i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 0i))), max(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0, arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, global2[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(0i, arg_0))), -(~vec2<i32>(-7806i, arg_0)))) << (~vec2<u32>(func_2(), min(_wgslsmith_div_u32(u_input.a, 4294967295u), 1u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(74521i, global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), func_1(26038i)), _wgslsmith_mult_vec2_i32(abs(func_1(_wgslsmith_add_i32(22154i, 0i))), ~(~vec2<i32>(-7301i, 45682i) << (firstTrailingBit(vec2<u32>(2933u, 12899u)) % vec2<u32>(32u)))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a | countOneBits(~u_input.c.x), 16u)];
    global2 = array<i32, 26>();
    var var_2 = var_1.b.a.x;
    global1 = array<vec4<u32>, 15>();
    global3 = array<Struct_4, 5>();
    var var_3 = true;
    var var_4 = Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-981f, 342f, var_1.b.a.x))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-352f, _wgslsmith_f_op_f32(func_3(true))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.x, var_0.x), vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(u_input.b.x, 26u)]) >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], 93718i) >> (vec2<u32>(66049u, u_input.d.x) % vec2<u32>(32u))), -countOneBits(vec2<i32>(29848i, 21867i)) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), max(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 26u)] ^ var_0.x, ~var_0.x, i32(-1i) * -1i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-4034i, 87288i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<i32>(23870i, var_0.x, 33319i, global2[_wgslsmith_index_u32(56910u, 26u)]), vec4<i32>(-38499i, 17123i, var_0.x, var_0.x))) & _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-3369i, global2[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x, 7751i)), vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.d.x, 26u)], global2[_wgslsmith_index_u32(42426u, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 26u)]))), abs(-_wgslsmith_mod_vec3_i32(select(vec3<i32>(-10763i, 24072i, -2147483647i), vec3<i32>(var_0.x, 22366i, -2147483647i), var_1.b.b), -vec3<i32>(13196i, -19350i, 24962i))), ~vec2<u32>(16698u, u_input.c.x));
}

