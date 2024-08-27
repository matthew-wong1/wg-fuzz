struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec4<u32> {
    return firstLeadingBit(countOneBits(~(abs(vec4<u32>(arg_0, u_input.b.x, 1u, 0u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 96544u, u_input.b.x, 72130u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = ~func_3(u_input.b.x, u_input.a, false);
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(u_input.c);
    let var_1 = false;
    var var_2 = func_2(var_0, 627f, vec4<bool>(var_1, 0i >= abs(-var_0.a), var_1 & var_1, any(vec4<bool>(any(vec4<bool>(var_1, false, var_1, false)), var_1 | false, var_1, any(vec3<bool>(false, var_1, true))))));
    let var_3 = Struct_1(min(0i, func_2(Struct_1(countOneBits(var_2.a)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(801f))), !vec4<bool>(false, var_1, false, false)).a));
    var_2 = Struct_1(var_3.a);
    return -1464f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.b);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(min(160f, 135f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -2525f)))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 675f))))))) - vec2<f32>(var_1, var_1));
    var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(var_3.x))) * -273f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))))));
    var var_4 = _wgslsmith_f_op_f32(trunc(var_3.x));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -676f)), _wgslsmith_f_op_f32(f32(-1f) * -734f))))));
    var var_6 = ~(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(var_2.x, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(vec3<u32>(var_6.x, 0u, 39007u))) & select(vec3<u32>(~0u, ~0u, _wgslsmith_add_u32(var_0.x, 86017u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 90329u, var_0.x), vec3<u32>(var_0.x, u_input.b.x, 1u))), any(vec3<bool>(false, false, true)) & true), 0u);
}

