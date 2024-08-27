struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    let var_0 = ~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, ~(-18530i))));
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    var var_1 = ~abs(0u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f - -838f));
    return 30911i;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = min(-1i, _wgslsmith_add_i32(countOneBits(u_input.a), -2147483647i));
    var var_1 = -u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-908f, 471f, 548f), vec3<f32>(1055f, 243f, 809f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-702f, -1000f, 571f) - vec3<f32>(-976f, -311f, -1403f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(trunc(-1300f)), _wgslsmith_f_op_f32(trunc(1045f))))));
    let var_3 = any(select(select(vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 19u)]), false, all(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, -1943f < var_2.x), vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), !vec4<bool>(true, true, select(true, false, false), true), var_2.x == _wgslsmith_f_op_f32(ceil(-659f))));
    global0 = array<vec3<bool>, 19>();
    return false;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<f32> {
    global0 = array<vec3<bool>, 19>();
    let var_0 = _wgslsmith_div_f32(363f, arg_1);
    var var_1 = Struct_3(Struct_1(arg_0), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(true, _wgslsmith_f_op_f32(arg_1 * var_0) < _wgslsmith_f_op_f32(789f * arg_1), func_3(Struct_1(1i), 26546u, 52896u) & func_3(Struct_1(-1i), 74936u, 41286u)), func_3(Struct_1(u_input.a), 32169u, _wgslsmith_dot_vec3_u32(vec3<u32>(2644u, 1u, 11675u), vec3<u32>(0u, 91368u, 13595u))), (firstTrailingBit(4294967295u) >= 1u) && all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-995f - arg_1), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(arg_1 * 305f))), Struct_1(1i));
    var_1 = Struct_3(var_1.a, var_1.b, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.d, arg_1))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1061f - arg_1) - var_1.d)))), var_1.e);
    var var_2 = _wgslsmith_mult_u32(~0u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(64808u, 73840u, 13001u, 67500u), vec4<u32>(1u, 1u, 1u, 1u))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1635f, var_1.d) + vec2<f32>(-865f, arg_1))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, 1596f) - vec2<f32>(1014f, 842f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1923f, arg_1))))), vec2<f32>(var_1.d, _wgslsmith_f_op_f32(round(var_0))), true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + -859f)) + -350f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 794f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = abs(vec4<u32>(abs(~_wgslsmith_mod_u32(0u, 16238u)), _wgslsmith_div_u32(~1u, max(~40856u, max(4294967295u, 2757u))), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 37743u), 1u) & ~(~1u), 0u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(0i, -9883i)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), select(true, false, true)), vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), ~(~countOneBits(105573u)) == var_0.x, 1000f, Struct_1(arg_0.x));
    var var_2 = Struct_2(-1478f, Struct_1(i32(-1i) * -arg_1));
    var var_3 = ~0u;
    var var_4 = -_wgslsmith_sub_i32(abs(u_input.a), -((2147483647i | arg_1) ^ u_input.a));
    return Struct_1(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(-_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, 1i), min(vec2<i32>(77254i, 998i), vec2<i32>(u_input.a, u_input.a)))), ~(~(-(u_input.a << (30598u % 32u)))), _wgslsmith_f_op_vec2_f32(func_2(min(-func_1(vec2<u32>(4294967295u, 0u), true), ~u_input.a ^ _wgslsmith_sub_i32(u_input.a, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1132f))));
    let var_1 = _wgslsmith_sub_i32(func_4(firstLeadingBit(vec2<i32>(u_input.a, -1i)), _wgslsmith_div_i32(-2147483647i, reverseBits(u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(max(-756f, 534f)), _wgslsmith_f_op_f32(f32(-1f) * -1517f))).a, 4314i) << (79517u % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(572f * _wgslsmith_f_op_f32(floor(1961f))), _wgslsmith_f_op_vec2_f32(func_2(var_1, _wgslsmith_f_op_f32(select(-1513f, -336f, true)))).x, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(ceil(-854f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -358f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x))), var_2.x, var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(sign(var_2.x))))));
    global0 = array<vec3<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(66902u, 4294967295u, 74195u, 67929u), abs(vec4<u32>(48720u, 1u, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(55925u, 21306u, 33893u, 59251u), vec4<u32>(25253u, 4294967295u, 1u, 1u))) << (select(~vec4<u32>(0u, 4294967295u, 43987u, 8163u), max(vec4<u32>(0u, 63788u, 13884u, 43706u), vec4<u32>(12158u, 0u, 4294967295u, 0u)), all(global0[_wgslsmith_index_u32(6724u, 19u)])) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)));
}

