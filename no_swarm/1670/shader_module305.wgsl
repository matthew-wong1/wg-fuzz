struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u, vec3<i32>(2147483647i, -1i, 1i), 187f, -1142f), Struct_1(10955u, vec3<i32>(-1i, -20517i, 2147483647i), 1000f, -630f), Struct_1(4294967295u, vec3<i32>(1i, -1i, 0i), -514f, 366f), Struct_1(4758u, vec3<i32>(19272i, 6726i, -34176i), -1231f, 995f), Struct_1(1u, vec3<i32>(i32(-2147483648), 2147483647i, -49495i), -1738f, 2495f), Struct_1(25606u, vec3<i32>(11602i, -23825i, -40574i), 1000f, -1000f), Struct_1(0u, vec3<i32>(71123i, 1i, 2147483647i), -297f, 1905f), Struct_1(0u, vec3<i32>(-1954i, 0i, 5618i), -477f, 397f), Struct_1(1u, vec3<i32>(i32(-2147483648), 0i, 6170i), 1000f, -285f), Struct_1(4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, -1i), 802f, -1123f), Struct_1(0u, vec3<i32>(-37981i, 1i, -36362i), -1000f, -1711f), Struct_1(13882u, vec3<i32>(-16283i, 14074i, i32(-2147483648)), -1000f, -1171f), Struct_1(53452u, vec3<i32>(1i, 0i, 1i), 572f, 439f), Struct_1(16927u, vec3<i32>(1i, -1i, 2147483647i), 733f, 382f), Struct_1(1u, vec3<i32>(0i, -22389i, 2147483647i), -583f, -1000f), Struct_1(4294967295u, vec3<i32>(-2742i, 1i, 2147483647i), 1736f, -572f), Struct_1(1u, vec3<i32>(47352i, 9457i, i32(-2147483648)), -548f, 1125f), Struct_1(0u, vec3<i32>(0i, 2147483647i, 1i), -600f, -749f), Struct_1(0u, vec3<i32>(i32(-2147483648), -100496i, 1i), 1127f, 487f), Struct_1(4294967295u, vec3<i32>(0i, -1i, i32(-2147483648)), 702f, 1000f), Struct_1(0u, vec3<i32>(8785i, i32(-2147483648), 2147483647i), 159f, 422f), Struct_1(31049u, vec3<i32>(75084i, 0i, 3994i), -2137f, -1192f), Struct_1(88066u, vec3<i32>(38623i, -1i, i32(-2147483648)), 681f, 272f), Struct_1(113088u, vec3<i32>(-16479i, -27960i, -1i), 173f, -1388f), Struct_1(27709u, vec3<i32>(28168i, i32(-2147483648), i32(-2147483648)), -528f, 1243f), Struct_1(25737u, vec3<i32>(-5114i, 23496i, 0i), -171f, -1010f), Struct_1(37496u, vec3<i32>(-1i, 2147483647i, 1i), -1753f, -387f), Struct_1(14633u, vec3<i32>(36366i, 21504i, -30925i), 126f, -632f), Struct_1(4294967295u, vec3<i32>(-35776i, 1i, -30359i), -1000f, -865f), Struct_1(12986u, vec3<i32>(-1i, 1585i, 2147483647i), -1471f, 237f), Struct_1(4294967295u, vec3<i32>(i32(-2147483648), 37764i, -1i), 414f, 208f));

var<private> global2: Struct_1 = Struct_1(4294967295u, vec3<i32>(-6454i, 19317i, 33756i), 411f, -364f);

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-437f, 380f, -214f, -872f), Struct_1(0u, vec3<i32>(0i, -249i, i32(-2147483648)), 909f, -356f), Struct_1(4294967295u, vec3<i32>(32803i, -1i, -38295i), -398f, 129f));

