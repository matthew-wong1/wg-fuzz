struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 18u)], 18u)], 18u)], _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(arg_2.x, global1[_wgslsmith_index_u32(arg_2.x, 18u)], u_input.d.x, global1[_wgslsmith_index_u32(1u, 18u)])), firstTrailingBit(_wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_2.x, 0u, global1[_wgslsmith_index_u32(arg_2.x, 18u)], 8452u), vec4<u32>(1u, arg_2.x, arg_2.x, 27776u)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x, 57154u, u_input.a.x) ^ vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 18u)], 0u, 31078u)))));
    var_0 = Struct_2(u_input.a.x, _wgslsmith_sub_u32(reverseBits(~16463u), _wgslsmith_add_u32(~59554u, u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(var_0.a, arg_2.x, 0u, 4294967295u)))));
    let var_1 = arg_2.x;
    let var_2 = ~u_input.a.x;
    let var_3 = arg_3.a;
    return u_input.b << (~1u % 32u);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(func_3(vec4<bool>(!any(vec4<bool>(global0.x, true, global0.x, false)), true, global0.x, (26813i > u_input.c) == false), Struct_1(_wgslsmith_mod_i32(u_input.c, -22330i) << (~38286u % 32u)), ~(u_input.a & vec3<u32>(global1[_wgslsmith_index_u32(67207u, 18u)], u_input.a.x, 13313u)), Struct_1(_wgslsmith_div_i32(-57746i, ~2147483647i))));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(27370i >> (u_input.d.x % 32u), _wgslsmith_div_i32(u_input.b, -1i)) >> ((abs(global1[_wgslsmith_index_u32(1u, 18u)]) << ((u_input.a.x >> (global1[_wgslsmith_index_u32(u_input.d.x, 18u)] % 32u)) % 32u)) % 32u), -76759i, var_0.a, 1i), max(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(-23078i, u_input.b, 1i, var_0.a) | vec4<i32>(-2147483647i, u_input.b, -24396i, u_input.c)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(5707i, -2147483647i, var_0.a, 41916i)), min(vec4<i32>(28512i, u_input.b, 2147483647i, 1i), vec4<i32>(5119i, 32725i, 0i, 20718i)))), ~(~vec4<i32>(49382i, -34088i, 1i, var_0.a)) & (~vec4<i32>(0i, -2147483647i, 0i, u_input.b) ^ select(vec4<i32>(-6370i, 0i, var_0.a, 2147483647i), vec4<i32>(u_input.b, var_0.a, u_input.b, 74855i), global0.x))));
    var var_2 = all(!vec4<bool>(all(vec4<bool>(false, global0.x, false, false)), any(vec4<bool>(global0.x, global0.x, false, false)), true, global0.x));
    global1 = array<u32, 18>();
    return u_input.d.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_div_u32(func_2(-761f), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, 15678u) << (global1[_wgslsmith_index_u32(max(0u, 0u), 18u)] % 32u), 7216u)) >> (31980u % 32u);
    let var_1 = vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b);
    var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(arg_0.a, 0u, 4294967295u, 6254u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 1u), vec4<u32>(u_input.a.x, arg_0.b, 104236u, global1[_wgslsmith_index_u32(5780u, 18u)]))), max(vec4<u32>(24691u, arg_0.a, 0u, arg_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, 63375u, arg_0.b, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, 0u), vec4<u32>(0u, arg_0.b, arg_0.a, 4294967295u)))) ^ 4294967295u, firstTrailingBit(65207u)), 18u)];
    var_0 = ~27877u;
    var var_2 = Struct_1(countOneBits(8061i << (arg_0.a % 32u)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, 1374f, 364f, arg_1)) + _wgslsmith_div_vec4_f32(vec4<f32>(-203f, arg_1, -364f, 1616f), vec4<f32>(arg_1, arg_1, -848f, arg_1))), vec4<f32>(arg_1, -667f, arg_1, _wgslsmith_f_op_f32(-arg_1)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-441f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 733f)), _wgslsmith_f_op_f32(step(495f, _wgslsmith_div_f32(arg_1, -697f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 * -1044f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(609f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, arg_1, arg_1)))) * vec3<f32>(799f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(-819f))), arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(948f)), _wgslsmith_f_op_f32(arg_1 * arg_1))) * _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(trunc(847f)), global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    var var_0 = vec3<bool>(true, global0.x, global0.x);
    global1 = array<u32, 18>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(floor(1550f)))))));
    var_1 = -121f;
    let x = u_input.a;
    s_output = func_1(Struct_2(_wgslsmith_div_u32(53506u, u_input.d.x), 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(380f + _wgslsmith_f_op_f32(426f * 392f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(629f - 1098f), _wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1785f, -206f)))));
}

