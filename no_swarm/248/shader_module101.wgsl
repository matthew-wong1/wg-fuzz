struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(4294967295u, 111546u, 54937u, 25296u, 4294967295u);

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-450f), Struct_1(-375f), Struct_1(1865f), Struct_1(-1437f), Struct_1(781f), Struct_1(1000f), Struct_1(209f), Struct_1(-662f), Struct_1(977f));

var<private> global3: array<bool, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(true | any(!vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 7u)], true, false)), _wgslsmith_f_op_f32(round(-1900f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f)));
    global2 = array<Struct_1, 9>();
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(20133u, u_input.c.x, 1u, 3930u), vec4<u32>(15849u, 18038u, 42509u, 4294967295u))) | _wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], u_input.c.x))), 9u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-873f + -284f))))));
    let var_2 = select(abs(global1[_wgslsmith_index_u32(u_input.d.x, 19u)]), _wgslsmith_mult_i32(i32(-1i) * -39409i, _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 19u)])), ~vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 19u)], -2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], 28538u), ~vec3<u32>(16051u, 6535u, u_input.b)) & 63227u, 19u)] < -global1[_wgslsmith_index_u32(71503u, 19u)]);
    global1 = array<i32, 19>();
    return !(!(!var_0.x || (var_1.a.a <= var_1.a.a)));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 9>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(717f - _wgslsmith_f_op_f32(trunc(-1841f)))))));
    let var_1 = !func_3() & all(select(select(!vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 7u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73246u, 5u)], 7u)], global3[_wgslsmith_index_u32(13716u, 7u)]), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], true, true), true), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 7u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 7u)])), select(!vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46752u, 5u)], 5u)], 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.d.x, 7u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(33423u, 7u)], true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31823u, 5u)], 5u)], 7u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec3<bool>(global3[_wgslsmith_index_u32(58783u, 7u)], false, false), global3[_wgslsmith_index_u32(39874u, 7u)]))));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(-51359i), ~(~reverseBits(global1[_wgslsmith_index_u32(42763u, 19u)])), 2147483647i, _wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 19u)], _wgslsmith_dot_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91779u, 5u)], 19u)]), vec3<i32>(global1[_wgslsmith_index_u32(42244u, 19u)], -1i, -30163i), var_1), select(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 19u)], 379i), vec3<i32>(-3373i, global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 12168i), vec3<bool>(var_1, true, var_1))))), vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 19u)], -32849i) << (~u_input.c.x % 32u), -1i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~global1[_wgslsmith_index_u32(53785u, 19u)]), min(-61473i, global1[_wgslsmith_index_u32(u_input.d.x, 19u)]) >> (firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d.x, 5u)]) % 32u)) | ~(~(-vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], 1i, global1[_wgslsmith_index_u32(1u, 19u)]))));
    var var_3 = any(vec2<bool>(any(vec2<bool>(!global3[_wgslsmith_index_u32(70800u, 7u)], var_1)), !global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 7u)]));
    return var_0;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_3(func_2(), _wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(139f)) + -712f))));
    let var_1 = firstLeadingBit(select(-countOneBits(global1[_wgslsmith_index_u32(17458u, 19u)]), 1i, any(vec3<bool>(true, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 7u)])))) | -45448i;
    let var_2 = Struct_2(any(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], false), !vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0, 7u)]), false)), reverseBits(abs(_wgslsmith_mod_u32(1u, 4294967295u))) & _wgslsmith_sub_u32(0u, ~u_input.a), func_2(), Struct_1(var_0.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.b, var_2.c.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a, 1351f, 710f)))))), vec3<f32>(var_0.a.a, _wgslsmith_f_op_f32(-425f + 815f), 1123f), !vec3<bool>(func_3(), all(vec4<bool>(var_2.a, var_2.a, false, false)), false)));
    global0 = array<u32, 5>();
    return global1[_wgslsmith_index_u32(arg_0, 19u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = ~global1[_wgslsmith_index_u32(0u, 19u)];
    var_0 = -1i;
    let var_1 = 1325f;
    var var_2 = func_2();
    global1 = array<i32, 19>();
    return !select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec2<bool>(any(vec3<bool>(true, false, true)) && true, all(select(vec4<bool>(true, arg_3.a, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, arg_3.a, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.c.x, 7u)], arg_3.a)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    var var_0 = Struct_1(159f);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -452f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(713f, var_0.a))) + _wgslsmith_div_f32(946f, -1647f)) * var_0.a), !all(func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(6492u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec3<u32>(u_input.b, 29872u, 49251u)), func_1(global0[_wgslsmith_index_u32(0u, 5u)]), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 19u)], Struct_2(true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23452u, 5u)], 5u)], Struct_1(var_0.a), Struct_1(1615f))))));
    global0 = array<u32, 5>();
    var_1 = var_0.a;
    let var_2 = true;
    var var_3 = max(vec4<u32>(select(_wgslsmith_mult_u32(u_input.c.x, ~914u), ~_wgslsmith_add_u32(u_input.c.x, global0[_wgslsmith_index_u32(4651u, 5u)]), var_2), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(70437u, 5u)], max(0u, 1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)] >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(10384u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68138u, 5u)], 5u)], global0[_wgslsmith_index_u32(22329u, 5u)]), vec3<u32>(u_input.d.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34159u, 5u)], 5u)]))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u) >> (vec4<u32>(u_input.b, u_input.d.x, 0u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.b, 71097u, global0[_wgslsmith_index_u32(u_input.b, 5u)]))), ~u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, max(_wgslsmith_add_u32(u_input.c.x & 1u, firstLeadingBit(1u)), 30439u), u_input.d.x, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_u32(~4294967295u, 0u)), -min(_wgslsmith_mod_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(88176u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<i32>(-1i, -1i), var_2), vec2<i32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)])), vec2<i32>(1i, -2147483647i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(55319u, 19u)]), vec2<i32>(-11818i, global1[_wgslsmith_index_u32(u_input.a, 19u)]))), -abs(firstTrailingBit(global1[_wgslsmith_index_u32(2890u, 19u)])) ^ 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1490f * var_0.a))))));
}

