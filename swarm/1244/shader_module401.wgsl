struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(0u, vec2<f32>(-1142f, 1000f), Struct_1(vec2<u32>(2500u, 4294967295u), vec2<i32>(0i, 0i), -13026i, true, vec3<bool>(true, true, false)), 17515u), Struct_2(24695u, vec2<f32>(553f, 1468f), Struct_1(vec2<u32>(0u, 15639u), vec2<i32>(-46497i, i32(-2147483648)), -19117i, false, vec3<bool>(true, true, false)), 1u), Struct_2(22218u, vec2<f32>(-467f, -395f), Struct_1(vec2<u32>(0u, 0u), vec2<i32>(-12709i, 0i), 38242i, false, vec3<bool>(false, true, true)), 1u), Struct_2(0u, vec2<f32>(679f, -1188f), Struct_1(vec2<u32>(37391u, 4294967295u), vec2<i32>(2147483647i, -1i), -72435i, true, vec3<bool>(true, true, false)), 35816u), Struct_2(11921u, vec2<f32>(-417f, -1015f), Struct_1(vec2<u32>(17379u, 1156u), vec2<i32>(-15584i, 54534i), -2247i, false, vec3<bool>(false, true, true)), 16185u), Struct_2(0u, vec2<f32>(-1056f, 959f), Struct_1(vec2<u32>(56100u, 4294967295u), vec2<i32>(i32(-2147483648), 36988i), 17227i, false, vec3<bool>(false, true, true)), 1264u), Struct_2(50251u, vec2<f32>(-1168f, -1308f), Struct_1(vec2<u32>(0u, 27958u), vec2<i32>(27247i, 1i), 13065i, true, vec3<bool>(false, true, true)), 0u), Struct_2(15594u, vec2<f32>(-1950f, 885f), Struct_1(vec2<u32>(1u, 0u), vec2<i32>(-1i, 0i), 0i, true, vec3<bool>(false, true, false)), 20555u), Struct_2(4498u, vec2<f32>(-1568f, 176f), Struct_1(vec2<u32>(2185u, 21902u), vec2<i32>(17296i, 49277i), -30748i, false, vec3<bool>(false, false, false)), 0u), Struct_2(47476u, vec2<f32>(1000f, -1310f), Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(10689i, 28797i), 50361i, true, vec3<bool>(true, true, true)), 5194u), Struct_2(55924u, vec2<f32>(1000f, -1428f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), -45153i), 20460i, true, vec3<bool>(true, false, false)), 21740u), Struct_2(43629u, vec2<f32>(-212f, 683f), Struct_1(vec2<u32>(16524u, 48791u), vec2<i32>(1i, -17332i), i32(-2147483648), false, vec3<bool>(false, true, true)), 0u), Struct_2(4240u, vec2<f32>(-598f, 1109f), Struct_1(vec2<u32>(0u, 1u), vec2<i32>(0i, -1i), 48869i, true, vec3<bool>(true, true, true)), 1u), Struct_2(45265u, vec2<f32>(184f, -2341f), Struct_1(vec2<u32>(26752u, 4294967295u), vec2<i32>(33341i, -10027i), 2147483647i, false, vec3<bool>(false, true, true)), 1u), Struct_2(14500u, vec2<f32>(946f, -670f), Struct_1(vec2<u32>(63446u, 0u), vec2<i32>(42028i, 2147483647i), 0i, false, vec3<bool>(true, false, true)), 13598u), Struct_2(1u, vec2<f32>(1712f, -1518f), Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(2147483647i, 40572i), 1i, true, vec3<bool>(true, false, true)), 57931u), Struct_2(62152u, vec2<f32>(533f, -687f), Struct_1(vec2<u32>(15589u, 39982u), vec2<i32>(41841i, i32(-2147483648)), 0i, false, vec3<bool>(false, false, false)), 57793u), Struct_2(1u, vec2<f32>(-1059f, 394f), Struct_1(vec2<u32>(81466u, 22277u), vec2<i32>(10310i, 1i), 23065i, true, vec3<bool>(true, true, false)), 1u), Struct_2(60200u, vec2<f32>(-2430f, -108f), Struct_1(vec2<u32>(64112u, 47126u), vec2<i32>(2147483647i, 2147483647i), -1i, false, vec3<bool>(true, true, true)), 0u), Struct_2(1u, vec2<f32>(-241f, -916f), Struct_1(vec2<u32>(1u, 46227u), vec2<i32>(-1i, -32197i), -14767i, false, vec3<bool>(true, false, true)), 1u), Struct_2(7465u, vec2<f32>(-1115f, 547f), Struct_1(vec2<u32>(0u, 22678u), vec2<i32>(17485i, 13790i), -21564i, true, vec3<bool>(true, true, true)), 41156u), Struct_2(0u, vec2<f32>(-1882f, 520f), Struct_1(vec2<u32>(40355u, 22251u), vec2<i32>(i32(-2147483648), 1i), i32(-2147483648), false, vec3<bool>(false, false, true)), 9750u), Struct_2(18210u, vec2<f32>(1230f, 303f), Struct_1(vec2<u32>(40278u, 73665u), vec2<i32>(10457i, -36261i), 0i, true, vec3<bool>(true, false, true)), 43374u), Struct_2(40850u, vec2<f32>(-607f, -606f), Struct_1(vec2<u32>(12783u, 0u), vec2<i32>(-29458i, -1i), -1i, true, vec3<bool>(false, true, true)), 4294967295u), Struct_2(87139u, vec2<f32>(-1182f, -502f), Struct_1(vec2<u32>(48764u, 4294967295u), vec2<i32>(-11273i, 1i), 2818i, false, vec3<bool>(true, false, true)), 1u), Struct_2(4294967295u, vec2<f32>(616f, 1888f), Struct_1(vec2<u32>(38009u, 4294967295u), vec2<i32>(46490i, 26709i), -8513i, true, vec3<bool>(false, true, false)), 4741u), Struct_2(0u, vec2<f32>(-564f, -197f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(48455i, i32(-2147483648)), 82769i, true, vec3<bool>(false, true, true)), 38570u), Struct_2(10878u, vec2<f32>(-2036f, 1184f), Struct_1(vec2<u32>(39625u, 105170u), vec2<i32>(0i, 1i), 2147483647i, true, vec3<bool>(true, true, true)), 1u), Struct_2(4294967295u, vec2<f32>(-192f, -1079f), Struct_1(vec2<u32>(38525u, 2242u), vec2<i32>(-3475i, 2922i), -40912i, false, vec3<bool>(false, false, false)), 1u), Struct_2(4294967295u, vec2<f32>(-1806f, 1996f), Struct_1(vec2<u32>(0u, 4294967295u), vec2<i32>(2147483647i, 23394i), 2147483647i, false, vec3<bool>(false, false, false)), 11606u));

