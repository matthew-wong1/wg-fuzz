struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(847f, 1000f, 1000f, 1000f, -1415f);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0i), Struct_1(2147483647i), Struct_1(41720i), Struct_1(20179i), Struct_1(-7882i), Struct_1(25479i), Struct_1(2147483647i), Struct_1(1i), Struct_1(9358i), Struct_1(1i), Struct_1(9142i), Struct_1(-1i), Struct_1(-18500i), Struct_1(34383i), Struct_1(27507i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = Struct_1(min(1i, i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, arg_1, 1501i))));
    let var_1 = ~(~(~(select(vec2<u32>(16183u, 82594u), vec2<u32>(1u, 86517u), vec2<bool>(true, arg_2)) & ~vec2<u32>(1u, 1u))));
    global0 = array<f32, 5>();
    return select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(abs(u_input.b.zz)), _wgslsmith_mult_vec2_i32(u_input.b.zz ^ vec2<i32>(-9044i, -2414i), u_input.b.zz)), select(vec2<i32>(u_input.b.x, u_input.c.x) << (~var_1 % vec2<u32>(32u)), reverseBits(-u_input.a.yy), vec2<bool>(!arg_2, all(vec2<bool>(arg_2, arg_2))))), abs(arg_1), ~var_1.x <= _wgslsmith_add_u32(4294967295u, ~var_1.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 30245u), ~0u, 1u) ^ ~9338u, ~1u, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)))), 15u)], firstTrailingBit(1i & func_3(vec3<f32>(527f, global0[_wgslsmith_index_u32(21392u, 5u)], 294f), -14784i, true)));
    global1 = array<Struct_1, 15>();
    let var_1 = 28138u;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(35062u, 15435u, 26789u, var_1), vec4<u32>(25966u, 4294967295u, var_1, 66123u), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_1, var_1, 1u), vec4<u32>(var_1, var_1, 23779u, 43521u)), vec4<u32>(71226u, 20127u, var_1, var_1) & vec4<u32>(var_1, 36387u, var_1, 75700u)), ~(abs(vec4<u32>(var_1, var_1, 1u, 1093u)) & (vec4<u32>(var_1, var_1, var_1, 23236u) >> (vec4<u32>(var_1, 83351u, var_1, var_1) % vec4<u32>(32u))))), 31897u);
    global1 = array<Struct_1, 15>();
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_i32(-u_input.c.x, 24054i));
    let var_1 = true | arg_2.x;
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_2 = u_input.e;
    return Struct_2(Struct_1(max(var_0.a | arg_0.d.a, _wgslsmith_mult_i32(arg_0.e.a >> (arg_1.a.x % 32u), select(var_0.a, 31004i, var_1)))), -u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_2 {
    return func_4(Struct_3(Struct_1(countOneBits(~u_input.b.x)), vec4<i32>(arg_2.x, arg_0.b | arg_2.x, _wgslsmith_mod_i32(-57548i, 1i), 2147483647i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)] * 1331f), global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)] + arg_3.x), _wgslsmith_f_op_f32(select(-297f, arg_3.x, arg_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 5u)])), 407f)), global1[_wgslsmith_index_u32(1922u, 15u)], func_4(Struct_3(arg_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(9631i, u_input.c.x, arg_2.x, 30198i), vec4<i32>(-1i, arg_0.b, -1487i, arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, global0[_wgslsmith_index_u32(24831u, 5u)], 589f, global0[_wgslsmith_index_u32(4699u, 5u)])), func_4(Struct_3(Struct_1(-19021i), vec4<i32>(u_input.d, 2147483647i, 0i, -1i), vec4<f32>(arg_3.x, 265f, -1677f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_1(-39047i), global1[_wgslsmith_index_u32(15494u, 15u)]), Struct_4(vec4<u32>(0u, 4294967295u, 1u, 45963u)), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)).a, arg_0.a), Struct_4(vec4<u32>(1705u, 1u, 56092u, 1u)), vec4<bool>(true, true, all(vec3<bool>(true, arg_1.x, arg_1.x)), true)).a), Struct_4(countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), vec4<bool>(any(vec2<bool>(true, any(arg_1))), any(!vec4<bool>(false, true, true, arg_1.x)), any(!(!vec4<bool>(true, true, arg_1.x, false))), (27966u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(7295u, 0u))) >= 1u));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = func_5(func_4(Struct_3(func_2(), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, -1i, u_input.e, arg_0.b), vec4<i32>(arg_0.b, arg_0.a.a, arg_0.b, 29702i)), vec4<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-309f + global0[_wgslsmith_index_u32(arg_2.x, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(-arg_1)), global1[_wgslsmith_index_u32(0u, 15u)], func_2()), Struct_4(firstTrailingBit(~arg_2)), vec4<bool>(true, true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), u_input.a.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(-946f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-892f, global0[_wgslsmith_index_u32(12257u, 5u)])))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1154f))), 134f)));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(abs(~4294967295u), 15u)], vec4<i32>(i32(-1i) * -56194i, ~_wgslsmith_mult_i32(28790i, arg_0.a.a), 8018i, u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, global0[_wgslsmith_index_u32(arg_2.x, 5u)], 228f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1000f, arg_1, global0[_wgslsmith_index_u32(4294967295u, 5u)])), true)), vec4<f32>(-1448f, -737f, 472f, _wgslsmith_f_op_f32(1000f + 1000f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 169f, global0[_wgslsmith_index_u32(18576u, 5u)], global0[_wgslsmith_index_u32(arg_2.x, 5u)])))))), Struct_1(abs(countOneBits(~(-1i)))), arg_0.a);
    var var_2 = arg_0;
    global1 = array<Struct_1, 15>();
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f * 1866f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(270u, 5u)]) * 146f))), -800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13403u, 5u)]), 1080f) > 1334f))));
    return vec3<f32>(-441f, 697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1812f * arg_1)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = arg_0.a << (~4294967295u % 32u);
    var var_1 = ~(~1u);
    return Struct_3(Struct_1(_wgslsmith_div_i32(arg_0.a ^ _wgslsmith_mod_i32(u_input.b.x, -39641i), 15395i)), -vec4<i32>(u_input.e, _wgslsmith_add_i32(u_input.e, 7166i), countOneBits(u_input.a.x), arg_0.a) | abs(firstLeadingBit(vec4<i32>(16289i, u_input.c.x, arg_0.a, -1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(9384u, 1u, 0u)), 5u)], arg_2, -628f, arg_1.x)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-5226i, arg_0.a)), vec2<i32>(0i, u_input.b.x)), _wgslsmith_dot_vec2_i32(~u_input.b.yx, select(vec2<i32>(37765i, 305i), u_input.c.yx, vec2<bool>(true, true))))), global1[_wgslsmith_index_u32(~(~4294967295u), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global1[_wgslsmith_index_u32(select(0u, 136290u, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), 15u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(26524u, 5u)], global0[_wgslsmith_index_u32(30559u, 5u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(-1i), u_input.d), 541f, vec4<u32>(4514u, 62262u, 0u, 0u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2258f, -565f, global0[_wgslsmith_index_u32(0u, 5u)]) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 426f, 1592f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, 1383f, global0[_wgslsmith_index_u32(1u, 5u)]) + vec3<f32>(global0[_wgslsmith_index_u32(3708u, 5u)], -182f, global0[_wgslsmith_index_u32(17844u, 5u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], -275f, global0[_wgslsmith_index_u32(4294967295u, 5u)]) * vec3<f32>(1980f, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]))))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(11464u, 1u), 5u)])));
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(31456u, 1u, 0u), min(vec3<u32>(4294967295u, 41725u, 22969u), vec3<u32>(28840u, 49841u, 17889u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(86988u, 14401u, 0u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 63768u, 4294967295u), vec3<u32>(1u, 1u, 1u))), 0u, 54605u, ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(49299u, 28000u), vec2<u32>(57534u, 44681u)), ~1u) << (1u % 32u));
    var var_2 = abs(-2147483647i);
    var_2 = -32578i;
    var var_3 = u_input.a.x;
    let var_4 = global1[_wgslsmith_index_u32(~var_1.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c.zx))), firstLeadingBit(var_1.x), ~u_input.b.zx, _wgslsmith_clamp_u32(~var_1.x, abs(_wgslsmith_div_u32(~var_1.x, 24319u)), 1u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1458f)))));
}

