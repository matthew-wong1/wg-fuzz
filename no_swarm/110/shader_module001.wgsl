struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> bool {
    global0 = Struct_2(1u);
    global1 = array<vec4<u32>, 6>();
    let var_0 = Struct_1(vec4<u32>(13028u, ~8379u, _wgslsmith_sub_u32(~u_input.a, ~u_input.a), u_input.a), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), u_input.c.x < (1i ^ u_input.d)), vec4<bool>(!((u_input.a ^ global0.a) == ~u_input.a), true, all(vec2<bool>(true, any(vec2<bool>(false, true)))), true == ((u_input.e.x | -4163i) >= u_input.c.x)));
    var var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_dot_vec3_i32(-u_input.c, u_input.e)));
    var var_2 = abs(~firstLeadingBit(var_0.a.x));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return Struct_1(global1[_wgslsmith_index_u32(global0.a, 6u)], vec3<bool>(select(any(vec2<bool>(false, false)), true, func_3(-509f)) && true, true, false), vec4<bool>(false, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(firstLeadingBit(2028u), 6u)], reverseBits(global1[_wgslsmith_index_u32(global0.a, 6u)])) <= _wgslsmith_mod_u32(~u_input.a, countOneBits(u_input.a)), (true || all(vec4<bool>(true, false, true, true))) || true, !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 3344u;
    global0 = Struct_2(_wgslsmith_div_u32(3261u, ~(~(~0u))));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 304f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1149f, -1772f) - vec2<f32>(-184f, 441f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-660f)), 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-265f, 534f)))), false))));
    var var_3 = var_1;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> bool {
    var var_0 = 3050u;
    var var_1 = func_4(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), func_2(vec3<i32>(u_input.d, _wgslsmith_mod_i32(u_input.b, 1i), _wgslsmith_div_i32(~u_input.d, u_input.e.x >> (arg_1.x % 32u)))), _wgslsmith_mult_u32(12898u, arg_1.x), func_2(vec3<i32>(u_input.e.x, _wgslsmith_sub_i32(9149i, u_input.d), u_input.e.x)));
    let var_2 = func_2(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, -u_input.c.x), vec3<i32>(u_input.c.x ^ u_input.e.x, ~u_input.d, u_input.d))));
    let var_3 = true;
    global0 = Struct_2(7778u);
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 6>();
    let var_0 = Struct_1(vec4<u32>(global0.a, ~max(1u, u_input.a), firstLeadingBit(22591u), global0.a) ^ reverseBits(~global1[_wgslsmith_index_u32(~u_input.a, 6u)]), !vec3<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), all(vec4<bool>(false, true, true, true))), select(vec4<bool>(true, false, any(vec3<bool>(true, true, true)), abs(0i) < -u_input.e.x), vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), true, all(vec2<bool>(true, true)), func_1(-613f, global1[_wgslsmith_index_u32(global0.a << (4294967295u % 32u), 6u)])), vec4<bool>(~4294967295u < ~u_input.a, true, true, true)));
    let var_1 = -762f;
    global0 = Struct_2(~(~1u));
    global0 = Struct_2(~_wgslsmith_clamp_u32(max(var_0.a.x, var_0.a.x), reverseBits(4294967295u), 1u));
    let var_2 = Struct_2(abs(global0.a));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global0.a, 4294967295u, ~var_0.a.x, ~4294967295u), vec4<u32>(1u, var_0.a.x, 22u, _wgslsmith_clamp_u32(u_input.a, 16919u, 0u))), ~select(50808u, ~3359u, true)), ~var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.a.yy, var_0.a.zw), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))));
}

