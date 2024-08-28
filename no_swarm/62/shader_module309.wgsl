struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(538f, 887f, 1009f, 131f, -307f, 439f, 998f, 776f, 130f);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true)));

var<private> global2: array<vec4<i32>, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    global2 = array<vec4<i32>, 31>();
    var var_1 = arg_0;
    global2 = array<vec4<i32>, 31>();
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(~(-46911i), u_input.b)), vec2<i32>(u_input.b, 5434i) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 18480u), vec2<u32>(u_input.a, u_input.a)) ^ ~vec2<u32>(4294967295u, 4872u)) % vec2<u32>(32u)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 24083i) & vec2<i32>(22694i, u_input.b), -vec2<i32>(u_input.b, 1557i)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-8577i, u_input.b)), vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<i32>(u_input.b, 17632i), select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), arg_0))) | firstLeadingBit(vec2<i32>(1i, 1i)));
    return Struct_1(arg_0, vec2<bool>(false, all(!(!vec3<bool>(true, true, arg_0)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(u_input.b, u_input.b, min(countOneBits(71421i), -u_input.b)), firstLeadingBit(u_input.b));
    global2 = array<vec4<i32>, 31>();
    return ~(~(~vec4<u32>(_wgslsmith_mult_u32(1u, 17420u), abs(u_input.a), _wgslsmith_mod_u32(u_input.a, 1u), u_input.a)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_1, 20>();
    global0 = array<f32, 9>();
    let var_0 = func_2(true);
    var var_1 = func_3(Struct_1(var_0.a, vec2<bool>(!(true || var_0.a), false)));
    global1 = array<Struct_1, 20>();
    return func_2(any(select(!(!vec3<bool>(false, false, var_0.b.x)), vec3<bool>(true, true, var_0.b.x), select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a, var_0.a, var_0.b.x), !vec3<bool>(var_0.a, true, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 9>();
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)])), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27249i, u_input.b) & vec2<i32>(-1i, u_input.b), select(select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, 32578i), true), select(vec2<i32>(-53848i, u_input.b), vec2<i32>(2147483647i, u_input.b), true), -2035f >= global0[_wgslsmith_index_u32(u_input.a, 9u)])), firstTrailingBit(firstTrailingBit(u_input.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] * global0[_wgslsmith_index_u32(47442u, 9u)]))))));
    let var_1 = min(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(15408u, ~_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_add_u32(31304u, u_input.a) << (u_input.a % 32u), countOneBits(u_input.a)) % vec4<u32>(32u)), -vec4<i32>(u_input.b, _wgslsmith_mod_i32(~2147483647i, -2147483647i), _wgslsmith_div_i32(-u_input.b, -1i), -u_input.b));
    var var_2 = Struct_4(vec3<i32>(1i, u_input.b | _wgslsmith_add_i32(u_input.b, -u_input.b), ~2147483647i));
    global0 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(func_3(func_2(var_0.a)).x), 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -450f)))), vec2<i32>(_wgslsmith_sub_i32(var_1.x, -(i32(-1i) * -9639i)), i32(-1i) * -19476i), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(15972u, 47282u), vec2<u32>(4294967295u, 32370u)), vec2<u32>(u_input.a, u_input.a))));
}

