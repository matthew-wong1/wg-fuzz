struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = Struct_1(!global0.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))));
    let var_1 = global0.a;
    global0 = Struct_1(arg_0);
    global0 = Struct_1(arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f * var_0.x)), !all(global0.a) == true)) + -288f);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = !vec2<bool>(any(global0.a), false);
    var var_2 = any(global0.a);
    var_1 = !global0.a;
    var var_3 = Struct_1(select(vec2<bool>(true, var_1.x), !vec2<bool>(!var_1.x, true), vec2<bool>(all(vec4<bool>(true, global0.a.x, global0.a.x, true)), false)));
    return var_0.c;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_2(u_input.c.zz, var_0.c.xwy, ~(~reverseBits(vec4<u32>(u_input.c.x, 4294967295u, var_0.c.x, u_input.c.x))), _wgslsmith_div_i32(-2147483647i, -38912i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1518f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-700f)) - _wgslsmith_f_op_f32(func_2(select(global0.a, vec2<bool>(global0.a.x, global0.a.x), true))))));
    let var_3 = 53594u;
    let var_4 = func_3(Struct_2(vec2<u32>(~25803u, 40773u), abs(var_0.b | vec3<u32>(0u, 1u, 59454u)), var_0.c, -3960i)) >> (var_0.c % vec4<u32>(32u));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(global0.a.x, false), vec2<bool>(true, false), (global0.a.x || false) | !global0.a.x), vec2<bool>(!(!global0.a.x), global0.a.x), !(!(!global0.a))), select(select(global0.a, !func_1(Struct_2(vec2<u32>(1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(226u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.d.x)), func_1(Struct_2(u_input.c.xz, vec3<u32>(4503u, 1u, 79529u), u_input.c, u_input.b.x))), vec2<bool>((u_input.c.x <= 7059u) & true, u_input.c.x == u_input.c.x), true), any(!select(!vec4<bool>(global0.a.x, false, global0.a.x, true), select(vec4<bool>(global0.a.x, global0.a.x, true, true), vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(true, global0.a.x, false, global0.a.x)), global0.a.x)));
    var_0 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.x) ^ _wgslsmith_mult_u32(u_input.c.x, u_input.c.x ^ min(u_input.c.x, 4294967295u)), u_input.c.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1855f, -752f, -208f), vec3<f32>(426f, -944f, -100f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, -1735f, 1115f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-537f, 361f, -494f), vec3<f32>(198f, -245f, 1025f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(825f, 607f, -1125f)))))), u_input.c, ~(~1u));
}

