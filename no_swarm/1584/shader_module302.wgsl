struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-356f, -130f, -1000f), vec3<f32>(-470f, 571f, 456f), vec3<f32>(-690f, 395f, -1108f), vec3<f32>(741f, 616f, -157f), vec3<f32>(-273f, 142f, -354f), vec3<f32>(696f, -233f, -656f), vec3<f32>(1638f, 170f, 769f), vec3<f32>(2341f, 356f, -931f), vec3<f32>(-308f, 1000f, 457f), vec3<f32>(-1562f, 2647f, 1277f), vec3<f32>(-167f, -1882f, 741f), vec3<f32>(-901f, -1000f, -1555f), vec3<f32>(1000f, 671f, -859f), vec3<f32>(-2077f, 1225f, 792f), vec3<f32>(1364f, 354f, 443f), vec3<f32>(1129f, -311f, -1774f), vec3<f32>(461f, -228f, -220f), vec3<f32>(1000f, -1000f, -648f), vec3<f32>(-1360f, 411f, -380f), vec3<f32>(423f, -2179f, 915f), vec3<f32>(1000f, 1567f, 1152f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(!(!arg_0.a), 56911u);
    let var_1 = arg_2;
    return Struct_1(!(!arg_0.a), 1u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<f32>, 21>();
    global1 = array<vec3<f32>, 21>();
    let var_0 = vec2<i32>(u_input.a.x, -(-9714i & _wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.b.x))) << (vec2<u32>(~(~52053u), arg_0.b) % vec2<u32>(32u));
    let var_1 = -u_input.a.x & -5982i;
    var var_2 = vec3<u32>(arg_0.b, 0u & ~(~arg_0.b), ~(~(max(50257u, 21035u) >> (~arg_1.b % 32u))));
    return arg_0;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_3(func_2(Struct_1(false, ~abs(1u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-709f, 827f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(-512f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(402f, -786f) - vec2<f32>(arg_0, 1000f)) - vec2<f32>(arg_0, -468f))), ~vec2<i32>(u_input.b.x << (global0[_wgslsmith_index_u32(0u, 4u)] % 32u), _wgslsmith_add_i32(-46914i, 2147483647i))), Struct_1(true, 4294967295u));
    global1 = array<vec3<f32>, 21>();
    let var_1 = ~(~u_input.b.x) <= u_input.a.x;
    let var_2 = abs(vec3<u32>(select(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(34346u, 1u), func_2(var_0, vec2<f32>(arg_0, arg_0), u_input.b).b), true), _wgslsmith_clamp_u32(min(global0[_wgslsmith_index_u32(var_0.b, 4u)], 4294967295u), 4294967295u, var_0.b) << (reverseBits(reverseBits(global0[_wgslsmith_index_u32(var_0.b, 4u)])) % 32u), _wgslsmith_mod_u32(~(~32831u), _wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 4u)]), ~16190u))));
    let var_3 = select(select(vec4<bool>(var_0.a, any(vec4<bool>(var_1, var_1, true, false)), _wgslsmith_f_op_f32(-arg_0) < -1286f, any(select(vec2<bool>(true, var_0.a), vec2<bool>(var_1, var_0.a), false))), !vec4<bool>(true, all(vec4<bool>(true, true, var_1, var_0.a)), func_3(Struct_1(var_1, var_2.x), var_0).a, var_1), false), select(vec4<bool>(!(var_1 | false), true, var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(37144u, 0u, 69084u), var_2) == abs(34946u)), select(!vec4<bool>(true, false, false, var_1), !select(vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_1, var_0.a, false), vec4<bool>(var_1, true, var_0.a, false)), !(!vec4<bool>(var_0.a, true, true, var_1))), all(!select(vec2<bool>(var_1, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a))), false);
    return -576i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1305f + -1149f));
    let var_1 = _wgslsmith_mod_i32(-(~(-u_input.a.x & (u_input.a.x & u_input.a.x))), _wgslsmith_mult_i32(0i, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(334f + 1228f), _wgslsmith_f_op_f32(min(-988f, -826f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(1018f + -749f), select(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 0i, -49503i), vec3<i32>(var_1, var_1, var_1))), -1i), ~12283i, true));
}

