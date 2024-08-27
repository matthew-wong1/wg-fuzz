struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-864f - 2142f), -601f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -963f, 213f)) * vec3<f32>(110f, -1316f, -1081f))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, all(vec2<bool>(false, false)), false, true))));
    var var_1 = !vec3<bool>(true, var_0.c.b.x, !(!(15616i >= u_input.c)));
    let var_2 = vec4<bool>(var_1.x, false, var_1.x, var_0.c.b.x);
    var var_3 = Struct_2(var_0.c);
    var var_4 = ~abs(min(1u << (0u % 32u), ~1u));
    return var_3.a.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec3<f32>(674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f - 190f)), -171f), !vec4<bool>(any(vec3<bool>(true, false, true)), true, u_input.a <= 0i, true)));
    var var_1 = 17877u;
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-248f, _wgslsmith_f_op_f32(-var_0.a.a.x)) * var_0.a.a.x)), -1288f, Struct_1(var_0.a.a, vec4<bool>(false, true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(var_0.a.b.x, false))), true)));
    let var_3 = _wgslsmith_f_op_f32(func_3());
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_3, var_3))), !var_2.c.b));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1933f, var_0.a.a.x, var_0.a.a.x), var_0.a.a, select(vec3<bool>(true, false, false), var_4.a.b.xww, vec3<bool>(var_2.c.b.x, var_4.a.b.x, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -921f, 309f)))), vec4<bool>(true, true & select(true, var_4.a.b.x, var_4.a.b.x), -256f != _wgslsmith_div_f32(var_4.a.a.x, 239f), true)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.c.a.zz);
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(970f * 1000f)), -595f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-938f, -772f)))))), arg_0.c.a.xz));
    let var_1 = func_2();
    var var_2 = var_1.a.b.xzw;
    let var_3 = vec4<f32>(var_0.x, var_1.a.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_1.a.a.x))))), arg_0.b);
    return arg_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = !(!arg_0.a.b.wz);
    let var_1 = arg_1.a.zy;
    let var_2 = 25704u;
    let var_3 = -249f >= arg_0.a.a.x;
    let var_4 = func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f * var_1.x)) + _wgslsmith_f_op_f32(-arg_1.a.x)), 737f, Struct_1(arg_0.a.a, !vec4<bool>(true, false, arg_0.a.b.x, arg_0.a.b.x))));
    return StorageBuffer(-144f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2425f), -1085f, Struct_1(vec3<f32>(-1000f, 521f, -1000f), vec4<bool>(false, true, true, true))))), func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)), func_1(Struct_3(1311f, -1903f, Struct_1(vec3<f32>(-552f, -141f, 1000f), vec4<bool>(true, true, false, true)))).a.x, func_2().a)));
}

