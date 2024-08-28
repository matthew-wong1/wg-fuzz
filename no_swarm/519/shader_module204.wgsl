struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1193f, 188f);

var<private> global1: array<vec2<bool>, 5>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-964f, -1299f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -711f), vec2<f32>(-439f, global0.x))) * vec2<f32>(1500f, 340f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1550f))))));
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(-35399i, 1i), -vec2<i32>(~abs(-20634i), -_wgslsmith_sub_i32(-1i, -5030i)));
    let var_1 = !any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), reverseBits(vec3<u32>(8266u, 1u, u_input.a.x)))), 5u)]);
    let var_2 = ~vec3<u32>(~74595u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 24953u)), (vec2<u32>(52689u, u_input.a.x) << (vec2<u32>(u_input.a.x, 68263u) % vec2<u32>(32u))) | vec2<u32>(1u, u_input.a.x)), 52716u);
    global1 = array<vec2<bool>, 5>();
    return global0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 5>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -340f)) - -809f) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1012f, arg_1.d, arg_1.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(929f * -987f) * global0.x))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(921f))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - arg_1.d))))));
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a.yy << (~abs(u_input.a.xx) % vec2<u32>(32u)), ~u_input.a.xw) >> (max(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.wx ^ u_input.a.xw, ~u_input.a.yy, vec2<u32>(18074u, arg_1.c) << (u_input.a.yy % vec2<u32>(32u))), vec2<u32>(~57566u, ~1u)), ~vec2<u32>(max(u_input.a.x, 1u), _wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u))) % vec2<u32>(32u));
    global1 = array<vec2<bool>, 5>();
    return Struct_1(true, (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, -35820i), vec3<i32>(arg_1.b, arg_1.b, 12826i)) | arg_0.x) ^ 25594i, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

fn func_1() -> StorageBuffer {
    var var_0 = abs(vec3<i32>(-5208i, -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(4806i, 1i, 2147483647i)), vec3<i32>(1i, 1i, 1i)), -34001i));
    var var_1 = func_2(vec3<i32>(~(~1i), var_0.x, -16076i), Struct_1(!(any(vec2<bool>(true, true)) || any(vec4<bool>(false, true, false, true))), -var_0.x, u_input.a.x, global0.x));
    let var_2 = ~(~(~4294967295u));
    var var_3 = _wgslsmith_mod_i32(-var_1.b, ~(-(~var_0.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-4683i, var_0.x, 0i), vec3<i32>(var_0.x, var_0.x, 29217i)))));
    var var_4 = vec3<f32>(global0.x, 1727f, global0.x);
    return StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), select(max(u_input.a.x, 0u), ~4294967295u, func_2(vec3<i32>(var_0.x, 2147483647i, 38086i), Struct_1(var_1.a, var_0.x, var_2, -323f)).a && false) | ~_wgslsmith_dot_vec3_u32(u_input.a.xyx >> (vec3<u32>(44728u, 87148u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(81291u, 3662u, u_input.a.x), u_input.a.www)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

