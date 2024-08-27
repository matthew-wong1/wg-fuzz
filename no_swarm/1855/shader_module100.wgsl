struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> vec2<i32> {
    var var_0 = -2147483647i;
    var_0 = -1i;
    var var_1 = true;
    var_0 = 2147483647i;
    let var_2 = arg_1;
    return firstTrailingBit(arg_0.ww);
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(-257f);
    var var_1 = true != select(true, reverseBits(u_input.b) != 2147483647i, max(u_input.a, _wgslsmith_mod_u32(1u, u_input.a)) <= firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 61271u), vec3<u32>(u_input.a, 113690u, u_input.a))));
    let var_2 = abs(~func_3(vec4<i32>(reverseBits(u_input.b), -22153i, _wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b), true, true));
    var_1 = u_input.a <= ((~4294967295u >> (firstLeadingBit(~u_input.a) % 32u)) ^ _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a));
    var var_3 = Struct_1(-1071f);
    return max(reverseBits((vec4<u32>(u_input.a, u_input.a, 100799u, 1u) << (vec4<u32>(u_input.a, 0u, u_input.a, 1u) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 13226u, u_input.a, 0u), vec4<u32>(11203u, 9419u, u_input.a, 56835u))), _wgslsmith_add_vec4_u32(~vec4<u32>(1756u, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 29596u, 36260u, u_input.a), vec4<u32>(1u, 30895u, 0u, u_input.a)), ~vec4<u32>(u_input.a, 15748u, 28819u, u_input.a)))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(23979u, 4294967295u, 70964u)), _wgslsmith_div_u32(1u, u_input.a), u_input.a, ~u_input.a), ~vec4<u32>(u_input.a, u_input.a, 33740u, 1u) << ((vec4<u32>(67010u, 0u, 36452u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 51048u, u_input.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    let var_1 = ~(~countOneBits(countOneBits(vec3<i32>(-2147483647i, -38151i, 1i)))) | vec3<i32>(~(-u_input.b) & 32453i, max(_wgslsmith_div_i32(u_input.b, -u_input.b), -u_input.b), u_input.b);
    let var_2 = arg_2;
    var var_3 = !vec2<bool>(false, arg_2.a == _wgslsmith_f_op_f32(trunc(-656f)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2.a, arg_2.a)))) + arg_2.a));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), 427f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, 327f), vec2<f32>(var_2.a, arg_2.a))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4, arg_2.a)))))));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = -2147483647i;
    var var_1 = 539f;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, _wgslsmith_f_op_f32(max(-406f, 339f))) * vec2<f32>(_wgslsmith_f_op_f32(122f + -1000f), _wgslsmith_f_op_f32(-1621f - 792f))) + _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_vec4_u32(func_2(), vec4<u32>(u_input.a, 0u, arg_0, 4294967295u) >> (vec4<u32>(18498u, arg_0, 74287u, u_input.a) % vec4<u32>(32u))), ~vec2<u32>(u_input.a, arg_0), Struct_1(-1116f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1211f;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1(~min(~u_input.a, 50199u)));
    var var_2 = u_input.a ^ ~u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2214f) - _wgslsmith_f_op_f32(f32(-1f) * -1061f)), _wgslsmith_f_op_f32(f32(-1f) * -243f), 49093u < u_input.a))));
    var var_4 = Struct_1(var_0);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), -_wgslsmith_mult_i32(u_input.b, 18405i), ~u_input.a);
}

