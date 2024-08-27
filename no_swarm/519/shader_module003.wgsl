struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(~5180u, select(!vec4<bool>(!arg_0.b.x, any(arg_0.b.zw), all(arg_0.b), -2147483647i < u_input.a), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.a > _wgslsmith_add_u32(0u, 4914u), all(arg_0.b.yw)), all(vec4<bool>(true, !arg_0.b.x, true, false))));
    var var_1 = _wgslsmith_f_op_f32(528f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(232f * _wgslsmith_f_op_f32(f32(-1f) * -1600f)))), _wgslsmith_f_op_f32(trunc(-1000f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1534f)))))));
    let var_2 = vec2<i32>(u_input.a, u_input.a);
    var var_3 = u_input.a;
    return !(!select(!select(var_0.b.xw, vec2<bool>(arg_0.b.x, arg_0.b.x), true), !(!var_0.b.yx), vec2<bool>(true, var_2.x > 0i)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1648f), _wgslsmith_f_op_f32(sign(863f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1447f, -447f, 1744f, -171f))))));
    var var_1 = Struct_1(4294967295u, vec4<bool>(!(true && (1u >= u_input.c.x)), true, true, select(true, true, false)));
    let var_2 = ~(~(~firstLeadingBit(vec3<u32>(var_1.a, var_1.a, 1u) & u_input.b.yzz)));
    var_1 = Struct_1(u_input.b.x, vec4<bool>(var_1.b.x, all(vec4<bool>(var_1.b.x, var_1.b.x, false || var_1.b.x, var_1.b.x)), !((var_2.x != 67714u) && (u_input.b.x == 35129u)), all(func_3(Struct_1(55312u, var_1.b)))));
    var_1 = Struct_1(4294967295u, !select(!(!vec4<bool>(var_1.b.x, var_1.b.x, true, true)), var_1.b, select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), select(var_1.b, var_1.b, var_1.b.x), !vec4<bool>(true, true, var_1.b.x, var_1.b.x))));
    return var_1.b;
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))), func_2(), vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 43375u, 0u), u_input.b) ^ 0u)), select(var_0, !(!var_0), vec4<bool>(!var_0.x, false, any(var_0.yy), any(vec2<bool>(true, true)))));
    var var_2 = vec3<bool>(!(all(!var_1.b.zw) || !var_1.b.x), true, select(true, var_0.x, var_0.x || any(!var_0.xz)));
    var_2 = select(!vec3<bool>(var_0.x, var_2.x, func_3(Struct_1(0u, var_1.b)).x), !func_2().xyz, !var_1.b.x);
    var var_3 = Struct_1(4294967295u, vec4<bool>(all(var_1.b.yx), true, !(select(false, var_1.b.x, false) | select(var_1.b.x, var_0.x, false)), false));
    return Struct_1(30260u, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x, vec4<bool>(true, u_input.c.x < firstTrailingBit(u_input.b.x), true, true));
    let var_1 = var_0.b;
    var var_2 = func_1();
    var_2 = Struct_1(~107199u, vec4<bool>(true, func_3(func_1()).x | func_2().x, var_0.b.x, false));
    let var_3 = (_wgslsmith_f_op_f32(select(108f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-299f * 189f))), var_0.b.x)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1f))))) != true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(u_input.c)), vec3<u32>(1u, firstLeadingBit(var_0.a & var_0.a) >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(~u_input.c, ~u_input.b.zw) & func_1().a), (reverseBits(vec3<u32>(var_0.a, 59332u, var_0.a)) >> (~vec3<u32>(u_input.c.x, 48325u, var_2.a) % vec3<u32>(32u))) ^ u_input.b.xwx);
}

