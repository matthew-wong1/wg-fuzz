struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(22866u, false, Struct_2(vec4<u32>(0u, 0u, 1u, 49264u), -1i)), Struct_4(70093u, true, Struct_2(vec4<u32>(0u, 0u, 22977u, 91894u), i32(-2147483648))), Struct_4(1u, true, Struct_2(vec4<u32>(0u, 53947u, 4294967295u, 1u), 0i)), Struct_4(52096u, true, Struct_2(vec4<u32>(51190u, 38538u, 4294967295u, 80070u), 22002i)), Struct_4(4294967295u, false, Struct_2(vec4<u32>(4294967295u, 4294967295u, 20196u, 4294967295u), 2147483647i)), Struct_4(0u, true, Struct_2(vec4<u32>(1u, 7439u, 55457u, 5941u), -28444i)), Struct_4(0u, false, Struct_2(vec4<u32>(53224u, 39646u, 85773u, 29650u), 0i)), Struct_4(0u, true, Struct_2(vec4<u32>(4294967295u, 4294967295u, 22055u, 58299u), 1i)), Struct_4(4294967295u, false, Struct_2(vec4<u32>(1u, 57607u, 29571u, 46961u), 0i)), Struct_4(7423u, false, Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 27508u), 1i)));

var<private> global1: i32 = -16939i;

var<private> global2: array<vec2<i32>, 16>;

var<private> global3: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));

var<private> global4: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return _wgslsmith_div_u32(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(9383u, 1u, 4294967295u, u_input.a)), firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, u_input.a, 121495u))), select(~arg_0.x, ~(~u_input.a), true)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: bool) -> i32 {
    global4 = true;
    global4 = !any(!(!vec2<bool>(true, arg_3)));
    var var_0 = Struct_5(Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(71321u, 4294967295u, u_input.a), vec3<u32>(1u, 4294967295u, u_input.a)), vec3<u32>(8512u, u_input.a, 66527u) >> (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u))), func_3(vec3<u32>(u_input.a, 39839u, u_input.a)) ^ reverseBits(u_input.a), 1u, u_input.a), ~2147483647i), Struct_3(Struct_2(vec4<u32>(16047u, u_input.a << (13713u % 32u), u_input.a, ~4294967295u), arg_0.x), arg_1, vec4<f32>(-389f, arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1))), Struct_4(1u, arg_3, Struct_2(~vec4<u32>(u_input.a, u_input.a, 0u, 0u), ~2147483647i)), arg_1, Struct_2(abs(vec4<u32>(~11113u, u_input.a, _wgslsmith_sub_u32(94769u, u_input.a), u_input.a)), 0i));
    let var_1 = (vec3<i32>(1i, 0i, 25268i) | abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-22990i, 1101i, var_0.c.c.b) << (vec3<u32>(38143u, u_input.a, 45727u) % vec3<u32>(32u)), vec3<i32>(arg_0.x, -1801i, 2147483647i)))) | vec3<i32>(-(_wgslsmith_div_i32(-1i, 13144i) << (var_0.c.a % 32u)), countOneBits(select(-1i, 1i, false)), max(16748i, -1i));
    let var_2 = var_0.c;
    return ~(~(~countOneBits(0i)));
}

