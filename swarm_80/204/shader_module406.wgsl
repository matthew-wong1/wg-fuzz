struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(23910u, 73570u, 0u, 38615u, 60521u, 40707u, 4294967295u, 4294967295u, 31500u, 41306u, 1u, 10121u, 0u, 0u, 17340u, 25587u, 1u, 1u, 10968u, 35834u);

var<private> global1: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec4<u32> {
    global0 = array<u32, 20>();
    var var_0 = firstLeadingBit(vec2<i32>(-32982i, firstLeadingBit(u_input.b)));
    var var_1 = vec3<i32>(u_input.b << (~(global0[_wgslsmith_index_u32(83175u, 20u)] ^ ~global0[_wgslsmith_index_u32(1u, 20u)]) % 32u), var_0.x, u_input.b & reverseBits(~reverseBits(var_0.x)));
    let var_2 = Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 68281u, u_input.a.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(6546u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 4294967295u), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4600u, 20u)], 34950u)))), var_0.x);
    let var_3 = !select(global1.x, arg_0.x, false);
    return ~(vec4<u32>(1u, u_input.a.x << (global0[_wgslsmith_index_u32(firstTrailingBit(27550u), 20u)] % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_2.a, global0[_wgslsmith_index_u32(6303u, 20u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(49586u, 20u)], var_2.a, var_2.a)), _wgslsmith_add_u32(39501u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) & u_input.a.x) & vec4<u32>(~44625u, _wgslsmith_add_u32(reverseBits(global0[_wgslsmith_index_u32(var_2.a, 20u)]), u_input.a.x), 4294967295u, countOneBits(4294967295u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>) -> f32 {
    global0 = array<u32, 20>();
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~arg_1.wwy, arg_1.xyz), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, ~abs(u_input.b)), ~(vec2<i32>(-1i) * -vec2<i32>(1i, 1i))));
    global0 = array<u32, 20>();
    var var_1 = u_input.b <= _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(31456i, 1i))), var_0.b));
    var var_2 = Struct_1(u_input.a.x & 111027u, ~(~(i32(-1i) * -u_input.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f + _wgslsmith_f_op_f32(618f * _wgslsmith_f_op_f32(f32(-1f) * -325f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(301f))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = !all(global1.yy);
    global1 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1922f)) <= _wgslsmith_f_op_f32(func_4(func_3(vec4<bool>(global1.x, global1.x, false, global1.x), 301f), vec4<u32>(8606u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, 22553u))), any(global1.xxx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1761f)) * _wgslsmith_f_op_f32(-431f * 1988f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2665f, -136f)), all(select(select(global1.xyx, vec3<bool>(global1.x, global1.x, false), false), global1.wzx, !vec3<bool>(global1.x, true, global1.x)))), select(vec4<bool>(true, all(vec4<bool>(global1.x, false, true, global1.x)), true, global1.x), vec4<bool>(global1.x, false, global1.x, (u_input.a.x >= 7702u) != any(vec3<bool>(global1.x, true, true))), global1.x), !vec4<bool>(!(!global1.x), all(global1.yw), global1.x, !select(global1.x, false, global1.x)));
    var var_1 = vec3<i32>(-62700i, i32(-1i) * -(firstTrailingBit(arg_0.x) << (1u % 32u)), _wgslsmith_mod_i32(max(abs(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-31235i, 1i, -12186i))), u_input.b), -arg_0.x));
    var var_2 = Struct_1(~4294967295u, arg_0.x);
    let var_3 = arg_0.x;
    return vec3<bool>(global1.x, true, ~var_2.a == 4294967295u);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = any(func_2(~_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, 0i)), -vec3<i32>(arg_0.b, u_input.b, -2147483647i))));
    let var_1 = arg_0;
    let var_2 = max(max(u_input.b | _wgslsmith_mod_i32(var_1.b, var_1.b), arg_0.b), 33911i) & firstLeadingBit(1i);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(982f, 1366f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-965f, 152f) + vec2<f32>(676f, -687f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1600f, -679f) - vec2<f32>(-128f, 1418f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(Struct_1(0u, _wgslsmith_mult_i32(-(~u_input.b), -1i))));
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))));
    var var_2 = u_input.b | -_wgslsmith_div_i32(_wgslsmith_clamp_i32(min(-11138i, -2147483647i), -29911i, u_input.b), max(firstLeadingBit(6409i), min(-1i, u_input.b)));
    var var_3 = ~(~vec3<u32>(func_3(vec4<bool>(true, global1.x, false, global1.x), 240f).x, u_input.a.x, ~abs(global0[_wgslsmith_index_u32(u_input.a.x, 20u)])));
    var var_4 = firstTrailingBit(-33369i);
    var_3 = vec3<u32>(1u, 60347u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), -854f))), ~var_3.x, 19808i, 18940i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_3.x, -1i))).x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))), var_0.x));
}

