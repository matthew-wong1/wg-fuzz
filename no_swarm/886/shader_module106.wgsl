struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(vec4<f32>(-471f, -902f, 1000f, -899f), Struct_1(vec2<i32>(-18246i, 1i), vec2<f32>(-1155f, -1120f), vec3<i32>(-36602i, 14543i, i32(-2147483648))), vec2<bool>(true, false), true)), Struct_3(Struct_2(vec4<f32>(606f, 1711f, -2633f, 358f), Struct_1(vec2<i32>(-9144i, i32(-2147483648)), vec2<f32>(1273f, -772f), vec3<i32>(-1i, 1i, 1i)), vec2<bool>(false, false), false)), Struct_3(Struct_2(vec4<f32>(1173f, 1346f, -526f, 681f), Struct_1(vec2<i32>(-9548i, 2147483647i), vec2<f32>(-1264f, 438f), vec3<i32>(1i, 2578i, 2147483647i)), vec2<bool>(false, true), true)), Struct_3(Struct_2(vec4<f32>(-1245f, -1004f, 733f, 1276f), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-143f, -1085f), vec3<i32>(2147483647i, -6504i, 13889i)), vec2<bool>(true, false), true)), Struct_3(Struct_2(vec4<f32>(1222f, 686f, 811f, 679f), Struct_1(vec2<i32>(39661i, 1i), vec2<f32>(-730f, -1355f), vec3<i32>(-20114i, -50356i, -860i)), vec2<bool>(true, false), false)), Struct_3(Struct_2(vec4<f32>(719f, -128f, 1591f, 435f), Struct_1(vec2<i32>(2147483647i, -31654i), vec2<f32>(-428f, 1052f), vec3<i32>(72397i, -8591i, -16294i)), vec2<bool>(false, false), false)), Struct_3(Struct_2(vec4<f32>(-1117f, 1255f, -764f, -158f), Struct_1(vec2<i32>(2147483647i, 44247i), vec2<f32>(-1045f, -1024f), vec3<i32>(-38251i, 27188i, 6215i)), vec2<bool>(false, false), true)), Struct_3(Struct_2(vec4<f32>(509f, 130f, 471f, -1249f), Struct_1(vec2<i32>(10989i, -1i), vec2<f32>(-1071f, -155f), vec3<i32>(i32(-2147483648), -2581i, 24301i)), vec2<bool>(true, false), false)), Struct_3(Struct_2(vec4<f32>(437f, 2241f, -199f, 323f), Struct_1(vec2<i32>(-5005i, 2147483647i), vec2<f32>(2072f, 672f), vec3<i32>(18339i, 2147483647i, 12888i)), vec2<bool>(false, false), false)), Struct_3(Struct_2(vec4<f32>(-1124f, -1000f, 311f, 1312f), Struct_1(vec2<i32>(0i, 46583i), vec2<f32>(-235f, -1691f), vec3<i32>(51075i, 0i, 57419i)), vec2<bool>(true, true), false)), Struct_3(Struct_2(vec4<f32>(-2358f, -1072f, 621f, 1225f), Struct_1(vec2<i32>(36510i, 1i), vec2<f32>(782f, 135f), vec3<i32>(1i, -12679i, 2147483647i)), vec2<bool>(true, false), false)), Struct_3(Struct_2(vec4<f32>(1311f, 1873f, -1789f, -644f), Struct_1(vec2<i32>(38136i, 2147483647i), vec2<f32>(-1000f, 723f), vec3<i32>(26418i, 85256i, 1i)), vec2<bool>(true, false), true)), Struct_3(Struct_2(vec4<f32>(-1000f, 787f, 752f, 1000f), Struct_1(vec2<i32>(-1i, -15477i), vec2<f32>(-495f, -1419f), vec3<i32>(-19578i, 0i, 2147483647i)), vec2<bool>(true, true), true)), Struct_3(Struct_2(vec4<f32>(-2030f, -1000f, 188f, 404f), Struct_1(vec2<i32>(-1i, -41662i), vec2<f32>(-1000f, 819f), vec3<i32>(1i, 54074i, 0i)), vec2<bool>(true, true), false)), Struct_3(Struct_2(vec4<f32>(-1588f, -230f, -1000f, -1000f), Struct_1(vec2<i32>(0i, -4637i), vec2<f32>(859f, -3735f), vec3<i32>(32286i, -1i, 2147483647i)), vec2<bool>(false, true), false)), Struct_3(Struct_2(vec4<f32>(1715f, -1444f, -352f, 397f), Struct_1(vec2<i32>(0i, 16072i), vec2<f32>(-801f, 2057f), vec3<i32>(-64891i, i32(-2147483648), 17036i)), vec2<bool>(false, true), true)), Struct_3(Struct_2(vec4<f32>(-145f, 1282f, 309f, -1018f), Struct_1(vec2<i32>(-55212i, -1i), vec2<f32>(527f, 872f), vec3<i32>(23085i, 23810i, 1i)), vec2<bool>(true, false), false)), Struct_3(Struct_2(vec4<f32>(1921f, 419f, -667f, -401f), Struct_1(vec2<i32>(-2268i, -18516i), vec2<f32>(-609f, 573f), vec3<i32>(21869i, -1i, -55054i)), vec2<bool>(true, false), false)), Struct_3(Struct_2(vec4<f32>(1436f, -631f, 2013f, -321f), Struct_1(vec2<i32>(66937i, 18648i), vec2<f32>(-667f, -2001f), vec3<i32>(63196i, 26313i, 38588i)), vec2<bool>(false, true), true)));

