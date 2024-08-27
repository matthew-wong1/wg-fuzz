struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(62290i, vec3<f32>(1471f, 1047f, -121f)), Struct_1(i32(-2147483648), vec3<f32>(1287f, -1188f, -606f)), Struct_1(2147483647i, vec3<f32>(-202f, 504f, -482f)), Struct_1(42501i, vec3<f32>(1317f, -1000f, 575f)), Struct_1(36119i, vec3<f32>(-1782f, 1750f, -894f)), Struct_1(-49835i, vec3<f32>(403f, 552f, 1551f)), Struct_1(-11736i, vec3<f32>(-955f, -906f, 2478f)), Struct_1(0i, vec3<f32>(156f, -137f, -750f)), Struct_1(-1i, vec3<f32>(-1008f, -750f, -840f)), Struct_1(i32(-2147483648), vec3<f32>(-963f, 167f, -250f)), Struct_1(i32(-2147483648), vec3<f32>(-160f, -275f, 1075f)), Struct_1(-38332i, vec3<f32>(688f, -1000f, 673f)), Struct_1(-64149i, vec3<f32>(-1810f, -483f, -1969f)), Struct_1(-9919i, vec3<f32>(620f, -1000f, -140f)), Struct_1(2147483647i, vec3<f32>(1969f, 1697f, -411f)), Struct_1(1i, vec3<f32>(-667f, -2327f, -250f)), Struct_1(-47036i, vec3<f32>(915f, 836f, -236f)), Struct_1(67431i, vec3<f32>(-1808f, -1046f, 575f)), Struct_1(2147483647i, vec3<f32>(-534f, -691f, 1183f)), Struct_1(1i, vec3<f32>(1151f, -120f, -396f)), Struct_1(17829i, vec3<f32>(420f, -1758f, -940f)), Struct_1(37200i, vec3<f32>(-1482f, 1291f, -195f)), Struct_1(-1i, vec3<f32>(-645f, -631f, -856f)), Struct_1(-1i, vec3<f32>(458f, -1215f, 924f)), Struct_1(2147483647i, vec3<f32>(1811f, 1000f, -827f)));

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, false, false, false, true, true, false, false, false, false, false, true, true, false, true, true, false, true, false, false, false, false, true, false, false);

