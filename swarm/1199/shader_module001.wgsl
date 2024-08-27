struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_0.yww;
    return 736f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    return Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true), !vec3<bool>(true, true, all(vec4<bool>(false, false, true, true)))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(vec3<bool>(any(vec3<bool>(true, true, any(vec2<bool>(false, false)))), all(vec3<bool>(true, true, false)), func_2(vec4<f32>(2103f, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false), false, u_input.b.x, Struct_2(vec3<bool>(false, true, false)))), -1000f, _wgslsmith_f_op_f32(abs(1562f)))).a.x));
    var_0 = Struct_2(!(!select(var_0.a, vec3<bool>(false, false, false), vec3<bool>(false, var_0.a.x, var_0.a.x))));
    let var_1 = Struct_2(select(var_0.a, select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(true, true, var_0.a.x & true), vec3<bool>(true, u_input.c.x > u_input.c.x, true)), vec3<bool>(!(!var_0.a.x), true, !(0u > u_input.a.x))));
    var_0 = Struct_2(select(var_0.a, vec3<bool>(var_1.a.x, any(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.a.x, false), var_1.a)), true), var_0.a));
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -708f, 716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) + _wgslsmith_f_op_f32(-1639f + 279f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2222f, -101f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(400f, 1474f) + vec2<f32>(1104f, 443f)))) - vec2<f32>(755f, 767f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, false, var_0, var_0), var_0), false, select(-1i, u_input.b.x, var_0), Struct_2(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0, false, false, var_0), false), !var_0, u_input.b.x, func_2(vec4<f32>(188f, 126f, 149f, 654f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1224f, 1742f) + vec2<f32>(466f, 2099f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, -1031f))))), 85623u & _wgslsmith_mod_u32(u_input.d.x, 1u), ~(u_input.b.wx & reverseBits(abs(vec2<i32>(u_input.b.x, 1i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1117f + 440f), _wgslsmith_f_op_f32(min(432f, -705f))) - _wgslsmith_f_op_f32(-1810f - 590f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-874f, 1725f)))), 668f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(913f)), 404f)), 1053f), reverseBits(u_input.b.xyz << ((~vec3<u32>(98907u, 79330u, u_input.a.x) >> (abs(u_input.c.yxw) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_2 = true;
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(~abs(var_1.b), var_1.b, 3250u, var_1.b), ~vec4<u32>(4294967295u, max(~var_1.b, var_1.b), 51562u, 0u));
    var var_4 = ~(~(~(u_input.c >> (vec4<u32>(0u, var_1.b, 0u, var_3.x) % vec4<u32>(32u)))));
    var var_5 = -1922f;
    var_3 = u_input.d;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f - var_1.a.x) - -1860f), _wgslsmith_f_op_f32(-2122f - _wgslsmith_f_op_f32(round(246f))), var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(1412f, -938f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_3.x, var_3.x, 89197u), max(vec4<u32>(var_1.b, 33532u, u_input.c.x, u_input.c.x), u_input.c))), var_1.d.wyx);
}