var<private> global2: vec3<u32>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: Struct_3 = Struct_3(Struct_2(vec4<f32>(2316f, -1156f, 835f, 980f), Struct_1(vec2<i32>(10545i, 0i), vec2<f32>(-140f, -996f), vec3<i32>(2147483647i, 2147483647i, 28687i)), vec2<bool>(true, false), true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = firstTrailingBit(arg_2.b.a.x);
    var var_1 = _wgslsmith_add_u32(4294967295u, arg_3);
    var_1 = global2.x >> (_wgslsmith_mult_u32(37923u, arg_3) % 32u);
    let var_2 = ~(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~arg_3, max(u_input.d, 10605u)), arg_3, firstLeadingBit(global2.x) << ((45525u | arg_3) % 32u)) ^ abs(select(_wgslsmith_mod_u32(31404u, global2.x), _wgslsmith_clamp_u32(global2.x, global2.x, 57518u), all(vec3<bool>(true, false, arg_1.x)))));
    var var_3 = firstTrailingBit(arg_2.b.c);
    return select(select(select(vec3<bool>(true, global4.a.a.x == 1021f, arg_2.c.x), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), global4.a.d), !(!vec3<bool>(true, true, arg_2.c.x))), select(!vec3<bool>(arg_1.x, true, arg_1.x), !vec3<bool>(true, arg_2.c.x, true), !(!vec3<bool>(arg_1.x, arg_2.d, arg_1.x))), !vec3<bool>(u_input.d <= var_2, !arg_2.d, global4.a.d)), !(!select(!vec3<bool>(true, arg_1.x, false), select(vec3<bool>(true, true, arg_2.c.x), vec3<bool>(arg_0.a.d, global4.a.d, true), true), global4.a.d)), arg_1.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<u32> {
    let var_0 = 11519i;
    var var_1 = !(!select(func_3(global1[_wgslsmith_index_u32(~global2.x, 19u)], vec2<bool>(true, global4.a.d), global4.a, 4294967295u & arg_0), !vec3<bool>(global4.a.c.x, global4.a.c.x, false), vec3<bool>(global4.a.d, func_3(Struct_3(global4.a), vec2<bool>(true, true), global4.a, global2.x).x, !global4.a.d)));
    global0 = Struct_1(global0.c.zy, _wgslsmith_f_op_vec2_f32(-global0.b), firstTrailingBit(global4.a.b.c));
    global3 = var_0;
    global1 = array<Struct_3, 19>();
    return vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, ~1u, arg_0), 0u, 6005u);
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = 29894u;
    var var_1 = u_input.a;
    let var_2 = Struct_3(Struct_2(global4.a.a, Struct_1(vec2<i32>(_wgslsmith_sub_i32(4377i, -16085i), u_input.e), global0.b, abs(global4.a.b.c)), vec2<bool>(countOneBits(55452i) < (u_input.e ^ 2147483647i), all(!vec4<bool>(global4.a.c.x, global4.a.d, false, global4.a.d))), false && !global4.a.c.x));
    global4 = var_2;
    global3 = global4.a.b.a.x;
    return global4.a;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_4(vec3<u32>(38538u, ~u_input.d, u_input.b.x)).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.b.b.x, 352f, 1000f, _wgslsmith_f_op_f32(global4.a.b.b.x + arg_1))));
    return 57202u;
}

