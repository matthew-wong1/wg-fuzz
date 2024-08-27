struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<i32> {
    return global0[_wgslsmith_index_u32(~(u_input.a << (~(~0u) % 32u)), 24u)];
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_2(arg_2.x, any(vec2<bool>(true, false)));
    var var_1 = 11693u;
    let var_2 = abs(min(vec4<u32>(reverseBits(_wgslsmith_mult_u32(68647u, u_input.a)), ~(~u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1.b.x, 4294967295u)), 52634u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.x, 0u, 66582u, 42252u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.b.x, u_input.a, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4013u, u_input.a), vec4<u32>(67632u, u_input.a, 0u, u_input.a)), arg_1.b.x & 0u, u_input.a, ~arg_1.b.x))));
    var var_3 = arg_1.c.wzx;
    let var_4 = var_0;
    return -vec2<i32>(arg_0, 1i);
}

fn func_1() -> bool {
    global1 = select(~_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(~1u, 24u)], abs(func_2())), ~func_3(_wgslsmith_add_i32(global1.x, 20961i) << (8919u % 32u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(67512u, u_input.a)), vec4<i32>(2147483647i, global1.x, -2147483647i, -11680i) & vec4<i32>(1i, global1.x, -54418i, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(step(1000f, 942f)), 735f, _wgslsmith_f_op_f32(floor(1242f))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-49987i, -12052i, global1.x), vec3<i32>(654i, global1.x, global1.x)), global1.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), ~1u <= u_input.a));
    let var_0 = -2217i;
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    var var_1 = var_0;
    return all(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), !(global1.x != 7650i) || true, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = ~2147483647i;
    global1 = countOneBits(-firstLeadingBit(global0[_wgslsmith_index_u32(abs(4294967295u), 24u)]));
    global1 = vec2<i32>(6256i, global1.x) & vec2<i32>(~func_2().x, firstTrailingBit(~(-global1.x)));
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~10516u, u_input.a, 1u), ~reverseBits(u_input.a)), u_input.a), ~(u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(65577u, u_input.a, 1u), vec3<u32>(u_input.a, 45228u, u_input.a)) % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(78885u, ~u_input.a), firstTrailingBit(28363u)) % 32u), 1u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)), var_1.yz, -vec4<i32>(firstLeadingBit(2147483647i | global1.x), firstTrailingBit(_wgslsmith_mult_i32(-1i, -44115i)), -(~global1.x), _wgslsmith_mult_i32(reverseBits(global1.x), ~global1.x)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_div_vec3_f32(vec3<f32>(507f, arg_1.x, 343f), _wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(-840f, var_2.a, -509f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(true, func_1(), false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(226f, _wgslsmith_f_op_f32(-169f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -186f))))));
}

