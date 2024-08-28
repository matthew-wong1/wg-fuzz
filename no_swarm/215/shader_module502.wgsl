struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-670f, -1431f, 1618f)), Struct_1(vec3<f32>(1000f, 1000f, -1000f)), Struct_1(vec3<f32>(2640f, -123f, -495f)), Struct_1(vec3<f32>(1077f, 1000f, 863f)), Struct_1(vec3<f32>(-254f, 118f, -1033f)), Struct_1(vec3<f32>(-447f, 440f, 214f)), Struct_1(vec3<f32>(446f, -521f, 478f)), Struct_1(vec3<f32>(-219f, 187f, -743f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(select(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, arg_1.x), _wgslsmith_f_op_f32(sign(global0.a.x)) == arg_0.x), 8u)];
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zwz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * var_0.a) * arg_0.ywy))));
    global1 = 1357f;
    global1 = var_0.a.x;
    global1 = var_0.a.x;
    return Struct_1(var_0.a);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2)));
    global1 = -990f;
    var var_1 = -970f;
    var_1 = arg_2.x;
    return u_input.d.x | _wgslsmith_clamp_u32(0u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36660u, u_input.d.x, 33927u), vec4<u32>(u_input.c.x, u_input.d.x, 0u, u_input.c.x)), _wgslsmith_clamp_u32(u_input.c.x, 55138u, u_input.d.x), u_input.c.x, 16708u), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c.x, 1u, 1u, 5995u), vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.d.x)), select(vec4<u32>(0u, u_input.d.x, 28348u, 4294967295u), vec4<u32>(u_input.c.x, 1u, 1508u, u_input.c.x), true))));
}

fn func_1() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32((_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(firstTrailingBit(u_input.d.x), u_input.d.x)) & 13856u) ^ func_3(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1304f, global0.a.x, global0.a.x, 979f), vec4<f32>(-118f, -737f, -650f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-576f, -2486f, 391f, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), max(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x)), select(vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), vec3<u32>(16149u, u_input.c.x, 14827u), vec3<bool>(true, false, true))), false), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, global0.a.x, -1000f, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, global0.a.x, 1237f, global0.a.x))))), 8u)];
    let var_1 = true;
    let var_2 = ~abs(abs(5345u));
    var var_3 = ~firstLeadingBit(reverseBits(~(~u_input.c)));
    let var_4 = Struct_2(-244f, false);
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(0u, 8u)];
    let var_2 = Struct_2(arg_0, ~(_wgslsmith_div_u32(u_input.c.x, 0u) & u_input.d.x) > u_input.d.x);
    global1 = var_2.a;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(514f)), -2564f))), true);
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 2002f, -445f, var_3.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1000f, var_3.a, arg_0))))), ~vec3<u32>(min(_wgslsmith_mod_u32(u_input.d.x, u_input.c.x), ~u_input.c.x), ~u_input.c.x, u_input.c.x ^ ~u_input.d.x), u_input.c.x > ~(~83710u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x))) - -879f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(915f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) - _wgslsmith_f_op_f32(round(global0.a.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1320f)) + global0.a.x))));
    let var_0 = ~(-2147483647i);
    global2 = array<Struct_1, 8>();
    let var_1 = Struct_1(global0.a);
    global1 = 635f;
    global0 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-737f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * var_1.a.x))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), vec2<bool>(true, !any(vec3<bool>(false, false, false))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 412f, 2147483647i);
}

