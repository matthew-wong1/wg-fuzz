struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    return ~arg_0.b.b.x;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_1(i32(-1i) * -1i, _wgslsmith_div_vec3_i32((countOneBits(u_input.c) << (~vec3<u32>(arg_0, 4294967295u, arg_0) % vec3<u32>(32u))) ^ u_input.c, ~vec3<i32>(-u_input.a, 4594i >> (1u % 32u), -10385i)), !all(vec2<bool>(0i > u_input.c.x, arg_1.x > arg_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-830f, arg_1.x) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -2300f) + arg_1.yx)))));
    let var_1 = !(!(!(!(!vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)))));
    let var_2 = !var_0.c;
    let var_3 = vec4<u32>(u_input.b.x, arg_0, firstLeadingBit(arg_0), 9538u);
    let var_4 = arg_1.zzx;
    return true;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(u_input.c.x, vec3<i32>(1i, u_input.c.x, firstLeadingBit(-func_2(Struct_2(-1840f, Struct_1(6859i, u_input.c, true, vec2<f32>(-527f, 1853f)), vec2<f32>(1000f, 234f)), vec2<f32>(-1928f, 591f), Struct_1(-6439i, vec3<i32>(1i, u_input.a, u_input.a), false, vec2<f32>(-1348f, -307f)), vec3<i32>(31468i, u_input.c.x, -7198i)))), all(vec4<bool>(false, true, func_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, 1293f, 359f, -1000f))), all(vec3<bool>(true, true, true)))), vec2<f32>(186f, 653f));
    var var_1 = Struct_2(283f, Struct_1((i32(-1i) * -9359i) ^ (_wgslsmith_add_i32(-2086i, 0i) & _wgslsmith_mod_i32(41645i, u_input.a)), vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(11728i, u_input.a, var_0.b.x, 2147483647i), min(vec4<i32>(2147483647i, u_input.a, u_input.c.x, 27971i), vec4<i32>(u_input.a, var_0.a, 0i, -8997i))), ~(-24492i) << (u_input.b.x % 32u)), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) + var_0.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) - var_0.d) * vec2<f32>(var_0.d.x, var_0.d.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(104f, _wgslsmith_div_f32(1659f, _wgslsmith_f_op_f32(-var_1.b.d.x)), var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.b.d.x, 2613f), -2439f))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(285f - var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(232f, 1051f) - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, -1000f, true))), var_1.a)));
    let var_3 = false || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f + -1000f) + var_1.a)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))));
    let var_4 = var_2.x;
    return -21905i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(1u, 18500u, 9514u) ^ select(u_input.b, vec3<u32>(1u, u_input.b.x, ~0u) ^ ~vec3<u32>(23198u, 20015u, u_input.b.x), vec3<bool>(true, true, true));
    let var_1 = ~0i;
    var var_2 = func_1();
    let var_3 = 23196u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f));
    let var_5 = 1i;
    let var_6 = ~firstTrailingBit(vec2<u32>(1u, ~_wgslsmith_add_u32(var_3, 57356u)));
    var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-273f, _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(1223f - -210f)))))));
    let var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1005f)))), 570f);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14609u, 1u), var_6), ~var_0.xy)), abs(-(~var_5)) | var_5, ~(var_3 >> (_wgslsmith_clamp_u32(var_3, var_6.x << (var_0.x % 32u), ~15399u) % 32u)), 1497f, ~(-35011i));
}