fn func_1() -> Struct_2 {
    global4 = false;
    let var_0 = max(2147483647i, select(27632i, func_2(vec3<i32>(1i, 1i, 1i), 176f, u_input.a < 7035u, any(vec3<bool>(false, false, false))), true) << (_wgslsmith_mult_u32(select(~11536u, ~u_input.a, all(vec4<bool>(false, true, true, false))), 4294967295u << (u_input.a % 32u)) % 32u));
    let var_1 = Struct_5(Struct_2(max(select(~vec4<u32>(u_input.a, 1u, 0u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(52285u, 97345u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 47209u, 1u)), global3[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)]), vec4<u32>(_wgslsmith_add_u32(34351u, u_input.a), 0u, u_input.a, 22339u)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0, -1i, 0i, var_0)), firstLeadingBit(countOneBits(vec4<i32>(var_0, var_0, -1i, var_0))))), Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(27536u, 0u, 1u, 68975u), ~vec4<u32>(u_input.a, 81343u, 35447u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(48745u, 0u, 80767u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), _wgslsmith_sub_i32(var_0, -2870i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-459f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 1239f))), 1f, 981f, _wgslsmith_f_op_f32(trunc(430f)))), Struct_4(1u, false, Struct_2(reverseBits(vec4<u32>(19175u, u_input.a, u_input.a, 14164u)), ~var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1235f + -199f) * _wgslsmith_f_op_f32(f32(-1f) * -836f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1469f, -868f, true)) - _wgslsmith_f_op_f32(1785f - -930f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f + 747f)) * _wgslsmith_f_op_f32(f32(-1f) * -534f)))), Struct_2(~(~vec4<u32>(15452u, 0u, 18677u, 51189u) | ~vec4<u32>(u_input.a, 2773u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_0, var_0, var_0)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, 1i, var_0))), ~vec3<i32>(-7659i, 0i, 1i))));
    global4 = all(vec3<bool>(select(true, var_1.c.b, any(!vec2<bool>(var_1.c.b, true))), false, any(!(!vec2<bool>(var_1.c.b, var_1.c.b)))));
    let var_2 = vec4<bool>(false, var_1.c.b, all(vec3<bool>(any(vec2<bool>(var_1.c.b, var_1.c.b)), var_1.c.b, var_1.c.b)), select(all(select(vec2<bool>(var_1.c.b, false), select(vec2<bool>(true, true), vec2<bool>(var_1.c.b, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, var_1.c.b), true))), 25890u >= ~var_1.a.a.x, !var_1.c.b));
    return Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(19848u, max(_wgslsmith_sub_u32(21423u, 0u), u_input.a << (u_input.a % 32u)), var_1.a.a.x, 4294967295u), max(~reverseBits(vec4<u32>(0u, 0u, 585u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.a.a.x, u_input.a), vec3<u32>(54814u, u_input.a, 1u)), firstLeadingBit(u_input.a), 4294967295u, var_1.b.a.a.x))), ~(-1i) ^ reverseBits(var_0));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> vec3<u32> {
    global3 = array<vec4<bool>, 10>();
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(arg_0.c.x >= -556f, min(6325u, arg_2) == (u_input.a | u_input.a)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    var_0 = select(!vec2<bool>(true, all(vec4<bool>(true, false, var_0.x, var_0.x))), !vec2<bool>(any(vec4<bool>(false, true, false, false)), var_0.x), true);
    global0 = array<Struct_4, 10>();
    let var_1 = Struct_5(arg_0.a, arg_0, global0[_wgslsmith_index_u32(abs(arg_2), 10u)], 1287f, arg_0.a);
    return abs(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.a)) | (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.c.a.x, 7046u, var_1.e.a.x), arg_0.a.a.xwz) | arg_0.a.a.yxw), ~var_1.b.a.a.www));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec3_u32(func_4(Struct_3(func_1(), _wgslsmith_f_op_f32(sign(439f)), vec4<f32>(581f, 1514f, -1000f, 516f)), _wgslsmith_div_vec3_i32(vec3<i32>(26069i, -2147483647i, -68592i), abs(vec3<i32>(12414i, -73317i, -38463i))), abs(func_3(vec3<u32>(u_input.a, 16067u, u_input.a)))), vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 48442u, 3395u), max(vec4<u32>(1u, u_input.a, 21516u, 46228u), vec4<u32>(u_input.a, 31863u, 56481u, 41147u))), u_input.a >> (func_3(vec3<u32>(u_input.a, u_input.a, 17544u)) % 32u)));
    let var_1 = Struct_5(Struct_2(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, var_0.x, u_input.a, 36051u), ~vec4<u32>(var_0.x, 1554u, 0u, 22534u)), -reverseBits(-34531i)), Struct_3(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * -684f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(max(-854f, 914f)), _wgslsmith_f_op_f32(-1000f * -713f), _wgslsmith_f_op_f32(sign(-2825f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1579f, 455f, 2127f, -712f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(906f, -361f, 252f, 506f)))))), global0[_wgslsmith_index_u32(~15799u, 10u)], 234f, Struct_2(vec4<u32>(min(abs(21637u), u_input.a << (0u % 32u)), _wgslsmith_mod_u32(700u, 10487u), ~_wgslsmith_clamp_u32(u_input.a, 33075u, var_0.x), u_input.a & var_0.x), abs(i32(-1i) * -19849i)));
    let var_2 = -var_1.e.b;
    global0 = array<Struct_4, 10>();
    let var_3 = !vec3<bool>(true, !(~4294967295u <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, var_1.b.a.a.x), var_1.a.a.yzx)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.b, vec4<i32>(_wgslsmith_mod_i32(var_2, firstTrailingBit(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(11353u, 16u)], vec2<i32>(var_1.c.c.b, 621i)))), -var_1.c.c.b, -1i, 17819i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)), var_0.x);
}

