struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, false, true, false, false, true, false, true, false);

var<private> global1: f32 = -424f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(select(u_input.c << (vec4<u32>(87669u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)), ~u_input.c, true), u_input.c, ~(-vec4<i32>(u_input.b.x, -25918i, u_input.b.x, 0i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, -408f)), _wgslsmith_f_op_f32(-arg_0))))), u_input.b);
    let var_1 = u_input.d ^ -2147483647i;
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), 0i, -1i), var_0.a.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.c.x, -2147483647i, 1i, var_1)), u_input.c & var_0.a)), var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-446f))) + 1666f)), _wgslsmith_add_vec2_i32(-(vec2<i32>(2147483647i, var_0.c.x) >> (select(u_input.a, u_input.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(8923u, 10u)])) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(abs(var_1), 16078i), -firstTrailingBit(vec2<i32>(var_0.c.x, -2147483647i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b, -390f, -1633f), vec3<f32>(595f, 1506f, -183f), true)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-314f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(-685f, var_2.b, var_0.b)) * vec3<f32>(var_2.b, var_0.b, arg_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -608f, 1104f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_2.b, var_2.b) + vec3<f32>(-133f, -751f, var_0.b))) - vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(1371f))))));
    let var_4 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(select(var_0.b, 196f, var_4))))) - _wgslsmith_f_op_f32(select(-1137f, 695f, ~firstLeadingBit(4294967295u) <= _wgslsmith_mod_u32(abs(u_input.a.x), u_input.a.x))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = arg_0.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1552f) + 1012f), var_0.b))));
    var var_3 = _wgslsmith_f_op_f32(round(752f));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 69009u), ~u_input.a.x, _wgslsmith_mod_u32(1u, 6259u)), ~reverseBits(vec4<u32>(1u, 10009u, u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    global0 = array<bool, 10>();
    let var_1 = ~1u;
    global1 = _wgslsmith_div_f32(var_0.b, 723f);
    var var_2 = !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)]), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true)), global0[_wgslsmith_index_u32(0u, 10u)]), !vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(var_1, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(var_1, 10u)])), global0[_wgslsmith_index_u32(~4294967295u, 10u)]), any(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(23835u, 10u)], global0[_wgslsmith_index_u32(var_1, 10u)]))));
    return _wgslsmith_div_u32(0u & u_input.a.x, abs(u_input.a.x)) | func_2(Struct_1(select(vec4<i32>(var_0.c.x, -2147483647i, var_0.a.x, -26967i) ^ arg_1.a, vec4<i32>(-1i, u_input.d, 22867i, -25121i), false), _wgslsmith_div_f32(arg_0, 642f), vec2<i32>(~var_0.a.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(150f));
    global0 = array<bool, 10>();
    global1 = _wgslsmith_div_f32(-736f, -850f);
    var var_0 = ~select(select(~vec2<u32>(0u, 28636u), u_input.a, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<u32>(~func_1(-573f, Struct_1(vec4<i32>(u_input.d, u_input.c.x, u_input.d, 2147483647i), 961f, vec2<i32>(2147483647i, -1i))), 4294967295u), true);
    let var_1 = Struct_1(u_input.c, _wgslsmith_f_op_f32(1730f + 1010f), vec2<i32>(~u_input.d, 70372i & select(_wgslsmith_div_i32(u_input.b.x, 5805i), ~u_input.b.x, 17341u < u_input.a.x)));
    var_0 = max(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, abs(4294967295u))), abs(u_input.a)) ^ vec2<u32>(1u, var_0.x ^ _wgslsmith_add_u32(u_input.a.x ^ var_0.x, var_0.x >> (41603u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

