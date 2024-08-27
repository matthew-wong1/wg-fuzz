struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = 2127f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1579f)))), 1000f)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(539f, 458f)) * -732f))) + 1f);
    global0 = array<Struct_1, 20>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(811f)) + 1737f));
    return -2147483647i;
}

fn func_2(arg_0: u32) -> f32 {
    global1 = -431f;
    let var_0 = vec2<i32>(func_3(), u_input.a);
    var var_1 = Struct_1(~max(~vec2<u32>(1u, arg_0) >> (min(vec2<u32>(22162u, 0u), vec2<u32>(55220u, 0u)) % vec2<u32>(32u)), max(~vec2<u32>(1u, 4294967295u), vec2<u32>(1782u, arg_0))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true & (false == (1i > u_input.a))), select(_wgslsmith_div_vec2_u32(~vec2<u32>(15306u, 20330u), reverseBits(vec2<u32>(arg_0, arg_0)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, 57972u), vec2<u32>(arg_0, arg_0))), abs(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(arg_0, arg_0), vec2<u32>(35755u, arg_0)), vec2<u32>(arg_0, arg_0), vec2<u32>(7182u, 4294967295u))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = u_input.a;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(389f)) - 1545f), _wgslsmith_div_f32(_wgslsmith_div_f32(513f, -1000f), _wgslsmith_f_op_f32(round(1489f))), firstTrailingBit(arg_0) <= ~arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-295f))) + -1945f), 177f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1274f));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(127416u, 20u)];
    var var_1 = _wgslsmith_f_op_f32(-1952f * _wgslsmith_f_op_f32(func_2(~60204u)));
    let var_2 = select(_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, var_0.a.x, 0u), var_0.c.x, ~0u), arg_0.c.x)), arg_0.c, var_0.b.x && false);
    global1 = -1249f;
    let var_3 = -29638i;
    return var_0.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = select(!select(vec2<bool>(true, true), select(func_1(global0[_wgslsmith_index_u32(72992u, 20u)], u_input.a), vec2<bool>(true, true), true), true), select(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 18472u, 88306u, 9348u)), vec4<u32>(10883u, 1u, 39578u, 85651u)), 20u)], -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 36088i), vec4<i32>(u_input.a, -11427i, 2147483647i, 1i))), vec2<bool>(true, true), false || !(-2147483647i >= u_input.a)), !vec2<bool>(true | any(vec4<bool>(false, true, true, false)), _wgslsmith_clamp_i32(-16899i, u_input.a, -2147483647i) >= 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_3() << (1u % 32u), -2147483647i, -abs(0i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-30700i, 1i, -57992i), -vec3<i32>(0i, u_input.a, u_input.a)), reverseBits(abs(vec3<i32>(8i, -3157i, u_input.a)))), vec3<i32>(-_wgslsmith_mod_i32(-2147483647i, 27624i), _wgslsmith_mod_i32(-1i ^ u_input.a, firstLeadingBit(-2147483647i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(2147483647i, 2147483647i, 2147483647i)))), vec2<u32>(~(~_wgslsmith_mod_u32(0u, 42716u)), _wgslsmith_mult_u32(min(54255u, 0u), ~35360u) | _wgslsmith_clamp_u32(96404u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(50371u, 27727u, 0u), vec3<u32>(32683u, 67034u, 24576u)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1587f, 526f) + _wgslsmith_f_op_f32(func_2(4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(803f + 1566f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(-1946f - -1487f))))), 55512u, abs(_wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-54685i, u_input.a))), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -11989i, u_input.a), 27715i & u_input.a))));
}

