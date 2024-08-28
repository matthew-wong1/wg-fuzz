struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-2118f, 2147483647i, 825f, 1i, vec2<i32>(0i, i32(-2147483648))), Struct_1(541f, -11904i, -248f, 1i, vec2<i32>(1i, -43856i)), Struct_1(838f, 1i, -1424f, 32863i, vec2<i32>(11567i, 38925i)), Struct_1(299f, 38829i, -531f, -1876i, vec2<i32>(-1i, i32(-2147483648))), Struct_1(535f, 1i, 940f, 1i, vec2<i32>(-27236i, -1i)), Struct_1(1642f, -48663i, -3158f, -82649i, vec2<i32>(2147483647i, -12186i)), Struct_1(-198f, -1i, 1280f, -26500i, vec2<i32>(-46347i, -1i)), Struct_1(449f, 0i, 524f, -1i, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-1880f, -36077i, -1431f, -35820i, vec2<i32>(-1i, 0i)), Struct_1(-1025f, -8189i, 1063f, 9454i, vec2<i32>(2147483647i, 16348i)), Struct_1(1401f, 21679i, 278f, -25381i, vec2<i32>(-10172i, i32(-2147483648))), Struct_1(-351f, 18656i, 1811f, 1i, vec2<i32>(-45026i, i32(-2147483648))), Struct_1(468f, -1i, -722f, -1i, vec2<i32>(10670i, 6737i)), Struct_1(-1453f, 9158i, -1283f, -4649i, vec2<i32>(-1i, i32(-2147483648))), Struct_1(-1861f, 2147483647i, -643f, 59509i, vec2<i32>(-84733i, 0i)), Struct_1(1032f, -11267i, -1707f, 78091i, vec2<i32>(-42016i, -28781i)), Struct_1(-143f, 1i, 2392f, 1i, vec2<i32>(-1i, 20842i)), Struct_1(1145f, 50866i, -588f, 0i, vec2<i32>(-1i, 0i)), Struct_1(-859f, -1i, 1511f, 1406i, vec2<i32>(0i, 18200i)), Struct_1(915f, i32(-2147483648), -218f, 0i, vec2<i32>(23325i, 1i)), Struct_1(1699f, -13511i, 535f, 1i, vec2<i32>(1i, -1i)), Struct_1(-1399f, 0i, 2622f, -15665i, vec2<i32>(1i, 56768i)), Struct_1(179f, 64113i, -201f, -31706i, vec2<i32>(2147483647i, 0i)), Struct_1(543f, -1i, 2598f, -4484i, vec2<i32>(4053i, i32(-2147483648))), Struct_1(-1711f, 29757i, -136f, 37213i, vec2<i32>(-4485i, 0i)), Struct_1(-1647f, 21148i, -979f, -1i, vec2<i32>(-69876i, -11070i)));

var<private> global1: array<f32, 19> = array<f32, 19>(921f, 145f, -737f, -525f, 1312f, 1549f, 361f, -1323f, -489f, 1000f, -1960f, 667f, -1000f, -1545f, 432f, 372f, 1148f, -657f, -2455f);

