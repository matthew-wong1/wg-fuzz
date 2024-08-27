struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return arg_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = any(vec4<bool>(true, true, -74461i > abs(u_input.a), true));
    let var_1 = 0u;
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let var_2 = Struct_1(-13534i);
    return abs(var_1);
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = ~firstTrailingBit(~vec2<u32>(arg_1, arg_1) | ~vec2<u32>(arg_1, arg_1));
    var var_1 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(-_wgslsmith_add_i32(u_input.a, ~u_input.a), min(-u_input.a, -select(u_input.a, u_input.a, true))), ~u_input.a);
    let var_2 = select(vec2<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), u_input.a == _wgslsmith_dot_vec2_i32(var_1.xz, -var_1.xx)), select(vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), false), !(var_1.x >= u_input.a))), select(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(-133f * -3081f) != _wgslsmith_f_op_f32(-arg_0), !(29984u == var_0.x)), true));
    var var_3 = 1u;
    return select(var_0.x, _wgslsmith_mult_u32(arg_1 << (abs(~105337u) % 32u), arg_1), all(vec3<bool>(any(vec2<bool>(var_2.x, false)), true, true)) && (var_0.x < 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    var var_0 = _wgslsmith_mod_vec2_i32(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-10642i, countOneBits(u_input.a)), -(~vec2<i32>(-1i, u_input.a))), (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)) >> (select(vec2<u32>(51898u, 52825u), vec2<u32>(1u, 65464u), vec2<bool>(true, true)) % vec2<u32>(32u))) | ~vec2<i32>(u_input.a, u_input.a), false), -_wgslsmith_clamp_vec2_i32(vec2<i32>(func_1(31188u, u_input.a, Struct_1(u_input.a), Struct_1(u_input.a)), 1i), vec2<i32>(u_input.a, 2147483647i) ^ -vec2<i32>(u_input.a, -1i), -reverseBits(vec2<i32>(-8915i, u_input.a))));
    let var_1 = Struct_1(u_input.a);
    global1 = ~68299u ^ (func_2(vec2<f32>(1f, 1f), -u_input.a, true) | ~_wgslsmith_sub_u32(74689u, 13456u));
    global0 = array<vec3<bool>, 14>();
    let var_2 = (func_3(1171f, _wgslsmith_dot_vec2_u32(vec2<u32>(15284u, 1u), vec2<u32>(13917u, 0u)) | (4294967295u >> (0u % 32u))) ^ 4294967295u) << (func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-136f * -1000f), _wgslsmith_f_op_f32(ceil(-155f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(f32(-1f) * -677f)))), ~_wgslsmith_add_i32(0i, i32(-1i) * -28419i), 0u != func_3(1764f, 1u)) % 32u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-768f + -108f))))) != 510f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(countOneBits(var_1.a) << (var_2 % 32u), u_input.a)), u_input.a);
}

