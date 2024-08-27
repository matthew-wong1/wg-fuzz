struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1340f, 353f, -1326f, 536f, 307f, 515f, 291f, -233f, 105f, -1003f, 890f);

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<i32>(65962i, -43003i), vec3<bool>(true, false, true), -574f, vec2<u32>(4294967295u, 0u), 545f), Struct_3(vec2<i32>(0i, 44214i), vec3<bool>(true, true, false), -1610f, vec2<u32>(1u, 0u), 142f), Struct_3(vec2<i32>(0i, -1i), vec3<bool>(false, false, true), 2155f, vec2<u32>(0u, 18337u), -1000f), Struct_3(vec2<i32>(31871i, -33721i), vec3<bool>(false, true, true), 415f, vec2<u32>(4294967295u, 76317u), 537f), Struct_3(vec2<i32>(875i, i32(-2147483648)), vec3<bool>(true, true, true), -103f, vec2<u32>(830u, 62677u), -829f), Struct_3(vec2<i32>(1i, -1i), vec3<bool>(true, true, true), 752f, vec2<u32>(34277u, 96960u), 1753f), Struct_3(vec2<i32>(1i, -1i), vec3<bool>(false, true, true), -1955f, vec2<u32>(11640u, 1u), -1578f), Struct_3(vec2<i32>(23509i, 15378i), vec3<bool>(false, false, false), -928f, vec2<u32>(35343u, 4294967295u), -561f), Struct_3(vec2<i32>(-25232i, 0i), vec3<bool>(true, true, true), -379f, vec2<u32>(5068u, 0u), 1375f), Struct_3(vec2<i32>(31186i, -6426i), vec3<bool>(true, false, true), -1047f, vec2<u32>(1u, 1u), 209f), Struct_3(vec2<i32>(i32(-2147483648), -1168i), vec3<bool>(false, true, false), 939f, vec2<u32>(28201u, 21568u), -150f), Struct_3(vec2<i32>(-16963i, 2147483647i), vec3<bool>(false, false, true), 1005f, vec2<u32>(4294967295u, 4294967295u), -1006f), Struct_3(vec2<i32>(0i, 17710i), vec3<bool>(false, true, true), 231f, vec2<u32>(0u, 4294967295u), 1697f), Struct_3(vec2<i32>(5833i, 0i), vec3<bool>(true, true, false), 571f, vec2<u32>(1u, 0u), -665f), Struct_3(vec2<i32>(-86157i, 1i), vec3<bool>(false, true, false), -1155f, vec2<u32>(19236u, 48082u), 770f), Struct_3(vec2<i32>(16070i, -17208i), vec3<bool>(false, false, false), 823f, vec2<u32>(15948u, 41464u), 820f), Struct_3(vec2<i32>(-1i, -44635i), vec3<bool>(false, true, false), 206f, vec2<u32>(4294967295u, 0u), -698f), Struct_3(vec2<i32>(-20522i, 6535i), vec3<bool>(true, false, false), -1000f, vec2<u32>(0u, 45308u), 2076f), Struct_3(vec2<i32>(7503i, i32(-2147483648)), vec3<bool>(false, true, false), 111f, vec2<u32>(10476u, 37433u), -643f), Struct_3(vec2<i32>(-42000i, 62485i), vec3<bool>(false, true, true), -166f, vec2<u32>(49005u, 4294967295u), 2192f), Struct_3(vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, true), -834f, vec2<u32>(28289u, 32605u), 928f), Struct_3(vec2<i32>(1i, 0i), vec3<bool>(false, true, false), -1000f, vec2<u32>(1u, 4294967295u), -897f), Struct_3(vec2<i32>(i32(-2147483648), 19719i), vec3<bool>(true, false, false), -389f, vec2<u32>(1u, 44748u), -215f), Struct_3(vec2<i32>(2147483647i, 35704i), vec3<bool>(false, false, false), -1499f, vec2<u32>(4294967295u, 2570u), -115f), Struct_3(vec2<i32>(8588i, -1i), vec3<bool>(true, true, false), -180f, vec2<u32>(1u, 1u), -123f), Struct_3(vec2<i32>(-11112i, -1i), vec3<bool>(true, false, false), 1227f, vec2<u32>(4294967295u, 101u), -1000f), Struct_3(vec2<i32>(1i, 450i), vec3<bool>(true, true, false), 844f, vec2<u32>(5301u, 12250u), -1000f), Struct_3(vec2<i32>(-10400i, 0i), vec3<bool>(false, true, true), 1150f, vec2<u32>(4294967295u, 1u), 1011f), Struct_3(vec2<i32>(1i, 0i), vec3<bool>(true, false, true), -668f, vec2<u32>(15704u, 81117u), -1260f), Struct_3(vec2<i32>(1i, -17678i), vec3<bool>(false, false, true), 589f, vec2<u32>(4294967295u, 4821u), -104f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> bool {
    var var_0 = -arg_1;
    var_0 = countOneBits(select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, u_input.c, 2147483647i), _wgslsmith_clamp_vec3_i32(arg_1, arg_1, arg_1))), select(_wgslsmith_clamp_vec3_i32(-arg_1, -arg_1, vec3<i32>(-1108i, 8119i, 2147483647i)), vec3<i32>(arg_1.x, u_input.b.x, arg_1.x | -32972i), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), true));
    let var_1 = ~select(_wgslsmith_div_vec2_u32(max(select(vec2<u32>(86938u, 1u), vec2<u32>(64944u, 1u), vec2<bool>(true, false)), firstLeadingBit(vec2<u32>(4294967295u, 1u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(77131u, 4294967295u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(6605u, 1u), vec2<u32>(1u, 1u))), vec2<u32>(4294967295u, 1u), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(any(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(39199u, 11u)] < arg_0.x), false));
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    return !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 266f))) + vec3<f32>(-1514f, 429f, arg_1.e)), vec3<f32>(arg_1.c, global0[_wgslsmith_index_u32(arg_1.d.x, 11u)], arg_1.c), !select(vec3<bool>(arg_1.b.x, !arg_1.b.x, select(false, arg_1.b.x, true)), arg_1.b, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(24883u, 11u)], arg_1.c, global0[_wgslsmith_index_u32(1u, 11u)])), ~vec3<i32>(-1i, u_input.a.x, arg_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(round(var_0.x))));
    let var_2 = global1[_wgslsmith_index_u32(arg_1.d.x, 30u)];
    let var_3 = ~min(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<u32>(36567u, 4294967295u, arg_1.d.x, arg_1.d.x)), firstTrailingBit(vec4<u32>(arg_1.d.x, 1u, arg_1.d.x, var_2.d.x))), vec4<u32>(~firstLeadingBit(arg_1.d.x), ~(~1u), _wgslsmith_sub_u32(arg_1.d.x, 4294967295u), 0u));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -422f), var_0.x, var_0.x, global0[_wgslsmith_index_u32(~(~reverseBits(arg_1.d.x)), 11u)]);
    return 1f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1010f, _wgslsmith_f_op_f32(-var_2.c)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(true, arg_0.x, true), func_2(vec3<i32>(23537i, u_input.a.x, arg_2.a), global1[_wgslsmith_index_u32(45959u, 30u)])), vec3<bool>(arg_0.x | arg_0.x, true, true), arg_0.x));
    let var_1 = select(select(!vec3<bool>(arg_0.x == var_0.x, func_3(vec3<f32>(global0[_wgslsmith_index_u32(84117u, 11u)], arg_1, arg_1), vec3<i32>(-2147483647i, u_input.c, arg_2.a)), true), select(select(select(vec3<bool>(var_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, true), false), select(vec3<bool>(true, var_0.x, true), vec3<bool>(arg_0.x, true, var_0.x), true), !vec3<bool>(false, false, var_0.x)), vec3<bool>(arg_0.x || arg_0.x, true, true), select(!vec3<bool>(arg_0.x, arg_0.x, false), !vec3<bool>(arg_0.x, true, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), arg_0.x))), vec3<bool>(true, !var_0.x, false)), select(!vec3<bool>(any(vec2<bool>(var_0.x, arg_0.x)), true, true), !(!(!vec3<bool>(false, false, arg_0.x))), !vec3<bool>(false, arg_0.x | true, true)), !vec3<bool>(all(!vec3<bool>(false, var_0.x, false)), true, !select(arg_0.x, true, arg_0.x)));
    var_0 = select(select(var_1, !var_1, var_1.x), select(var_1, !select(select(vec3<bool>(false, var_0.x, var_1.x), vec3<bool>(var_0.x, arg_0.x, var_1.x), var_1), !vec3<bool>(arg_0.x, false, false), var_1), var_0.x), vec3<bool>(false, false, true));
    let var_2 = reverseBits(~_wgslsmith_clamp_i32(abs(-5679i), u_input.d, ~arg_2.a) << (50201u % 32u));
    return Struct_2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~1u), 11u)])), vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 22086u), vec3<u32>(22397u, 87653u, 0u)), ~0u), reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 37311u, 11472u, 15732u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(0u, 51299u, 0u, 1u)), ~vec4<u32>(0u, 25673u, 1u, 0u)))), Struct_1(reverseBits(1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, -336f, -1000f, 1467f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1535f, global0[_wgslsmith_index_u32(42902u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(14056u, 11u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, 1889f, -1334f, global0[_wgslsmith_index_u32(0u, 11u)])) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-564f, 271f, arg_1, global0[_wgslsmith_index_u32(1u, 11u)]) + vec4<f32>(100f, -845f, arg_1, global0[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 985f, arg_1, 2280f) * vec4<f32>(-1482f, global0[_wgslsmith_index_u32(11455u, 11u)], arg_1, arg_1)))), !vec4<bool>(all(var_1), !arg_0.x, var_0.x, var_1.x))), arg_2);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    global0 = array<f32, 11>();
    var var_0 = !(!all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)));
    let var_1 = vec2<bool>(true, true);
    var var_2 = ~vec3<i32>(-u_input.a.x, arg_0.c.a, reverseBits(0i));
    var var_3 = firstTrailingBit(vec4<i32>(~firstLeadingBit(_wgslsmith_add_i32(arg_0.e.a, -2147483647i)), 2147483647i, var_2.x, arg_1.x));
    return 1012f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(firstLeadingBit(7740u) >> (select(21537u, 0u, false) % 32u), 11u)], _wgslsmith_f_op_f32(func_4(func_1(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(u_input.c)), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b))))) - func_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), -864f, func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(1u, 11u)], func_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(7429u, 11u)], Struct_1(u_input.c)).e).e).a), select(_wgslsmith_div_vec2_u32(~(~vec2<u32>(38059u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(52913u, 12672u), select(vec2<u32>(25549u, 1u), vec2<u32>(41931u, 98355u), vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 12145u), vec2<u32>(1u, 48501u)))), vec2<u32>(reverseBits(0u) << (1u % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53670u, 5836u), vec2<u32>(81555u, 0u)), firstLeadingBit(36138u))), true), Struct_1(-u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -1226f, global0[_wgslsmith_index_u32(0u, 11u)], 1293f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(4994u, 11u)], 508f, 449f)) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], -226f, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(53993u, 11u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(498u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 216f), vec4<f32>(-993f, global0[_wgslsmith_index_u32(38486u, 11u)], 694f, 1589f))))), func_1(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-277f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -711f), global0[_wgslsmith_index_u32(~1u, 11u)]))), func_1(vec2<bool>(true, func_2(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x), Struct_3(u_input.b, vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(17519u, 11u)], vec2<u32>(1u, 4294967295u), -432f))), -281f, func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 11u)], func_1(vec2<bool>(true, true), 279f, Struct_1(-16962i)).c).c).c).e);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.x, 11u)] + var_0.a), _wgslsmith_f_op_f32(1117f - var_0.a))) - 1220f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.d.yz, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-401f, 214f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.xz + vec2<f32>(2320f, -1000f))), vec2<f32>(-700f, 190f)))));
    global0 = array<f32, 11>();
    var var_2 = func_1(vec2<bool>(~(~var_0.b.x) >= var_0.b.x, false & !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-405f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(-887f, vec2<u32>(4294967295u, var_0.b.x), var_0.c, var_0.d, Struct_1(1i)), vec2<i32>(6719i, var_0.e.a)))), 2305f))), var_0.c).e;
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(14727u, 11u)]), _wgslsmith_f_op_f32(-var_0.a))))));
}

