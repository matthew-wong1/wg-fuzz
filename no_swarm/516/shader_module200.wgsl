struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    return !(all(vec3<bool>(all(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, false, true)))) == all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(304f, arg_1.a)), Struct_1(true));
    var_0 = Struct_2(arg_1.a, Struct_1(var_0.b.a));
    var var_1 = var_0.b;
    let var_2 = !select(select(all(vec2<bool>(false, true)), select(var_0.b.a == false, all(vec2<bool>(true, true)), var_1.a | var_0.b.a), true), !(true && var_1.a), !var_1.a);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.b);
    return StorageBuffer(firstLeadingBit(vec4<i32>(0i, -21037i, u_input.c, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, select(false, false, true)), vec2<bool>(true, true), true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(false, true, false)), false), !any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-149f + 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(524f, 524f)), _wgslsmith_f_op_f32(f32(-1f) * -399f))), func_1())))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1253f, 507f))))), false));
    let x = u_input.a;
    s_output = func_2(Struct_3(abs(u_input.d)), Struct_5(1330f));
}