var<private> global4: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(661f, -1110f, 1273f), vec3<f32>(1942f, -171f, -1021f), vec3<f32>(576f, -1628f, 220f), vec3<f32>(773f, 330f, 1502f), vec3<f32>(-2210f, 776f, -1319f), vec3<f32>(-1000f, 371f, -857f), vec3<f32>(-1645f, 2274f, -338f), vec3<f32>(1563f, 920f, -135f), vec3<f32>(-245f, -639f, -436f), vec3<f32>(589f, 2306f, -952f), vec3<f32>(-803f, -1139f, 394f), vec3<f32>(-549f, -1000f, 1011f), vec3<f32>(-1136f, 742f, -448f), vec3<f32>(-1158f, 1023f, -1128f), vec3<f32>(-713f, 1235f, -1320f), vec3<f32>(-1000f, 487f, 438f), vec3<f32>(588f, 917f, 1000f), vec3<f32>(390f, -961f, -1621f), vec3<f32>(710f, -1025f, 440f), vec3<f32>(2024f, -424f, 1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_2(global3.a, global0.c, Struct_1(_wgslsmith_div_u32(58138u, ~global2.a), _wgslsmith_mod_vec3_i32(-arg_0, -(vec3<i32>(-26578i, 14959i, global3.c.b.x) ^ global0.c.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1505f)))), -1218f));
    var var_1 = abs(u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(-2595f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), 1000f, 1201f)) + global0.a);
    let var_3 = false;
    global1 = array<Struct_1, 31>();
    return Struct_4(true, false, global3.c, arg_0.x != (arg_0.x << ((4294967295u >> (global3.b.a % 32u)) % 32u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_div_f32(-737f, -1206f)), global3.a.yz)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-497f, 1125f, var_1.c.d, 733f), global0.a))), arg_1, Struct_1(select(~4294967295u, ~4294967295u, true != var_1.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(72389i, arg_1.b.x, -2300i), -vec3<i32>(var_1.c.b.x, 2147483647i, global0.b.b.x), var_0.c.b), arg_1.c, var_0.c.c)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * global0.a) - vec4<f32>(_wgslsmith_div_f32(-656f, 1399f), -1455f, global0.b.c, _wgslsmith_f_op_f32(-global0.c.c))), Struct_1(~(~var_0.c.a), -vec3<i32>(arg_1.b.x, global2.b.x, 2147483647i), _wgslsmith_f_op_f32(-global0.a.x), var_0.c.d), Struct_1(~arg_1.a, -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, -1i), vec3<i32>(global0.b.b.x, -1i, global0.b.b.x)), -1432f, var_0.c.c)));
    var var_3 = true && any(vec4<bool>(!(!var_0.b), select(all(vec3<bool>(arg_0.d, false, true)), var_1.d, var_1.b), !(1318f < global2.d), all(vec4<bool>(true, true, true, true))));
    var var_4 = func_2(~vec3<i32>(_wgslsmith_div_i32(-11372i, var_2.c.c.b.x), -u_input.a.x, _wgslsmith_div_i32(var_0.c.b.x, -19616i)) << (max(~firstTrailingBit(vec3<u32>(4294967295u, arg_0.c.a, global3.c.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(20452u, global3.b.a, var_0.c.a), vec3<u32>(61197u, 4294967295u, arg_0.c.a))) % vec3<u32>(32u)));
    return var_2.c;
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = true;
    var var_1 = global3.c;
    var var_2 = select(true, !arg_0, !var_0);
    let var_3 = func_3(func_2(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, global3.c.b.x, 44715i)), -(~vec3<i32>(global2.b.x, var_1.b.x, global0.b.b.x)))), global3.b);
    global4 = array<vec3<f32>, 20>();
    return vec2<bool>(var_0, all(vec2<bool>(true, arg_0)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> StorageBuffer {
    let var_0 = countOneBits(min(vec2<u32>(4294967295u, global2.a >> (u_input.b % 32u)), abs(vec2<u32>(global2.a, 54114u)) ^ vec2<u32>(global3.c.a, global0.c.a)));
    var var_1 = func_3(func_2(global0.b.b), global0.c);
    var var_2 = 4294967295u;
    var var_3 = func_2(vec3<i32>(1i, _wgslsmith_mod_i32(global3.b.b.x ^ (u_input.a.x >> (u_input.b % 32u)), var_1.c.b.x), _wgslsmith_div_i32(u_input.a.x, ~(~global2.b.x))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.d, 379f))), _wgslsmith_f_op_vec2_f32(global3.a.wy * global0.a.yy))) - global3.a.zx), func_3(func_2(global2.b), var_1.c), func_3(Struct_4(!(arg_0 | var_3.b), arg_0, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.a, global0.b.a), vec3<u32>(1u, 0u, u_input.b)), 31u)], any(vec4<bool>(false, true, arg_0, true))), global3.c));
    return StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.c.b.b.x, _wgslsmith_sub_i32(func_3(Struct_4(var_3.b, false, Struct_1(50983u, vec3<i32>(global2.b.x, var_1.c.b.x, var_1.b.b.x), global2.c, 692f), true), Struct_1(4294967295u, vec3<i32>(-1i, -1i, var_4.c.b.b.x), 1000f, var_3.c.d)).c.b.x, 0i), 50294i, _wgslsmith_add_i32(arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, 10504i), vec3<i32>(global3.b.b.x, var_3.c.b.x, global2.b.x)))), abs(vec4<i32>(~53086i, var_3.c.b.x, 31149i, _wgslsmith_mod_i32(var_3.c.b.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    let x = u_input.a;
    s_output = func_4(all(select(vec2<bool>(false, true), select(func_1(false, u_input.a.x), vec2<bool>(true, true), vec2<bool>(true, true)), true)), ~global2.b.zx);
}

