struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(27228i, 0i, 15233i, 21338i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<i32, 4>();
    let var_0 = false;
    let var_1 = u_input.c.x | ~(~(~(~0i)));
    let var_2 = u_input.a.xw;
    let var_3 = ~27902i;
    return vec2<bool>(!(_wgslsmith_f_op_f32(floor(arg_3.b.x)) < -1143f), any(!vec3<bool>(all(vec2<bool>(arg_2.c.x, false)), true, arg_2.c.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b.x;
    var var_1 = func_3(arg_0.b.x > _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_u32(u_input.b, u_input.b), arg_0, arg_0);
    return Struct_1(~vec3<i32>(_wgslsmith_dot_vec3_i32(~u_input.a.wwy, arg_0.a ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 4u)], -40334i, arg_0.a.x)), global0[_wgslsmith_index_u32(~(0u & u_input.b), 4u)], i32(-1i) * -2147483647i), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.x))))), -629f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), select(select(select(vec4<bool>(var_1.x, var_1.x, arg_0.c.x, arg_0.c.x), vec4<bool>(var_1.x, arg_0.c.x, false, var_1.x), arg_0.c.x), !(!vec4<bool>(arg_0.c.x, false, var_1.x, var_1.x)), !var_1.x), vec4<bool>(true | (u_input.b == 48749u), true, var_1.x, true & !var_1.x), false));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = false && !(!(~u_input.c.x < _wgslsmith_dot_vec2_i32(u_input.a.yy, arg_1.a.xx)));
    let var_1 = func_2(arg_1);
    let var_2 = vec3<u32>(u_input.d.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d, ~(~u_input.d)), 4294967295u), u_input.d.x);
    var var_3 = var_1;
    var_3 = func_2(var_1);
    return -811f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 216f;
    var var_1 = Struct_1(u_input.a.wxy, vec4<f32>(1000f, _wgslsmith_div_f32(1667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(783f, 1579f), Struct_1(u_input.a.wxw, vec4<f32>(330f, -772f, -732f, -350f), vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(-687f, -881f), Struct_1(u_input.a.zzx, vec4<f32>(-367f, 1789f, -271f, -152f), vec4<bool>(true, true, true, true)))) + -169f))), 1f), !vec4<bool>(u_input.c.x != -u_input.c.x, _wgslsmith_f_op_f32(sign(-1135f)) < func_2(Struct_1(u_input.a.wwx, vec4<f32>(-1217f, -173f, 101f, 233f), vec4<bool>(true, true, true, false))).b.x, true, true));
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1704f, var_1.b.x)), _wgslsmith_f_op_f32(216f * var_1.b.x))) - _wgslsmith_f_op_f32(sign(-595f))), func_2(func_2(func_2(Struct_1(vec3<i32>(1i, u_input.a.x, var_1.a.x), var_1.b, var_1.c)))).b.x), Struct_1(u_input.a.xwy, vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), 713f, _wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.b.x), !vec4<bool>(any(var_1.c), var_1.c.x, any(var_1.c), var_1.c.x))));
    global0 = array<i32, 4>();
    let var_2 = func_2(Struct_1(vec3<i32>(-21775i, reverseBits(u_input.c.x | var_1.a.x), global0[_wgslsmith_index_u32(~reverseBits(u_input.b), 4u)]), var_1.b, func_2(func_2(Struct_1(u_input.a.yxz, var_1.b, vec4<bool>(true, false, true, var_1.c.x)))).c));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_2(Struct_1(u_input.a.wzz, vec4<f32>(var_2.b.x, var_1.b.x, var_2.b.x, 2571f), var_1.c))).a.x >> (countOneBits(firstLeadingBit(abs(u_input.b))) % 32u), 1i);
}

