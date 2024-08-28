struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(0u), Struct_1(4360u), Struct_1(7784u), Struct_1(1u), Struct_1(32082u), Struct_1(4036u), Struct_1(0u), Struct_1(6084u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    return -1510f;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(~1u);
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -299f), _wgslsmith_f_op_f32(floor(-1542f))))))), -1113f));
    global0 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(min(u_input.b, u_input.a.x << (_wgslsmith_div_u32(var_0.a, var_0.a) % 32u)), u_input.a.x), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yx, u_input.a.xz), vec2<u32>(_wgslsmith_clamp_u32(~u_input.b, 7019u, ~0u), 4294967295u)));
    return vec3<bool>(any(vec2<bool>(true, true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))) | false, true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(188f - arg_3) - _wgslsmith_f_op_f32(1003f * -205f)), -185f))));
    let var_1 = arg_2.yz;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_0.x), _wgslsmith_f_op_f32(min(418f, var_0.x)), 323f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-641f, -907f, -2052f), vec3<f32>(-1242f, 996f, var_0.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, var_0.x) - vec3<f32>(arg_3, arg_3, -825f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, var_0.x, arg_3) + vec3<f32>(var_0.x, 1087f, var_0.x)))))));
    let var_2 = var_0.yx;
    let var_3 = Struct_1(~arg_1.a);
    return ~u_input.c.x >> (arg_1.a % 32u);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u & ~u_input.a.x, 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(3076u, u_input.a.x), ~u_input.a.yy)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.b), u_input.a)), u_input.a);
    var var_1 = _wgslsmith_sub_vec4_i32(-(vec4<i32>(0i, u_input.c.x, 48954i, u_input.c.x) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 24009i, -2147483647i))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(28285u, var_0.x, u_input.a.x, 42097u), vec4<u32>(reverseBits(39121u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~var_0.x)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -1i, 0i, u_input.c.x), -vec4<i32>(-2147483647i, 9429i, u_input.c.x, -2147483647i)), func_4(all(vec3<bool>(false, false, true)), Struct_1(var_0.x), func_3(), arg_0.x), 30544i, u_input.c.x));
    var var_2 = 1u;
    global0 = array<Struct_1, 8>();
    var_1 = vec4<i32>(abs(~abs(0i)), _wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_div_i32(min(countOneBits(select(1i, -2147483647i, false)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, -18909i, u_input.c.x, 28899i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(0i, -2147483647i, -11112i, u_input.c.x)))), min(_wgslsmith_add_i32(-u_input.c.x, 2147483647i), -(22961i << (u_input.b % 32u)))), -_wgslsmith_sub_i32(~(-18060i), -32246i));
    return 3761i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -961f))));
    var var_1 = _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, min(-u_input.c.x, -1i));
    var var_2 = var_0;
    let var_3 = global0[_wgslsmith_index_u32(~4294967295u, 8u)];
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-377f * _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1000f, true))));
    var_1 = countOneBits(28701i);
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1f, var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -2019f, 688f), vec3<f32>(529f, var_0, -399f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-3233f);
}

