struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(25589u, Struct_1(-1000f, vec3<u32>(1445u, 34406u, 71285u)), Struct_1(631f, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(-912f, vec3<u32>(38134u, 20939u, 4294967295u)), Struct_1(-722f, vec3<u32>(8806u, 17345u, 8393u))), Struct_2(0u, Struct_1(-567f, vec3<u32>(1u, 35380u, 30619u)), Struct_1(-1400f, vec3<u32>(1u, 0u, 1u)), Struct_1(1005f, vec3<u32>(57001u, 44260u, 1u)), Struct_1(-143f, vec3<u32>(23743u, 32757u, 84481u))), Struct_2(13924u, Struct_1(240f, vec3<u32>(1u, 52328u, 4294967295u)), Struct_1(-2062f, vec3<u32>(0u, 0u, 16288u)), Struct_1(-1000f, vec3<u32>(33487u, 1u, 4294967295u)), Struct_1(144f, vec3<u32>(21613u, 0u, 56197u))), Struct_2(4294967295u, Struct_1(-1289f, vec3<u32>(149u, 2503u, 4294967295u)), Struct_1(975f, vec3<u32>(23516u, 0u, 20824u)), Struct_1(-700f, vec3<u32>(0u, 4294967295u, 3836u)), Struct_1(-1784f, vec3<u32>(43111u, 16810u, 4294967295u))), Struct_2(0u, Struct_1(392f, vec3<u32>(4294967295u, 1u, 65155u)), Struct_1(978f, vec3<u32>(29520u, 0u, 15619u)), Struct_1(-2093f, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(-833f, vec3<u32>(0u, 44560u, 0u))), Struct_2(26270u, Struct_1(-953f, vec3<u32>(0u, 12603u, 0u)), Struct_1(1000f, vec3<u32>(4294967295u, 1u, 29645u)), Struct_1(226f, vec3<u32>(51886u, 4294967295u, 0u)), Struct_1(-1983f, vec3<u32>(2149u, 68516u, 1u))), Struct_2(1u, Struct_1(-268f, vec3<u32>(27004u, 0u, 1u)), Struct_1(2033f, vec3<u32>(45501u, 1u, 2670u)), Struct_1(1450f, vec3<u32>(1u, 71961u, 1u)), Struct_1(1891f, vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_2(0u, Struct_1(546f, vec3<u32>(4294967295u, 5507u, 4294967295u)), Struct_1(-482f, vec3<u32>(42930u, 1u, 20737u)), Struct_1(-298f, vec3<u32>(0u, 41219u, 39320u)), Struct_1(1192f, vec3<u32>(64918u, 0u, 4294967295u))), Struct_2(0u, Struct_1(290f, vec3<u32>(4294967295u, 64580u, 37661u)), Struct_1(-845f, vec3<u32>(15849u, 1u, 32291u)), Struct_1(-1000f, vec3<u32>(5482u, 4294967295u, 896u)), Struct_1(-1687f, vec3<u32>(31619u, 18248u, 0u))), Struct_2(4294967295u, Struct_1(-869f, vec3<u32>(41940u, 4294967295u, 9169u)), Struct_1(-357f, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(-1021f, vec3<u32>(5511u, 4294967295u, 11754u)), Struct_1(181f, vec3<u32>(1u, 46670u, 75976u))), Struct_2(1u, Struct_1(-1560f, vec3<u32>(40221u, 31344u, 37672u)), Struct_1(-1000f, vec3<u32>(0u, 49853u, 2686u)), Struct_1(1000f, vec3<u32>(59462u, 0u, 4920u)), Struct_1(673f, vec3<u32>(4294967295u, 18888u, 70711u))), Struct_2(1u, Struct_1(905f, vec3<u32>(0u, 1u, 72967u)), Struct_1(437f, vec3<u32>(0u, 17463u, 4294967295u)), Struct_1(-2140f, vec3<u32>(4294967295u, 4294967295u, 40969u)), Struct_1(-925f, vec3<u32>(10773u, 26013u, 10703u))), Struct_2(1u, Struct_1(-1392f, vec3<u32>(1u, 46300u, 1u)), Struct_1(729f, vec3<u32>(1u, 0u, 0u)), Struct_1(-1000f, vec3<u32>(1u, 4294967295u, 25209u)), Struct_1(242f, vec3<u32>(0u, 60523u, 51312u))), Struct_2(4294967295u, Struct_1(1323f, vec3<u32>(8069u, 4294967295u, 1u)), Struct_1(590f, vec3<u32>(4294967295u, 4294967295u, 153u)), Struct_1(2051f, vec3<u32>(54064u, 25506u, 33844u)), Struct_1(574f, vec3<u32>(0u, 1u, 39348u))), Struct_2(34245u, Struct_1(1131f, vec3<u32>(0u, 24722u, 18774u)), Struct_1(-2141f, vec3<u32>(0u, 0u, 37342u)), Struct_1(1000f, vec3<u32>(0u, 54850u, 36683u)), Struct_1(-359f, vec3<u32>(1u, 4294967295u, 7952u))), Struct_2(13582u, Struct_1(851f, vec3<u32>(31688u, 4294967295u, 38710u)), Struct_1(-682f, vec3<u32>(39155u, 53618u, 1u)), Struct_1(-1626f, vec3<u32>(1u, 7868u, 60688u)), Struct_1(1993f, vec3<u32>(25801u, 1u, 1u))), Struct_2(2911u, Struct_1(1490f, vec3<u32>(4294967295u, 112464u, 0u)), Struct_1(991f, vec3<u32>(4294967295u, 4294967295u, 786u)), Struct_1(-1000f, vec3<u32>(106512u, 4294967295u, 49491u)), Struct_1(1471f, vec3<u32>(0u, 19241u, 43333u))), Struct_2(0u, Struct_1(-437f, vec3<u32>(10680u, 32998u, 0u)), Struct_1(690f, vec3<u32>(0u, 44704u, 17208u)), Struct_1(-115f, vec3<u32>(3165u, 1u, 0u)), Struct_1(-441f, vec3<u32>(9167u, 4294967295u, 15537u))), Struct_2(4294967295u, Struct_1(-1055f, vec3<u32>(23318u, 1u, 67309u)), Struct_1(851f, vec3<u32>(23969u, 3488u, 18198u)), Struct_1(720f, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(-1135f, vec3<u32>(81821u, 31489u, 0u))), Struct_2(37607u, Struct_1(1103f, vec3<u32>(32522u, 35169u, 2982u)), Struct_1(-217f, vec3<u32>(1u, 15625u, 16359u)), Struct_1(1000f, vec3<u32>(4294967295u, 0u, 10340u)), Struct_1(1000f, vec3<u32>(96279u, 35093u, 4294967295u))), Struct_2(42636u, Struct_1(-381f, vec3<u32>(46423u, 1u, 9773u)), Struct_1(710f, vec3<u32>(22109u, 40855u, 4294967295u)), Struct_1(592f, vec3<u32>(54805u, 1u, 0u)), Struct_1(-596f, vec3<u32>(19142u, 1u, 11946u))), Struct_2(33190u, Struct_1(-1032f, vec3<u32>(94677u, 14834u, 48573u)), Struct_1(-1402f, vec3<u32>(16585u, 5573u, 5477u)), Struct_1(-106f, vec3<u32>(6694u, 3504u, 1u)), Struct_1(-1307f, vec3<u32>(0u, 2099u, 76977u))), Struct_2(54719u, Struct_1(1000f, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(-1000f, vec3<u32>(26046u, 3175u, 88031u)), Struct_1(558f, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(-550f, vec3<u32>(33688u, 0u, 4294967295u))), Struct_2(42240u, Struct_1(-2020f, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(-1419f, vec3<u32>(1u, 4294967295u, 24792u)), Struct_1(504f, vec3<u32>(1u, 4294967295u, 1u)), Struct_1(-1000f, vec3<u32>(0u, 4294967295u, 0u))), Struct_2(1u, Struct_1(384f, vec3<u32>(67148u, 38969u, 4294967295u)), Struct_1(910f, vec3<u32>(1u, 7777u, 1290u)), Struct_1(-113f, vec3<u32>(58844u, 4294967295u, 0u)), Struct_1(503f, vec3<u32>(0u, 1u, 19865u))), Struct_2(27432u, Struct_1(-823f, vec3<u32>(1u, 1u, 27135u)), Struct_1(816f, vec3<u32>(21236u, 111241u, 1u)), Struct_1(-865f, vec3<u32>(1u, 18596u, 1763u)), Struct_1(-534f, vec3<u32>(4294967295u, 26891u, 74358u))));

var<private> global1: array<u32, 11> = array<u32, 11>(35485u, 0u, 0u, 35594u, 66190u, 58475u, 1u, 0u, 1u, 9479u, 76842u);

var<private> global2: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(vec2<u32>(0u, 19610u), vec2<bool>(false, true)), Struct_4(vec2<u32>(0u, 19674u), vec2<bool>(true, true)), Struct_4(vec2<u32>(1u, 22328u), vec2<bool>(true, true)), Struct_4(vec2<u32>(49464u, 1u), vec2<bool>(false, true)), Struct_4(vec2<u32>(65964u, 1u), vec2<bool>(true, false)), Struct_4(vec2<u32>(30840u, 36404u), vec2<bool>(false, false)));

var<private> global3: u32;

var<private> global4: vec3<u32> = vec3<u32>(27963u, 4294967295u, 83918u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = firstTrailingBit(vec3<u32>(~arg_3.c.b.x, _wgslsmith_div_u32(~_wgslsmith_mult_u32(25758u, arg_3.c.b.x), arg_0.a.x), 7798u));
    global3 = ~_wgslsmith_mult_u32(arg_1.x, global4.x << ((~arg_0.a.x ^ ~38596u) % 32u));
    var var_1 = select(select(select(!(!vec3<bool>(arg_0.b.x, true, arg_0.b.x)), vec3<bool>(true, select(true, arg_0.b.x, false), arg_3.b.a == 1000f), !vec3<bool>(true, false, arg_0.b.x)), !(!vec3<bool>(arg_0.b.x, true, false)), arg_0.b.x), vec3<bool>(!arg_0.b.x, reverseBits(u_input.b << (16158u % 32u)) != ~(-1i), arg_0.b.x || arg_0.b.x), vec3<bool>(select(true, arg_0.b.x, false), select(504f < arg_2.x, true, select(true, global4.x < global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_3.c.b.x == global4.x)), false));
    var var_2 = vec2<i32>(u_input.b, 38076i);
    var_0 = ~arg_1;
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    global0 = array<Struct_2, 26>();
    global2 = array<Struct_4, 6>();
    global1 = array<u32, 11>();
    var var_0 = Struct_5(u_input.c, Struct_4(vec2<u32>(max(abs(1u), 4294967295u), ~min(global1[_wgslsmith_index_u32(global4.x, 11u)], global4.x)), vec2<bool>(true, true)), arg_0.c, Struct_2(_wgslsmith_mod_u32(func_3(Struct_4(vec2<u32>(1u, 4294967295u), vec2<bool>(true, true)), arg_0.d.b | vec3<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 50691u, arg_0.e.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(896f, arg_0.c.a, arg_0.b.a) - vec3<f32>(arg_0.c.a, 191f, -119f)), Struct_2(u_input.a, Struct_1(arg_0.e.a, vec3<u32>(global4.x, u_input.a, 27648u)), arg_0.b, Struct_1(511f, arg_0.d.b), arg_0.c)), global1[_wgslsmith_index_u32(u_input.a, 11u)]), Struct_1(arg_0.c.a, vec3<u32>(u_input.a, _wgslsmith_mult_u32(18942u, 12178u), ~u_input.a)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.c.a)))), arg_0.e.b), arg_0.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f * arg_0.c.a) - _wgslsmith_f_op_f32(arg_0.b.a + -227f)), _wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 4294967295u, 1u), vec3<u32>(65111u, 93189u, global4.x)))), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 23246u));
    var var_1 = arg_0.d.b.yz;
    return abs(-firstTrailingBit(vec2<i32>(16037i, -1i) | vec2<i32>(11654i, u_input.b)) ^ max(vec2<i32>(-62434i, min(1i, -2147483647i)), abs(firstLeadingBit(vec2<i32>(15585i, 14058i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    return ~abs(~(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -24773i, arg_0.x, 2147483647i), vec4<i32>(8713i, 9668i, -26325i, u_input.b)) ^ (vec4<i32>(9334i, arg_1.x, u_input.c, arg_1.x) ^ vec4<i32>(1i, arg_1.x, u_input.b, -2147483647i))));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = ~min(-59424i, 1i);
    let var_1 = 23370u;
    let var_2 = 0i;
    let var_3 = -func_4(~vec3<i32>(var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 37132i, var_2), vec3<i32>(var_2, 3339i, u_input.c)), u_input.c | -1i), abs(func_2(global0[_wgslsmith_index_u32(global4.x, 26u)])) << (vec2<u32>(_wgslsmith_mult_u32(var_1, 1872u), var_1) % vec2<u32>(32u)));
    global2 = array<Struct_4, 6>();
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(0i, u_input.b, select(func_1(_wgslsmith_f_op_f32(1128f - 1000f)) >> (max(_wgslsmith_dot_vec2_u32(global4.xz, global4.xy), 9431u) % 32u), _wgslsmith_sub_i32(min(_wgslsmith_add_i32(u_input.b, 2470i), countOneBits(-6254i)), -u_input.c), true));
    global0 = array<Struct_2, 26>();
    global3 = _wgslsmith_mod_u32(max(4294967295u, u_input.a >> (u_input.a % 32u)), 35666u);
    let var_1 = -2147483647i;
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(402f))) * _wgslsmith_f_op_f32(f32(-1f) * -798f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, -833f)))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1873f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(376f, -958f)), _wgslsmith_f_op_f32(floor(-1465f)))) - _wgslsmith_f_op_f32(f32(-1f) * -586f)), ~(~_wgslsmith_add_u32(1u, u_input.a)), vec4<i32>(-1i, -8638i, u_input.c, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, 2147483647i, u_input.c) ^ vec4<i32>(var_1, 40453i, 2147483647i, var_0), vec4<i32>(u_input.c, 8993i, -1i, u_input.b)))));
}

