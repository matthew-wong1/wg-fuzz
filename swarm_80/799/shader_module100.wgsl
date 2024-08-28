struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 0u, 0u));

var<private> global1: f32 = 1443f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    global0 = arg_0;
    return ~_wgslsmith_div_u32(1u & _wgslsmith_mult_u32(~4673u, global0.a.x | 59822u), min(global0.a.x, ~(~global0.a.x)));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(min(firstLeadingBit(u_input.b), abs(vec4<u32>(u_input.e, 50746u, u_input.e, u_input.b.x))), ~vec4<u32>(u_input.e, u_input.b.x, u_input.e, 1u)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, 47060u), u_input.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.e, 28662u, 1u), vec4<u32>(0u, 4123u, global0.a.x, 0u)) % vec4<u32>(32u)))), !(!vec4<bool>(-1i <= u_input.c.x, true, true, u_input.d > u_input.c.x)), global0.a.x);
    let var_1 = global0.a.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(abs(53811u), 4294967295u, ~_wgslsmith_mod_u32(4294967295u, 1u), 14145u), _wgslsmith_clamp_vec4_u32(select(reverseBits(u_input.b), vec4<u32>(global0.a.x, 1u, u_input.a, global0.a.x), !var_0.b), vec4<u32>(0u, global0.a.x ^ u_input.a, 0u, 5401u), ~u_input.b));
    var var_2 = Struct_1(vec3<u32>(u_input.a, max(countOneBits(u_input.b.x), ~1u) | ~(~4294967295u), countOneBits(~var_1 >> (~0u % 32u))));
    let var_3 = any(var_0.b.zxy);
    var_0 = Struct_2(vec4<u32>(~(~firstTrailingBit(u_input.a)), u_input.e, _wgslsmith_mod_u32(70772u, var_2.a.x), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(59235u, var_2.a.x, var_1), vec3<u32>(18497u, 117217u, var_2.a.x)) << (0u % 32u))), vec4<bool>(!all(vec3<bool>(var_3, true, var_3)), true, true, var_3), ~min(var_2.a.x, _wgslsmith_dot_vec3_u32(~var_2.a, vec3<u32>(var_2.a.x, u_input.a, var_0.a.x))));
    return max(var_0.a, u_input.b);
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(Struct_1(u_input.b.wyx), u_input.d | (u_input.d ^ u_input.c.x), u_input.c.x), u_input.e, u_input.b.x, 4294967295u), _wgslsmith_div_vec4_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -203f)), ~(~(u_input.b | vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.e)))));
    global1 = -633f;
    global1 = _wgslsmith_f_op_f32(262f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-967f)) * 1346f)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), 122f));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, 1f, 1f)))));
    return u_input.b.zyw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1255f;
    global0 = Struct_1(func_1(vec3<bool>(true, true, true)));
    global1 = -1000f;
    global1 = -463f;
    let var_0 = -1394f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~(~0u) & global0.a.x, 30094i);
}