var<private> global3: Struct_1 = Struct_1(-8386i, vec3<f32>(-622f, -1163f, -139f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    global1 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-102f, -886f, arg_1.b.x, -1797f), vec4<f32>(arg_0.x, global3.b.x, -700f, -195f))), _wgslsmith_div_vec4_f32(vec4<f32>(490f, global3.b.x, global3.b.x, -1000f), vec4<f32>(1483f, 788f, -248f, arg_0.x)), select(vec4<bool>(global2[_wgslsmith_index_u32(17804u, 26u)], true, false, global2[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, false, true, true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(6163u, 26u)], true)))))), vec4<f32>(-650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1839f + global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1713f), false))), !vec4<bool>(global2[_wgslsmith_index_u32(abs(58636u), 26u)], true, global2[_wgslsmith_index_u32(1u, 26u)], any(vec3<bool>(global2[_wgslsmith_index_u32(34672u, 26u)], false, true))))));
    var var_1 = global1[_wgslsmith_index_u32(~1u, 25u)];
    var var_2 = global1[_wgslsmith_index_u32(~(~1u), 25u)];
    global0 = array<vec4<bool>, 9>();
    return u_input.a;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = select(vec3<bool>(true, global2[_wgslsmith_index_u32(select(1u, 4294967295u, global2[_wgslsmith_index_u32(~4294967295u, 26u)]), 26u)] | all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(54168u, 26u)], global2[_wgslsmith_index_u32(60932u, 26u)], global2[_wgslsmith_index_u32(50932u, 26u)])), false), !vec3<bool>(all(!vec3<bool>(global2[_wgslsmith_index_u32(27187u, 26u)], global2[_wgslsmith_index_u32(21155u, 26u)], global2[_wgslsmith_index_u32(62072u, 26u)])), all(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], false, false)) & any(vec3<bool>(global2[_wgslsmith_index_u32(26u, 26u)], true, global2[_wgslsmith_index_u32(37357u, 26u)])), func_3(var_0.d.b.yy, global1[_wgslsmith_index_u32(4294967295u, 25u)], vec4<i32>(2147483647i, global3.a, -19086i, var_0.d.a)) > abs(-71370i)), select(!vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(33027u, 26u)], true, global2[_wgslsmith_index_u32(45094u, 26u)])), !global2[_wgslsmith_index_u32(65673u, 26u)], true), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), global2[_wgslsmith_index_u32(0u, 26u)])), true, all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(31046u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]))), !(global2[_wgslsmith_index_u32(~32127u, 26u)] && !global2[_wgslsmith_index_u32(96251u, 26u)])));
    var_0 = Struct_2(Struct_1(-34290i, vec3<f32>(1f, global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)))), abs(vec4<i32>(_wgslsmith_mod_i32(reverseBits(var_0.a.a), global3.a & arg_0.b.x), -u_input.a | (-1i << (0u % 32u)), 37045i, ~u_input.a)), _wgslsmith_f_op_f32(global3.b.x * global3.b.x), Struct_1(20515i, var_0.d.b));
    let var_2 = Struct_1(-16538i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(844f, var_0.d.b.x, 1728f)) + _wgslsmith_f_op_vec3_f32(trunc(arg_0.d.b))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, 852f) * _wgslsmith_f_op_f32(798f + -2018f)), -421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + -555f))), select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(select(var_1.x, false, true), true, true), select(true, !var_1.x, true)))));
    let var_3 = abs(abs(81694u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(35361u, 0u, 106305u, 20909u), vec4<u32>(21897u, 9612u, 116762u, 33677u))) % 32u)) >> (max(~(~1u), ~(~1u)) % 32u);
    return var_3;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), func_2(Struct_2(Struct_1(global3.a, vec3<f32>(global3.b.x, -676f, 665f)), vec4<i32>(u_input.a, u_input.a, u_input.a, -27960i), global3.b.x, Struct_1(0i, vec3<f32>(893f, -143f, 3012f)))), ~(~7093u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), max(vec3<u32>(9047u, 1u, 65025u), abs(vec3<u32>(3937u, 4294967295u, 36300u))))), 25u)], min(min(-countOneBits(vec4<i32>(2147483647i, -64497i, 17829i, global3.a)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, 9507i, 11176i)), select(vec4<i32>(0i, global3.a, u_input.a, -34684i) & vec4<i32>(911i, 1i, u_input.a, u_input.a), select(~vec4<i32>(-7279i, global3.a, global3.a, global3.a), vec4<i32>(0i, global3.a, u_input.a, u_input.a), select(vec4<bool>(global2[_wgslsmith_index_u32(8123u, 26u)], true, true, global2[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(4989u, 26u)], global2[_wgslsmith_index_u32(9371u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], true), true)), !select(vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(35878u, 9u)], false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -460f)))), global1[_wgslsmith_index_u32(abs(1u), 25u)]);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(4294967295u, 5471u))), countOneBits(vec2<u32>(1u, 1u))), 9u)];
    let var_2 = Struct_2(Struct_1(-1i, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(512f)), _wgslsmith_f_op_f32(var_0.a.b.x + var_0.c))), _wgslsmith_f_op_f32(2059f * _wgslsmith_f_op_f32(-global3.b.x)), var_0.d.b.x)), abs(abs(firstLeadingBit(var_0.b))), _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(f32(-1f) * -273f)), var_0.d);
    let var_3 = global0[_wgslsmith_index_u32(~(~min(17974u, ~1u)), 9u)];
    let var_4 = Struct_1(global3.a, _wgslsmith_f_op_vec3_f32(trunc(var_2.d.b)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    global0 = array<vec4<bool>, 9>();
    var var_1 = false;
    var var_2 = global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -161f))) * -280f), -862f, 2043f, 785f), ~1u, ~select(~(~vec4<i32>(2147483647i, 2147483647i, -23246i, 0i)), vec4<i32>(u_input.a, 2147483647i, ~global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, global3.a, 25494i, global3.a), vec4<i32>(-2147483647i, -26364i, 1i, u_input.a))), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0, 26u)], global2[_wgslsmith_index_u32(var_0, 26u)], false, true), select(global0[_wgslsmith_index_u32(var_0, 9u)], vec4<bool>(false, false, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(44111u, 26u)], global2[_wgslsmith_index_u32(var_0, 26u)], false)), false)), 986f);
}

