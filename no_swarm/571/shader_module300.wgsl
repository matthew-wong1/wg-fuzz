struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_4(Struct_2(Struct_1(arg_0.b, vec3<bool>(all(vec4<bool>(false, arg_0.b.x, false, false)), !arg_0.b.x, false))), Struct_2(arg_0));
    return Struct_1(arg_0.b, !vec3<bool>(u_input.a < (u_input.b >> (1u % 32u)), any(vec4<bool>(true, false, true, true)) | false, any(vec3<bool>(false, var_1.a.a.a.x, false)) | true));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    return func_2(Struct_1(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), ~max(arg_0, 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(!arg_2.b.a.b, !arg_2.a.a.b));
    let var_1 = select(vec4<bool>(var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f - arg_1)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) + _wgslsmith_div_f32(arg_1, -1584f)), false, var_0.a.a.x), !vec4<bool>(!arg_2.a.a.a.x, all(vec2<bool>(true, true)), arg_2.b.a.a.x || (arg_1 < arg_1), arg_2.b.a.a.x), vec4<bool>(false, false, !(arg_2.a.a.a.x | var_0.a.b.x), false));
    let var_2 = vec2<i32>(778i & reverseBits(u_input.b), 15802i);
    var_0 = Struct_2(var_0.a);
    var_0 = arg_2.b;
    return Struct_2(Struct_1(arg_2.a.a.a, func_2(arg_2.b.a, 1u).a));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    return Struct_3(arg_0.a.a.zz, 0i, arg_0.a, Struct_2(Struct_1(!vec3<bool>(false, arg_0.a.b.x, true), !(!vec3<bool>(true, true, arg_0.a.a.x)))), Struct_2(func_1(min(1u, 1u), select(max(vec2<i32>(u_input.b, 62750i), vec2<i32>(u_input.b, 2147483647i)), ~vec2<i32>(u_input.b, u_input.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_3(49312u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(141f)))), 1275f)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false))), Struct_2(func_1(13101u, vec2<i32>(u_input.a, u_input.b))))));
    let var_1 = var_0.b;
    var var_2 = func_3(~(~84421u), _wgslsmith_f_op_f32(f32(-1f) * -820f), Struct_4(var_0.e, func_4(func_3(_wgslsmith_mult_u32(1u, 33830u), -1657f, Struct_4(Struct_2(Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.d.a.b)), var_0.d))).e));
    var_2 = var_0.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1385f, -609f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 114f) * _wgslsmith_div_f32(-490f, -245f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-295f, 330f)) - -1000f)))));
    let var_4 = func_4(Struct_2(Struct_1(var_2.a.a, !func_4(var_0.d).e.a.a)));
    let var_5 = func_3(4294967295u, _wgslsmith_f_op_f32(sign(-921f)), Struct_4(var_4.d, Struct_2(Struct_1(!vec3<bool>(var_2.a.a.x, true, false), var_2.a.b)))).a;
    var var_6 = 95888u;
    let x = u_input.a;
    s_output = StorageBuffer(33880i);
}