var<private> global1: i32 = -32047i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<f32> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(~(-u_input.a.x << (0u % 32u)), arg_0.c.b.x), 1i, u_input.a.x, ~arg_0.c.b.x);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 1u, arg_0.d, arg_0.d), vec4<u32>(61126u, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.d, arg_0.c.a.x), firstLeadingBit(arg_0.c.a)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(66964u, arg_0.a, 0u), arg_0.d & arg_0.a)), ~arg_0.a, 1u)), 30u)];
    var var_2 = select(!arg_0.c.e.x, all(select(arg_0.c.e.xy, arg_0.c.e.zx, select(!vec2<bool>(false, var_1.c.e.x), vec2<bool>(false, var_1.c.e.x), !vec2<bool>(arg_0.c.d, true)))), !arg_0.c.e.x);
    let var_3 = _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1565f - arg_0.b.x)))), arg_0.c.b.x == 1i));
    var var_4 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.a.x, var_1.c.a.x, ~1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 4294967295u, var_1.a, 4799u), vec4<u32>(8053u, 25176u, arg_0.c.a.x, arg_0.c.a.x)), countOneBits(22106u), 29704u)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x) * _wgslsmith_f_op_f32(select(arg_1, 323f, var_1.c.e.x))))) + 1870f), arg_1, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(921f + _wgslsmith_f_op_f32(trunc(-1340f)))))));
}

