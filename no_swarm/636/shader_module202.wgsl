struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15405u;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(select(select(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), vec2<bool>(global1.x, true), true), select(!(!vec2<bool>(false, global1.x)), select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), global1.x), !vec2<bool>(global1.x, true), any(vec3<bool>(false, global1.x, true))), global1.x || all(vec4<bool>(true, false, true, global1.x))), !select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, true), vec2<bool>(false, true), vec2<bool>(global1.x, true)), select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, false)))), !vec3<bool>(global1.x, all(vec4<bool>(global1.x, false, true, global1.x)), all(vec3<bool>(true, global1.x, false))), Struct_3(Struct_2(vec2<i32>(1i, abs(-1i)), !select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false))), Struct_2(abs(vec2<i32>(-11704i, -2147483647i)), vec3<bool>(true, global1.x, all(vec4<bool>(false, false, global1.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(955f, -1572f)) - _wgslsmith_f_op_f32(-432f - -690f)) + 1294f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) * _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2751f, var_0.d))) + -1042f)));
    let var_2 = var_0;
    var var_3 = select(select(!var_0.b, var_2.c.a.b, vec3<bool>(any(vec4<bool>(var_2.b.x, global1.x, true, false)) & true, max(1i, -1i) < var_2.c.b.a.x, !all(vec3<bool>(global1.x, global1.x, var_2.b.x)))), var_2.b, !select(!vec3<bool>(var_0.c.b.b.x, true, var_2.b.x), !vec3<bool>(global1.x, var_2.a.x, true), !select(vec3<bool>(true, var_0.c.b.b.x, var_0.c.b.b.x), vec3<bool>(false, var_2.b.x, false), vec3<bool>(false, var_2.c.a.b.x, false))));
    global1 = vec2<bool>(select(global1.x & true, true, true), true);
    return select(vec2<bool>(false, global1.x | var_3.x), var_0.a, true);
}

fn func_2() -> Struct_1 {
    global1 = select(vec2<bool>(global1.x, !any(vec3<bool>(false, global1.x, global1.x)) && !global1.x), vec2<bool>(true, true), !select(select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(false, global1.x), select(vec2<bool>(true, false), vec2<bool>(global1.x, false), vec2<bool>(false, global1.x))), !vec2<bool>(global1.x, global1.x), select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, false), false), vec2<bool>(true, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, true), global1.x))));
    global0 = ~1u;
    global1 = select(!vec2<bool>(global1.x, all(!vec2<bool>(true, global1.x))), !func_3(), global1.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, 979f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1169f, -1000f) * vec2<f32>(617f, 661f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, -121f))))))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = func_2();
    global1 = vec2<bool>(~u_input.a.x == (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, u_input.a.x, 1u, 53805u)), max(vec4<u32>(0u, 4294967295u, arg_0.x, u_input.a.x), u_input.a)) ^ ~31057u), true);
    var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))), var_0.a.x)));
    global0 = arg_0.x;
    return vec2<i32>(abs(1i), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 9033u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(1u, 35366u), 26373u)), !select(!(!vec3<bool>(true, false, global1.x)), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, true, all(vec2<bool>(false, global1.x)))));
    let var_1 = Struct_3(var_0, var_0);
    let var_2 = u_input.a.zwx;
    var var_3 = true;
    let var_4 = Struct_3(var_1.b, var_0);
    let var_5 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-778f))), _wgslsmith_f_op_f32(trunc(-240f)), _wgslsmith_f_op_f32(trunc(-647f)), _wgslsmith_f_op_f32(f32(-1f) * -1080f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-879f, 443f, -709f, -923f)))))), _wgslsmith_f_op_f32(max(-3012f, _wgslsmith_f_op_f32(round(-1000f)))));
    let var_6 = var_5;
    var_3 = global1.x;
    var var_7 = ~7670u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x | var_2.x)));
}

