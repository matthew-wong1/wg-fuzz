struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1280f, -648f, 1242f, 237f, -1335f, -134f, 627f, 865f, 389f, -1415f, -2178f, -1000f, -1111f, -630f, -1000f, 166f, -3341f, 1466f, -1153f, 157f, 290f, 600f, -1692f, 714f, 387f, 1620f, -746f, -707f, -1292f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> u32 {
    let var_0 = any(arg_0.d);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(259f, -2092f)) - _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -152f))));
    global0 = array<f32, 29>();
    let var_2 = -154f;
    let var_3 = Struct_5(true, true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -570f, 1426f) - vec3<f32>(130f, var_2, -315f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2209f, global0[_wgslsmith_index_u32(22982u, 29u)], 730f)), vec3<f32>(var_1.x, 953f, var_2))))));
    return arg_0.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_3 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let var_0 = 2147483647i;
    global0 = array<f32, 29>();
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(18560u, _wgslsmith_mult_u32(4294967295u, ~(~0u)), abs(0u)), vec3<u32>(_wgslsmith_clamp_u32(~27297u, 77714u, max(~0u, 0u)), countOneBits(4294967295u), _wgslsmith_add_u32(1u, ~23882u)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, ~64284u, ~24289u), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 108579u), vec3<u32>(26650u, 4294967295u, 14924u))), ~vec3<u32>(~4294967295u, func_3(Struct_1(vec2<u32>(1u, 81454u), u_input.a, -1i, vec4<bool>(arg_1.b, arg_1.a, arg_1.a, true)), var_0, Struct_4(arg_1.a), 20416u), _wgslsmith_sub_u32(4602u, 914u))));
    return Struct_3(-_wgslsmith_dot_vec2_i32(select(u_input.a.xy, vec2<i32>(arg_0, 1i), true), vec2<i32>(countOneBits(var_0), reverseBits(-20664i))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = true;
    var var_1 = firstTrailingBit(~countOneBits(vec3<u32>(1u, arg_1 ^ arg_1, firstTrailingBit(arg_1))));
    var var_2 = _wgslsmith_div_i32(countOneBits(u_input.a.x & 1i), ~(arg_0.a | _wgslsmith_div_i32(2147483647i, arg_0.a)) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, arg_1, var_1.x), vec3<u32>(11208u, arg_1, 1u))) % 32u));
    var_2 = max(-2147483647i, u_input.a.x);
    global0 = array<f32, 29>();
    return any(vec4<bool>(any(vec3<bool>(var_0, true, false)) || select(true, any(vec4<bool>(var_0, var_0, var_0, var_0)), select(true, var_0, true)), !all(vec3<bool>(true, var_0, var_0)), all(select(!vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(var_0, true, var_0, false))), true));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> Struct_5 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)))), select(vec4<i32>(~0i, u_input.a.x, -(u_input.a.x & -2147483647i), -2147483647i), -vec4<i32>(~(-24873i), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x)), select(select(vec4<bool>(arg_3.a, true, arg_2, arg_2), !vec4<bool>(arg_2, true, arg_2, arg_3.a), u_input.a.x >= u_input.a.x), select(select(vec4<bool>(arg_2, arg_3.a, true, arg_2), vec4<bool>(false, true, arg_2, false), arg_2), select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, false, true, false), vec4<bool>(false, arg_2, arg_3.a, arg_2)), arg_2), !arg_3.a)));
    return Struct_5(arg_3.a, arg_3.a && all(!select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_2, false), vec2<bool>(arg_3.a, arg_3.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], -670f, global0[_wgslsmith_index_u32(0u, 29u)]) - vec3<f32>(327f, -420f, global0[_wgslsmith_index_u32(34371u, 29u)])))))));
}

fn func_6(arg_0: Struct_5, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(arg_3.a.a, select(arg_3.b.a, abs(arg_3.b.a), select(arg_3.a.d.yx, vec2<bool>(any(arg_3.b.d), arg_3.a.d.x), arg_0.a)));
    var var_1 = Struct_3(_wgslsmith_mult_i32(~(-1i) << (var_0 % 32u), 21656i));
    let var_2 = arg_3.a;
    var_1 = Struct_3(2147483647i);
    let var_3 = vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(-13002i, var_1.a), arg_3.a.c);
    return vec2<f32>(-1572f, arg_0.c.x);
}

fn func_1() -> StorageBuffer {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_6(func_5(global0[_wgslsmith_index_u32(~(~1u), 29u)], vec4<u32>(~97797u, firstLeadingBit(62064u), 46470u, 4294967295u) | (vec4<u32>(1u, 1u, 1u, 1u) ^ select(vec4<u32>(18588u, 94520u, 0u, 1u), vec4<u32>(1u, 4444u, 71717u, 4294967295u), false)), true, Struct_4(func_4(func_2(1i, Struct_5(false, false, vec3<f32>(-2315f, 1087f, global0[_wgslsmith_index_u32(63331u, 29u)]))), 1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(6086u, 54770u, 0u, 22134u)), reverseBits(firstTrailingBit(vec4<u32>(1u, 47308u, 4041u, 7208u))), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), -1000f, Struct_2(Struct_1(vec2<u32>(1u, 1u), min(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<i32>(3122i, u_input.a.x, 7640i))), min(-25630i, func_2(u_input.a.x, Struct_5(true, false, vec3<f32>(-1092f, -848f, 1000f))).a), vec4<bool>(func_5(global0[_wgslsmith_index_u32(52614u, 29u)], vec4<u32>(70442u, 1u, 4294967295u, 85777u), false, Struct_4(false)).a, true, true, global0[_wgslsmith_index_u32(13122u, 29u)] > -788f)), Struct_1(select(~vec2<u32>(1u, 6431u), vec2<u32>(4294967295u, 42099u), global0[_wgslsmith_index_u32(0u, 29u)] <= -813f), vec3<i32>(-61045i, ~1078i, firstTrailingBit(21003i)), -u_input.a.x, !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))))));
    let var_1 = 1333f;
    global0 = array<f32, 29>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.x, -1270f, global0[_wgslsmith_index_u32(323u, 29u)]) - vec4<f32>(496f, global0[_wgslsmith_index_u32(54324u, 29u)], -1644f, -1047f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_0.x, global0[_wgslsmith_index_u32(0u, 29u)], -444f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))))), vec2<u32>(~(~abs(0u)), _wgslsmith_mod_u32(1u, countOneBits(reverseBits(5096u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mult_i32(max(1i, u_input.a.x), _wgslsmith_sub_i32(0i, 43031i)));
    global0 = array<f32, 29>();
    let var_1 = 659f;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = func_1();
}

