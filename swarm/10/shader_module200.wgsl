struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 27> = array<bool, 27>(true, false, false, false, false, true, true, false, true, true, false, false, true, true, true, false, true, true, false, true, false, false, true, false, false, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = arg_0.e.a;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(74u, 11040u), 27u)];
    var var_2 = !vec2<bool>(false, arg_0.d);
    global1 = array<bool, 27>();
    let var_3 = -448f;
    return ~vec2<i32>(arg_0.e.a.a, _wgslsmith_sub_i32(~countOneBits(var_0.a), arg_0.e.a.a));
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    global0 = all(select(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(30679u, 27u)], true, true)), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(14692u, 27u)], global1[_wgslsmith_index_u32(19544u, 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(2460u, 27u)], true, global1[_wgslsmith_index_u32(50683u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]), global1[_wgslsmith_index_u32(20392u, 27u)])), true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], !global1[_wgslsmith_index_u32(u_input.a, 27u)] & true, true, any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(64498u, 27u)], global1[_wgslsmith_index_u32(11144u, 27u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], false, global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 27u)], true, global1[_wgslsmith_index_u32(0u, 27u)])))), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 27u)], true, false))));
    var var_0 = Struct_1(i32(-1i) * -21076i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-804f))));
    var var_1 = !vec4<bool>(all(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], false, global1[_wgslsmith_index_u32(2521u, 27u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.a, 27u)]), true)), false, true, true);
    global0 = all(vec4<bool>(!select(true, global1[_wgslsmith_index_u32(u_input.a & u_input.a, 27u)], !var_1.x), true, select(false, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 0u)), 27u)], (arg_0.x < 2147483647i) || (var_0.b >= var_0.b)), true));
    var var_2 = select(!(!(!vec4<bool>(false, var_1.x, false, true))), !(!(!vec4<bool>(var_1.x, false, false, false))), global1[_wgslsmith_index_u32(~(~91131u), 27u)]);
    return Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -574f));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    var var_0 = 1f;
    global1 = array<bool, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1158f, 1132f)))))));
    let var_2 = Struct_2(func_3(-func_2(Struct_4(Struct_3(49908i), vec3<u32>(16928u, u_input.a, u_input.a), -1000f, false, arg_0))), arg_0.a);
    var var_3 = Struct_4(Struct_3(func_2(Struct_4(Struct_3(1i), vec3<u32>(u_input.a, u_input.a, u_input.a), -1405f, arg_1.x, Struct_2(Struct_1(-1i, -2229f), arg_0.b))).x), abs(~select(vec3<u32>(71380u, u_input.a, 73699u) | vec3<u32>(1u, 46536u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a), all(arg_1))), _wgslsmith_f_op_f32(min(-544f, 595f)), any(!vec2<bool>(any(arg_1), any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)], arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 27u)])))), Struct_2(var_2.a, func_3(func_2(Struct_4(Struct_3(var_2.b.a), vec3<u32>(36614u, 1u, u_input.a), 767f, arg_1.x, Struct_2(arg_0.b, var_2.b))))));
    return _wgslsmith_mult_i32(~27260i, var_3.e.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f * -482f)) - 586f);
    let var_1 = Struct_1(~(func_1(Struct_2(Struct_1(1i, 514f), Struct_1(36454i, var_0)), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 27u)], false, true), 0i) << (4294967295u % 32u)), _wgslsmith_f_op_f32(-829f + _wgslsmith_f_op_f32(var_0 + var_0)));
    var var_2 = reverseBits(~1u);
    var var_3 = Struct_2(Struct_1(-var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b, -1921f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(628f * var_0), _wgslsmith_f_op_f32(ceil(var_0)))))), var_1);
    var var_4 = Struct_2(func_3(vec2<i32>(var_1.a, var_3.b.a) & _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, 2147483647i), abs(vec2<i32>(5943i, var_1.a)))), func_3(~func_2(Struct_4(Struct_3(var_1.a), vec3<u32>(1u, 1u, 32717u), var_3.a.b, false, Struct_2(var_3.b, var_3.b)))));
    global1 = array<bool, 27>();
    let var_5 = Struct_2(Struct_1(-12803i | var_4.b.a, 1880f), Struct_1(-6327i, -713f));
    var var_6 = all(vec4<bool>(global1[_wgslsmith_index_u32((0u | u_input.a) & u_input.a, 27u)], any(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 27u)])) || global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~22154u, 1u), ~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, abs(10042u))));
}