fn func_6(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = ~firstLeadingBit(global2.zx);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-702f, _wgslsmith_f_op_f32(sign(-418f)))))));
    var var_2 = func_4(vec3<u32>(reverseBits(arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, 1089u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global2.x, 86008u, var_0.x, 24094u))), 1u, 4294967295u), u_input.a));
    var var_3 = !select(select(!(!vec4<bool>(true, global4.a.d, true, false)), !vec4<bool>(var_2.c.x, true, var_2.c.x, global4.a.d), select(vec4<bool>(var_2.c.x, true, var_2.d, var_2.d), !vec4<bool>(false, var_2.d, var_2.d, global4.a.c.x), true)), !select(select(vec4<bool>(global4.a.d, false, var_2.c.x, false), vec4<bool>(global4.a.c.x, var_2.d, false, false), vec4<bool>(false, global4.a.c.x, true, global4.a.d)), vec4<bool>(false, true, var_2.c.x, global4.a.d), select(vec4<bool>(global4.a.d, var_2.d, var_2.d, global4.a.d), vec4<bool>(var_2.c.x, global4.a.d, var_2.c.x, global4.a.c.x), var_2.d)), func_4(vec3<u32>(u_input.d, _wgslsmith_add_u32(34479u, 1u), _wgslsmith_mod_u32(arg_1, 81076u))).c.x);
    var var_4 = Struct_4(var_2.c, 29602u, true);
    return func_4(~u_input.b.yyw);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = func_6(~u_input.b.ywz, firstTrailingBit(func_5(func_4(func_2(global2.x, arg_0)), _wgslsmith_f_op_f32(ceil(195f)))));
    var var_1 = select(select(select(!(!vec4<bool>(false, false, var_0.d, arg_3.a.c.x)), vec4<bool>(true, any(vec4<bool>(false, arg_3.a.c.x, true, false)), any(vec2<bool>(false, global4.a.c.x)), true), true), vec4<bool>(true | (arg_2.x || true), _wgslsmith_div_f32(var_0.b.b.x, -1290f) >= -364f, !arg_2.x & true, var_0.d), vec4<bool>(arg_0 < (global0.c.x >> (global2.x % 32u)), !global4.a.c.x && !var_0.c.x, arg_2.x, !(!arg_2.x))), vec4<bool>(func_3(Struct_3(global4.a), vec2<bool>(true, true), Struct_2(var_0.a, arg_3.a.b, !global4.a.c, false), arg_1.x).x, true || any(select(global4.a.c, arg_2, var_0.c)), !arg_2.x, arg_3.a.d & false), arg_2.x);
    global2 = arg_1.wzz;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a.a.wyx + _wgslsmith_f_op_vec3_f32(global4.a.a.www + arg_3.a.a.xwx)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, global0.b.x, -532f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a.x, 1060f, 1077f)))))), global4.a.a.ywx));
    global1 = array<Struct_3, 19>();
    return vec2<i32>(6838i, abs(2147483647i) ^ ~_wgslsmith_add_i32(-var_0.b.a.x, i32(-1i) * -1i));
}

fn func_7(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global4 = global1[_wgslsmith_index_u32(firstLeadingBit(24424u), 19u)];
    let var_0 = max(reverseBits(~(~(-vec3<i32>(u_input.e, 8798i, 18389i)))), ~global0.c >> (max(u_input.b.xzz, vec3<u32>(~u_input.b.x, 0u, 1u)) % vec3<u32>(32u)));
    let var_1 = 1i;
    var var_2 = vec2<u32>(firstTrailingBit(0u), countOneBits(~4294967295u));
    let var_3 = !(!func_4(arg_0.wwz).c.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~64860u, _wgslsmith_sub_u32(~(~u_input.d), func_7(select(u_input.b, vec4<u32>(1u, 1195u, 13317u, 1u), false), ~u_input.b, Struct_1(func_1(u_input.e, vec4<u32>(1u, 29032u, 8119u, u_input.a), global4.a.c, global1[_wgslsmith_index_u32(23431u, 19u)]), _wgslsmith_div_vec2_f32(vec2<f32>(global4.a.a.x, 841f), global0.b), vec3<i32>(9415i, 25737i, 26669i)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b)));
    let var_1 = u_input.b.x;
    var_0 = select(vec3<u32>(5738u, _wgslsmith_clamp_u32(1u, select(60992u, _wgslsmith_mod_u32(global2.x, 0u), any(global4.a.c)), 47145u), ~0u), vec3<u32>(global2.x, 4294967295u, 0u << ((_wgslsmith_div_u32(9065u, var_1) ^ global2.x) % 32u)), global4.a.d & func_4(vec3<u32>(abs(0u), 1u, ~49501u)).c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, -1498f)) * global4.a.a.x), _wgslsmith_div_f32(global4.a.a.x, global0.b.x)) - _wgslsmith_f_op_vec3_f32(-global4.a.a.wwy));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), var_2.x, -176f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x ^ 5161u, global2.yz, global4.a.a.xzx);
}

