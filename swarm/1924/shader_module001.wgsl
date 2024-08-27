struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(399f, 879f, 470f), vec3<bool>(true, true, false));

var<private> global1: array<i32, 15> = array<i32, 15>(5402i, 595i, -19092i, -21450i, -16967i, -26985i, 46828i, 1i, 2147483647i, 1i, 1i, -1i, -21952i, 0i, -47488i);

var<private> global2: array<bool, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, arg_2, -768f, arg_0.x), vec4<f32>(1008f, global0.a.x, -520f, global0.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(930f, arg_2, 183f, 1443f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_2, 824f, arg_2)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_2, arg_0.x, arg_2)))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_1.x)), _wgslsmith_f_op_f32(-1419f - arg_1.x), _wgslsmith_f_op_f32(-1f)))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.x))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 317f))), select(vec3<bool>(!any(global0.b), false, true), select(vec3<bool>(true, true, arg_0.x < 671f), select(!global0.b, select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], true, global2[_wgslsmith_index_u32(u_input.a, 25u)]), global0.b, global0.b), global0.b), !any(global0.b)), any(vec4<bool>(any(global0.b), true, global0.b.x, !global2[_wgslsmith_index_u32(u_input.a, 25u)]))));
    global2 = array<bool, 25>();
    let var_2 = Struct_1(arg_1, var_1.b);
    var var_3 = vec3<bool>(!var_2.b.x, var_2.b.x, select(false, any(!var_2.b.zy), var_2.b.x));
    return vec2<bool>(true, !(!any(var_1.b.yy) || !(global0.b.x || global0.b.x)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(global0.a, global0.b);
    let var_1 = (any(func_3(_wgslsmith_f_op_vec3_f32(round(global0.a)), global0.a, 691f)) && true) == any(!(!var_0.b.yz));
    let var_2 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(max(abs(23513u), firstTrailingBit(u_input.a)), firstTrailingBit(4294967295u)), u_input.a, 4294967295u, 1u));
    let var_3 = Struct_1(global0.a, vec3<bool>(false, select(!var_1, false, any(vec2<bool>(var_0.b.x, var_0.b.x))) | !any(vec4<bool>(var_0.b.x, false, false, var_1)), var_0.b.x));
    let var_4 = (_wgslsmith_add_u32(countOneBits(select(1u, u_input.a, true)), _wgslsmith_mod_u32(firstLeadingBit(20834u), var_2.x)) & _wgslsmith_dot_vec3_u32(~var_2.xwy, _wgslsmith_mod_vec3_u32(countOneBits(var_2.yyx), var_2.yyw))) ^ 0u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(global0.a.x + -600f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -1000f)), arg_2), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)))), select(global0.b, var_3.b, all(vec4<bool>(var_0.b.x, false, false, false)) & true))), vec3<bool>(!any(vec4<bool>(true, false, var_0.b.x, global2[_wgslsmith_index_u32(24074u, 25u)])), true, true));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global1 = array<i32, 15>();
    let var_0 = global0.a;
    global2 = array<bool, 25>();
    let var_1 = func_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(38021i, global1[_wgslsmith_index_u32(countOneBits(u_input.a), 15u)] ^ countOneBits(16403i)), -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, arg_1.x, 1u), vec4<u32>(u_input.a, 1u, 1u, 3872u)), 15u)]), -19041i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * var_0.x) - _wgslsmith_f_op_f32(-global0.a.x)) - global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - arg_0)))));
    let var_2 = arg_1.wwx;
    return ~20526u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec3<i32>(-1i, global1[_wgslsmith_index_u32(1u, 15u)], 27902i) | abs(vec3<i32>(global1[_wgslsmith_index_u32(52695u, 15u)], -24439i, -2147483647i)))) ^ firstLeadingBit(vec3<i32>(-1i) * -(~vec3<i32>(-18454i, global1[_wgslsmith_index_u32(21558u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)])));
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), vec4<u32>(u_input.a, abs(~4294967295u), _wgslsmith_mult_u32(67592u, 34533u), firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a)))) ^ 19376u;
    var var_2 = global0.a.x;
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    var var_3 = func_2(-28626i, ~firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 15u)], var_0.x), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(89647u, 15u)], 38844i)), firstTrailingBit(var_0.x))), -1328f);
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer((select(vec3<i32>(var_0.x, -1i, global1[_wgslsmith_index_u32(u_input.a, 15u)]) >> (vec3<u32>(4294967295u, u_input.a, 1u) % vec3<u32>(32u)), ~vec3<i32>(var_0.x, -647i, -2147483647i), !global2[_wgslsmith_index_u32(u_input.a, 25u)]) & vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_1, 15u)], -14107i), _wgslsmith_dot_vec2_i32(vec2<i32>(34671i, global1[_wgslsmith_index_u32(4294967295u, 15u)]), var_0.yx), -2309i)) | ~(vec3<i32>(global1[_wgslsmith_index_u32(23648u, 15u)], global1[_wgslsmith_index_u32(25101u, 15u)], global1[_wgslsmith_index_u32(17683u, 15u)]) & select(vec3<i32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(var_1, 15u)]), vec3<i32>(var_0.x, 11438i, global1[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(var_1, 25u)])), vec4<u32>(~(~reverseBits(var_1)), var_1, ~_wgslsmith_clamp_u32(~u_input.a, var_1, ~20897u), ~(~_wgslsmith_div_u32(1u, var_1))), ~(~u_input.a), ~vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, 4294967295u), 1u, ~(~0u)), -1i);
}

