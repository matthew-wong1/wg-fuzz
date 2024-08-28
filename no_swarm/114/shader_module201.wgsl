struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(4294967295u, 0u, 1u, 0u, 8939u, 34761u, 26991u, 0u, 131784u, 27802u);

var<private> global1: array<Struct_2, 24>;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 13>;

var<private> global4: array<f32, 21> = array<f32, 21>(-350f, -847f, -245f, -323f, -1000f, -870f, -647f, -311f, -201f, 623f, -376f, -1204f, 1467f, 742f, -876f, 561f, -821f, 479f, 2594f, 2172f, -1143f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(1666f));
    global4 = array<f32, 21>();
    return !any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(52275u, 24u)];
    global0 = array<u32, 10>();
    var var_1 = global3[_wgslsmith_index_u32(45493u, 13u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24562u, 10u)], 21u)], 425f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6846u, 10u)], 10u)], 21u)], 692f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1548f, 542f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 21u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 21u)]) + vec4<f32>(arg_1.x, -355f, global4[_wgslsmith_index_u32(9500u, 21u)], arg_1.x))))), 1u, select(select(vec4<bool>(all(vec2<bool>(false, true)), func_3(), true, false), select(select(vec4<bool>(arg_2.x, false, false, true), vec4<bool>(var_0.b.x, arg_2.x, var_0.a, true), true), !vec4<bool>(true, arg_2.x, var_0.b.x, false), arg_0.x >= -45936i), !(!vec4<bool>(false, var_0.b.x, arg_2.x, true))), select(vec4<bool>(true, !var_0.b.x, true != arg_2.x, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, var_0.a, arg_2.x, false), var_0.b.x), select(vec4<bool>(true, false, var_0.b.x, true), vec4<bool>(false, false, false, true), arg_2.x), !vec4<bool>(false, true, true, var_0.b.x)), vec4<bool>(arg_2.x, select(var_0.b.x, arg_2.x, false), u_input.b >= arg_3.x, !arg_2.x)), false), firstTrailingBit(-(~_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(1i, var_1.x, -21345i)))), global0[_wgslsmith_index_u32(~u_input.a, 10u)]);
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 1u), u_input.a, reverseBits(~(1u | _wgslsmith_div_u32(4294967295u, var_2.e))));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(1u), _wgslsmith_mult_u32(u_input.a & var_2.b, 4294967295u) ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, 55160u), firstLeadingBit(vec2<u32>(u_input.a, var_2.b))), 10u)]), 0u), 24u)];
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    global4 = array<f32, 21>();
    var var_0 = func_2(~vec2<i32>(-abs(u_input.b), -1i), vec3<f32>(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(~4294967295u, 21u)], global4[_wgslsmith_index_u32(50646u, 21u)])), global4[_wgslsmith_index_u32(reverseBits(abs(48055u)), 21u)], 495f), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true), min(-select(u_input.c, vec3<i32>(arg_1.x, 63622i, -33577i) & vec3<i32>(u_input.c.x, -1i, u_input.b), any(vec4<bool>(true, false, true, false))), u_input.c));
    let var_1 = 4294967295u;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2, 558u), 24u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)], 21u)], _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(31988u, 21u)])), _wgslsmith_f_op_f32(-1335f + global4[_wgslsmith_index_u32(u_input.a, 21u)])))));
    return _wgslsmith_div_u32(abs(arg_2), 20762u) >> (u_input.a % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> vec4<u32> {
    global2 = -1572i;
    global3 = array<vec4<i32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1540u, 16481u, arg_3, arg_3), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, u_input.a)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], max(arg_0.b, arg_3), global0[_wgslsmith_index_u32(1u, 10u)], arg_2.x)), select(vec4<u32>(96948u, global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_2.x, arg_3) ^ vec4<u32>(arg_3, global0[_wgslsmith_index_u32(arg_3, 10u)], 4294967295u, 69334u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 33885u, arg_0.b, 4294967295u), vec4<u32>(45281u, u_input.a, u_input.a, 4294967295u)), !select(arg_0.c, arg_0.c, false))), 21u)]));
    global1 = array<Struct_2, 24>();
    global4 = array<f32, 21>();
    return vec4<u32>(~func_1(1u, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, u_input.c.x), u_input.c), arg_1), _wgslsmith_mod_u32(arg_3, u_input.a), u_input.a, ~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 24>();
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1829f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1453f, 2513f), global4[_wgslsmith_index_u32(func_1(u_input.a, vec3<i32>(-15837i, -1i, u_input.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)]), 21u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 21u)], 389f, 482f, -402f)))), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 10u)], 10u)], u_input.a & u_input.a), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), ~func_2(u_input.c.zz, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)], 906f), vec3<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 21u)], -1502f, global4[_wgslsmith_index_u32(41367u, 21u)]))), vec2<bool>(true, true), vec3<i32>(u_input.c.x, -18184i, u_input.b)).c.x, abs(_wgslsmith_mod_u32(0u, ~global0[_wgslsmith_index_u32(4294967295u, 10u)]))), max(max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(15080u), ~1u), 10u)], ~countOneBits(11272u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 4294967295u, 55814u, 9344u) | vec4<u32>(u_input.a, u_input.a, 28460u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 20650u, u_input.a, 15174u) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 13501u, 12683u, global0[_wgslsmith_index_u32(21992u, 10u)]))), 10u)], u_input.a), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 10u)], _wgslsmith_mod_u32(abs(global0[_wgslsmith_index_u32(max(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 10u)]), 10u)]), global0[_wgslsmith_index_u32(58393u, 10u)])));
    let var_2 = ~(4294967295u >> (u_input.a % 32u));
    global4 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(var_1.wyw, vec3<u32>(26723u, 29189u, _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(var_2, 10u)], ~4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-610f, -1130f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(506f * -1064f))), _wgslsmith_f_op_f32(-528f - global4[_wgslsmith_index_u32(0u, 21u)]) > _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(0u, 21u)], -1316f, true))))), _wgslsmith_f_op_f32(round(304f)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1274f, global4[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(min(600f, global4[_wgslsmith_index_u32(21345u, 21u)]))))));
}

