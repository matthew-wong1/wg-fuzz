struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 481f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = u_input.a;
    var var_1 = arg_2;
    let var_2 = Struct_1(~17288u);
    var var_3 = arg_0;
    let var_4 = true;
    return select(u_input.b.zxy ^ ~(~max(vec3<u32>(544u, 4294967295u, var_1.a), u_input.b.zwz)), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0.a, var_2.a, 0u, arg_2.a)), 4294967295u), arg_0.a, arg_2.a >> (arg_0.a % 32u)), true);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_0 = u_input.b.wyx << (func_3(arg_2, Struct_1(0u), Struct_1(abs(~4294967295u))) % vec3<u32>(32u));
    return max(min(-vec3<i32>(u_input.d.x, u_input.d.x & u_input.c.x, max(0i, 28608i)), vec3<i32>(u_input.d.x, -2147483647i, -39100i) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(34997u, 19785u, arg_2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a, u_input.e, 70724u), vec3<u32>(arg_2.a, u_input.b.x, var_0.x))) % vec3<u32>(32u))), ~(~select(vec3<i32>(u_input.d.x, 2147483647i, 49210i), ~vec3<i32>(u_input.d.x, u_input.c.x, -31738i), vec3<bool>(false, false, true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1364f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-870f)) * 1338f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -187f), 3335f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(422f, -1000f)))))));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1865f);
    global0 = _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-537f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-622f)) - var_0) + var_0))));
    let var_1 = -firstLeadingBit(_wgslsmith_mult_vec3_i32(func_2(var_0, u_input.b.yyx, Struct_1(0u), arg_1), vec3<i32>(u_input.c.x, u_input.c.x, 30234i) | vec3<i32>(u_input.a, 2147483647i, u_input.d.x))) & _wgslsmith_mod_vec3_i32(~min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), vec3<i32>(u_input.a, -1i, -9566i)), firstLeadingBit(vec3<i32>(u_input.a, u_input.d.x, u_input.a))), min(vec3<i32>(-1i) * -vec3<i32>(1i, -1i, u_input.a), -(~vec3<i32>(-1i, 0i, 0i))));
    var var_2 = ((_wgslsmith_dot_vec4_u32(u_input.b ^ vec4<u32>(71246u, 30383u, arg_0.a, 30866u), firstLeadingBit(u_input.b)) >> (~min(0u, arg_0.a) % 32u)) << (arg_0.a % 32u)) < _wgslsmith_add_u32(~arg_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 75314u, 38727u) >> (vec3<u32>(1u, 4294967295u, 11589u) % vec3<u32>(32u)), max(vec3<u32>(u_input.b.x, arg_1.a, 0u), u_input.b.wwx)), func_3(arg_0, arg_0, Struct_1(4294967295u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, -1129f, var_0)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -745f, 303f, -206f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1140f, var_0, var_0) * vec4<f32>(var_0, var_0, 413f, var_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, vec3<i32>(4101i, -1i ^ u_input.a, -(_wgslsmith_mod_i32(u_input.d.x, u_input.c.x) >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.e), Struct_1(~u_input.b.x)))), -vec3<i32>(-1i ^ -u_input.a, u_input.d.x, -2147483647i));
}

