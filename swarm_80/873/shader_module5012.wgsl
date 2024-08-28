struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mod_i32(u_input.b, firstTrailingBit(1i));
    return -1884f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_1(_wgslsmith_mult_i32(1i, 64707i), !(!var_0));
    var var_2 = var_1;
    let var_3 = u_input.c.zwz;
    var_2 = arg_1;
    return u_input.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2456f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(func_2(~1i, Struct_1(u_input.b, true), u_input.c.x & arg_1.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2485f))), var_0))));
    var var_2 = ~_wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.a), ~vec3<u32>(39229u, 52723u, 44424u))), min(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 0u, 4294967295u) | vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(25446u, 1u, u_input.a) >> (max(vec3<u32>(46199u, 0u, u_input.a), vec3<u32>(u_input.a, 1u, 70036u)) % vec3<u32>(32u))));
    var_2 = vec3<u32>(~(~83114u), ~(~(~42428u)), func_3(arg_1, Struct_1(1i, arg_0.x), ~u_input.c, vec2<i32>(arg_1.a, _wgslsmith_clamp_i32(arg_1.a, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~(-6008i)))));
    var var_3 = arg_1;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = max(vec3<u32>(u_input.a, u_input.a, firstLeadingBit(~firstTrailingBit(u_input.a))), vec3<u32>(firstLeadingBit(reverseBits(~31729u)), u_input.a, 1771u >> (u_input.a % 32u)));
    let var_2 = reverseBits(13875u);
    let var_3 = Struct_1(max(u_input.c.x, func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), Struct_1(var_0, false))), true);
    let var_4 = vec2<i32>(_wgslsmith_div_i32(0i, u_input.c.x), -var_0 << ((reverseBits(func_3(Struct_1(1i, var_3.b), var_3, vec4<i32>(u_input.b, u_input.c.x, var_0, var_0), u_input.c.wx)) & u_input.a) % 32u));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~max(countOneBits(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 0u, 4294967295u, 51731u), var_3.b)), vec4<u32>(abs(u_input.a), u_input.a, ~4294967295u, max(1u, var_1.x))), u_input.c.xwy, firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, countOneBits(51273u))) | firstTrailingBit(reverseBits(vec3<u32>(u_input.a, 4294967295u, 4294967295u))), ~_wgslsmith_mod_u32(1u, var_2));
}

