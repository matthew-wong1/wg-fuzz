struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(13092i, 0i, 1i, -1i);

var<private> global1: array<u32, 26> = array<u32, 26>(4294967295u, 0u, 4294967295u, 4427u, 14030u, 4294967295u, 2982u, 4294967295u, 1u, 33235u, 0u, 0u, 4294967295u, 41452u, 15972u, 2474u, 4294967295u, 41601u, 14886u, 22443u, 65472u, 38913u, 0u, 26467u, 21174u, 4294967295u);

var<private> global2: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1000f, -1091f), vec2<f32>(-1410f, -2092f), vec2<f32>(130f, 1600f), vec2<f32>(1154f, 469f), vec2<f32>(466f, 1586f), vec2<f32>(-395f, -172f), vec2<f32>(-123f, 954f), vec2<f32>(-1272f, -193f), vec2<f32>(734f, -1065f), vec2<f32>(933f, 508f), vec2<f32>(-1236f, 331f), vec2<f32>(1326f, 145f));

var<private> global3: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-1111f, -939f, -1045f), vec3<f32>(1784f, 965f, -1000f), vec3<f32>(977f, -1178f, -640f), vec3<f32>(1541f, -623f, 1000f), vec3<f32>(389f, 318f, -1133f), vec3<f32>(-1332f, 1376f, -592f), vec3<f32>(-1422f, -124f, 1387f), vec3<f32>(1359f, -182f, 1169f), vec3<f32>(-375f, -582f, -181f), vec3<f32>(205f, 320f, -591f), vec3<f32>(632f, -1000f, 1156f), vec3<f32>(-2778f, -881f, -2229f), vec3<f32>(-473f, 1091f, 139f), vec3<f32>(-1426f, -1026f, -898f), vec3<f32>(-118f, -1000f, 1412f), vec3<f32>(-973f, -926f, -1035f), vec3<f32>(576f, 729f, 692f), vec3<f32>(764f, -443f, 1641f), vec3<f32>(-1292f, 484f, -533f), vec3<f32>(-887f, -1170f, 899f), vec3<f32>(-1570f, 2628f, -1202f), vec3<f32>(1000f, 144f, -788f), vec3<f32>(1467f, 525f, 1000f), vec3<f32>(1810f, 1273f, -1423f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = -(~(-vec4<i32>(global0.x, global0.x, 1i, u_input.b) >> (~(~vec4<u32>(9854u, global1[_wgslsmith_index_u32(87014u, 26u)], 36882u, arg_1.b.b.x)) % vec4<u32>(32u))));
    var var_0 = 0i;
    let var_1 = global1[_wgslsmith_index_u32(~arg_2.b.b.x, 26u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(arg_1.b.a)), ~vec4<u32>(arg_1.d.b.x, arg_1.c, _wgslsmith_clamp_u32(1u, 4294967295u, 35896u) | _wgslsmith_div_u32(418u, arg_1.d.b.x), 22182u), _wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(532f)) - _wgslsmith_f_op_f32(-arg_1.d.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1641f + -180f), _wgslsmith_f_op_f32(-arg_2.d.c))))), vec2<bool>(false, !arg_2.a.d.x));
    global1 = array<u32, 26>();
    return 1u;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = reverseBits(vec3<u32>(5734u, 55782u, 1u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1398f, -488f)) * _wgslsmith_f_op_f32(f32(-1f) * -454f)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 14595u, u_input.c.x, 6439u), vec4<u32>(59630u, 3907u, 40239u, 76423u)), _wgslsmith_sub_u32(17208u, var_0.x), _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(20474u, 26u)])), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(3895u, 28286u, var_0.x, 68587u), vec4<u32>(4294967295u, 0u, u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 26u)]))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(11780u, 26u)], var_0.x, 20427u, global1[_wgslsmith_index_u32(var_0.x, 26u)]) & vec4<u32>(1u, global1[_wgslsmith_index_u32(80680u, 26u)], u_input.c.x, 1u), firstTrailingBit(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(60692u, 26u)], global1[_wgslsmith_index_u32(13768u, 26u)], 0u))), abs(vec4<u32>(firstLeadingBit(u_input.c.x), func_2(Struct_2(Struct_1(-999f, vec4<u32>(1u, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(0u, 26u)]), -559f, vec2<bool>(arg_0, arg_1.x)), Struct_1(1805f, vec4<u32>(u_input.a.x, var_0.x, 39972u, 4294967295u), 1587f, vec2<bool>(arg_0, true)), 0u, Struct_1(-340f, vec4<u32>(50004u, var_0.x, 0u, 54562u), 1429f, vec2<bool>(true, arg_1.x))), Struct_2(Struct_1(-274f, vec4<u32>(var_0.x, 1309u, global1[_wgslsmith_index_u32(39256u, 26u)], u_input.c.x), -384f, arg_1), Struct_1(-262f, vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.a.x), 1223f, vec2<bool>(arg_0, arg_0)), u_input.a.x, Struct_1(269f, vec4<u32>(4294967295u, var_0.x, 10448u, 7972u), -2133f, arg_1)), Struct_2(Struct_1(1644f, vec4<u32>(85684u, 34204u, 4294967295u, var_0.x), 148f, arg_1), Struct_1(354f, vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), -419f, vec2<bool>(false, arg_0)), var_0.x, Struct_1(-157f, vec4<u32>(u_input.a.x, u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0.x), -798f, vec2<bool>(false, false)))), var_0.x, min(0u, 4294967295u)))), _wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(-741f + 770f)), arg_1);
    var var_2 = -2147483647i;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(min(var_1.a, -1296f)))), vec4<u32>(0u, func_2(Struct_2(Struct_1(var_1.c, var_1.b, var_1.c, vec2<bool>(var_1.d.x, true)), Struct_1(var_1.c, var_1.b, var_1.c, var_1.d), var_0.x, Struct_1(408f, var_1.b, var_1.a, var_1.d)), Struct_2(Struct_1(var_1.a, vec4<u32>(2587u, 87485u, var_0.x, 28154u), -316f, vec2<bool>(arg_1.x, arg_0)), Struct_1(var_1.c, vec4<u32>(u_input.a.x, var_0.x, var_0.x, 27267u), -353f, vec2<bool>(arg_1.x, true)), var_1.b.x, Struct_1(-389f, var_1.b, -626f, arg_1)), Struct_2(Struct_1(-1000f, var_1.b, var_1.c, var_1.d), Struct_1(1251f, vec4<u32>(0u, global1[_wgslsmith_index_u32(29985u, 26u)], u_input.a.x, var_1.b.x), var_1.c, var_1.d), var_1.b.x, Struct_1(var_1.c, vec4<u32>(var_1.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)], 1u), var_1.a, vec2<bool>(false, var_1.d.x)))), var_0.x, (global1[_wgslsmith_index_u32(36312u, 26u)] | 60560u) << (firstTrailingBit(u_input.a.x) % 32u)), _wgslsmith_div_f32(var_1.a, -871f), var_1.d), Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_1.c * 376f)), ((vec4<u32>(u_input.a.x, 4294967295u, 0u, 21333u) >> (var_1.b % vec4<u32>(32u))) & ~var_1.b) ^ ~reverseBits(vec4<u32>(1u, u_input.a.x, u_input.c.x, var_0.x)), _wgslsmith_div_f32(var_1.c, 1524f), select(var_1.d, arg_1, var_1.d.x)), 3888u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(480f)), _wgslsmith_f_op_f32(-var_1.a), true))), var_1.b, var_1.c, select(arg_1, select(!vec2<bool>(arg_0, var_1.d.x), arg_1, arg_1.x), all(select(var_1.d, arg_1, var_1.d.x)))));
    var var_4 = u_input.c | var_0.yz;
    return _wgslsmith_f_op_f32(var_1.a * -1076f) >= -215f;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = !select(vec4<bool>(arg_1, all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1))), true, arg_1), !(!(!vec4<bool>(false, arg_1, arg_1, true))), !(!any(vec3<bool>(arg_1, true, true))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), ~(~(~vec4<u32>(15454u, u_input.c.x, global1[_wgslsmith_index_u32(72079u, 26u)], 19840u))), 2556f, !select(vec2<bool>(true, arg_1), var_0.yz, any(vec4<bool>(true, arg_1, false, false)))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2057f)), _wgslsmith_f_op_f32(-arg_2))), max(min(~vec4<u32>(arg_0, 58994u, 59646u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)]), vec4<u32>(2892u, 1u, 17479u, 4294967295u)), (vec4<u32>(1u, 23597u, 9658u, 29292u) >> (vec4<u32>(0u, u_input.c.x, 0u, global1[_wgslsmith_index_u32(4294967295u, 26u)]) % vec4<u32>(32u))) >> (vec4<u32>(arg_0, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29506u, 26u)], 26u)], 26u)], 29554u) % vec4<u32>(32u))), 1000f, var_0.yw), 18648u, Struct_1(arg_2, abs(abs(firstTrailingBit(vec4<u32>(arg_0, global1[_wgslsmith_index_u32(75882u, 26u)], global1[_wgslsmith_index_u32(29928u, 26u)], u_input.c.x)))), arg_2, vec2<bool>(arg_1, arg_1)));
    global0 = select(~(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, -2147483647i, 1i, 0i), ~vec4<i32>(global0.x, 0i, u_input.b, global0.x)) | vec4<i32>(~global0.x, global0.x, _wgslsmith_mult_i32(2147483647i, global0.x), -2147483647i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(~(-1i), global0.x, ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, global0.x, u_input.b), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, 17373i, -39595i, u_input.b)), -min(vec4<i32>(-5534i, u_input.b, u_input.b, global0.x), vec4<i32>(1i, 2147483647i, 2147483647i, global0.x)))), vec4<bool>(!all(var_1.d.d), !any(!var_0.wyx), true, true));
    var_1 = Struct_2(var_1.b, var_1.a, u_input.c.x, var_1.a);
    let var_2 = var_1.b;
    return Struct_1(-1104f, ~(vec4<u32>(arg_0, arg_0, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(arg_0, 26u)], var_1.c), var_1.a.b.x) << (~var_2.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -1088f), vec2<bool>(u_input.a.x >= var_1.d.b.x, any(vec3<bool>(true, false, !var_1.b.d.x))));
}

