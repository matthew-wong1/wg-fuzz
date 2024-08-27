struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 4294967295u, 1u, 0u, 58135u, 1u, 27067u, 86100u, 46029u, 40403u, 39484u);

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-6465i, -1106i), vec2<i32>(-11461i, 13480i), vec2<i32>(-1i, -1008i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 57600i), vec2<i32>(-17716i, -48960i), vec2<i32>(45807i, 55247i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -42903i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-81441i, -1i), vec2<i32>(-19121i, -4535i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-18396i, 21795i), vec2<i32>(0i, -24194i), vec2<i32>(-9755i, 0i), vec2<i32>(19701i, 13851i), vec2<i32>(46734i, 11819i), vec2<i32>(20960i, 0i), vec2<i32>(3609i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -36312i), vec2<i32>(-1i, 36156i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-36632i, -1i), vec2<i32>(1i, 1i), vec2<i32>(4871i, 0i), vec2<i32>(2147483647i, -23945i), vec2<i32>(0i, 5860i), vec2<i32>(-32356i, -3415i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = min(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, arg_0.www), u_input.a), 35751u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 11u)], abs(arg_0.x)) >> (u_input.a.x % 32u)), ~8275u);
    let var_1 = -64393i;
    let var_2 = Struct_2(Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), arg_1), Struct_1(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(-arg_1)));
    var var_3 = select(select(select(!vec2<bool>(var_2.a.a, var_2.b.a), !vec2<bool>(var_2.b.a, false), var_2.a.a), !(!select(vec2<bool>(var_2.a.a, var_2.a.a), vec2<bool>(var_2.a.a, var_2.a.a), vec2<bool>(false, var_2.a.a))), vec2<bool>(var_1 <= 2147483647i, false)), !vec2<bool>(true, !var_2.a.a & all(vec4<bool>(true, var_2.a.a, true, var_2.a.a))), !select(!select(vec2<bool>(var_2.a.a, var_2.b.a), vec2<bool>(true, var_2.b.a), var_2.a.a), !vec2<bool>(var_2.b.a, var_2.a.a), vec2<bool>(false, false)));
    var var_4 = _wgslsmith_sub_u32(var_0, ~reverseBits(_wgslsmith_clamp_u32(~12258u, var_0, ~u_input.a.x)));
    return !vec2<bool>(-1584f >= _wgslsmith_f_op_f32(select(-741f, _wgslsmith_f_op_f32(242f * 696f), !var_2.a.a)), all(vec4<bool>(true != var_2.b.a, !var_3.x, false, true)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> bool {
    global0 = array<u32, 11>();
    var var_0 = Struct_3(-abs(countOneBits(~vec3<i32>(-5687i, -16847i, 7047i))), any(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), func_3(arg_1, vec3<f32>(-323f, 404f, -1638f)), !func_3(arg_1, vec3<f32>(-884f, 928f, -1783f)))), ~1u);
    return select(var_0.b, all(select(!vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(true, func_3(arg_1, vec3<f32>(-1712f, -814f, 1010f)).x, any(vec3<bool>(var_0.b, true, false)), 84696u <= global0[_wgslsmith_index_u32(arg_0, 11u)]), true)), false);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(-18182i, -2147483647i, -25496i, 29993i), vec4<i32>(-13580i, 42933i, 17571i, 1i)), false, select(arg_0.a, false, all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a))), any(vec2<bool>(true, true))), select(vec4<bool>(func_2(global0[_wgslsmith_index_u32(46932u, 11u)], vec4<u32>(0u, 56540u, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), any(vec4<bool>(true, arg_0.a, true, false)), arg_0.a, arg_0.a), !select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(false, true, true, false), false), vec4<bool>(true, arg_0.a, false, true), vec4<bool>(true, arg_0.a, arg_0.a, false))), vec4<bool>(any(!vec4<bool>(false, true, arg_0.a, arg_0.a)), true, true, true)), !(!vec4<bool>(arg_0.a, true | arg_0.a, func_3(vec4<u32>(15691u, 3886u, 58509u, u_input.a.x), arg_0.b).x, !arg_0.a)), vec4<bool>(true, arg_0.a, false, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(22317u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], 1u, u_input.a.x), ~vec4<u32>(16308u, 4294967295u, u_input.a.x, u_input.a.x)) == _wgslsmith_div_u32(1u, 4294967295u)));
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    return Struct_2(Struct_1(!(!var_0.x), arg_0.b), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global1 = array<vec2<i32>, 30>();
    let var_1 = func_1(Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, -1112f, -1781f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, -1052f, -1851f))))));
    var var_2 = Struct_1(!var_1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.b.x, var_1.b.b.x, -392f), vec3<f32>(-1224f, var_1.a.b.x, -578f))), var_1.b.b, func_2(min(global0[_wgslsmith_index_u32(6925u, 11u)], u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u))))));
    var var_3 = 5198i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(523f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.b.x)) - _wgslsmith_f_op_f32(683f + -1444f))) + 1257f), ~_wgslsmith_mult_i32(-44127i, _wgslsmith_clamp_i32(1i, ~4807i, _wgslsmith_sub_i32(1i, -33271i))));
}

