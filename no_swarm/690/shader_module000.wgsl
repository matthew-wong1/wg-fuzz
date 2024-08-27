struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 469f;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<Struct_2, 31>;

var<private> global3: array<Struct_2, 13>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(step(-235f, _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(arg_3.a)), (-3202i > arg_2.a.b.x) | true)))));
    let var_0 = -1224f;
    return ~(~u_input.b.x >> (u_input.b.x % 32u));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_2, 31>();
    var var_0 = _wgslsmith_div_i32(firstLeadingBit(1i), 23207i);
    var var_1 = vec3<bool>(max(13418u, ~25657u) > max(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.b.yy), func_3(vec3<i32>(-2147483647i, 20447i, 0i), global1[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)]) & 1u), true, any(select(vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(vec4<bool>(true, true, true, true)))));
    global3 = array<Struct_2, 13>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), -418f);
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a.x, ~(~4294967295u)), 30u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    global3 = array<Struct_2, 13>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1296f);
    global2 = array<Struct_2, 31>();
    global3 = array<Struct_2, 13>();
    let var_0 = arg_1;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    let var_0 = any(!func_4(Struct_2(Struct_1(arg_0.a, arg_0.b)), vec2<bool>(false, false), Struct_2(func_2()), global3[_wgslsmith_index_u32(67841u, 13u)]));
    var var_1 = _wgslsmith_add_vec2_u32(~(~u_input.b.yx), u_input.a >> (_wgslsmith_div_vec2_u32(u_input.a, ~u_input.b.xw) % vec2<u32>(32u)));
    var_1 = vec2<u32>(max(42160u, u_input.b.x), var_1.x);
    global1 = array<Struct_1, 30>();
    global3 = array<Struct_2, 13>();
    return 108f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    let var_0 = u_input.a.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-690f, vec4<i32>(-1i, 2147483647i, 1i, -1i)), global2[_wgslsmith_index_u32(75924u, 31u)], vec4<f32>(-706f, -1000f, -1537f, 992f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f + -1289f) * -557f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-473f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f + 829f)), 127f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(957f, -149f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f * -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(func_2(), Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1229f, -506f, -119f, -392f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1155f, -1173f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-368f * 293f))))));
    let var_2 = ~max(1i, ~38901i);
    var var_3 = vec3<i32>(func_2().b.x, 22805i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))))));
}

