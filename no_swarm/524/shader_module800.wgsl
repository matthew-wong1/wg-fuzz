struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(21180u, 4294967295u, 52366u, 4294967295u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_1(~select(select(_wgslsmith_sub_vec4_u32(global1.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, u_input.a.x, 2263u), u_input.a), global1.a.x > 91089u), ~vec4<u32>(global1.a.x, 4294967295u, 18002u, u_input.a.x), true));
    var var_1 = Struct_1(var_0.a);
    let var_2 = u_input.a.ywy;
    global0 = array<f32, 22>();
    global1 = Struct_1(vec4<u32>(var_1.a.x, select(var_1.a.x, 1u, (i32(-1i) * -5705i) != u_input.b.x), var_1.a.x, firstLeadingBit(abs(0u)) & var_0.a.x));
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = select(vec2<bool>(true, var_0), vec2<bool>(any(vec3<bool>(all(vec2<bool>(true, true)), !var_0, arg_2)), false), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, 131f, vec2<bool>(var_0, true))), -2016f) > _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_1.a.x, 22u)] + global0[_wgslsmith_index_u32(~arg_1.a.x, 22u)]), _wgslsmith_mult_u32(1u, ~arg_0.a.x) > _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.a.x, u_input.a.x), arg_0.a.x | arg_0.a.x)));
    var var_2 = 2220u;
    var var_3 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1.a.x, 22u)]));
    global1 = Struct_1(~firstLeadingBit(abs(vec4<u32>(0u, 0u, arg_0.a.x, 1u))) & ~vec4<u32>(_wgslsmith_sub_u32(103235u, arg_0.a.x), ~36269u, 24231u, u_input.a.x));
    return arg_0;
}

fn func_1() -> Struct_1 {
    return func_2(Struct_1(_wgslsmith_add_vec4_u32(reverseBits(abs(u_input.a)), global1.a)), Struct_1(vec4<u32>(~0u, ~(~global1.a.x), 0u, u_input.a.x)), true, Struct_1(~(~reverseBits(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 1u)))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = Struct_1(global1.a);
    var var_0 = Struct_1(abs(~vec4<u32>(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x), global1.a.x ^ u_input.a.x, max(global1.a.x, 4294967295u), arg_0.a.x)));
    var var_1 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(22166i, 3402i, u_input.b.x, u_input.b.x), vec4<i32>(~u_input.b.x, 1i, _wgslsmith_sub_i32(0i, u_input.b.x), -20451i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false || all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~1u, 22u)], vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), true))));
    let var_3 = arg_0;
    return ~(global1.a.x & _wgslsmith_add_u32(u_input.a.x, abs(abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    global1 = Struct_1(~firstTrailingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(global1.a.x, 50376u, global1.a.x, 11573u)), _wgslsmith_mult_vec4_u32(vec4<u32>(52392u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 946u, u_input.a.x, global1.a.x)))));
    var var_0 = 4294967295u;
    let var_1 = func_4(func_1());
    global1 = Struct_1(global1.a);
    global1 = Struct_1(_wgslsmith_mult_vec4_u32(func_1().a, global1.a));
    global0 = array<f32, 22>();
    var var_2 = 419f;
    let var_3 = vec4<u32>(~max(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mult_u32(58919u, u_input.a.x)), u_input.a.x), abs(43154u), ~(~select(global1.a.x, ~global1.a.x, true)), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(29786u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 40444u, 17534u, var_3.x), vec4<u32>(var_3.x, 1u, 7708u, var_3.x)), 22u)], _wgslsmith_f_op_f32(round(-343f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 22u)]), global0[_wgslsmith_index_u32(9503u, 22u)]))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_f32(-2122f - global0[_wgslsmith_index_u32(global1.a.x, 22u)]), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), 454f))));
}

