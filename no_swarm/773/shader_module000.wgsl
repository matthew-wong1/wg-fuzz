struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, 1i, 2147483647i, 2037i, 2147483647i, i32(-2147483648), 1i, i32(-2147483648), -1i, 19975i, 50990i, 0i, -1i, 2147483647i, -1i, -6849i, 1i, 1i, 5040i, 14493i, 2147483647i);

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<i32>(19445i, -18461i)), vec4<u32>(49403u, 4294967295u, 0u, 47570u), true, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(-3141i, i32(-2147483648))), vec4<u32>(0u, 0u, 0u, 1u), true, vec2<bool>(true, true), true), Struct_2(Struct_1(vec2<i32>(-958i, -45240i)), vec4<u32>(22815u, 37850u, 4294967295u, 31722u), true, vec2<bool>(false, true), true), Struct_2(Struct_1(vec2<i32>(2147483647i, 15275i)), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), true, vec2<bool>(false, false), false), Struct_2(Struct_1(vec2<i32>(-12032i, -18386i)), vec4<u32>(52231u, 27149u, 25548u, 14760u), true, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(2147483647i, 1246i)), vec4<u32>(4294967295u, 16583u, 2844u, 1u), true, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(32906i, 35710i)), vec4<u32>(120058u, 46995u, 1u, 1u), false, vec2<bool>(false, false), true), Struct_2(Struct_1(vec2<i32>(29257i, -5207i)), vec4<u32>(1u, 36074u, 4294967295u, 1u), true, vec2<bool>(true, true), false), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), vec4<u32>(1u, 4294967295u, 856u, 1u), true, vec2<bool>(true, false), false), Struct_2(Struct_1(vec2<i32>(10527i, 24084i)), vec4<u32>(14688u, 0u, 59922u, 1u), true, vec2<bool>(true, true), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), vec4<u32>(46931u, 29682u, 20973u, 4294967295u), false, vec2<bool>(true, true), false), Struct_2(Struct_1(vec2<i32>(0i, 13298i)), vec4<u32>(74812u, 1u, 1u, 42078u), false, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(1224i, -34719i)), vec4<u32>(40829u, 132361u, 472u, 0u), false, vec2<bool>(true, false), true), Struct_2(Struct_1(vec2<i32>(-30720i, 7006i)), vec4<u32>(4294967295u, 0u, 1u, 1u), false, vec2<bool>(false, false), true), Struct_2(Struct_1(vec2<i32>(-1i, -45894i)), vec4<u32>(1u, 2579u, 37429u, 40145u), true, vec2<bool>(true, true), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i)), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), false, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(-1i, -51728i)), vec4<u32>(67417u, 107706u, 62386u, 27172u), false, vec2<bool>(true, false), false), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i)), vec4<u32>(1u, 16987u, 40728u, 70237u), false, vec2<bool>(true, false), true), Struct_2(Struct_1(vec2<i32>(-12509i, 20806i)), vec4<u32>(28585u, 4294967295u, 8354u, 0u), true, vec2<bool>(false, false), true), Struct_2(Struct_1(vec2<i32>(-35591i, 1i)), vec4<u32>(4294967295u, 1u, 10851u, 0u), true, vec2<bool>(false, false), true), Struct_2(Struct_1(vec2<i32>(-15730i, 24888i)), vec4<u32>(43589u, 52239u, 24692u, 10723u), false, vec2<bool>(true, true), false), Struct_2(Struct_1(vec2<i32>(15933i, 1i)), vec4<u32>(33106u, 2851u, 18514u, 101824u), false, vec2<bool>(false, true), false), Struct_2(Struct_1(vec2<i32>(-24974i, 0i)), vec4<u32>(15459u, 34936u, 1u, 84640u), true, vec2<bool>(false, true), true), Struct_2(Struct_1(vec2<i32>(32336i, 9705i)), vec4<u32>(52405u, 17695u, 0u, 4294967295u), false, vec2<bool>(true, false), false));