var<private> global2: array<f32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    global2 = array<f32, 6>();
    global0 = array<Struct_1, 26>();
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    global1 = array<f32, 19>();
    return global2[_wgslsmith_index_u32(reverseBits(~arg_3), 6u)];
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32((u_input.a.x | 114203u) & u_input.b, 24149u, _wgslsmith_mult_u32(0u, max(u_input.c, u_input.c))), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 19u)], -1292f)))))));
    var var_1 = Struct_4(abs(vec2<i32>(1i, 1i)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(min(vec2<i32>(6537i, -3570i), vec2<i32>(22361i, 16321i)), vec2<i32>(-2147483647i, 42861i)), 16354i), Struct_3(Struct_2(global0[_wgslsmith_index_u32(~u_input.a.x, 26u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1131f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) + vec3<f32>(global1[_wgslsmith_index_u32(23148u, 19u)], var_0, -822f)), vec3<f32>(-903f, 523f, -820f))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(func_3(false, vec3<i32>(14077i, 1i, -8513i), vec4<u32>(u_input.c, 21362u, 11340u, u_input.a.x), u_input.c))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 6u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), global1[_wgslsmith_index_u32(~31881u, 19u)])))));
    let var_2 = _wgslsmith_f_op_f32(func_3(!(var_1.a.x >= ~(~var_1.b)), ~(-vec3<i32>(_wgslsmith_mod_i32(var_1.a.x, var_1.b), -var_1.c.a.a.d, _wgslsmith_add_i32(var_1.c.a.a.b, -60740i))), ~vec4<u32>(u_input.c, 37330u, ~(~u_input.a.x), abs(u_input.b)), 0u ^ u_input.b));
    var var_3 = var_1.c.a.a;
    global0 = array<Struct_1, 26>();
    return Struct_4(vec2<i32>(~select(var_3.d << (u_input.b % 32u), _wgslsmith_sub_i32(10205i, var_1.b), true), 78028i << (_wgslsmith_add_u32(u_input.c, 13608u) % 32u)), -countOneBits(1i), var_1.c);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = select(!vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, true, true || all(vec4<bool>(false, false, false, true))), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), true), select(select(vec4<bool>(all(vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(40651u, 19u)] == global1[_wgslsmith_index_u32(29571u, 19u)], var_0.c.a.a.a == global2[_wgslsmith_index_u32(u_input.c, 6u)], all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), u_input.a.x > 0u), vec4<bool>(true, 430f >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(77120u, 19u)] + 863f), (6059i > var_0.a.x) && false, any(vec3<bool>(true, true, true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))));
    let var_2 = 0i;
    var_0 = Struct_4(vec2<i32>(-15497i, func_2().c.a.a.e.x), firstTrailingBit(var_0.c.a.a.e.x), Struct_3(func_2().c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], -647f))));
    var var_3 = !select(vec2<bool>(false, false), select(!var_1.ww, !select(var_1.wy, var_1.wx, vec2<bool>(true, var_1.x)), var_1.x), !select(select(vec2<bool>(false, var_1.x), var_1.xx, var_1.wx), select(var_1.zw, vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x)), true));
    return Struct_4(vec2<i32>(_wgslsmith_div_i32(-var_0.a.x ^ (var_0.b ^ var_2), reverseBits(0i)), var_2), _wgslsmith_dot_vec4_i32(arg_0 & vec4<i32>(14843i, 0i, _wgslsmith_div_i32(var_2, var_0.b), -var_2), arg_0), func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-reverseBits(select(~vec4<i32>(2147483647i, 0i, 0i, 0i), vec4<i32>(0i, 8891i, 6170i, 1i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))));
    let var_1 = 4294967295u;
    var var_2 = var_0.c.a.a.a;
    global2 = array<f32, 6>();
    global0 = array<Struct_1, 26>();
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c, 19u)])), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1625f, -1262f), _wgslsmith_f_op_f32(f32(-1f) * -353f), true))));
    global1 = array<f32, 19>();
    let var_3 = select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), (var_0.c.b.x != var_0.c.a.c) || true), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true))), !vec4<bool>(any(vec3<bool>(false, true, false)), var_0.a.x >= var_0.a.x, true, all(vec3<bool>(false, true, false))), !(true || all(vec2<bool>(true, false)))), true);
    var var_4 = Struct_4(func_1(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-21950i, 0i, var_0.b, var_0.c.a.a.e.x), vec4<i32>(-1i, 12507i, -35212i, 66514i)), -(vec4<i32>(var_0.c.a.a.b, 13295i, 36907i, var_0.b) & vec4<i32>(24345i, var_0.a.x, -80218i, var_0.c.a.a.e.x)))).a, var_0.c.a.a.d, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(10243u, var_1, ~_wgslsmith_mult_u32(var_1, var_1), firstTrailingBit(0u) | 52094u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.c.b.zx, vec2<f32>(-744f, 358f)), var_0.c.a.b.xy, select(vec2<bool>(var_3.x, true), vec2<bool>(true, var_3.x), var_3.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a.b.x), -856f)));
}

