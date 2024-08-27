struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 7>;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, true));

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = arg_1.a;
    let var_1 = u_input.b;
    var var_2 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b * arg_1.b), vec2<f32>(-1000f, 161f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b.x, -673f)))))))));
    global4 = array<Struct_1, 11>();
    let var_3 = Struct_1(!arg_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_2.b)), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x)))), arg_2.a.x)));
    return false;
}

fn func_2() -> vec3<bool> {
    global0 = 15431u;
    var var_0 = global2[_wgslsmith_index_u32(abs(u_input.b), 7u)];
    global4 = array<Struct_1, 11>();
    global3 = array<vec4<bool>, 1>();
    var var_1 = true;
    return vec3<bool>(global1.a.x, global1.a.x, func_3(global1.a.x, global4[_wgslsmith_index_u32(~(24557u & u_input.b) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 26614u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 14671u, 12372u, 58976u), vec4<u32>(0u, u_input.b, 81965u, 4294967295u))), 11u)], Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-global1.b)), ~4294967295u));
}

fn func_1() -> Struct_1 {
    global4 = array<Struct_1, 11>();
    var var_0 = Struct_1(vec2<bool>(false, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x)), vec2<f32>(global1.b.x, global1.b.x))), vec2<f32>(global1.b.x, -1593f)));
    let var_1 = ~(~_wgslsmith_mult_u32(~select(74898u, u_input.b, var_0.a.x), u_input.b));
    var var_2 = select(!vec3<bool>(true && !var_0.a.x, !global1.a.x, any(var_0.a)), !(!select(!vec3<bool>(false, global1.a.x, global1.a.x), func_2(), vec3<bool>(global1.a.x, global1.a.x, var_0.a.x))), func_2());
    var var_3 = 6906u;
    return global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, 62004u), ~315u), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = reverseBits(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 2147483647i), 32275i, u_input.d.x, ~max(-2147483647i, abs(u_input.d.x))));
    global1 = global2[_wgslsmith_index_u32(~u_input.b, 7u)];
    var var_2 = !(!global1.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-471f, var_0.b.x, global1.b.x, global1.b.x) + vec4<f32>(var_0.b.x, 726f, 2573f, global1.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1054f, var_0.b.x, global1.b.x) * vec4<f32>(var_0.b.x, global1.b.x, var_0.b.x, -596f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 220f, global1.b.x, -1090f), vec4<f32>(-637f, 618f, -311f, -773f), var_2.x)))))), vec4<f32>(-1256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x))) - 281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), -1000f)));
    var var_4 = Struct_1(vec2<bool>(global1.a.x, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x))), var_0.b, false)));
    let var_5 = _wgslsmith_f_op_f32(select(-1187f, func_1().b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(912f, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-2419f - _wgslsmith_f_op_f32(-var_4.b.x))), ~81754i, max(var_1, select(~(-vec4<i32>(-19600i, 1i, u_input.a.x, 0i)), var_1, false)));
}