var<private> global4: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(181f, -1000f, 557f, -716f), vec4<f32>(1081f, -262f, 1798f, -1016f), vec4<f32>(-915f, 575f, -399f, 1128f), vec4<f32>(-986f, 267f, 190f, 1371f), vec4<f32>(143f, -381f, -470f, -128f), vec4<f32>(-704f, -1550f, 627f, 1000f), vec4<f32>(-1092f, 3097f, 921f, -840f), vec4<f32>(-592f, 424f, 592f, -758f), vec4<f32>(1154f, -905f, -1104f, -198f), vec4<f32>(814f, 923f, -1384f, 1529f), vec4<f32>(1100f, -1410f, -159f, 144f), vec4<f32>(-606f, -447f, 533f, -1168f), vec4<f32>(-1254f, 1610f, 2482f, 136f), vec4<f32>(-1057f, -1888f, 446f, 308f), vec4<f32>(1589f, 201f, -1773f, -1078f), vec4<f32>(191f, -160f, 207f, 185f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> bool {
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(f32(-1f) * -337f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(-arg_2))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1710f))), 1327f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -1409f), -1000f)));
    let var_2 = _wgslsmith_mod_vec4_u32(~arg_1.b, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 14819u, arg_1.b.x, arg_1.b.x), vec4<u32>(arg_0, 1u, arg_1.b.x, 49244u)) & arg_1.b)) | select(firstLeadingBit(arg_1.b), vec4<u32>(1u, arg_0, 0u, 15421u), !select(select(vec4<bool>(arg_3.x, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(arg_0, 9u)], arg_3.x), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 9u)], false, global2[_wgslsmith_index_u32(arg_1.b.x, 9u)]), vec4<bool>(true, arg_1.d.x, arg_3.x, arg_3.x)), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(67113u, 9u)]), true));
    let var_3 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, 48643i), arg_1.a.a.x, global1[_wgslsmith_index_u32(arg_0, 21u)] << (arg_1.b.x % 32u), u_input.a.x), min(vec4<i32>(u_input.b, u_input.a.x, global1[_wgslsmith_index_u32(var_2.x, 21u)], 1i) | vec4<i32>(9172i, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(8870u, 21u)], -1i), ~vec4<i32>(arg_1.a.a.x, -43697i, arg_1.a.a.x, arg_1.a.a.x))), firstLeadingBit(vec4<i32>(i32(-1i) * -6004i, select(-2147483647i, u_input.a.x, true), 5357i, 15358i)) | vec4<i32>(36832i, min(abs(arg_1.a.a.x), u_input.b ^ -31790i), arg_1.a.a.x, u_input.b));
    global0 = global2[_wgslsmith_index_u32(1u, 9u)];
    return var_2.zwy;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> vec4<i32> {
    var var_0 = abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(1u, 1764u), ~0u, ~1u), func_4(_wgslsmith_mod_u32(reverseBits(37919u), 1u), Struct_2(Struct_1(u_input.a), countOneBits(vec4<u32>(0u, 50022u, 17954u, 677u)), func_3(vec4<u32>(16333u, 4294967295u, 17950u, 114508u), vec3<u32>(1u, 0u, 28867u), false, Struct_2(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(17597u, 21u)], u_input.b)), vec4<u32>(4294967295u, 39731u, 27826u, 3786u), false, vec2<bool>(arg_1, global2[_wgslsmith_index_u32(1u, 9u)]), false)), vec2<bool>(false, false), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zw, arg_0.yx, vec2<bool>(false, true))), arg_0.yz), !(!vec2<bool>(arg_1, true)))));
    var var_1 = (arg_1 || arg_1) || all(select(!select(vec3<bool>(arg_1, true, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 9u)]), false), vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 9u)], true, false, global2[_wgslsmith_index_u32(4294967295u, 9u)])), true, !global2[_wgslsmith_index_u32(var_0.x, 9u)]), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(30776u, 9u)], global2[_wgslsmith_index_u32(39402u, 9u)]), vec3<bool>(arg_1, arg_1, arg_1), false), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 9u)], arg_1, true), global2[_wgslsmith_index_u32(var_0.x, 9u)]), !vec3<bool>(global2[_wgslsmith_index_u32(29871u, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], true))));
    global4 = array<vec4<f32>, 16>();
    var var_2 = Struct_1(abs(abs(u_input.a ^ vec2<i32>(global1[_wgslsmith_index_u32(6810u, 21u)], -5502i))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1429f)), arg_0.x))))));
    return -_wgslsmith_sub_vec4_i32(-(~select(vec4<i32>(var_2.a.x, 1i, 5612i, var_2.a.x), vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_0.x, 21u)], -1i, var_2.a.x), arg_1)), -abs(max(vec4<i32>(-57695i, u_input.a.x, -1i, var_2.a.x), vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 21u)], u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 21u)], 0i))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0))), !any(!vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 9u)], global2[_wgslsmith_index_u32(59617u, 9u)], false)));
    global1 = array<i32, 21>();
    let var_1 = Struct_2(arg_2, vec4<u32>(1u << ((arg_3 >> (4294967295u % 32u)) % 32u), _wgslsmith_clamp_u32(arg_1, select(67566u, 50344u, true), arg_3), firstTrailingBit(arg_3), ~(~abs(arg_1))), select(global2[_wgslsmith_index_u32(arg_1, 9u)], all(vec3<bool>(true, true, true)), firstLeadingBit(countOneBits(arg_2.a.x)) < 2147483647i), !(!vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(33255u, 9u)], global2[_wgslsmith_index_u32(17499u, 9u)])), global2[_wgslsmith_index_u32(1u, 9u)])), all(!(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 9u)], true, false))));
    global2 = array<bool, 9>();
    let var_2 = var_1;
    return vec3<bool>(any(var_1.d), all(!vec3<bool>(true, !var_1.c, var_1.d.x)), any(vec3<bool>(true, var_1.d.x, var_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    let var_1 = !func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(699f))))), ~_wgslsmith_clamp_u32(~5569u, firstTrailingBit(4294967295u), 14233u), Struct_1(u_input.a), 9930u);
    var var_2 = Struct_1(-u_input.a);
    var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(global1[_wgslsmith_index_u32(1u, 21u)], -968i, var_2.a.x, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), func_2(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(1u, 16u)] * global4[_wgslsmith_index_u32(40436u, 16u)]), global2[_wgslsmith_index_u32(~6104u, 9u)]).zx), u_input.a));
    var_0 = true;
    let var_3 = vec3<u32>(firstTrailingBit(1u), 1u, ~4294967295u);
    var var_4 = var_1.zy;
    var_2 = Struct_1(vec2<i32>(firstLeadingBit(40812i & u_input.b), _wgslsmith_div_i32(abs(56989i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(52017u, 21u)], var_2.a.x) >> (~var_3.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(54580u) | var_3.x, abs(abs(vec3<i32>(var_2.a.x, global1[_wgslsmith_index_u32(var_3.x, 21u)], -2147483647i) << (var_3 % vec3<u32>(32u))) << (~vec3<u32>(var_3.x, 0u, 1u) % vec3<u32>(32u))));
}

