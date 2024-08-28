struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: vec3<f32> = vec3<f32>(-549f, -2277f, -1124f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = !arg_0.xzx;
    var var_1 = !(!(!(_wgslsmith_f_op_f32(global3.x - global3.x) >= -2101f)));
    global0 = array<vec3<f32>, 4>();
    let var_2 = Struct_1(any(!arg_0.yw));
    var var_3 = vec3<i32>(21147i, u_input.b, u_input.c.x);
    return Struct_1(all(!(!arg_0)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1095f)), _wgslsmith_div_f32(-350f, global3.x), select(true, true, arg_0.a))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-396f, global3.x) + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(min(-669f, global3.x)), any(vec4<bool>(true, arg_0.a, false, arg_0.a)))), -574f));
    global2 = array<vec2<i32>, 7>();
    let var_0 = 26284u;
    let var_1 = ~16565u;
    return vec2<bool>(!(_wgslsmith_f_op_f32(exp2(global3.x)) <= global3.x) && arg_0.a, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = countOneBits(~(~_wgslsmith_clamp_u32(67176u | u_input.a.x, _wgslsmith_clamp_u32(40522u, u_input.a.x, 97635u), 4294967295u)));
    global0 = array<vec3<f32>, 4>();
    let var_2 = any(select(!select(vec2<bool>(false, arg_0.a), select(vec2<bool>(false, false), vec2<bool>(var_0.a, false), var_0.a), !vec2<bool>(false, var_0.a)), select(vec2<bool>(any(vec4<bool>(arg_0.a, true, arg_0.a, false)), all(vec2<bool>(false, true))), vec2<bool>(arg_0.a, arg_0.a), func_3(arg_0, arg_0)), u_input.b > _wgslsmith_add_i32(u_input.b, u_input.b)));
    var var_3 = _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -420f)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    global0 = array<vec3<f32>, 4>();
    global2 = array<vec2<i32>, 7>();
    global0 = array<vec3<f32>, 4>();
    global2 = array<vec2<i32>, 7>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(3853u, 4u)], vec3<bool>(false, arg_0.a, true)))))) * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 1u), u_input.a.x | countOneBits(25468u)), 4u)]);
    return select(vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(arg_0.a, arg_0.a, false))), select(vec2<bool>(false, arg_0.a), !func_3(arg_0, func_2(arg_0, vec4<f32>(global3.x, arg_1, 1030f, arg_1))), all(!select(vec3<bool>(false, arg_0.a, true), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a))), !vec2<bool>(!arg_0.a | func_2(Struct_1(false), vec4<f32>(arg_1, global3.x, arg_1, global3.x)).a, true));
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    global1 = 2147483647i;
    global2 = array<vec2<i32>, 7>();
    var var_0 = true;
    let var_1 = func_1(vec4<bool>(true, arg_0.x, !select(u_input.b < -65420i, u_input.a.x <= 7495u, func_1(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)).a), arg_0.x));
    return Struct_1(all(vec3<bool>(var_1.a, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(max(firstLeadingBit(~u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 43388u)), 4u)])));
    var var_1 = func_5(func_4(func_2(func_1(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -351f, global3.x, global3.x))), -672f));
    let var_2 = any(select(vec3<bool>(!var_1.a, var_1.a && true, var_1.a), !select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a)), !select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false), var_1.a))) == (~(-2147483647i) <= u_input.b);
    var var_3 = ~select(u_input.c.x, u_input.c.x, !var_1.a);
    let var_4 = Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, 0i) >> (u_input.a.zzz % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(1i, u_input.c.x, u_input.c.x)))) != -28013i);
    var var_5 = ~u_input.a.x;
    var var_6 = func_1(!vec4<bool>(false, 47976u <= select(u_input.a.x, u_input.a.x, false), all(!vec2<bool>(var_4.a, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1260f, _wgslsmith_f_op_f32(-var_0.x)))))), -2147483647i, u_input.a.x, firstLeadingBit(-vec4<i32>(_wgslsmith_mod_i32(u_input.b, 67427i), 29552i, u_input.b, ~(-2147483647i))));
}

