struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<i32> = vec4<i32>(15589i, 1i, -2420i, -8191i);

var<private> global2: vec4<u32> = vec4<u32>(263u, 4294967295u, 33156u, 20097u);

var<private> global3: array<f32, 31> = array<f32, 31>(-113f, 1126f, -113f, 1125f, -869f, 416f, 305f, -1000f, -395f, -914f, 107f, 2092f, 1369f, -511f, -526f, 554f, -1549f, -724f, -425f, -719f, 541f, -1752f, -497f, -2542f, 229f, -409f, 222f, 141f, 177f, -306f, 1000f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    global1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 0i), global1.zy), select(-2147483647i, 0i, arg_1.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(arg_1.c.x), countOneBits(693i), 2147483647i, u_input.a), ~(vec4<i32>(0i, arg_1.c.x, arg_1.c.x, u_input.a) ^ vec4<i32>(arg_1.c.x, u_input.a, 23966i, arg_1.c.x)))), ~(i32(-1i) * -1i), 0i, -(_wgslsmith_div_i32(-21161i, -1i ^ arg_1.c.x) | ~_wgslsmith_add_i32(arg_1.c.x, -2147483647i)));
    global3 = array<f32, 31>();
    let var_0 = arg_1;
    let var_1 = vec4<u32>(47503u, global2.x, _wgslsmith_mult_u32(28756u, 43209u), _wgslsmith_mult_u32(min(~1u, abs(13065u)), ~_wgslsmith_div_u32(0u, 27009u) ^ global2.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(var_0.b.b.wz, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4244u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)])) + 820f), -1755f)));
    return any(vec2<bool>(any(!(!arg_1.b.e)), all(!vec3<bool>(false, arg_0.a, true)) & true));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec4<i32> {
    global0 = all(vec4<bool>(select(any(!vec3<bool>(true, true, arg_2)), all(vec2<bool>(false, arg_2)), _wgslsmith_div_f32(366f, global3[_wgslsmith_index_u32(global2.x, 31u)]) == global3[_wgslsmith_index_u32(u_input.b, 31u)]), false, true, func_3(Struct_3(!arg_2, Struct_1(global2.x, vec4<f32>(-1000f, arg_1.b.x, arg_1.b.x, -1151f), vec2<f32>(arg_1.b.x, 1081f), vec2<u32>(global2.x, 34360u), vec2<bool>(arg_2, arg_2)), global1.wz & global1.xz, Struct_2(1u), vec4<u32>(arg_1.a.a, global2.x, 1u, arg_1.a.a)), Struct_3(true, Struct_1(0u, vec4<f32>(2326f, arg_1.b.x, -252f, 1283f), vec2<f32>(arg_1.b.x, arg_1.b.x), global2.xx, vec2<bool>(arg_2, arg_2)), vec2<i32>(u_input.a, -1i) << (global2.yx % vec2<u32>(32u)), Struct_2(0u), ~vec4<u32>(1u, u_input.b, arg_1.a.a, arg_1.a.a)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.a, u_input.b), vec2<u32>(45372u, 1u), global2.xx)))));
    global3 = array<f32, 31>();
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, reverseBits(global1.x), 1i, 2147483647i), ~(~(-vec4<i32>(23224i, 9472i, arg_0, u_input.a))) | _wgslsmith_add_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 2147483647i, -31901i, global1.x), vec4<i32>(29621i, global1.x, u_input.a, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global1.x, u_input.a, global1.x), vec4<i32>(arg_0, arg_0, -1620i, 1i)), true), firstLeadingBit(vec4<i32>(0i, arg_0, u_input.a, u_input.a)) | -vec4<i32>(-1i, arg_0, global1.x, u_input.a)), vec4<i32>(-(global1.x << (7113u % 32u)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-22635i, u_input.a)), -vec2<i32>(arg_0, -1i)), firstTrailingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global1.x, u_input.a)), ~global1.xx)), -56830i));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-arg_0, _wgslsmith_sub_i32(14459i, u_input.a), -22872i, u_input.a & global1.x), -select(firstLeadingBit(vec4<i32>(u_input.a, 3237i, u_input.a, 1i)), func_2(u_input.a, Struct_4(Struct_2(global2.x), vec3<f32>(1532f, 1517f, global3[_wgslsmith_index_u32(29119u, 31u)])), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))) >> (~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(11252u, arg_1.x, 0u, arg_1.x)), vec4<u32>(global2.x, arg_1.x, select(26968u, u_input.b, false), ~4294967295u)) % vec4<u32>(32u));
    var var_1 = Struct_3(!any(vec2<bool>(true, true)), Struct_1(_wgslsmith_add_u32(max(global2.x, arg_1.x), _wgslsmith_mod_u32(35162u, global2.x)) << (0u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.x, 31u)], -548f), global3[_wgslsmith_index_u32(max(global2.x, 2555u), 31u)], _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.b, 31u)])), -1414f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(global2.x ^ arg_1.x, 31u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 31u)])))), arg_1, vec2<bool>(true, true)), global1.yz, Struct_2(_wgslsmith_dot_vec2_u32(~arg_1 & (vec2<u32>(17251u, arg_1.x) >> (global2.xz % vec2<u32>(32u))), global2.zx)), vec4<u32>(~1u, 4294967295u, global2.x, global2.x));
    global2 = vec4<u32>(var_1.b.d.x, 64368u, abs(1u), ~var_1.d.a);
    global2 = firstTrailingBit(~_wgslsmith_div_vec4_u32(~(~var_1.e), _wgslsmith_add_vec4_u32(select(vec4<u32>(40942u, 84250u, 1u, 70152u), vec4<u32>(63803u, var_1.e.x, 4294967295u, global2.x), false), ~vec4<u32>(var_1.b.a, 39705u, arg_1.x, 11724u))));
    let var_2 = _wgslsmith_add_vec4_u32(select(min(var_1.e, vec4<u32>(u_input.b, arg_1.x, 4294967295u, 4294967295u)), var_1.e | ~vec4<u32>(var_1.b.d.x, 1u, u_input.b, 59039u), vec4<bool>(true, true, true, !var_1.b.e.x)) << (select(_wgslsmith_add_vec4_u32(select(var_1.e, vec4<u32>(arg_1.x, var_1.b.a, u_input.b, 0u), vec4<bool>(var_1.b.e.x, false, var_1.b.e.x, false)), ~var_1.e), var_1.e, any(vec3<bool>(true, var_1.a, false)) & true) % vec4<u32>(32u)), ~vec4<u32>(var_1.e.x, 0u, reverseBits(0u), 1u));
    return Struct_3(true, Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 31u)], -486f, var_1.b.c.x, 1774f)) * vec4<f32>(795f, global3[_wgslsmith_index_u32(2053u, 31u)], -807f, global3[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_div_vec2_f32(var_1.b.b.zw, var_1.b.c), global2.ww, var_1.b.e), -vec2<i32>(-39720i, ~_wgslsmith_clamp_i32(-1i, 1i, arg_0)), Struct_2(~abs(_wgslsmith_clamp_u32(arg_1.x, 1u, 0u))), ~vec4<u32>(_wgslsmith_mult_u32(1u, ~61348u), ~7506u << (arg_1.x % 32u), firstTrailingBit(~1u), _wgslsmith_mult_u32(min(global2.x, 0u), ~arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec2<i32>(reverseBits(-34740i), global1.x);
    let var_2 = func_1(_wgslsmith_div_i32(var_1.x, global1.x), vec2<u32>(~(u_input.b ^ 64240u), 0u));
    var var_3 = var_2;
    global2 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(37703u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32987u, 1u), var_2.e.wwy), abs(28159u)), var_2.e.yyz), u_input.b, ~global2.x, var_3.b.a);
    var var_4 = Struct_4(var_3.d, var_2.b.b.wyw);
    global3 = array<f32, 31>();
    global1 = vec4<i32>(-(i32(-1i) * -32928i), select(-1i, abs(firstTrailingBit(u_input.a)), select(!(-427f > var_3.b.b.x), any(select(vec3<bool>(true, var_3.a, true), vec3<bool>(var_2.a, false, false), vec3<bool>(var_2.a, var_2.b.e.x, var_0))), var_3.a)), 64303i, var_1.x);
    var var_5 = -(-(abs(1i) ^ _wgslsmith_mod_i32(13456i, var_3.c.x)) ^ _wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_2.c.x, -25512i), select(-1i, -1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(424f, var_4.b.x, -126f, var_4.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -2574f, var_2.b.b.x, global3[_wgslsmith_index_u32(global2.x, 31u)]))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1532f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-852f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.x, -1211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.b.x * -1834f)))), -113f);
}

