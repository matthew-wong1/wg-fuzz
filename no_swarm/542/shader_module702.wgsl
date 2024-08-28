struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<u32, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = vec3<u32>(~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(35533u, 70365u), _wgslsmith_div_u32(u_input.b, 0u), 0u)), abs(global1[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(u_input.b >> (4294967295u % 32u), 27u)], ~u_input.b, select(true | all(vec4<bool>(true, true, false, true)), 1u >= select(global1[_wgslsmith_index_u32(0u, 27u)], u_input.b, true), (0u < var_0.x) | true)), 20u)];
    var var_2 = ~var_0.x;
    let var_3 = firstLeadingBit(var_0.x) >= u_input.b;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-257f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.b.x)))))), var_1.b.x));
    return -564f;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global1 = array<u32, 27>();
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(countOneBits(u_input.a), -1i, u_input.a ^ u_input.a)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), 0i, min(u_input.a, u_input.a)), select(vec3<i32>(40942i, u_input.a, -35865i), ~vec3<i32>(8954i, 16224i, 15186i), false)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(arg_1.a.x, u_input.b), ~23130u), 20u)];
    global0 = array<Struct_2, 20>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1363f, _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(f32(-1f) * -1956f)), var_1.b.x, var_1.b.x), select(~firstTrailingBit(vec3<u32>(4294967295u, arg_1.a.x, 43405u) | vec3<u32>(var_1.a.x, 0u, arg_0)), firstTrailingBit(~(~vec3<u32>(1u, var_1.a.x, 4294967295u))), var_1.c.x), ~_wgslsmith_mod_i32(u_input.a, ~u_input.a), 10573i, reverseBits(vec2<u32>(u_input.b, reverseBits(firstTrailingBit(u_input.b)))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = func_2(countOneBits(u_input.b), global0[_wgslsmith_index_u32(arg_0.x, 20u)], 1516f);
    let var_1 = select(!(!vec4<bool>(true, false, any(vec4<bool>(true, true, true, false)), true)), vec4<bool>((var_0.b.x >= u_input.b) & true, true, any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))), !any(vec3<bool>(false, false, true)) | any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true))), select(vec4<bool>(true, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec4<bool>(u_input.b < 0u, true, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_2 = select(~countOneBits(~countOneBits(vec4<u32>(var_0.e.x, 41867u, 1u, global1[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(~var_0.e.x, 27u)], 0u ^ var_0.e.x, 92464u, var_0.e.x), abs(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62897u, 27u)], 27u)], 27u)], 1u, u_input.b)) & countOneBits(vec4<u32>(0u, 0u, var_0.e.x, 77954u))), ~vec4<u32>(77007u ^ u_input.b, _wgslsmith_div_u32(7576u, 1u), ~95790u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 48951u), var_0.e))), select(var_1, vec4<bool>(false, var_1.x, true, true), var_1));
    let var_3 = _wgslsmith_mult_vec2_u32(abs(var_0.e), vec2<u32>(countOneBits(0u), 1u));
    global1 = array<u32, 27>();
    return vec2<f32>(1f, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(17782u, ~(~u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, -509f)))))));
    var var_2 = reverseBits(vec3<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(21584i, u_input.a), u_input.a | u_input.a), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), ~22372i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 19910i, 8939i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) >> (_wgslsmith_clamp_vec3_u32(max(~vec3<u32>(22602u, 1u, var_0), ~vec3<u32>(46068u, 16002u, global1[_wgslsmith_index_u32(u_input.b, 27u)])), vec3<u32>(~var_0, ~4294967295u, var_0), ~vec3<u32>(4294967295u, 25385u, 1u)) % vec3<u32>(32u)));
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(1u, 25188u)), ~vec2<u32>(1u, 4731u)))).x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(146f - _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f - 704f) * 821f)))));
}

