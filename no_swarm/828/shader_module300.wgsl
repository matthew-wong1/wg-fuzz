struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<i32>(-230i, 1i), 733f, vec4<f32>(122f, 498f, 1039f, -661f), vec2<f32>(644f, -760f), vec2<u32>(1u, 1u)), Struct_3(vec2<i32>(36218i, 1i), -701f, vec4<f32>(383f, 553f, -111f, -364f), vec2<f32>(-1004f, 615f), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<i32>(2147483647i, -1i), -1103f, vec4<f32>(1852f, -389f, 197f, -1000f), vec2<f32>(632f, -255f), vec2<u32>(1u, 1u)), Struct_3(vec2<i32>(-1i, -3569i), 791f, vec4<f32>(955f, 340f, -385f, 1514f), vec2<f32>(1213f, -891f), vec2<u32>(23142u, 1u)), Struct_3(vec2<i32>(-392i, 1i), -459f, vec4<f32>(-783f, 666f, 269f, -951f), vec2<f32>(1000f, 1000f), vec2<u32>(1u, 4294967295u)), Struct_3(vec2<i32>(457i, i32(-2147483648)), -180f, vec4<f32>(-1466f, 1711f, -1601f, 1000f), vec2<f32>(-2755f, -1224f), vec2<u32>(0u, 1u)), Struct_3(vec2<i32>(2147483647i, 4766i), 997f, vec4<f32>(-492f, -495f, 791f, 272f), vec2<f32>(555f, -923f), vec2<u32>(20390u, 0u)), Struct_3(vec2<i32>(-1i, 26403i), 363f, vec4<f32>(1426f, 1000f, -540f, -1000f), vec2<f32>(1662f, -552f), vec2<u32>(21194u, 0u)), Struct_3(vec2<i32>(-36733i, 2147483647i), -1303f, vec4<f32>(-984f, -803f, -161f, -2121f), vec2<f32>(849f, 481f), vec2<u32>(8494u, 1u)), Struct_3(vec2<i32>(1i, 52063i), 2319f, vec4<f32>(-626f, 1827f, 1321f, -783f), vec2<f32>(-912f, 3112f), vec2<u32>(1u, 8562u)), Struct_3(vec2<i32>(-1i, 2147483647i), 782f, vec4<f32>(1396f, -1008f, -1000f, 805f), vec2<f32>(-229f, 875f), vec2<u32>(1u, 33445u)), Struct_3(vec2<i32>(0i, 57325i), 1374f, vec4<f32>(363f, -403f, -273f, -119f), vec2<f32>(-108f, 766f), vec2<u32>(25090u, 25401u)), Struct_3(vec2<i32>(0i, 0i), -1199f, vec4<f32>(763f, 442f, 1000f, -1984f), vec2<f32>(-464f, 1079f), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<i32>(30606i, 37066i), 1000f, vec4<f32>(-907f, -1001f, 1247f, -838f), vec2<f32>(-1013f, 173f), vec2<u32>(40329u, 0u)), Struct_3(vec2<i32>(-1i, 2147483647i), -2113f, vec4<f32>(1392f, 185f, -872f, 468f), vec2<f32>(-1164f, 1517f), vec2<u32>(28667u, 53831u)), Struct_3(vec2<i32>(-52331i, 2147483647i), 1426f, vec4<f32>(154f, -438f, 1000f, -109f), vec2<f32>(1354f, 1090f), vec2<u32>(4294967295u, 101883u)));

