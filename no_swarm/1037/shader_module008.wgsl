struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(i32(-2147483648), -1i, 0i, i32(-2147483648)), vec4<i32>(-1i, 59953i, 54430i, 7535i), vec4<i32>(i32(-2147483648), 8459i, -6852i, -31418i), vec4<i32>(-5594i, i32(-2147483648), -23003i, -28565i), vec4<i32>(24817i, 1i, -67697i, 1i), vec4<i32>(-17639i, 0i, -51289i, -7066i), vec4<i32>(-53882i, 1i, i32(-2147483648), 27114i), vec4<i32>(-57744i, -12928i, 2147483647i, 0i), vec4<i32>(8006i, -4420i, -1477i, 25602i), vec4<i32>(-8745i, i32(-2147483648), 0i, 69935i), vec4<i32>(1i, -1i, 2147483647i, -54700i), vec4<i32>(0i, -4603i, -48394i, -12935i), vec4<i32>(30646i, 26510i, 0i, i32(-2147483648)), vec4<i32>(21770i, -40685i, -8697i, 11769i), vec4<i32>(i32(-2147483648), 0i, 0i, -54281i), vec4<i32>(54483i, 17882i, 33668i, 0i), vec4<i32>(i32(-2147483648), -1i, -14867i, 0i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -21130i), vec4<i32>(18872i, -6705i, -40001i, 42189i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -3554i), vec4<i32>(-1i, 4980i, -8228i, -1i), vec4<i32>(9036i, -1i, i32(-2147483648), 13855i), vec4<i32>(-26958i, -18700i, -3256i, -36348i), vec4<i32>(-36815i, -1i, 0i, i32(-2147483648)), vec4<i32>(-20989i, -29894i, -13301i, -15830i), vec4<i32>(-30219i, 2147483647i, 13751i, i32(-2147483648)), vec4<i32>(-29129i, -15703i, 0i, -51183i), vec4<i32>(-7745i, 27380i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 6866i, -1i, -1i), vec4<i32>(-1i, -43163i, 2147483647i, 9234i), vec4<i32>(10718i, 1i, 73993i, 1i), vec4<i32>(63844i, 2147483647i, -1i, -1i));

var<private> global2: array<u32, 24> = array<u32, 24>(1u, 70413u, 27968u, 65075u, 0u, 1u, 1u, 26745u, 4294967295u, 4294967295u, 1u, 8798u, 1u, 4294967295u, 19351u, 34280u, 4294967295u, 6421u, 57736u, 4294967295u, 82454u, 0u, 4294967295u, 1u);

var<private> global3: vec3<i32> = vec3<i32>(-29149i, -12267i, -34787i);

