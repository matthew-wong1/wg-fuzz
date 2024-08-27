struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(603f, 1327f, -1243f, 2380f, -1609f, -295f, 164f, -775f, 453f, 488f, -467f, -498f, -316f, -1660f, 888f, -182f, -1417f, 2153f, 1778f, -840f, 1747f, -395f, 2466f, -1384f, -319f, 1247f, -572f, -604f, 1661f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(11855u, u_input.e), reverseBits(max(~arg_0.c & arg_0.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, 33529u), ~vec2<u32>(8562u, 0u), ~u_input.b.xx))));
    var var_1 = -34696i;
    let var_2 = !vec4<bool>(any(select(select(vec4<bool>(false, true, false, arg_0.d.d.c), vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.e.x, arg_0.d.b.c)), vec4<bool>(true, false, arg_0.b.x, arg_0.e.x), arg_0.e.x & true)), true, (_wgslsmith_mod_i32(108080i, arg_0.d.a.x) & u_input.a) > -44018i, arg_0.b.x);
    global0 = array<f32, 29>();
    var var_3 = arg_0.d.d;
    return 2480u << ((firstTrailingBit(var_0.x) | _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, var_3.b, 41607u) >> (vec3<u32>(78822u, u_input.b.x, arg_0.a.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(abs(u_input.b), ~vec3<u32>(2327u, var_3.a, var_3.b)))) % 32u);
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = -41468i;
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.e, u_input.e, u_input.b.x), ~vec4<u32>(5188u, 7626u, 14277u, u_input.e)), vec4<u32>(u_input.e & u_input.b.x, func_3(Struct_3(vec3<u32>(84238u, u_input.b.x, u_input.b.x), vec2<bool>(true, false), u_input.b.xx, Struct_2(vec2<i32>(arg_0, arg_0), Struct_1(u_input.e, 2832u, true, false), vec3<f32>(global0[_wgslsmith_index_u32(35888u, 29u)], 932f, global0[_wgslsmith_index_u32(1u, 29u)]), Struct_1(0u, u_input.b.x, false, true)), vec3<bool>(true, true, true))), 4294967295u, u_input.b.x)), select(~(22376u << (u_input.b.x % 32u)), ~68608u, !all(vec3<bool>(true, false, false))));
    let var_2 = vec3<bool>(all(select(vec4<bool>(false, any(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false))), all(!vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), !(true || all(vec2<bool>(true, true))));
    return Struct_3(~max(vec3<u32>(101781u, 1u, 4294967295u) | u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, 1u), ~u_input.b)), !vec2<bool>(select(var_2.x && var_2.x, select(var_2.x, true, var_2.x), false), var_2.x), select(vec2<u32>(~var_1 | ~var_1, 66016u), u_input.b.yy, var_2.xz), Struct_2(firstLeadingBit(~u_input.c.zx), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 63807u), u_input.b.zx), 0u), ~firstLeadingBit(var_1), all(!vec3<bool>(true, false, var_2.x)), select(var_2.x, !var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1353f, _wgslsmith_f_op_f32(max(1593f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), 276f))), Struct_1(var_1, ~_wgslsmith_div_u32(33125u, 67449u), false, _wgslsmith_mod_i32(arg_0, arg_0) <= ~(-42737i))), !vec3<bool>(var_2.x & var_2.x, true, false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    global0 = array<f32, 29>();
    var var_0 = func_2(~1i).d.d;
    var_0 = func_2(2147483647i).d.b;
    let var_1 = func_2(-1i);
    var_0 = func_2(var_1.d.a.x).d.b;
    return Struct_1(~(~56590u), u_input.b.x, var_1.a.x >= (var_0.a >> (~func_3(Struct_3(vec3<u32>(arg_1.a.x, 45933u, 6479u), vec2<bool>(true, true), u_input.b.zx, var_1.d, var_1.e)) % 32u)), arg_1.d.d.d);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = ~(~59062u);
    let var_1 = Struct_3(~vec3<u32>(arg_2.d.a, 4294967295u, u_input.b.x), vec2<bool>(arg_2.d.c, arg_1.b.d), vec2<u32>(~abs(abs(0u)), countOneBits(_wgslsmith_add_u32(max(u_input.d, u_input.d), 6807u))), arg_1, vec3<bool>(arg_2.d.d, arg_1.d.d, arg_1.b.d));
    let var_2 = arg_1;
    return func_2(var_2.a.x).d;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = min(vec3<i32>(2147483647i, u_input.c.x, ~(-8239i)), vec3<i32>(~abs(u_input.c.x), -22532i, u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_2.yxw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1264f, 1000f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(-389f))))));
    let var_2 = func_5(~(~abs(var_0.x)), Struct_2(min(vec2<i32>(var_0.x, u_input.a), vec2<i32>(-31867i, u_input.a)) >> (~arg_0.yx % vec2<u32>(32u)), func_4(!vec3<bool>(arg_1, arg_1, false), func_2(var_0.x), func_2(-u_input.a).d), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)] * 1086f), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_2.x)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.e, arg_0.x, arg_0.x), 16107u << (arg_0.x % 32u)), 47867u, (arg_1 | true) || (global0[_wgslsmith_index_u32(arg_0.x, 29u)] != 546f), arg_1)), Struct_2(vec2<i32>(var_0.x, (u_input.a | var_0.x) | (var_0.x << (arg_0.x % 32u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(21978u, u_input.d, u_input.b.x, arg_0.x), ~vec4<u32>(0u, 1568u, 6766u, arg_0.x)), 12288u, arg_1, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1632f, -781f) * vec3<f32>(-429f, arg_2.x, arg_2.x)), select(true, true, false)))), func_2(max(-2147483647i << (u_input.b.x % 32u), 1i)).d.d), ~_wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -79498i, 7160i, u_input.c.x), vec4<i32>(-1i, -2147483647i, u_input.c.x, u_input.c.x))), -vec4<i32>(u_input.c.x, var_0.x, -5820i, 45275i)));
    var var_3 = vec3<f32>(-382f, var_1.x, 173f);
    var var_4 = Struct_2(vec2<i32>(~(-36536i), reverseBits(var_2.a.x) << (~select(6661u, var_2.b.a, false) % 32u)), func_2((func_2(var_2.a.x).d.a.x | abs(1i)) & (_wgslsmith_add_i32(u_input.a, var_0.x) ^ (var_0.x & u_input.c.x))).d.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1726f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_div_f32(arg_2.x, 1385f)))) * _wgslsmith_f_op_vec3_f32(-arg_2.yxw)), func_4(!vec3<bool>(true, arg_1, true), func_2(u_input.a), Struct_2(-var_0.yx, func_2(-1i).d.d, _wgslsmith_f_op_vec3_f32(-var_1), Struct_1(23740u, 1u, arg_2.x <= global0[_wgslsmith_index_u32(288u, 29u)], false))));
    return var_4.d;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 29>();
    return func_5(reverseBits(-2147483647i), Struct_2(u_input.c.xy, Struct_1(_wgslsmith_sub_u32(~arg_2.b, u_input.b.x), func_2(~u_input.a).c.x, (u_input.c.x >= u_input.c.x) && true, (u_input.e <= 1u) & arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(48430u, 29u)], -786f, global0[_wgslsmith_index_u32(37815u, 29u)]) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], -1479f, -578f)) - vec3<f32>(global0[_wgslsmith_index_u32(arg_2.b, 29u)], global0[_wgslsmith_index_u32(14107u, 29u)], global0[_wgslsmith_index_u32(arg_2.b, 29u)])) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], 203f, 1181f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(false, true, arg_2.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_2.a, 29u)], 740f, -1000f)), arg_1))), arg_2), Struct_2(vec2<i32>(33835i, u_input.c.x), Struct_1(~(~58417u), ~_wgslsmith_clamp_u32(39536u, 39887u, 1u), func_2(40297i).d.c.x >= global0[_wgslsmith_index_u32(u_input.d, 29u)], arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(373f, -1905f, global0[_wgslsmith_index_u32(4294967295u, 29u)]) - vec3<f32>(-1120f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 289f)) * vec3<f32>(-1544f, -915f, -356f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 3026f, -520f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(31183u, 29u)], -327f, -1021f), vec3<f32>(162f, global0[_wgslsmith_index_u32(19618u, 29u)], global0[_wgslsmith_index_u32(40491u, 29u)]), false))))), arg_2), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.c.x) & vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(13942i, -19510i, -2147483647i, u_input.a) & vec4<i32>(u_input.c.x, 6184i, -2147483647i, 2982i), func_1(u_input.b, false, vec4<f32>(-1387f, global0[_wgslsmith_index_u32(arg_2.a, 29u)], 1962f, 681f), -1249f).d) >> (~(~vec4<u32>(arg_2.a, arg_2.b, u_input.d, 35418u)) % vec4<u32>(32u)), -reverseBits(vec4<i32>(u_input.c.x, 1i, -56056i, 9147i)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(select(vec2<i32>(-1i, -6352i), vec2<i32>(u_input.c.x, u_input.a), global0[_wgslsmith_index_u32(0u, 29u)] == -1161f), -u_input.c.xz, true) & select(vec2<i32>(~1i, ~u_input.c.x), firstLeadingBit(reverseBits(u_input.c.xy)), vec2<bool>(true, true)), func_6(false, true, func_1(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(63769u, u_input.e, u_input.b.x)), vec3<u32>(0u, u_input.e, u_input.b.x), ~u_input.b), false, vec4<f32>(-1202f, _wgslsmith_f_op_f32(sign(1096f)), -1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)])), -826f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.e, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(4294967295u, 29u)])), 1293f) - vec3<f32>(_wgslsmith_f_op_f32(1363f * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1475f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(11438u, 29u)], -154f))), Struct_1(firstTrailingBit(~(~1u)), 40353u, any(func_2(abs(0i)).e), true));
    let var_1 = -u_input.a;
    var var_2 = abs(~(~u_input.b.zz));
    var var_3 = func_2(_wgslsmith_div_i32(35873i, -var_0.a.x) | func_2(var_1).d.a.x);
    let var_4 = Struct_3(~var_3.a, vec2<bool>(any(!(!vec3<bool>(false, var_3.d.b.c, true))), true), ~reverseBits(firstTrailingBit(vec2<u32>(var_2.x, var_0.d.a) | var_3.a.xx)), var_3.d, !(!select(vec3<bool>(var_3.d.d.d, true, var_3.e.x), var_3.e, vec3<bool>(var_0.d.c, var_3.e.x, var_0.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, var_3.c >> (u_input.b.zy % vec2<u32>(32u)), (select(vec4<u32>(4294967295u, 4294967295u, 81817u, var_0.b.a), vec4<u32>(var_3.d.d.a, 4294967295u, 1u, 35247u), vec4<bool>(var_0.d.c, true, false, true)) | firstLeadingBit(vec4<u32>(57463u, var_0.b.a, 49714u, var_2.x))) ^ abs(~vec4<u32>(1u, var_3.c.x, 0u, 18844u)), 157f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_4.d.c.x) - vec2<f32>(126f, var_3.d.c.x)) - vec2<f32>(764f, 1054f)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-1200f)), func_2(2147483647i).d.c.x))));
}

