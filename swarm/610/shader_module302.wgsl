struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.b - _wgslsmith_f_op_f32(-arg_0.a.b))))));
    var var_1 = Struct_1(19364i, abs(75518u), vec4<bool>(all(!vec4<bool>(arg_2, false, false, false)) || select(false, arg_2, true), !select(true, arg_2, arg_2) && true, arg_2, arg_2), -1i);
    global0 = 1u;
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_div_i32(countOneBits(abs(-33079i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -47712i, arg_3.a, var_1.a), u_input.d))), var_0.b);
    let var_3 = var_0;
    return select(vec2<bool>(true, var_1.c.x), !vec2<bool>(true, arg_2), global1[_wgslsmith_index_u32(select(var_1.b, var_1.b, all(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, false, var_1.c.x), true))), 5u)]);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = vec2<bool>(!any(select(func_3(Struct_3(Struct_2(u_input.d.x, 497f)), 11902i, true, Struct_2(-21039i, -328f)), vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true))), all(select(vec3<bool>(arg_0, true, true), vec3<bool>(true, true, u_input.a < u_input.c), func_3(Struct_3(Struct_2(-1i, 607f)), abs(u_input.c), arg_0, Struct_2(1i, -1000f)).x)));
    let var_1 = Struct_2(1i & _wgslsmith_sub_i32(~(u_input.a & u_input.a), firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -534f));
    let var_2 = 12530u;
    var var_3 = false;
    var var_4 = min(8951u, ~var_2 ^ 1u);
    return vec2<f32>(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(max(-1000f, var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(470f - var_1.b)))));
}

fn func_1() -> vec2<i32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)) * -1000f), _wgslsmith_f_op_f32(1108f - _wgslsmith_f_op_f32(floor(-477f)))));
    var var_2 = ~(~vec2<u32>(u_input.b, u_input.e.x));
    global2 = array<Struct_1, 4>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_f32(ceil(-163f))), _wgslsmith_f_op_vec2_f32(func_2(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), ~vec3<u32>(4294967295u, 40562u, var_2.x)))));
    return reverseBits(_wgslsmith_add_vec2_i32(select(firstLeadingBit(vec2<i32>(2147483647i, u_input.d.x)), vec2<i32>(1i, u_input.d.x), true), u_input.d.wz)) & countOneBits(-vec2<i32>(select(2147483647i, -1i, true), _wgslsmith_sub_i32(u_input.c, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x >> (_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, u_input.e.x)), 54592u) % 32u);
    global0 = ~var_0;
    let var_1 = func_1();
    global0 = _wgslsmith_add_u32(reverseBits(~var_0), ~select(38460u, ~(~u_input.e.x), true));
    let var_2 = ~u_input.e;
    global0 = ~(~0u);
    global1 = array<vec2<bool>, 5>();
    let var_3 = Struct_3(Struct_2(0i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-443f)) * -161f)))));
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.x), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(26130u, var_2.x, 3863u, var_0), ~vec4<u32>(15006u, var_2.x, var_0, 68111u))));
}