var<private> global1: array<f32, 21>;

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(37238i, 40076i, -30915i, -3733i), vec4<i32>(i32(-2147483648), 2147483647i, -19314i, -12504i), vec4<i32>(0i, i32(-2147483648), -3905i, 0i), vec4<i32>(21740i, -3218i, -425i, 23875i), vec4<i32>(i32(-2147483648), 23640i, i32(-2147483648), 22065i), vec4<i32>(1i, 54557i, 1i, -1i), vec4<i32>(i32(-2147483648), 1i, 1i, 4244i), vec4<i32>(2147483647i, -9620i, 48586i, 0i), vec4<i32>(-28960i, -4726i, 1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 29695i, -46210i), vec4<i32>(0i, 2147483647i, -19913i, -33510i), vec4<i32>(0i, -7560i, 1i, 4716i), vec4<i32>(-53515i, 1i, -1i, 0i), vec4<i32>(21021i, -1i, 2147483647i, 41285i), vec4<i32>(i32(-2147483648), 1627i, i32(-2147483648), -1i), vec4<i32>(-1i, -1i, 9246i, i32(-2147483648)), vec4<i32>(0i, -10390i, 0i, -48103i), vec4<i32>(30876i, 41714i, 1i, 1i), vec4<i32>(-1i, -33323i, -1i, 2446i), vec4<i32>(13707i, 3472i, -82341i, 0i), vec4<i32>(-1i, 2147483647i, 14202i, 1i), vec4<i32>(2147483647i, 0i, 36762i, 1i), vec4<i32>(-1i, i32(-2147483648), 0i, 29842i), vec4<i32>(-29995i, -28108i, -33616i, -1i), vec4<i32>(1i, 1i, 0i, -28053i), vec4<i32>(9235i, 11931i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -58337i, -1i, 2147483647i), vec4<i32>(12293i, -14252i, 2147483647i, i32(-2147483648)), vec4<i32>(12270i, i32(-2147483648), i32(-2147483648), -13963i), vec4<i32>(0i, -33873i, 11630i, 2147483647i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = u_input.c | u_input.c;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], -257f, 1078f, global1[_wgslsmith_index_u32(52428u, 21u)])))))));
    var var_2 = vec4<bool>(true, any(vec2<bool>(true, !all(vec4<bool>(false, false, true, false)))), false, true);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a));
    global2 = array<vec4<i32>, 30>();
    return !vec2<bool>(true, var_2.x);
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 21>();
    let var_0 = Struct_1(countOneBits(0i), u_input.d.x, u_input.a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(u_input.c.xy, vec2<u32>(u_input.b, u_input.a)), vec2<u32>(0u, 24050u)), _wgslsmith_sub_u32(~u_input.b, u_input.a)), 21u)]));
    var var_1 = ~(-2147483647i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(951f, var_0.d, 730f, -638f), vec4<f32>(var_0.d, 1204f, -447f, 1058f))))) + vec4<f32>(global1[_wgslsmith_index_u32(~u_input.c.x, 21u)], _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(u_input.a, 21u)]), var_0.d, 1855f)))));
    let var_3 = Struct_3(select(-((u_input.d.xy >> (vec2<u32>(10891u, u_input.c.x) % vec2<u32>(32u))) << (u_input.c.xw % vec2<u32>(32u))), max(u_input.d.yx, u_input.d.yz), select(func_3(var_0.c), vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(true, true, false, false)), true))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(4294967295u, 1u) ^ ~u_input.c.x), 21u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1402f, global1[_wgslsmith_index_u32(u_input.b, 21u)], var_0.d, var_2.a.x) + var_2.a), var_2.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.a.zx - var_2.a.xy)))))), ~(~vec2<u32>(~4294967295u, var_0.c)));
    return Struct_1(min(select(-32678i, 6954i, true), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, 2147483647i, 8104i, var_3.a.x), vec4<i32>(var_0.b, var_0.a, u_input.d.x, var_3.a.x)))), _wgslsmith_dot_vec4_i32(min(~vec4<i32>(-34405i, u_input.d.x, var_0.b, u_input.d.x), vec4<i32>(min(-42543i, var_3.a.x), firstTrailingBit(var_0.b), 1i, ~(-2147483647i))), global2[_wgslsmith_index_u32((countOneBits(var_0.c) << (u_input.b % 32u)) & ~16795u, 30u)]), _wgslsmith_add_u32(~(~(~var_0.c)), 14869u), -1236f);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<i32>) -> bool {
    global0 = array<Struct_3, 16>();
    let var_0 = func_2();
    let var_1 = ~abs(vec4<i32>(arg_2, arg_2, -(var_0.a ^ u_input.d.x), -var_0.a));
    global0 = array<Struct_3, 16>();
    global2 = array<vec4<i32>, 30>();
    return select(true, true, all(select(select(arg_0, vec3<bool>(arg_0.x, false, false), arg_0), vec3<bool>(arg_0.x, false, arg_0.x), false))) != ((arg_0.x & (var_1.x < u_input.d.x)) & arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), func_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(46346u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 0i, u_input.d.x)), global2[_wgslsmith_index_u32(u_input.b, 30u)] >> (vec4<u32>(u_input.a, 1u, 0u, 26047u) % vec4<u32>(32u))) & all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))), !vec2<bool>(true, !all(vec3<bool>(true, true, true))), any(select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global1 = array<f32, 21>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 16u)];
    let var_3 = true;
    global2 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~var_2.e.x & ~_wgslsmith_div_u32(~u_input.b, select(1u, var_2.e.x, var_0.x)), global2[_wgslsmith_index_u32(1u ^ (min(_wgslsmith_mult_u32(59912u, var_2.e.x), _wgslsmith_mult_u32(40277u, var_2.e.x)) ^ select(~var_2.e.x, 59699u, u_input.a >= var_2.e.x)), 30u)]);
}