fn func_2() -> bool {
    var var_0 = !vec4<bool>(all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f * -2067f) - _wgslsmith_f_op_f32(sign(-474f))) == 1f, any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(592f, -1239f), -446f, 1564f, 1623f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1428f, _wgslsmith_div_f32(-662f, 214f), 1f, _wgslsmith_f_op_f32(1000f * 1008f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, -1000f, 377f, -639f)))))), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(44613u, 9585u), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f + 2887f)) * _wgslsmith_f_op_f32(-384f + -512f))))));
    var var_2 = var_0.zz;
    global0 = array<Struct_2, 30>();
    let var_3 = vec2<f32>(1000f, -1213f);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(max(max(abs(0u >> (countOneBits(arg_0) % 32u)), ~_wgslsmith_div_u32(2484u, arg_0)), reverseBits(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 2587u, 1u, arg_0) >> (vec4<u32>(0u, arg_0, arg_0, arg_0) % vec4<u32>(32u)), vec4<u32>(18338u, 1u, 4294967295u, arg_0)))), 30u)];
    let var_2 = global0[_wgslsmith_index_u32(~abs(4294967295u), 30u)];
    return i32(-1i) * -_wgslsmith_add_i32(~(-1i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 506f;
    let var_1 = Struct_2(1u, vec2<f32>(-189f, _wgslsmith_f_op_f32(928f + _wgslsmith_f_op_f32(-var_0))), Struct_1(vec2<u32>(23570u, 0u >> (0u % 32u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(-1i, -14435i)), _wgslsmith_mod_i32(11950i, u_input.a.x), true, vec3<bool>(all(vec2<bool>(true, true)), false, 1f <= _wgslsmith_f_op_f32(-1000f + var_0))), 62116u);
    global0 = array<Struct_2, 30>();
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -22897i, 29340i, 0i), vec4<i32>(-1i, u_input.a.x, var_1.c.c, var_1.c.b.x))), -vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, func_1(var_1.d, vec2<bool>(true, var_1.c.e.x), vec4<f32>(var_1.b.x, 458f, -150f, 1339f)))), abs(-vec4<i32>(-1i, countOneBits(var_1.c.c), max(u_input.a.x, -1i), u_input.a.x)));
    var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(select(vec2<i32>(u_input.a.x, u_input.a.x), var_1.c.b, true), _wgslsmith_sub_vec2_i32(u_input.a.zy, var_1.c.b)) ^ u_input.a.yx, var_1.c.b, vec2<i32>(-1i, firstTrailingBit(u_input.a.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -var_1.c.b.x), 1i), _wgslsmith_div_vec2_i32(select(~var_1.c.b, u_input.a.zz ^ vec2<i32>(-38193i, -57345i), true), max(var_1.c.b | vec2<i32>(u_input.a.x, -1i), var_1.c.b | u_input.a.zy))));
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(firstTrailingBit(~var_1.d)), 4294967295u), _wgslsmith_f_op_f32(floor(-248f)), var_1.b, u_input.a.x, _wgslsmith_div_vec3_u32(~(vec3<u32>(1u, 1u, 1u) >> (select(vec3<u32>(58791u, var_1.c.a.x, var_1.c.a.x), vec3<u32>(var_1.c.a.x, var_1.a, 0u), true) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, 74642u), ~var_1.a, 0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(5745u, var_1.c.a.x, 55814u), vec3<u32>(var_1.a, var_1.d, 2774u), ~vec3<u32>(9206u, var_1.a, var_1.a)))));
}

