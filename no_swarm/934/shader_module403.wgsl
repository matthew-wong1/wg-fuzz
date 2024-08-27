struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(2147483647i, -1i, -1i, 8524i, -1i, -27839i, 2147483647i, 37205i, i32(-2147483648), -36876i, 2147483647i, -44025i, 1i, -1i, -27646i, -29738i, -15022i, 2147483647i, 0i, -8951i, 5318i, 0i, 22830i, 3581i, 2147483647i, 0i, i32(-2147483648), -3956i, 0i, 27576i, -1i);

var<private> global1: vec4<f32> = vec4<f32>(-1473f, 1142f, -1249f, -456f);

var<private> global2: array<i32, 27>;

var<private> global3: array<u32, 30> = array<u32, 30>(79307u, 44884u, 40228u, 4294967295u, 4294967295u, 21569u, 6157u, 0u, 4294967295u, 0u, 1u, 25758u, 4294967295u, 4294967295u, 14739u, 0u, 101816u, 0u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 2678u, 151638u, 66943u, 76856u, 58451u, 0u, 42221u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global2 = array<i32, 27>();
    let var_0 = arg_0;
    global1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(984f, global1.x)) - -778f)), _wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(-global1.x))), 1579f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(393f)) + global1.x), -613f), -279f);
    let var_1 = arg_1;
    let var_2 = abs(u_input.a << (arg_1.a % vec4<u32>(32u))) | abs(u_input.a);
    return -718f;
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(25140u, u_input.c, 8975u, 0u), vec4<u32>(u_input.c, u_input.d, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)])), ~vec4<u32>(u_input.d, global3[_wgslsmith_index_u32(31047u, 30u)], u_input.c, global3[_wgslsmith_index_u32(u_input.d, 30u)])), vec4<u32>(u_input.d, countOneBits(~1u), 1u, 2194u), ~vec4<u32>(0u << (global3[_wgslsmith_index_u32(89355u, 30u)] % 32u), ~u_input.c, global3[_wgslsmith_index_u32(countOneBits(u_input.c), 30u)], u_input.d)), 0u);
    var var_1 = Struct_1(max(~(~vec4<u32>(37998u, u_input.d, 1u, u_input.c) | (var_0.a ^ var_0.a)), select(~select(vec4<u32>(32335u, 4294967295u, 19227u, u_input.d), vec4<u32>(0u, 0u, 1u, global3[_wgslsmith_index_u32(u_input.c, 30u)]), false), ~vec4<u32>(var_0.a.x, var_0.a.x, var_0.b, 4294967295u), true)), 0u);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(func_3(0i, var_0));
    var var_4 = Struct_1(vec4<u32>(~(1u & ~global3[_wgslsmith_index_u32(0u, 30u)]), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(27631u, var_0.a.x), global3[_wgslsmith_index_u32(10665u, 30u)], global3[_wgslsmith_index_u32(30112u, 30u)]), ~u_input.c, _wgslsmith_mod_u32(~var_1.a.x, 1u & ~u_input.c)), ~var_0.b);
    return var_1.a;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_u32(0u, u_input.d, abs(firstTrailingBit(firstLeadingBit(global3[_wgslsmith_index_u32(10979u, 30u)]))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~func_2(u_input.b ^ vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 31u)], global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(10262u, 27u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global3[_wgslsmith_index_u32(u_input.d, 30u)], 105993u, global3[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<u32>(u_input.c, 0u, 0u)), abs(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(32475u, 30u)], u_input.d))), func_2(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)).x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(68121u, 8689u, 51328u, 0u), vec4<u32>(u_input.c, 60832u, 4294967295u, 1u)), global3[_wgslsmith_index_u32(u_input.d ^ 30775u, 30u)]), abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u, u_input.d, u_input.d) << (_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(127443u, 30u)], 30u)], u_input.d, 4294967295u, u_input.d), vec4<u32>(120512u, u_input.c, 34492u, 0u)) % vec4<u32>(32u)))), u_input.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-261f - 1000f), -971f, arg_0, _wgslsmith_f_op_f32(arg_0 * -780f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(572f, -327f, global1.x, global1.x) - vec4<f32>(500f, -3231f, 1188f, global1.x)) * vec4<f32>(-118f, -400f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 617f, -1084f, global1.x), vec4<f32>(357f, 414f, arg_0, 2025f)))))));
    var var_3 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.d, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-64210i, global2[_wgslsmith_index_u32(1u, 27u)], -39739i, global0[_wgslsmith_index_u32(61710u, 31u)])), abs(15439i))), u_input.a.zzw);
    return !vec4<bool>(!(!(u_input.a.x < global0[_wgslsmith_index_u32(var_1.a.x, 31u)])), true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false))), select(true, false, (66449u ^ global3[_wgslsmith_index_u32(u_input.d, 30u)]) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 49887u, 83390u), var_1.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = -arg_0;
    global0 = array<i32, 31>();
    var var_1 = select(select(arg_1, select(arg_1, arg_1, select(arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), func_1(global1.x))), select(select(vec4<bool>(arg_1.x, arg_1.x, true, false), arg_1, select(arg_1, arg_1, arg_1.x)), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, true, false, arg_1.x), arg_1), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1, select(vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x), false)))), vec4<bool>(arg_1.x, !(_wgslsmith_dot_vec3_u32(vec3<u32>(69074u, global3[_wgslsmith_index_u32(4294967295u, 30u)], u_input.c), vec3<u32>(u_input.c, 0u, 16821u)) < firstLeadingBit(26912u)), arg_1.x, all(vec4<bool>(arg_1.x, true, global3[_wgslsmith_index_u32(2352u, 30u)] == u_input.c, true))), arg_1);
    let var_2 = ~(firstTrailingBit(select(vec4<u32>(46583u, 0u, u_input.c, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(32211u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2307u, 30u)], 30u)], global3[_wgslsmith_index_u32(39782u, 30u)]), vec4<u32>(11067u, 0u, u_input.c, 45300u)), true)) ^ firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(14976u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u), reverseBits(vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(10370u, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], u_input.c)))));
    var var_3 = Struct_1(var_2, var_2.x);
    return var_3.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = !(!arg_0.wzw);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f))));
    global0 = array<i32, 31>();
    var var_2 = u_input.a.x >= u_input.a.x;
    let var_3 = arg_0.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(true, true, true, true), Struct_1(func_4(~u_input.b.yx, select(vec4<bool>(true, false, false, false), func_1(1071f), all(vec3<bool>(false, true, false)))), ~global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 30u)], 30u)], 30u)] >> (u_input.d % 32u)), 30u)]), ~(~(~vec2<u32>(global3[_wgslsmith_index_u32(0u, 30u)], 51637u))) ^ _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(1u, 0u), vec2<u32>(u_input.d, u_input.c)), ~(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], 4294967295u))));
    var var_1 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(false, -1i <= u_input.b.x, any(vec4<bool>(true, false, true, false)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.zw + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 582f))))))) + global1.zz);
    let var_3 = any(select(!select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.x, true), !var_1.x), func_1(-1730f).yzy, !(!vec3<bool>(false, true, var_1.x))));
    var_0 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c & 10407u, global3[_wgslsmith_index_u32(min(11469u, 1u), 30u)], func_4(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 2147483647i), vec4<bool>(false, true, var_1.x, false)).x, func_4(vec2<i32>(-22113i, u_input.a.x), vec4<bool>(false, true, var_3, true)).x), ~vec4<u32>(var_0.a.x, u_input.c, u_input.d, 43799u)), select(var_0.a, vec4<u32>(global3[_wgslsmith_index_u32(~0u, 30u)], 1u, reverseBits(42590u), var_0.b), !all(vec2<bool>(var_3, true)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b, _wgslsmith_dot_vec3_u32(var_0.a.xyy, vec3<u32>(global3[_wgslsmith_index_u32(38447u, 30u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 30u)], 30u)]))), 30u)], 39270u), ~u_input.d & u_input.d));
    let var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i, -15135i, ~select(u_input.b.x, 0i, var_1.x), -2147483647i), -u_input.b.x >> (min(1u, _wgslsmith_sub_u32(u_input.d, ~47995u)) % 32u), func_2(~_wgslsmith_sub_vec4_i32(-vec4<i32>(5284i, u_input.b.x, global2[_wgslsmith_index_u32(var_0.a.x, 27u)], u_input.b.x), ~vec4<i32>(-38395i, 54785i, -1i, u_input.b.x))).zw, _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] << (firstLeadingBit(1u) % 32u), 30u)], var_0.b), u_input.a.wx);
}

