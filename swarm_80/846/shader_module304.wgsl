struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_1(vec2<bool>(arg_1.x, arg_1.x), u_input.d, ~(-u_input.a), u_input.c, 32636i);
    var var_1 = Struct_1(var_0.a, _wgslsmith_clamp_vec2_u32(select(min(var_0.b, select(var_0.b, var_0.b, vec2<bool>(true, var_0.a.x))), var_0.b, select(!var_0.a, arg_1, arg_1.x && arg_1.x)), u_input.d, ~(~(~u_input.d))), u_input.a, var_0.d, 12569i);
    global0 = 393f;
    var var_2 = var_0;
    var var_3 = var_0;
    return !any(!vec4<bool>(true, arg_1.x, true, all(vec4<bool>(var_3.a.x, true, false, var_3.a.x))));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-505f, -310f))))), -1398f, func_3(28157u, !vec2<bool>(true, all(vec3<bool>(true, true, true))))));
    let var_1 = -17807i;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(146f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(var_0 * 474f)))))));
    var var_2 = -abs(0i & ~(-var_1));
    var var_3 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, var_0 == -134f), true), vec2<u32>(9078u, ~u_input.d.x), ~u_input.b.x, vec3<i32>(abs(1i), ((u_input.b.x >> (u_input.d.x % 32u)) ^ var_1) << (~u_input.d.x % 32u), 1i), u_input.b.x);
    return vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i) * -var_3.d.zy), -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_1), var_3.d.zz), u_input.c.xz, vec2<i32>(var_1, -2147483647i))), 6360i, 1i);
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = ~max(15888u, u_input.d.x);
    let var_1 = u_input.c.x;
    var_0 = 26028u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1763f - -1000f))), 1049f) - _wgslsmith_f_op_f32(1041f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(735f, -1182f) + _wgslsmith_f_op_f32(sign(1000f))))) * 2302f);
    var var_2 = Struct_1(!vec2<bool>(false, any(vec3<bool>(true, true, true)) | true), vec2<u32>(arg_0.x, ~(~1503u)), u_input.a, firstTrailingBit(u_input.c), _wgslsmith_mult_i32(u_input.b.x, ~countOneBits(~u_input.b.x)));
    return vec4<i32>(-1i) * -(~(vec4<i32>(u_input.c.x, -1i, var_1, 2147483647i) ^ func_2(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.d.x, 25923u, u_input.d.x, u_input.d.x) & vec4<u32>(23069u, 64874u, 144415u, 1u)), vec4<u32>(~28458u, ~5667u, countOneBits(u_input.d.x), _wgslsmith_add_u32(0u, u_input.d.x))), countOneBits(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 88369u)));
    let var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), ~u_input.d.x > var_0.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -980f))) - _wgslsmith_f_op_f32(-1f))));
    global0 = -1482f;
    var var_2 = Struct_1(!vec2<bool>(!all(vec3<bool>(false, var_1.x, var_1.x)), true), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, ~6051u), var_0.ww), u_input.a, ~vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(func_1(var_0), ~vec4<i32>(u_input.c.x, 1i, u_input.b.x, -73316i)), select(u_input.c.x, 1i, var_1.x)), 0i);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-102f, -790f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1156f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1642f, _wgslsmith_f_op_f32(f32(-1f) * -635f), -1257f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1617f, 449f, -828f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, -362f, -1062f, -1371f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-978f, -1000f, 515f, 876f), vec4<f32>(762f, 156f, 1469f, 351f), var_1))), true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(1202f, 881f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-193f, -514f)), -388f), _wgslsmith_div_f32(-1690f, _wgslsmith_div_f32(-1000f, -380f)), 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(534f, -932f, 811f, 636f), vec4<f32>(-1399f, 789f, 1651f, 1446f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-800f, -472f, 907f, -249f)))))));
    let var_4 = firstTrailingBit(100851u);
    global0 = -1214f;
    var var_5 = Struct_1(select(var_2.a, select(vec2<bool>(true, !var_2.a.x), var_2.a, var_1.x), ~(var_2.c << (var_0.x % 32u)) >= (i32(-1i) * -var_2.c)), vec2<u32>(0u, firstTrailingBit(var_0.x)), 2147483647i, func_2(~((var_2.c | -1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, var_4), var_0.wyx) % 32u))).yxy, -abs(41286i) ^ (-49019i ^ u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(787f, var_3.x)), var_2.d.x, _wgslsmith_f_op_f32(-var_3.x), 31350i, vec3<u32>(51562u, abs(~(37042u >> (var_2.b.x % 32u))), _wgslsmith_mod_u32(17166u, ~var_4)));
}

