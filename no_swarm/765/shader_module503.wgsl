struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.b | ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, 36518u, u_input.a), u_input.b ^ u_input.b), vec3<u32>(28663u, u_input.d.x, abs(u_input.c.x)));
    var var_1 = ~var_0.x;
    var var_2 = Struct_2(vec4<bool>(any(select(vec3<bool>(arg_3.x, arg_2.x, false), select(vec3<bool>(false, false, false), arg_3, arg_0), true)), !all(arg_2), false, all(vec4<bool>(true, var_0.x <= 21028u, arg_3.x, !arg_0))), _wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(1u, 1u, 0u)), ~_wgslsmith_div_u32(u_input.d.x, u_input.d.x))));
    return var_0.x;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = any(!arg_0.a.yxy);
    var var_1 = u_input.d | vec3<u32>(arg_0.b, u_input.b.x, arg_0.b);
    var_1 = ~u_input.d;
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(func_3(arg_0.a.x, u_input.e, arg_0.a.zzw, vec3<bool>(true, arg_0.a.x, arg_0.a.x)), var_1.x), func_3(arg_0.a.x, vec2<i32>(u_input.e.x, u_input.e.x), !arg_0.a.wwz, !vec3<bool>(arg_0.a.x, false, true)), func_3(all(vec2<bool>(arg_0.a.x, true)), u_input.e, arg_0.a.wwz, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))) >> (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, arg_0.b, 1u, 1u)), max(1u, 4294967295u), 69325u) % vec3<u32>(32u)), vec3<u32>(~abs(26655u), u_input.c.x, _wgslsmith_mod_u32(1u, ~78180u) << (~_wgslsmith_mod_u32(var_1.x, 4294967295u) % 32u)));
    var var_2 = vec3<bool>(!(!(abs(u_input.e.x) < u_input.e.x)), arg_0.a.x, arg_0.a.x);
    return select(select(arg_0.a, arg_0.a, arg_0.a), !arg_0.a, vec4<bool>(true, false, u_input.e.x >= -29693i, 4294967295u == arg_0.b));
}

fn func_1() -> f32 {
    var var_0 = any(!(!func_2(Struct_2(vec4<bool>(true, true, true, true), 65796u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -813f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f)))));
    var var_2 = any(vec4<bool>(any(vec2<bool>(select(false, false, false), false)), !any(vec4<bool>(false, false, false, false)), false, false));
    let var_3 = var_1;
    var var_4 = max(~(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, -7014i, 2147483647i), vec3<i32>(u_input.e.x, -23237i, u_input.e.x)))), vec3<i32>(50175i, -u_input.e.x, ~(~(-1i))));
    return 1936f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(step(-840f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))));
    let var_1 = vec2<bool>(!(!(u_input.d.x <= _wgslsmith_mod_u32(0u, u_input.b.x))), (74562i >= max(_wgslsmith_mult_i32(u_input.e.x, u_input.e.x), -2147483647i)) | any(func_2(Struct_2(vec4<bool>(false, true, true, true), u_input.a))));
    var var_2 = -firstTrailingBit(max(max(vec3<i32>(-2147483647i, -944i, -1i), vec3<i32>(u_input.e.x, -2147483647i, 0i)), -vec3<i32>(u_input.e.x, 49866i, u_input.e.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c.x), u_input.d) % vec3<u32>(32u))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(func_1()));
    var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-612f))));
    let var_4 = abs(u_input.b.x);
    var_3 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f - var_3.a) - -1147f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_2.x, _wgslsmith_clamp_i32(u_input.e.x, var_2.x ^ -u_input.e.x, u_input.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1641f), -1638f);
}

