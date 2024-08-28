struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-30463i, -55811i, 33244i, 34174i), -1659f, -648f, -10840i), Struct_1(vec4<i32>(-34167i, 45225i, 0i, 0i), -322f, -988f, 2147483647i), vec3<bool>(false, true, true), -1i);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-311i, -3837i, -59434i, 16154i), -1000f, -2594f, -7257i);

var<private> global2: array<vec2<bool>, 14>;

var<private> global3: array<bool, 6> = array<bool, 6>(false, true, true, false, false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) + _wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f - 213f) - _wgslsmith_div_f32(arg_2.x, global1.c)))) + arg_1.a.c);
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(76893i, global1.d, 1i, global1.a.x)), _wgslsmith_sub_vec4_i32(-global0.b.a, vec4<i32>(global1.a.x, 3813i, u_input.b, -1i))), _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(-969f * _wgslsmith_f_op_f32(func_1(u_input.e.x, Struct_2(Struct_1(u_input.c, global1.c, global1.c, global1.a.x), global0.a, global0.c, -15313i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1297f, 749f)), vec4<u32>(1u, u_input.a.x, 1u, u_input.e.x)))), _wgslsmith_add_i32(u_input.b, 2147483647i)), arg_0, firstLeadingBit(-2147483647i));
    var var_0 = arg_0;
    var var_1 = global0.a;
    var_1 = Struct_1(firstLeadingBit(firstTrailingBit(global1.a)), 828f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2822f, -921f) * -630f) - _wgslsmith_f_op_f32(floor(-2204f))))), _wgslsmith_dot_vec3_i32(vec3<i32>((i32(-1i) * -67960i) & global0.d, _wgslsmith_div_i32(2147483647i, var_1.a.x), firstTrailingBit(_wgslsmith_mod_i32(var_1.d, 393i))), min(var_1.a.xxz, _wgslsmith_mult_vec3_i32(~global1.a.xxw, _wgslsmith_mult_vec3_i32(vec3<i32>(2543i, var_1.d, 61010i), global1.a.wzw)))));
    global0 = Struct_2(global0.b, global0.b, select(!select(vec3<bool>(false, var_0.x, true), select(global0.c, vec3<bool>(var_0.x, false, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), arg_0), global3[_wgslsmith_index_u32(1u, 6u)] & var_0.x), select(!vec3<bool>(global0.c.x, var_0.x, false), select(arg_0, global0.c, global0.c.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x ^ 60624u, 6u)], false)), global3[_wgslsmith_index_u32(~u_input.a.x, 6u)]), 14356i);
    return vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a.x, var_1.a.x, 7094i, global0.d), global0.b.a), ~u_input.c)), _wgslsmith_mod_vec4_i32(max(-vec4<i32>(-1541i, 28953i, var_1.a.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1.a.x, var_1.d, var_1.d), vec4<i32>(var_1.a.x, u_input.c.x, u_input.d, 5154i))), -(~vec4<i32>(var_1.d, 22190i, -2147483647i, -1i)))), -1i, -1i);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    global3 = array<bool, 6>();
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(func_3(!(!vec3<bool>(global0.c.x, false, true))), firstLeadingBit(global1.a)), -964f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f - _wgslsmith_f_op_f32(func_1(u_input.a.x, arg_2, vec2<f32>(arg_2.a.b, 821f), u_input.e)))))), _wgslsmith_mult_i32(~(-_wgslsmith_clamp_i32(-2147483647i, -65706i, global0.a.d)), -(i32(-1i) * -26504i)));
    var var_2 = Struct_2(Struct_1(~(-(vec4<i32>(u_input.b, 0i, arg_2.b.d, 26325i) ^ var_0.b.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f * 110f) - _wgslsmith_f_op_f32(var_1.c - 1315f)), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_add_i32(max(_wgslsmith_clamp_i32(arg_1.a.x, 2147483647i, u_input.c.x), ~var_0.a.a.x), _wgslsmith_add_i32(var_1.a.x, i32(-1i) * -2147483647i))), var_1, var_0.c, ~47389i);
    let var_3 = countOneBits(~u_input.a.x);
    return vec2<f32>(var_0.b.b, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global2 = array<vec2<bool>, 14>();
    let var_1 = var_0.a.x;
    global3 = array<bool, 6>();
    var var_2 = _wgslsmith_div_u32(58408u, ~37506u);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c, 928f, -1663f, var_0.b))) + vec4<f32>(664f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), 240f, _wgslsmith_f_op_f32(func_1(u_input.e.x, Struct_2(Struct_1(vec4<i32>(-1i, 30112i, 35503i, var_0.a.x), global1.c, var_0.c, -2147483647i), global0.a, global0.c, var_0.d), vec2<f32>(var_0.c, -3043f), vec4<u32>(0u, u_input.a.x, 0u, u_input.e.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.b, -153f, global1.b, var_0.c)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -703f, global1.b, 1270f)))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-447f, 1029f, var_0.c, 1106f), vec4<f32>(982f, global1.b, 819f, var_0.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(166f, 1452f, 729f, 394f) * vec4<f32>(348f, 830f, 126f, global1.c))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, -1173f, -1000f, global1.b))))))), global3[_wgslsmith_index_u32(u_input.e.x, 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), _wgslsmith_add_u32(_wgslsmith_mult_u32(5249u, 0u), u_input.e.x)), -827f, _wgslsmith_f_op_vec2_f32(var_3.wy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, -443f), _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(u_input.e.x, 25432u, u_input.e.x), Struct_1(global0.a.a, -900f, var_3.x, global0.d), Struct_2(global0.b, global0.a, vec3<bool>(true, true, true), global1.a.x), u_input.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1620f, var_0.b) - var_3.wz)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(func_1(~u_input.a.x, Struct_2(Struct_1(u_input.c, var_3.x, global0.a.b, global0.b.a.x), Struct_1(vec4<i32>(9413i, u_input.d, 0i, 39711i), global1.b, -1203f, 105290i), global0.c, u_input.b), vec2<f32>(1554f, -969f), ~u_input.e))), -741f), _wgslsmith_mod_i32(global1.a.x, u_input.c.x));
}

