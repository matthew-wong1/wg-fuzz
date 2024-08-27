struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: i32;

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<bool, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    global4 = array<bool, 15>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1059f) * vec2<f32>(-159f, arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -183f)) * vec2<f32>(1000f, arg_2))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-891f, arg_2))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, arg_2) * vec2<f32>(1327f, -795f))))))));
    global2 = array<Struct_3, 30>();
    var var_1 = any(!select(!select(vec4<bool>(global4[_wgslsmith_index_u32(17634u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], true, true), vec4<bool>(global4[_wgslsmith_index_u32(1u, 15u)], true, global4[_wgslsmith_index_u32(5778u, 15u)], false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(24584u, 15u)], false)), !(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], false, false)), global4[_wgslsmith_index_u32(~0u, 15u)] & true));
    var var_2 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_1.b.a), vec2<i32>(u_input.a, u_input.a)), arg_0.a, _wgslsmith_mod_i32(-1i, 10517i)), vec3<i32>(-1i) * -vec3<i32>(16591i, 66641i, 0i)));
    return 12980u;
}

fn func_2() -> bool {
    let var_0 = func_3(Struct_1(u_input.a), Struct_2(Struct_1(-_wgslsmith_clamp_i32(u_input.a, -25066i, -38876i)), Struct_1(i32(-1i) * -46305i)), 1406f);
    let var_1 = -u_input.a;
    let var_2 = abs(-23717i);
    var var_3 = var_1;
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32689u, _wgslsmith_mod_u32(var_0, var_0) & 52639u, var_0), ~vec3<u32>(~13640u, _wgslsmith_mult_u32(var_0, var_0), var_0)), 6u)], global3[_wgslsmith_index_u32(~abs(~var_0), 6u)]);
    return false;
}

fn func_1() -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), ~(~0u)), 30u)];
    let var_1 = _wgslsmith_mod_i32(~(-_wgslsmith_mult_i32(-1i, -42656i)), 2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(167f, var_0.a.x, 833f, var_0.a.x), vec4<f32>(var_0.a.x, -578f, -332f, 591f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 332f, 1709f, var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(882f * 101f), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))));
    var var_3 = Struct_1(u_input.a);
    let var_4 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_2.x) > -838f, !any(global0[_wgslsmith_index_u32(1u, 15u)]), func_2());
    return Struct_3(vec3<f32>(var_0.a.x, var_0.a.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1234f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2765f, 527f)) - -254f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-185f + 1290f), _wgslsmith_f_op_f32(round(720f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1395f + 437f), _wgslsmith_div_f32(-1659f, 806f)))));
    global1 = _wgslsmith_div_i32(-73615i, ~u_input.a);
    var var_1 = func_1();
    var_1 = func_1();
    global1 = u_input.a;
    var var_2 = global3[_wgslsmith_index_u32(~(~(~(~firstLeadingBit(68428u)))), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))))), countOneBits(33790i), ~(~countOneBits(u_input.a)) ^ abs(17695i));
}

