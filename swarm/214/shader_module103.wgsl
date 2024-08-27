struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = vec4<f32>(105f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(268f)), _wgslsmith_f_op_f32(max(1085f, -352f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1299f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, -780f))))))));
    let var_1 = Struct_1(u_input.b.x, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz)))), var_0.x);
    return _wgslsmith_mod_u32(var_1.a << (u_input.c % 32u), ~((u_input.c | 52833u) ^ (48821u ^ (var_1.a >> (19147u % 32u)))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = -494f;
    let var_1 = vec3<u32>(u_input.b.x, func_3(), u_input.b.x);
    var_0 = 2590f;
    var var_2 = -1i;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    return 1588f;
}

fn func_1() -> u32 {
    var var_0 = ~vec4<u32>(_wgslsmith_div_u32(min(1u, u_input.b.x), ~_wgslsmith_add_u32(73568u, 49268u)), ~u_input.b.x, 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) >> (vec2<u32>(53899u, u_input.c) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.b.xz, u_input.b.xx)), vec2<u32>(u_input.c, u_input.c) & vec2<u32>(34940u, u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(func_2(false, -1000f, firstTrailingBit(min(vec2<i32>(u_input.a ^ 2147483647i, u_input.a << (u_input.c % 32u)), firstLeadingBit(~vec2<i32>(u_input.a, 42837i))))));
    let var_2 = Struct_3(u_input.c);
    var_0 = abs(select(max(u_input.b, vec4<u32>(var_2.a, var_2.a, var_2.a, var_2.a)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a, var_0.x, var_2.a, var_2.a), u_input.b, vec4<u32>(var_0.x, 0u, var_0.x, 0u)), u_input.b, any(vec3<bool>(false, false, false)) | true) | (~(~u_input.b) >> ((_wgslsmith_mod_vec4_u32(u_input.b, u_input.b) ^ reverseBits(u_input.b)) % vec4<u32>(32u))));
    var_0 = ~vec4<u32>(4294967295u, ~(~(~u_input.b.x)), 159596u, var_2.a);
    return ~93785u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.a ^ -35517i, -2036i, 1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f - -635f))), -390f, true)), max(u_input.b.x, func_1()));
}

