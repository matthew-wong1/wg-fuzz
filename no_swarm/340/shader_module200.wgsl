struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(32609i, 9241i, 27409i, 11877i, 1i, -33892i, 23117i, 2147483647i, i32(-2147483648), i32(-2147483648), -3572i, -22974i, 4327i, 2346i, -30008i, -29192i);

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    var var_0 = -u_input.a.x;
    let var_1 = 16479i | global0[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_2 = -1679f;
    return abs(vec4<u32>(1u, ~6704u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6027u, 67444u, 43273u), vec4<u32>(4294967295u, 0u, 1u, 44436u))), 71837u) >> (~(~firstTrailingBit(vec4<u32>(0u, 1u, 5033u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global0 = array<i32, 16>();
    let var_0 = vec4<u32>(~4294967295u, ~_wgslsmith_mod_u32(1u, abs(18770u)), _wgslsmith_mult_u32(reverseBits(53156u), _wgslsmith_sub_u32(1u, min(15820u, 0u))), 4294967295u) >> (_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), func_3() & ~firstLeadingBit(vec4<u32>(0u, 53252u, 0u, 0u)), ~vec4<u32>(abs(12963u), min(0u, 4294967295u), 4294967295u, 1u)) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(arg_1, 26477i, 4056i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -448i, arg_1), select(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 6154i, 24684i), false)), ~u_input.a.x, -1i)), !(select(_wgslsmith_dot_vec3_i32(vec3<i32>(3880i, arg_0.a, u_input.a.x), vec3<i32>(15589i, arg_0.a, 1i)), -28280i, select(false, true, false)) == firstTrailingBit(0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2818f))) + 947f) <= 1f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(731f, 624f) + vec2<f32>(651f, -748f)) - vec2<f32>(1000f, -397f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1584f, var_0.x, 489f, 1416f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, var_0.x, 1082f, 1402f))))), vec4<f32>(_wgslsmith_f_op_f32(min(-164f, _wgslsmith_f_op_f32(-2056f * var_0.x))), -824f, _wgslsmith_f_op_f32(-1781f - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_3))), 882f), true)));
    global1 = array<vec3<bool>, 18>();
    let var_2 = Struct_2(vec3<i32>(countOneBits(14720i), -27011i, -global0[_wgslsmith_index_u32(0u, 16u)]) << (~(~(~vec3<u32>(4294967295u, 4294967295u, 49337u))) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(~0u, 5u)], func_2(global2[_wgslsmith_index_u32(1u, 5u)], 1i, true));
    global2 = array<Struct_1, 5>();
    return Struct_1(~(~var_2.a.x), true, true);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<i32, 16>();
    global1 = array<vec3<bool>, 18>();
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(57835u, 16u)], -18741i), vec2<i32>(-2147483647i, u_input.a.x)), ~(-u_input.a.yz)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(58004u, 831u), ~vec2<u32>(7714u, 44650u))), 16u)]), !(!arg_2.b.c), !any(vec4<bool>(any(arg_1.xx), true, arg_0.b, all(vec3<bool>(arg_0.c, true, arg_0.c)))));
    var var_1 = 2147483647i;
    var var_2 = Struct_2(min(reverseBits(min(abs(vec3<i32>(arg_2.a.x, u_input.a.x, 0i)), ~vec3<i32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.a.x, arg_0.a))), countOneBits(arg_2.a)), arg_2.b, func_4(arg_0, Struct_1(-_wgslsmith_div_i32(-17618i, global0[_wgslsmith_index_u32(4294967295u, 16u)]), any(!global1[_wgslsmith_index_u32(127170u, 18u)]), !func_4(arg_0, arg_0, 2147483647i, arg_2.c.c).b), ~func_4(func_4(global2[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(u_input.a.x, arg_2.c.c, false), 0i, false), func_4(global2[_wgslsmith_index_u32(6215u, 5u)], arg_0, 2147483647i, arg_0.c), -2147483647i, any(arg_1.zx)).a, true));
    return Struct_1(~var_0.a, any(!global1[_wgslsmith_index_u32(~firstLeadingBit(27399u), 18u)]), true);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = any(select(vec3<bool>(true, true, 29236i >= abs(u_input.a.x)), global1[_wgslsmith_index_u32(1u << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(112330u, 2968u, 0u), vec3<u32>(1u, 4294967295u, 56783u), vec3<u32>(66061u, 4294967295u, 41299u)), ~vec3<u32>(0u, 1u, 1u)) % 32u), 18u)], select(!vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(true, true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -506f))), -268f, arg_1.c))));
    global1 = array<vec3<bool>, 18>();
    var_0 = arg_1.c;
    let var_2 = 10165u | _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(26270u, 14085u), 122585u, reverseBits(4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 0u, 24313u)), vec4<u32>(firstTrailingBit(0u << (0u % 32u)), 1u, _wgslsmith_div_u32(abs(26888u), 1u), ~4294967295u));
    return vec2<i32>(max(-12537i, select(arg_0, abs(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(global0[_wgslsmith_index_u32(7704u, 16u)], u_input.a.x))), !(!arg_1.c))), -_wgslsmith_dot_vec3_i32(abs(u_input.a | vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_1.a, arg_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_1.a) ^ vec3<i32>(17963i, -15053i, global0[_wgslsmith_index_u32(var_2, 16u)]), u_input.a)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    global0 = array<i32, 16>();
    let var_0 = _wgslsmith_f_op_f32(-273f * -662f);
    global1 = array<vec3<bool>, 18>();
    var var_1 = ~func_6(-2147483647i, func_5(func_4(func_2(Struct_1(2147483647i, false, true), -40629i, false), func_2(Struct_1(-36781i, false, false), -25082i, false), _wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(14656u, 16u)]), true), vec3<bool>(any(global1[_wgslsmith_index_u32(10750u, 18u)]), true, true), Struct_2(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-9196i, global0[_wgslsmith_index_u32(0u, 16u)], -9173i)), func_2(Struct_1(u_input.a.x, true, true), u_input.a.x, true), global2[_wgslsmith_index_u32(31120u, 5u)])));
    return Struct_1(global0[_wgslsmith_index_u32(1u, 16u)], any(vec2<bool>(true, true)), (var_1.x == (-10147i ^ (-1i & var_1.x))) | !func_4(Struct_1(u_input.a.x, true, true), Struct_1(0i, false, false), -u_input.a.x, true).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<i32>(-1i) * -u_input.a, func_1(-122f), func_2(Struct_1(0i, true, any(!global1[_wgslsmith_index_u32(12319u, 18u)])), _wgslsmith_sub_i32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -127f)).a, 2147483647i), true));
    global2 = array<Struct_1, 5>();
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1225f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1242f)))) - _wgslsmith_f_op_f32(946f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(552f))))), global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f - 1326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1407f + -2823f)))));
}

