struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<f32>(1330f, -1000f, -134f, -408f), -224f, vec2<u32>(1u, 2266u), 0i), Struct_2(vec4<f32>(1010f, 117f, 1085f, 1477f), 1000f, vec2<u32>(17746u, 59411u), 2147483647i), Struct_2(vec4<f32>(1982f, -837f, 411f, 375f), -486f, vec2<u32>(4294967295u, 1u), -44358i));

var<private> global1: array<i32, 1> = array<i32, 1>(-6383i);

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(2147483647i, false, vec3<bool>(false, true, true), 53689u), Struct_3(2147483647i, true, vec3<bool>(true, false, false), 1u), Struct_3(35719i, false, vec3<bool>(false, false, false), 32707u), Struct_3(0i, false, vec3<bool>(false, false, false), 5791u));

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(1123f, 761f, 1196f, 340f), -102f, vec2<u32>(0u, 1u), 58626i), Struct_2(vec4<f32>(1534f, -1062f, -1448f, 785f), 799f, vec2<u32>(51831u, 49974u), -19687i), Struct_2(vec4<f32>(-102f, -649f, -1934f, -665f), 485f, vec2<u32>(0u, 4294967295u), -10300i), Struct_2(vec4<f32>(-879f, -1923f, -1249f, 1000f), -688f, vec2<u32>(4294967295u, 4294967295u), 2147483647i), Struct_2(vec4<f32>(370f, 693f, 1125f, -832f), 288f, vec2<u32>(19568u, 8660u), -24506i), Struct_2(vec4<f32>(-1000f, -999f, -898f, 2574f), 1291f, vec2<u32>(0u, 0u), 27463i), Struct_2(vec4<f32>(1220f, -1000f, 1819f, -1403f), 158f, vec2<u32>(0u, 10872u), 2147483647i), Struct_2(vec4<f32>(-1493f, -236f, 842f, 1338f), 3277f, vec2<u32>(0u, 44437u), 1i), Struct_2(vec4<f32>(-1384f, -497f, 1245f, -135f), -2071f, vec2<u32>(1u, 1u), -31380i), Struct_2(vec4<f32>(-1000f, 688f, -1412f, 1000f), -2342f, vec2<u32>(1u, 4294967295u), i32(-2147483648)), Struct_2(vec4<f32>(-905f, 222f, 1547f, -400f), 303f, vec2<u32>(28347u, 83305u), -1i), Struct_2(vec4<f32>(-1265f, 701f, -987f, -799f), -928f, vec2<u32>(1u, 37690u), 0i), Struct_2(vec4<f32>(-233f, 791f, -1361f, 159f), 800f, vec2<u32>(4294967295u, 1u), 1i), Struct_2(vec4<f32>(146f, 264f, -499f, 1265f), 734f, vec2<u32>(41313u, 30060u), 0i), Struct_2(vec4<f32>(609f, 1000f, 594f, 1798f), -331f, vec2<u32>(4294967295u, 0u), -17263i), Struct_2(vec4<f32>(-404f, -988f, 260f, 1897f), -793f, vec2<u32>(1u, 40970u), 17151i), Struct_2(vec4<f32>(1458f, 905f, 1749f, -1168f), 2249f, vec2<u32>(26685u, 4294967295u), 10859i), Struct_2(vec4<f32>(2240f, -289f, -1190f, 1000f), -1079f, vec2<u32>(4738u, 4294967295u), 1i), Struct_2(vec4<f32>(-151f, -1493f, 694f, -2014f), 454f, vec2<u32>(4294967295u, 1u), -8367i), Struct_2(vec4<f32>(-210f, -896f, 1000f, -129f), -858f, vec2<u32>(10800u, 35549u), 2147483647i), Struct_2(vec4<f32>(-653f, 2656f, -1266f, 1394f), 1550f, vec2<u32>(1u, 1u), 24190i), Struct_2(vec4<f32>(2455f, -121f, 231f, 1565f), 1015f, vec2<u32>(55612u, 1u), 15369i), Struct_2(vec4<f32>(181f, -458f, 643f, 285f), 2449f, vec2<u32>(60594u, 0u), 0i), Struct_2(vec4<f32>(1347f, 1877f, -840f, 860f), 894f, vec2<u32>(4294967295u, 0u), -1i), Struct_2(vec4<f32>(-1331f, 183f, -849f, 690f), 765f, vec2<u32>(0u, 104642u), -3503i), Struct_2(vec4<f32>(1746f, 1009f, 308f, 1000f), 112f, vec2<u32>(45499u, 0u), -29827i));

var<private> global4: Struct_3;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global4 = global2[_wgslsmith_index_u32(global4.d, 4u)];
    global0 = array<Struct_2, 3>();
    var var_0 = global3[_wgslsmith_index_u32(0u | (_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, ~42091u), u_input.b.x) << (17515u % 32u)), 26u)];
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global4 = Struct_3(~0i, global4.c.x && var_1.b, global4.c, ~var_1.d);
    return u_input.b.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = !select(true || (_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(select(-1000f, arg_0.x, global4.b))), true, false);
    let var_1 = ~min(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], firstLeadingBit(-8520i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.a, global1[_wgslsmith_index_u32(20255u, 1u)], 4808i, global4.a), vec4<i32>(global4.a, -25483i, global4.a, global1[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.a, -2147483647i, global4.a), vec3<i32>(3106i, global4.a, -2147483647i)))), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, global4.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(10200i, global4.a), vec2<i32>(2147483647i, 12236i), vec2<i32>(global4.a, 0i))) & (vec2<i32>(39267i, global1[_wgslsmith_index_u32(4294967295u, 1u)]) ^ (vec2<i32>(-2147483647i, -2147483647i) << (u_input.b.yy % vec2<u32>(32u)))));
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(72508u, u_input.b.x << (u_input.b.x % 32u), 4294967295u), global4.d), func_2(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(62429i, global1[_wgslsmith_index_u32(91442u, 1u)], 2147483647i), vec3<i32>(-2147483647i, var_1.x, -2147483647i)), reverseBits(vec3<i32>(-37849i, var_1.x, -23528i))))), u_input.b.x), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1150f), _wgslsmith_f_op_f32(-677f * 1113f), -816f, -1388f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1113f, 1234f, -1000f, 795f), vec4<f32>(805f, -319f, -294f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1001f, -302f, -768f, -2283f) + vec4<f32>(-613f, -1381f, -899f, -1095f))))));
    global2 = array<Struct_3, 4>();
    global2 = array<Struct_3, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(332f, _wgslsmith_f_op_f32(max(178f, 1000f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1760f, 1000f)) + vec2<f32>(_wgslsmith_f_op_f32(round(-489f)), -439f))), vec4<i32>(~var_0.a, _wgslsmith_mod_i32(var_0.a, 19137i), global1[_wgslsmith_index_u32(~u_input.b.x, 1u)], -1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-501f)))), _wgslsmith_f_op_f32(-445f * 1f), !(1u != global4.d))))));
    global3 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), func_2(var_1.b.xyz)), firstLeadingBit(-var_1.b.zwx), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -313f))), global4.d >> (u_input.a % 32u), -579f);
}

