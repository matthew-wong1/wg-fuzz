struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: array<Struct_3, 1>;

var<private> global3: array<vec4<u32>, 7>;

var<private> global4: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 258f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1385f)), _wgslsmith_f_op_f32(step(891f, -331f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2660f, 304f, -485f))))), Struct_3(min(u_input.b, u_input.b | ~u_input.b), ~u_input.a.x >= 87045u, !any(vec3<bool>(true, true, true)), (u_input.a.x >> (~u_input.a.x % 32u)) >> (~abs(0u) % 32u)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -975f);
    let var_1 = Struct_2(abs(~global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 7u)]), var_0.b, u_input.b);
    let var_2 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 342i, 2147483647i, -7198i), _wgslsmith_clamp_vec4_i32(vec4<i32>(3372i, -9455i, 2147483647i, 2147483647i), vec4<i32>(6002i, 34686i, 3233i, 119165i), vec4<i32>(2147483647i, -17804i, -1i, 9809i))) >> (13505u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)));
    global3 = array<vec4<u32>, 7>();
    return vec2<bool>(var_0.c.c, false);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_4(~(~1u), !func_3(), abs(~vec4<i32>(1i, 1i, 1i, 1i)), global2[_wgslsmith_index_u32(~(~(~(~u_input.a.x))), 1u)]);
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(max(~u_input.b.x, ~u_input.b.x ^ 1u), 7u)], Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1119f + -1015f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f - 733f)))), vec3<f32>(-605f, _wgslsmith_f_op_f32(select(-1256f, _wgslsmith_f_op_f32(floor(760f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-889f)))))), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(13397u, ~var_0.d.a.x, _wgslsmith_add_u32(25496u, var_0.d.d), 1u), ~global3[_wgslsmith_index_u32(29914u, 7u)]), var_0.d.a.x));
    var var_2 = var_0.c.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.b.x))));
    var var_3 = all(!select(!vec3<bool>(true, arg_0, false), vec3<bool>(false, all(vec3<bool>(arg_0, arg_0, false)), any(var_0.b)), true));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.c.zyz, vec3<i32>(~var_0.c.x, ~2147483647i ^ var_0.c.x, 2147483647i)), reverseBits(firstLeadingBit(-var_0.c.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = !vec2<bool>(select(true, select(false, true, true), false), !all(vec2<bool>(true, true)));
    global0 = arg_1.b.x;
    var var_1 = _wgslsmith_div_u32(~arg_3.c.x, _wgslsmith_add_u32(~firstLeadingBit(38118u), (u_input.b.x << (arg_3.a.x % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2, arg_3.c.x), vec3<u32>(29186u, arg_2, 4294967295u)) % 32u)) & ~min(11152u, firstLeadingBit(arg_3.a.x)));
    global4 = !any(vec3<bool>(var_0.x & true, false, !var_0.x)) & !all(vec3<bool>(var_0.x, true, u_input.a.x == 0u));
    global2 = array<Struct_3, 1>();
    return Struct_5(_wgslsmith_f_op_vec2_f32(abs(arg_3.b.b.yy)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(arg_3.b.b.x + 822f)))), _wgslsmith_f_op_vec3_f32(sign(arg_3.b.b))), global2[_wgslsmith_index_u32(countOneBits(arg_3.c.x), 1u)]);
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_5 {
    global2 = array<Struct_3, 1>();
    global2 = array<Struct_3, 1>();
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-179f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f), 1f) - -238f))), arg_0.a.x));
    let var_0 = arg_0.a.x;
    var var_1 = arg_0.b;
    return func_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -3039i, 0i), vec4<i32>(0i, 73972i, 0i, 8396i)), func_2(arg_0.c.b)), -1i) << (arg_2.c.x % 32u), arg_2.b, abs(_wgslsmith_add_u32(u_input.a.x, arg_0.c.d)), arg_2);
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: u32) -> u32 {
    global3 = array<vec4<u32>, 7>();
    let var_0 = vec4<u32>(u_input.a.x, ~82549u, func_4(~(~firstLeadingBit(35600i)), arg_1.b, arg_2, Struct_2(global3[_wgslsmith_index_u32(~(~arg_1.c.d), 7u)], Struct_1(-1754f, _wgslsmith_f_op_vec3_f32(-arg_1.b.b)), u_input.b ^ arg_1.c.a)).c.a.x, func_1(func_4(27885i, arg_1.b, u_input.a.x << (abs(0u) % 32u), Struct_2(global3[_wgslsmith_index_u32(arg_1.c.a.x, 7u)], func_1(arg_1, arg_1.b.a, Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_1(arg_1.b.b.x, vec3<f32>(1000f, arg_1.b.b.x, arg_1.b.b.x)), vec3<u32>(4294967295u, 4294967295u, 49340u)), vec4<f32>(699f, arg_1.b.b.x, arg_1.b.a, -156f)).b, arg_1.c.a)), _wgslsmith_f_op_f32(exp2(arg_1.a.x)), Struct_2(vec4<u32>(1u, arg_0 | arg_2, arg_1.c.a.x << (12701u % 32u), ~arg_0), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_f_op_vec3_f32(-arg_1.b.b)), vec3<u32>(arg_0, arg_0 ^ arg_2, ~770u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(674f, -956f, true)), -2113f, _wgslsmith_f_op_f32(f32(-1f) * -417f), -1429f)))).c.a.x);
    var var_1 = Struct_4(func_4(-19773i, Struct_1(arg_1.b.b.x, vec3<f32>(-1313f, 637f, 538f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c.a.x, u_input.b.x, u_input.a.x, arg_0), ~vec4<u32>(u_input.a.x, 0u, arg_0, 0u)), Struct_2(global3[_wgslsmith_index_u32(~27640u, 7u)], Struct_1(-1308f, arg_1.b.b), var_0.yyw)).c.d ^ _wgslsmith_mult_u32(7028u, 1u), func_3(), vec4<i32>(-2147483647i, -1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 0i, 0i) ^ (-1i >> (arg_0 % 32u)), ~(-48361i)), reverseBits(-19024i)), func_1(Struct_5(_wgslsmith_f_op_vec2_f32(-arg_1.a), func_1(arg_1, arg_1.a.x, Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.b, vec3<u32>(0u, 1u, 66430u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, 563f, -382f, arg_1.b.b.x))).b, Struct_3(countOneBits(vec3<u32>(arg_2, 4294967295u, 1u)), select(true, arg_1.c.c, arg_1.c.c), true, ~arg_2)), arg_1.a.x, Struct_2(vec4<u32>(_wgslsmith_clamp_u32(arg_0, arg_1.c.d, arg_1.c.d), ~4294967295u, func_4(-2147483647i, arg_1.b, 36225u, Struct_2(global3[_wgslsmith_index_u32(16518u, 7u)], arg_1.b, u_input.b)).c.a.x, arg_0 ^ 1u), arg_1.b, ~u_input.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, arg_1.b.b.x, -818f, arg_1.b.a)))), vec4<f32>(_wgslsmith_div_f32(arg_1.a.x, -1420f), _wgslsmith_f_op_f32(exp2(arg_1.b.a)), -913f, -1549f), vec4<bool>(all(vec4<bool>(true, arg_1.c.c, true, false)), func_4(-1i, Struct_1(arg_1.a.x, arg_1.b.b), arg_1.c.a.x, Struct_2(var_0, arg_1.b, vec3<u32>(4294967295u, 4294967295u, 1u))).c.c, true, true)))).c);
    let var_2 = abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, var_0.x), ~u_input.b.zz), u_input.a, _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, arg_1.c.d), ~u_input.b.xy)) ^ ~select(_wgslsmith_mod_vec2_u32(var_1.d.a.zy, vec2<u32>(var_0.x, arg_1.c.a.x)), u_input.a >> (u_input.a % vec2<u32>(32u)), !arg_1.c.b));
    return ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(abs(firstTrailingBit(30355u)), func_5(_wgslsmith_mod_u32(0u, 1u), func_1(Struct_5(vec2<f32>(-291f, -1220f), Struct_1(576f, vec3<f32>(1097f, 299f, -1280f)), global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), -581f, Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], Struct_1(461f, vec3<f32>(-1635f, 979f, -154f)), u_input.b), vec4<f32>(-943f, 224f, 300f, 1204f)), ~20648u)) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u))), reverseBits(firstLeadingBit(u_input.b.xy))));
    let var_1 = Struct_4(countOneBits(var_0.x), select(!(!func_3()), select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)), true), -firstTrailingBit(vec4<i32>(select(1i, -2147483647i, false), -33755i, _wgslsmith_sub_i32(11903i, -1i), countOneBits(36509i))), func_1(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(step(-280f, 1000f)), _wgslsmith_f_op_f32(-675f + 1061f)), Struct_1(-916f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1151f, -1207f, -977f) - vec3<f32>(1245f, -1307f, 1633f))), Struct_3(u_input.b, true, true, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1150f), Struct_2(vec4<u32>(~4294967295u, countOneBits(var_0.x), ~0u, select(u_input.a.x, u_input.a.x, true)), func_1(Struct_5(vec2<f32>(166f, -1510f), Struct_1(-1000f, vec3<f32>(-472f, -181f, 288f)), Struct_3(u_input.b, false, true, 25173u)), 947f, Struct_2(vec4<u32>(38923u, var_0.x, u_input.b.x, 59459u), Struct_1(-903f, vec3<f32>(367f, -591f, -1000f)), u_input.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(783f, 323f, 1372f, -961f)))).b, ~firstTrailingBit(u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-421f)), 354f, _wgslsmith_f_op_f32(-114f - _wgslsmith_div_f32(1000f, 1571f)), 1000f)).c);
    var var_2 = func_1(func_1(func_4(_wgslsmith_sub_i32(1i, var_1.c.x), Struct_1(_wgslsmith_f_op_f32(495f + -700f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -569f, 211f) - vec3<f32>(-1127f, 247f, -961f))), firstTrailingBit(u_input.a.x), Struct_2(_wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(2396u, 7u)], vec4<u32>(var_0.x, u_input.b.x, var_0.x, var_1.d.a.x)), func_1(Struct_5(vec2<f32>(901f, -562f), Struct_1(-1000f, vec3<f32>(-930f, -1055f, 1537f)), Struct_3(vec3<u32>(72660u, 46738u, var_1.d.d), true, var_1.b.x, var_1.d.d)), -1803f, Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(-1673f, vec3<f32>(-590f, 606f, 367f)), u_input.b), vec4<f32>(1000f, -587f, 1393f, -233f)).b, abs(var_1.d.a))), -328f, Struct_2(~vec4<u32>(var_1.a, 2355u, 74094u, 0u), func_4(~var_1.c.x, Struct_1(-1986f, vec3<f32>(112f, -149f, -1166f)), reverseBits(u_input.a.x), Struct_2(global3[_wgslsmith_index_u32(1u, 7u)], Struct_1(-1000f, vec3<f32>(120f, 482f, 499f)), var_1.d.a)).b, select(vec3<u32>(54601u, 0u, 99360u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 41731u), u_input.b), !var_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(680f, 686f))), _wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(584f))), -492f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2725f, 1193f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-141f + 554f)) - _wgslsmith_f_op_f32(round(-910f)))), Struct_2(abs(vec4<u32>(0u ^ u_input.b.x, 45066u, 48050u, 61687u)), func_4(firstLeadingBit(abs(var_1.c.x)), Struct_1(-708f, vec3<f32>(-533f, 859f, 597f)), var_1.d.a.x, Struct_2(~vec4<u32>(var_1.a, u_input.b.x, 16369u, 28758u), func_4(var_1.c.x, Struct_1(-1000f, vec3<f32>(-273f, -701f, 337f)), var_1.a, Struct_2(vec4<u32>(11448u, 0u, u_input.a.x, var_1.a), Struct_1(-865f, vec3<f32>(1751f, -579f, -1157f)), vec3<u32>(45236u, 1u, 55095u))).b, u_input.b)).b, abs(vec3<u32>(4294967295u, ~u_input.a.x, ~var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1057f, 1000f, 1906f, 1187f) * vec4<f32>(-163f, 727f, -808f, -193f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1143f, 881f, 184f, -950f)), vec4<bool>(true, var_1.d.c, var_1.b.x, var_1.d.b))), reverseBits(0u) != reverseBits(var_1.d.d))))).c.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(625f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(758f, 2053f)))))), _wgslsmith_f_op_f32(trunc(-585f))));
    var_2 = (-var_1.c.x != -_wgslsmith_mod_i32(var_1.c.x, var_1.c.x)) & true;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(513f, -1318f))), _wgslsmith_f_op_f32(f32(-1f) * -577f))));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), 2155f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4))) - var_4));
}