fn func_1() -> Struct_2 {
    global3 = array<vec3<f32>, 24>();
    global1 = array<u32, 26>();
    var var_0 = u_input.a.x;
    global1 = array<u32, 26>();
    global2 = array<vec2<f32>, 12>();
    return Struct_2(func_4(global1[_wgslsmith_index_u32(~func_2(Struct_2(Struct_1(1000f, vec4<u32>(u_input.c.x, 4294967295u, 22685u, 63360u), 1755f, vec2<bool>(false, true)), Struct_1(-1000f, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global1[_wgslsmith_index_u32(1u, 26u)], u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 26u)]), -1019f, vec2<bool>(false, false)), u_input.c.x, Struct_1(-1200f, vec4<u32>(global1[_wgslsmith_index_u32(1u, 26u)], 8376u, 11037u, u_input.c.x), -630f, vec2<bool>(false, true))), Struct_2(Struct_1(1480f, vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x), -204f, vec2<bool>(true, true)), Struct_1(-315f, vec4<u32>(0u, 31966u, 50415u, u_input.c.x), -1711f, vec2<bool>(false, false)), 4294967295u, Struct_1(-456f, vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(54829u, 26u)], u_input.a.x, 34794u), 745f, vec2<bool>(true, true))), Struct_2(Struct_1(-1000f, vec4<u32>(1u, 1u, 64847u, u_input.a.x), -158f, vec2<bool>(true, true)), Struct_1(1025f, vec4<u32>(133124u, 52630u, 16168u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]), 388f, vec2<bool>(false, true)), 17114u, Struct_1(-419f, vec4<u32>(u_input.a.x, 1u, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 26u)]), -1318f, vec2<bool>(false, true)))) & _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(8386u, 26u)], global1[_wgslsmith_index_u32(675u, 26u)])), 26u)], !(false | func_3(true, vec2<bool>(true, true))), _wgslsmith_div_f32(307f, 1682f)), Struct_1(_wgslsmith_f_op_f32(round(-1470f)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a.x, 26033u, global1[_wgslsmith_index_u32(87677u, 26u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)])) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(11207u, 26u)], 1225u, global1[_wgslsmith_index_u32(41163u, 26u)], u_input.c.x), vec4<u32>(global1[_wgslsmith_index_u32(0u, 26u)], u_input.a.x, u_input.a.x, 1u)) % vec4<u32>(32u))), 2368f, !func_4(u_input.a.x ^ u_input.a.x, true, -1122f).d), ~global1[_wgslsmith_index_u32(max(51896u, firstTrailingBit(0u)), 26u)], Struct_1(_wgslsmith_f_op_f32(max(-1481f, 639f)), ~(~countOneBits(vec4<u32>(58521u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 18315u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)), !vec2<bool>(func_4(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76489u, 26u)], 26u)], 26u)], true, -550f).d.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 12>();
    global1 = array<u32, 26>();
    let var_0 = ~(~_wgslsmith_mod_vec2_i32(~global0.yy, vec2<i32>(3652i, global0.x) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.a.xx) % vec2<u32>(32u))));
    var var_1 = true;
    var var_2 = func_1();
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.c * -785f), _wgslsmith_f_op_f32(abs(1000f))))), vec4<u32>(_wgslsmith_div_u32(16228u, var_2.b.b.x) & abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)]), firstLeadingBit(1u), ~global1[_wgslsmith_index_u32(18161u, 26u)] & var_2.c, _wgslsmith_sub_u32(1u >> (0u % 32u), global1[_wgslsmith_index_u32(min(47822u, 70400u), 26u)])), 1f, var_2.d.d), func_1().a, global1[_wgslsmith_index_u32(1u, 26u)], var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i & u_input.b, _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(~u_input.a, abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.c, 26u)], 26u)], var_2.c, var_2.d.b.x))), countOneBits(abs(var_2.b.b.yyz))), 4294967295u | global1[_wgslsmith_index_u32(53759u, 26u)]);
}

