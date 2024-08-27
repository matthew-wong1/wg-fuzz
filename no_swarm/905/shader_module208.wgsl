struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, true, false, false, false, true, true, true, false, false, false, true, true, false, false, false, true, false, false, false, true, false, false, true, true, false, true, true, true);

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    return u_input.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<i32> {
    global1 = Struct_2(u_input.c.x ^ 1u, ~u_input.d, global1.a, _wgslsmith_mult_u32(global1.a, ~_wgslsmith_clamp_u32(u_input.d.x, u_input.a, 34665u)) == max(~(~u_input.d.x), ~(global1.b.x >> (0u % 32u))), Struct_1(select((vec3<u32>(17775u, global1.e.a.x, global1.b.x) & u_input.b.zwy) << (_wgslsmith_mult_vec3_u32(vec3<u32>(136779u, u_input.d.x, u_input.c.x), vec3<u32>(u_input.a, 0u, 1040u)) % vec3<u32>(32u)), global1.b, true)));
    let var_0 = !vec3<bool>(true, all(!vec4<bool>(false, global1.d, false, global1.d)), !global1.d);
    global1 = Struct_2(abs(_wgslsmith_mod_u32(4294967295u >> (u_input.c.x % 32u), _wgslsmith_add_u32(global1.e.a.x, u_input.d.x))) ^ 4294967295u, reverseBits(u_input.d), ~func_3(Struct_3(arg_0.a, arg_0.a, arg_1.yxz), Struct_2(~46687u, _wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.x, 62438u, 4294967295u), u_input.d), 1u, false, Struct_1(u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.b, 1937f) + vec3<f32>(arg_0.a, arg_0.a, arg_0.b)))), global0[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.d.x)), 30u)], global1.e);
    global0 = array<bool, 30>();
    var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, arg_1.x), 0i), arg_1.x, countOneBits(i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(arg_0.c, arg_0.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.c.x, ~arg_0.c.x, 25840i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 1i, 2147483647i, -1i), firstLeadingBit(arg_1))));
    return ~vec3<i32>(var_1.x, _wgslsmith_mult_i32(-(~arg_0.c.x), _wgslsmith_mult_i32(arg_1.x & 2147483647i, 0i)), -12647i);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1299f)))) - 886f), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0, 18387i), ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-26847i, arg_0, arg_0), vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, -37236i, arg_0)), vec3<i32>(-2147483647i, 22711i, 2147483647i))));
    global0 = array<bool, 30>();
    var var_1 = var_0;
    let var_2 = ~abs(u_input.d.yx);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(var_1.c.x ^ (arg_0 & 0i)), _wgslsmith_mult_i32(1i | (2797i | arg_0), -(~var_1.c.x)), _wgslsmith_div_i32(arg_0, arg_0)), func_2(Struct_3(1102f, var_1.a, var_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.c.x, 25464i, -1380i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, var_0.c.x, var_0.c.x, 69721i), vec4<i32>(0i, -23679i, var_1.c.x, -2147483647i)) & vec4<i32>(var_1.c.x, var_0.c.x, var_1.c.x, var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(-5501i, -2147483647i, -1i), vec3<i32>(17243i, 1i, -1i))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(-29111i, -23466i, 8400i)), ~vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1867f, -586f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 1588f))) - vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1823f, 548f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-691f, -1000f) + vec2<f32>(316f, -1000f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, 1334f)))))), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(~(~4294967295u), 30u)], countOneBits(-14645i) == _wgslsmith_clamp_i32(71869i, -39958i, -2147483647i)), !(!all(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.a, 30u)], true, false)))));
    let var_1 = true;
    global1 = Struct_2(46396u, vec3<u32>(_wgslsmith_add_u32(global1.c, 1u), global1.b.x, min(_wgslsmith_add_u32(0u, u_input.c.x), 0u)), reverseBits(global1.a), any(vec4<bool>(true, true, false, _wgslsmith_f_op_f32(sign(-1044f)) <= _wgslsmith_f_op_f32(max(-557f, -1137f)))), Struct_1(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(-117f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-535f, 1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -670f), vec3<u32>(~(~u_input.a), firstTrailingBit(_wgslsmith_div_u32(1u, global1.c)), _wgslsmith_add_u32(global1.b.x, ~u_input.a)), global1.c);
}

