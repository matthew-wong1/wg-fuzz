struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, true, false, true);

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    var var_0 = !all(select(arg_0.xz, vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(1847u, 6u)], false, arg_0.x, true)), all(vec2<bool>(true, arg_1.c.b))), true));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(626f, -1077f, -560f), vec3<f32>(_wgslsmith_f_op_f32(-634f * arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x))))));
    global0 = array<bool, 6>();
    let var_3 = -2147483647i;
    return !all(!(!select(vec2<bool>(var_1.c.b, arg_0.x), vec2<bool>(arg_0.x, true), arg_0.x)));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    global0 = array<bool, 6>();
    let var_0 = ~(-2147483647i);
    let var_1 = Struct_1(u_input.c.x, true);
    return ~2147483647i;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global1 = array<Struct_1, 21>();
    var var_0 = func_4(select(!select(vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, global0[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a, 6u)], arg_1.b, global0[_wgslsmith_index_u32(u_input.a, 6u)])), vec3<bool>(func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], true, true), Struct_2(4935i, vec2<f32>(1000f, -555f), arg_1)), arg_1.b | arg_1.b, !arg_1.b), false)) >> (1u % 32u);
    global1 = array<Struct_1, 21>();
    return arg_1.b;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = vec2<bool>(any(vec3<bool>(53620u >= select(u_input.c.x, u_input.c.x, true), !func_2(-119f, Struct_1(u_input.a, arg_0), u_input.b), arg_0)), true);
    global0 = array<bool, 6>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1482f)))), 639f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(754f, 1256f) + vec2<f32>(-200f, -1115f)) + _wgslsmith_div_vec2_f32(vec2<f32>(292f, -1186f), vec2<f32>(392f, 533f))) - vec2<f32>(-265f, -168f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    let var_1 = Struct_2(countOneBits(-(u_input.d.x << (17633u % 32u))), _wgslsmith_f_op_vec2_f32(func_1(var_0.b)), Struct_1(0u, !(!all(vec4<bool>(var_0.b, true, global0[_wgslsmith_index_u32(4294967295u, 6u)], false)))));
    var var_2 = ~vec2<i32>(-11135i, ~abs(var_1.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(var_1.b.x + 1296f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_add_i32(var_1.a, i32(-1i) * -1i), 0i, ~(u_input.d.x << (1u % 32u)))));
}