var<private> global4: array<vec2<i32>, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = reverseBits(~vec4<u32>(0u & ~global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(34157u, 17690u, arg_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 24u)], 24u)], 24u)]), ~vec4<u32>(21019u, 27311u, arg_1.x, 1u)), 24u)], abs(0u), 4294967295u));
    global0 = global3.x;
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 32u)];
    var_0 = firstLeadingBit(vec4<u32>(~4294967295u, min(~1u, var_0.x), 28100u, 1u));
    var var_2 = true & !all(vec4<bool>(true, true, true, true));
    return vec2<bool>((~(global2[_wgslsmith_index_u32(57400u, 24u)] & 18313u) ^ 83030u) <= (_wgslsmith_dot_vec4_u32(vec4<u32>(22901u, 55693u, u_input.a.x, global2[_wgslsmith_index_u32(0u, 24u)]), reverseBits(vec4<u32>(var_0.x, 0u, global2[_wgslsmith_index_u32(var_0.x, 24u)], 9239u))) >> (min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), var_0.wz), arg_1.x) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1112f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1222f, 345f)), true)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(954f)) + -395f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    global3 = vec3<i32>(u_input.c, 1i, -_wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0.b.x, var_0.b.x, 2147483647i) >> (vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(var_0.d, 24u)], 1u) % vec3<u32>(32u))), ~(~vec3<i32>(arg_0.x, 15480i, var_0.b.x))));
    var var_1 = Struct_1(func_3((max(global4[_wgslsmith_index_u32(u_input.b, 1u)], vec2<i32>(var_0.b.x, var_0.b.x)) & -vec2<i32>(var_0.b.x, var_0.b.x)) & min(vec2<i32>(2147483647i, 2147483647i), -global3.xy), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(30663u, max(52557u, u_input.b)), 0u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~countOneBits(var_0.d), 113730u << ((var_0.d | var_0.d) % 32u)), ~(~countOneBits(0u))), 32u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(var_0.c.x, var_0.e)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-446f, -618f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(315f, -2419f) * var_0.c) + var_0.c)) + var_0.c), ~arg_1.d, _wgslsmith_f_op_f32(ceil(arg_1.c.x)));
    var var_2 = abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d, 4294967295u, arg_1.d, arg_1.d) << (vec4<u32>(26825u, 1u, var_0.d, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.b, 58659u, 9021u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.d, 4294967295u, 803u), ~vec4<u32>(arg_1.d, global2[_wgslsmith_index_u32(73002u, 24u)], 23974u, arg_1.d))));
    var_1 = arg_1;
    return ~var_1.b.yxw;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.x, -2147483647i), global3.x), arg_1.b.x, arg_0.b.x, ~(-global3.x) | (i32(-1i) * -arg_0.b.x)), arg_1.c, global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~arg_0.d, _wgslsmith_mult_u32(arg_1.d, 0u))), 24u)], arg_1.c.x);
    global3 = _wgslsmith_mult_vec3_i32(arg_0.b.wwz, select(select(arg_1.b.zzy, _wgslsmith_mod_vec3_i32(func_2(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0), ~var_0.b.wzy), select(!vec3<bool>(arg_0.a.x, false, false), select(vec3<bool>(var_0.a.x, arg_0.a.x, false), vec3<bool>(arg_0.a.x, false, false), arg_0.a.x), !arg_0.a.x)), ~(var_0.b.xxy << ((u_input.a >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), arg_1.a.x));
    global0 = i32(-1i) * -reverseBits(0i);
    var var_1 = false;
    let var_2 = ~vec4<i32>(_wgslsmith_mod_i32(-31276i, ~_wgslsmith_dot_vec3_i32(var_0.b.zzy, vec3<i32>(-24607i, arg_0.b.x, arg_0.b.x))), ~_wgslsmith_dot_vec2_i32(global3.xy, arg_1.b.yx) | _wgslsmith_mod_i32(firstTrailingBit(arg_1.b.x), -2147483647i), arg_1.b.x ^ -1i, 4646i);
    return arg_0.e;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    global4 = array<vec2<i32>, 1>();
    let var_0 = vec4<u32>(12396u, ~arg_3, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(1u, 24u)], 4294967295u)) ^ 40818u, arg_0.d);
    var var_1 = arg_0.a.x;
    var var_2 = u_input.b;
    global3 = func_2(vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(arg_0.b.x, -28208i, 7316i) & u_input.c), 0i), arg_2);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_4(Struct_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(~0u, 32u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-113f, 1293f), vec2<f32>(-708f, -1841f), true)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(15492u, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(35692u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19789u, 24u)], 24u)], 24u)], 24u)]), u_input.a.zz)), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(false, true), vec4<i32>(global3.x, u_input.c, u_input.c, u_input.c), vec2<f32>(-992f, -638f), 40125u, 516f), Struct_1(vec2<bool>(false, true), vec4<i32>(49389i, u_input.c, u_input.c, -16449i), vec2<f32>(-2047f, -763f), 6062u, 1000f)))), ~u_input.c, Struct_1(vec2<bool>(true, true), vec4<i32>(global3.x, _wgslsmith_clamp_i32(30037i, -2147483647i, global3.x), abs(-54100i), _wgslsmith_clamp_i32(u_input.c, u_input.c, global3.x)), _wgslsmith_div_vec2_f32(vec2<f32>(1595f, 147f), vec2<f32>(1f, 1f)), max(u_input.b, 102455u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(809f, 126f))))), ~global2[_wgslsmith_index_u32(93618u, 24u)]), -16213i);
    global2 = array<u32, 24>();
    global4 = array<vec2<i32>, 1>();
    global2 = array<u32, 24>();
    global2 = array<u32, 24>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-167f)), _wgslsmith_f_op_f32(max(-756f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1517f)) + _wgslsmith_f_op_f32(step(-154f, _wgslsmith_f_op_f32(-404f + -535f)))))), -564f);
    var var_2 = Struct_1(select(func_3(global3.xx, (vec3<u32>(global2[_wgslsmith_index_u32(53408u, 24u)], 15512u, 80026u) | vec3<u32>(4294967295u, 83747u, 4294967295u)) & u_input.a), !func_3(abs(vec2<i32>(u_input.c, 5812i)), max(u_input.a, u_input.a)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), firstTrailingBit(_wgslsmith_div_vec4_i32(min(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(23338u, 32u)]), global1[_wgslsmith_index_u32(abs(69197u), 32u)])) >> (_wgslsmith_mod_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.b, 1u), vec4<u32>(8280u, 4294967295u, u_input.a.x, 0u)), vec4<u32>(21898u, 2044u, 53596u, 4294967295u) & vec4<u32>(1u, 19532u, global2[_wgslsmith_index_u32(1u, 24u)], u_input.a.x), false), vec4<u32>(u_input.b, ~u_input.b, 1u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.zx), 16126u, _wgslsmith_f_op_f32(var_1.x * 656f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(109f)), _wgslsmith_f_op_f32(floor(948f)), func_3(vec2<i32>(var_2.b.x, 2147483647i), u_input.a).x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f * var_2.e)) + var_1.x)));
}

