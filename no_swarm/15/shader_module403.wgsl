struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(0i, 48730i, 1i, 10200i));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, 21401i, 2147483647i, 20988i));

var<private> global3: array<vec4<i32>, 23>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    return all(global0.xw) & all(!global0.wxz);
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<i32>, 23>();
    let var_0 = Struct_1(-global2.a);
    let var_1 = Struct_2(vec4<bool>(func_3(var_0), global0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_0.a.x, -15468i, 2147483647i), vec4<i32>(u_input.a, global1.a.x, 780i, global1.a.x), vec4<i32>(global2.a.x, -1i, global1.a.x, global2.a.x)), select(global3[_wgslsmith_index_u32(38468u, 23u)], global2.a, true)) < abs(u_input.a), global0.x), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = true;
    let var_3 = var_1.a.x;
    return Struct_1(global2.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = any(select(!select(select(vec4<bool>(true, false, global0.x, true), vec4<bool>(arg_3.x, false, true, global0.x), true), vec4<bool>(true, global0.x, false, global0.x), true), !vec4<bool>(arg_3.x, false, true, 4294967295u != arg_0.x), false));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = vec3<f32>(-1075f, -1442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3, -253f)))) + arg_3));
    var var_1 = true;
    var var_2 = ~(-2147483647i << ((_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.b.x, 58185u), 0u) | arg_2.b.x) % 32u));
    let var_3 = ~arg_2.b;
    let var_4 = func_4(arg_2.b, func_2(), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1725f)), _wgslsmith_div_f32(2541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - 2370f))), select(!global0.zw, !select(global0.ww, !vec2<bool>(false, arg_2.a.x), true), true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -789f))))), 359f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    global2 = Struct_1(-vec4<i32>(global1.a.x | min(global2.a.x, 1i), reverseBits(~0i), 16250i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-30495i, -17278i, global1.a.x), vec3<i32>(u_input.b.x, 0i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, -1i > global1.a.x, any(global0.wwz), global0.x), vec4<bool>(true, global0.x, true, !global0.x), vec4<bool>(global0.x, global0.x, true, false != global0.x)), Struct_1(_wgslsmith_div_vec4_i32(~global1.a, global2.a)), Struct_2(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, true, global0.x, global0.x), global0.x), vec4<bool>(false, false, false, true)), firstTrailingBit(~vec4<u32>(5138u, 0u, 89801u, 0u))), 1569f)) - -1523f);
    let var_2 = global0.wx;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1316f, -789f), vec3<f32>(-1227f, -1569f, var_1)) + vec3<f32>(-1381f, 287f, 1281f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -270f, var_1)) - vec3<f32>(var_1, var_1, 1607f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 535f, var_1)))), any(vec4<bool>(true, global0.x, false, var_2.x)) || true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-235f, var_1, var_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -501f) - vec3<f32>(var_1, -403f, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), vec2<f32>(_wgslsmith_f_op_f32(max(630f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_3.x)))), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1225f, var_1)))))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, 271f), vec3<f32>(-422f, -1958f, var_3.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_1, -806f) - vec3<f32>(-279f, 1311f, var_3.x))))), var_1);
}

