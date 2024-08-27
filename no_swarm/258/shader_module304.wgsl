struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = Struct_5(!global0.a, arg_0.x == -1544f, vec3<i32>(max(firstTrailingBit(-global0.e.b.x), global0.c.x), _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, u_input.b, 1156i), ~vec3<i32>(1i, -61061i, 5362i))), global0.e.b.x), global0.d, Struct_1(1u, global0.e.b));
    let var_0 = all(!vec4<bool>(true, !global0.b, true, global0.a));
    var var_1 = u_input.b;
    var_1 = 2147483647i;
    let var_2 = global0.e;
    return 4294967295u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(arg_0));
    let var_1 = ~(~select(global0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(1u, 55640u, global0.d)), 379f > arg_1.x)) == func_3(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2970f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, true)), -1526f, _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = arg_2.a.d.x;
    let var_3 = global0.e.b.yxy;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * var_0.x), 564f))) + -1521f)));
    return var_0.x;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1399f, -236f, 506f, 2077f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, 726f, -155f)), Struct_3(Struct_2(global0.e, 1u, u_input.b, vec4<bool>(global0.b, global0.b, global0.a, global0.a)), global0.c.x, 0u, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 105f)))), vec2<f32>(304f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(0u))));
    var var_1 = -896f;
    var var_2 = -1062f;
    let var_3 = Struct_4(Struct_1(u_input.a, abs(countOneBits(vec4<i32>(u_input.b, u_input.b, global0.c.x, global0.c.x) ^ global0.e.b))), -max(global0.c, global0.c), !(!select(select(vec4<bool>(false, true, true, global0.a), vec4<bool>(global0.a, global0.b, global0.b, global0.b), global0.b), vec4<bool>(true, true, global0.b, global0.b), !vec4<bool>(global0.a, global0.b, true, global0.a))));
    let var_4 = vec2<u32>(abs(~u_input.a), _wgslsmith_add_u32(var_3.a.a, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_0.x, abs(firstLeadingBit(~vec3<u32>(var_4.x, var_3.a.a, u_input.a))), ~var_4.x);
}

