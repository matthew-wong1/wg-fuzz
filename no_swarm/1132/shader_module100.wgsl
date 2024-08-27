struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-346f, 211f, -223f);

var<private> global1: i32 = 13761i;

var<private> global2: array<f32, 4>;

var<private> global3: vec4<i32> = vec4<i32>(-36017i, -37945i, -30552i, -5732i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> bool {
    return !(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) || all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_1(global3.zy, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, true, true)), false, any(vec4<bool>(true, false, true, true)))), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, select(false, false, false)), false), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, false), arg_1 != 118092u)));
    let var_1 = vec3<i32>(var_0.a.x, min(~var_0.a.x, global3.x), ~_wgslsmith_mod_i32(max(var_0.a.x, -2147483647i), -8459i)) >> (~u_input.e.xww % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    let var_3 = 0u <= u_input.c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(404f, -747f), _wgslsmith_f_op_f32(select(global0.x, global2[_wgslsmith_index_u32(0u, 4u)], var_3)), false)))))));
    return _wgslsmith_f_op_f32(sign(-905f));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(51103u | u_input.e.x, firstLeadingBit(0u), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 4u)] + global0.x), arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 4u)])))) + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)] + global0.x), _wgslsmith_div_f32(global0.x, global0.x))) + -386f) - _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(19823u, 4u)])))));
    global2 = array<f32, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(54984u, 4u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 4u)])))) != global2[_wgslsmith_index_u32(~(u_input.c << (~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) % 32u)), 4u)];
    let var_1 = arg_0.b.x;
    let var_2 = false;
    return Struct_1(max(-vec2<i32>(countOneBits(global3.x), global3.x), vec2<i32>(~global3.x, -2147483647i)), select(vec3<bool>(var_0, all(arg_0.b.xx), true), !(!select(arg_0.b, arg_0.b, false)), (-442f == _wgslsmith_f_op_f32(global0.x + 1110f)) && false));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = !vec4<bool>(!arg_0.b.x, arg_0.b.x, false, false);
    return _wgslsmith_mod_vec2_i32(arg_0.a, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -countOneBits(vec4<i32>(global3.x, global3.x, _wgslsmith_mod_i32(select(global3.x, global3.x, false), 1i), -(2147483647i ^ global3.x)));
    var var_0 = ~vec4<u32>(~u_input.c | 4294967295u, max(_wgslsmith_mod_u32(0u, u_input.d.x), ~u_input.b.x), ~select(select(u_input.b.x, u_input.b.x, false), 337u, func_1(vec4<f32>(global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), 2147483647i)), u_input.d.x);
    let var_1 = vec4<i32>(-1i, _wgslsmith_mod_i32(-(-global3.x | (global3.x & -34125i)), -18870i), -1983i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1580i, -15818i, global3.x, -29928i), vec4<i32>(-15260i, global3.x, 1i, global3.x)), 1i));
    let var_2 = var_0.x;
    global1 = global3.x;
    var var_3 = abs(1i | var_1.x) < _wgslsmith_add_i32(global3.x, i32(-1i) * -(~global3.x));
    var var_4 = Struct_1(func_4(func_2(Struct_1(vec2<i32>(2147483647i, var_1.x), vec3<bool>(true, true, true)))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), func_2(Struct_1(global3.yy, vec3<bool>(false, false, false))).b), select(!func_2(Struct_1(var_1.xz, vec3<bool>(false, true, true))).b, select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), true, true), !any(vec2<bool>(true, true)))));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), global3.wz);
}

