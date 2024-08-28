struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-68041i, 1i, 22823i, -1i, 2147483647i, 1i, 2814i, i32(-2147483648), -22795i, 0i, 59260i, 0i, i32(-2147483648), 2147483647i, -13694i, 69247i, 0i, 0i, 28055i, -64537i, -1471i, 0i, -21152i, -235i, 2147483647i, -23506i, -18798i, -1i, 17060i, 45177i, -1i, -1i);

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>) -> i32 {
    let var_0 = reverseBits(abs(abs(abs(vec4<i32>(-1i, -28966i, u_input.a, u_input.d)))));
    var var_1 = Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(~1u, 10u)], -1000f)));
    global1 = _wgslsmith_add_u32(~(~(~abs(53721u))), select(select(0u, 0u, false), abs(4205u), var_1.a.a.a.x));
    let var_2 = abs(var_0.x);
    var var_3 = !(!(!(!vec3<bool>(false, var_1.a.a.a.x, var_1.a.a.a.x))));
    return var_2;
}

fn func_2() -> vec3<i32> {
    global0 = array<i32, 32>();
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(472f)) + _wgslsmith_f_op_f32(floor(769f))), -1760f, _wgslsmith_f_op_f32(f32(-1f) * -559f), 561f)), min(_wgslsmith_div_u32(4294967295u, 1u), ~(~(~4294967295u))), vec3<i32>(global0[_wgslsmith_index_u32(69036u, 32u)], _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(11992u, 32u)], _wgslsmith_add_i32(u_input.b, 50023i)) ^ 1i, -global0[_wgslsmith_index_u32(~4294967295u, 32u)]));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 0u, 62080u, 1u), vec4<u32>(8430u, 4294967295u, 1u, 49872u), vec4<bool>(false, true, false, false)), vec4<u32>(~6457u, 11386u, 15168u, 144u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 9786u, 0u), vec4<u32>(23367u, 0u, 12839u, 50430u)), abs(75935u)), max(~vec4<u32>(0u, 4294967295u, 65852u, 39570u), ~min(vec4<u32>(4294967295u, 4294967295u, 41382u, 19846u), vec4<u32>(0u, 26934u, 0u, 0u))))), 10u)];
    var var_2 = Struct_1(!select(select(!global2[_wgslsmith_index_u32(6301u, 10u)], select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, true, true), false), true), global2[_wgslsmith_index_u32(~(~0u), 10u)], vec4<bool>(!var_1.x, var_1.x, any(var_1.zx), true)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f * -1741f)), _wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(f32(-1f) * -1972f))), 1f)));
    var var_3 = vec2<bool>(true, all(var_2.a));
    return -vec3<i32>(-18624i, 0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(21519i, u_input.a, global0[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_div_vec3_i32(vec3<i32>(-32782i, 0i, 10669i), vec3<i32>(-27435i, 1i, var_0)), all(var_1.xx)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0, -33684i, u_input.d), vec3<i32>(0i, global0[_wgslsmith_index_u32(48922u, 32u)], 26561i))));
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(287f, -1222f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -470f)) - -281f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-463f, -1306f)) - _wgslsmith_div_f32(-621f, -688f)))), any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))))));
    var var_1 = -_wgslsmith_dot_vec3_i32(max(max(func_2(), abs(vec3<i32>(18649i, global0[_wgslsmith_index_u32(1u, 32u)], -26494i))), select(abs(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.c, u_input.a)), vec3<i32>(u_input.c, 15242i, u_input.d) & vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -5807i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), vec3<i32>(1i << (_wgslsmith_clamp_u32(53512u, 13790u, 1u) % 32u), abs(42836i), -56397i));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1423f, -770f), _wgslsmith_f_op_f32(floor(259f)), true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1459f)))) * -1616f) + -1259f);
    global0 = array<i32, 32>();
    var var_2 = Struct_3(Struct_2(Struct_1(select(vec4<bool>(true, true, false, true), !global2[_wgslsmith_index_u32(51916u, 10u)], 17774i <= u_input.b), -1431f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-var_2.a.a.b)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.a.b, var_2.a.a.b) + _wgslsmith_f_op_f32(min(var_2.a.a.b, -1224f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-487f * var_2.a.a.b) + -642f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -205f), -469f, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -398f, var_0.x, 1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -480f, -2123f, 1042f)) - vec4<f32>(var_0.x, var_0.x, 750f, -430f)))));
    var var_2 = 5313i;
    global0 = array<i32, 32>();
    global2 = array<vec4<bool>, 10>();
    var var_3 = all(vec4<bool>(-2147483647i > global0[_wgslsmith_index_u32(1u, 32u)], true, _wgslsmith_f_op_f32(-var_1.x) < -966f, !(!all(vec4<bool>(false, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~4294967295u, _wgslsmith_div_u32(31708u, 4294967295u)), vec2<u32>(1u, 1u), ~(~countOneBits(vec2<u32>(1u, 24338u)))), ~(vec3<u32>(~26284u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(52903u, 13902u, 1u), vec3<u32>(53638u, 7908u, 55910u))) & ~(~vec3<u32>(4294967295u, 4294967295u, 0u))), ~1u, vec2<u32>(0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(11545u, 20837u, 1u, 71933u), vec4<u32>(4294967295u, 71337u, 87762u, 81682u)))), vec2<i32>(1i, 1i));
}

