struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, arg_0.d, arg_0.a, arg_1.a), max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, arg_2.a, arg_2.a, arg_0.d), vec4<u32>(arg_2.d, 50332u, 56227u, 50856u)), ~u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(33801u, _wgslsmith_add_u32(1u, 1u), arg_1.a, 132562u), reverseBits(~vec4<u32>(4294967295u, arg_2.d, arg_0.a, arg_0.d)))));
    let var_1 = arg_2;
    global0 = array<f32, 27>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(37196u, 27u)] * global0[_wgslsmith_index_u32(28570u, 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-545f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 27u)])))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a, 27u)]), _wgslsmith_f_op_f32(-182f * global0[_wgslsmith_index_u32(2614u, 27u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4681u, 27u)], global0[_wgslsmith_index_u32(arg_2.d, 27u)]) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])) - vec2<f32>(global0[_wgslsmith_index_u32(arg_0.a, 27u)], 1000f))))));
    global0 = array<f32, 27>();
    return ~firstLeadingBit(35986i);
}

fn func_2() -> vec3<f32> {
    let var_0 = !select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), vec3<bool>((global0[_wgslsmith_index_u32(u_input.b.x, 27u)] <= global0[_wgslsmith_index_u32(33155u, 27u)]) && any(vec2<bool>(false, true)), true, true));
    global0 = array<f32, 27>();
    let var_1 = Struct_1(min(countOneBits(abs(u_input.a.x)), u_input.b.x), select(6482i, -abs(-46233i), true) ^ _wgslsmith_add_i32(reverseBits(~16118i), func_3(Struct_1(u_input.a.x, 0i, -2147483647i, 1u), Struct_1(13117u, 2147483647i, -16361i, u_input.b.x), Struct_1(u_input.d.x, 2147483647i, 0i, 1u))), 0i, 1u);
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(min(-1139f, global0[_wgslsmith_index_u32(u_input.e, 27u)])), -521f), _wgslsmith_div_vec3_f32(vec3<f32>(366f, global0[_wgslsmith_index_u32(0u, 27u)], 529f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 607f, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) * vec3<f32>(global0[_wgslsmith_index_u32(var_1.a, 27u)], -223f, global0[_wgslsmith_index_u32(1812u, 27u)])))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    let var_0 = vec2<u32>(~arg_0, 11487u);
    var var_1 = Struct_1(_wgslsmith_add_u32(~var_0.x, ~(~0u)), 1i, abs(firstTrailingBit(_wgslsmith_div_i32(~28860i, _wgslsmith_mult_i32(arg_1.b, 20818i)))), ~(~1u));
    return 0i;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = 0u;
    global0 = array<f32, 27>();
    let var_1 = true;
    return func_4(~(~1u), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_div_vec3_u32(~u_input.d, ~_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_mod_u32(103234u, u_input.e), 1u), ~u_input.a));
    var var_1 = 59276u;
    var var_2 = Struct_1(97285u, -1i, _wgslsmith_mult_i32(func_1(Struct_1(5315u, 31374i, -1673i, 67311u)) | reverseBits(-1i), firstTrailingBit(func_4(~0u, Struct_1(var_0.x, -25868i, 0i, u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(36199u, 27u)], 1174f, -721f))))), 4294967295u);
    var_0 = select(vec3<u32>(14423u, 1u, _wgslsmith_mult_u32(var_2.d, 1823u) ^ (~var_0.x >> (~var_0.x % 32u))), u_input.a, (2071f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f - global0[_wgslsmith_index_u32(1u, 27u)]))) || true);
    global0 = array<f32, 27>();
    let var_3 = (select(~(~1u), var_2.d, ~16903i == var_2.b) >> (_wgslsmith_add_u32(52656u, var_0.x) % 32u)) & ~abs(var_2.d);
    var var_4 = Struct_1(1u, _wgslsmith_dot_vec2_i32(~vec2<i32>(-42359i, 0i), vec2<i32>(3101i, var_2.c)) ^ min(~var_2.c ^ ~(-15949i), -var_2.b), ~var_2.b, ~countOneBits(17050u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 27u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.e, 27u)] + global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec3_u32(~u_input.b.yzx, firstTrailingBit(vec3<u32>(0u, 0u, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(622f, global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(var_3, 27u)])))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(2969u & u_input.a.x, ~4294967295u), 27u)], 1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 27u)] - global0[_wgslsmith_index_u32(47488u, 27u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_4.d, 27u)] * 423f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_4.a, 15891u), 27u)])));
}

