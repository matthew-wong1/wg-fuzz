struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: array<u32, 19>;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-3544i, -1i, -1i, -1i), vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 51307i, 0i), vec4<i32>(4079i, -20926i, -42115i, -21517i), vec4<i32>(23224i, -26986i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 9095i, 2687i, -1i), vec4<i32>(12027i, -73926i, 1i, -24656i), vec4<i32>(-85690i, 31151i, -1i, 1i));

var<private> global3: f32 = -1540f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(-14626i, -1i) >> (~_wgslsmith_div_u32(u_input.b.x, 68592u) % 32u), u_input.a), vec3<u32>(1u, reverseBits(40500u), (arg_1.x ^ arg_1.x) << (1u % 32u)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_i32(-u_input.a, 1i), arg_1);
    global2 = array<vec4<i32>, 8>();
    let var_1 = !vec4<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), true)), true, true, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1178f, 1020f, -799f, 444f), vec4<f32>(1298f, 1013f, 931f, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, 696f, 1924f, -1077f) + vec4<f32>(-414f, 767f, 1959f, 336f))))));
    let var_3 = var_2.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1279f, var_2.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.x))))), 368f, _wgslsmith_f_op_f32(step(118f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1115f, var_2.x)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + _wgslsmith_f_op_f32(round(var_2.x))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(8708i, u_input.a, -1i), u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 37166i, arg_0.a), vec3<i32>(abs(1i), -1i, u_input.a)), -(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], vec4<i32>(arg_0.a, -1i, arg_0.a, -46429i)) >> (24878u % 32u)) | arg_0.a);
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, ~arg_0.b))))) + vec4<f32>(_wgslsmith_f_op_f32(round(-1586f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(0u, arg_0.b)).x, 144f))), 1386f, _wgslsmith_div_f32(-667f, 851f)));
    var var_2 = select(vec3<bool>(true, true, !(any(vec2<bool>(false, false)) && any(vec3<bool>(true, false, false)))), select(!vec3<bool>(select(true, false, true), false, select(true, true, false)), vec3<bool>(true, true, false), true | !(var_1.x <= var_1.x)), !(!any(vec2<bool>(true, true))) || all(vec2<bool>(true, all(vec2<bool>(false, true)))));
    return func_1(arg_0.b.yx, func_1(arg_0.b.zz, select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 11465u) ^ u_input.b, ~vec2<u32>(0u, u_input.b.x)), vec2<u32>(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(0u, 19u)]), 60901u), vec2<bool>(true, any(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)])))).b.yz);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 19>();
    global3 = -2808f;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1774f, 338f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(779f - -872f))) + -424f)));
    global2 = array<vec4<i32>, 8>();
    global0 = array<vec3<bool>, 9>();
    return Struct_1(u_input.a, vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, u_input.b.x) ^ vec2<u32>(arg_1, arg_2.b.x), vec2<u32>(arg_1, arg_1)) & _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(60325u, 1u)), 70456u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~u_input.a == abs(-(i32(-1i) * -1i)), _wgslsmith_div_u32(1u, firstLeadingBit(_wgslsmith_add_u32(0u, 1u))), func_2(func_1(u_input.b, vec2<u32>(max(0u, 4294967295u), global1[_wgslsmith_index_u32(4439u, 19u)] ^ 34315u))));
    let var_1 = Struct_1(_wgslsmith_div_i32(var_0.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(-10191i, u_input.a, -37138i), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, u_input.a), ~vec3<i32>(36620i, u_input.a, 45159i)))), select(var_0.b, reverseBits(var_0.b), !select(true, true, true)));
    let var_2 = !select(vec2<bool>(true, true), select(vec2<bool>(select(true, true, false), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true));
    global2 = array<vec4<i32>, 8>();
    let var_3 = var_1;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f + 630f), _wgslsmith_f_op_f32(573f - 227f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(176f, -836f) - vec2<f32>(782f, -234f))))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-709f * -833f), _wgslsmith_f_op_f32(max(1278f, -1038f)))), _wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(f32(-1f) * -330f)))));
}

