struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~select(u_input.d ^ ~2808i, abs(abs(1i)), false) > (-reverseBits(_wgslsmith_clamp_i32(u_input.d, -7902i, 8409i)) ^ 0i);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f - arg_1.x))));
    var var_2 = arg_0;
    let var_3 = Struct_1(arg_2.x);
    var_0 = false || ((28915i <= (-10048i ^ firstTrailingBit(u_input.d))) && true);
    return _wgslsmith_div_f32(arg_1.x, 1000f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    let var_1 = vec2<bool>(true, select(arg_0.x, (false != arg_0.x) && (all(vec2<bool>(arg_0.x, true)) || (arg_0.x != arg_0.x)), true));
    let var_2 = (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(20106u, 8747u, 1058u, arg_1.a)), ~36277u), vec2<u32>(0u, u_input.a.x & arg_2.a)) >> (~_wgslsmith_mult_u32(1u, ~52078u) % 32u)) > ~(~var_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -513f, -431f)), ~vec2<u32>(arg_1.a, arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(480f - -1267f), -961f)))));
    let var_4 = _wgslsmith_dot_vec3_i32(-(~countOneBits(vec3<i32>(u_input.d, u_input.d, 0i))), vec3<i32>(4538i, u_input.d, u_input.d));
    return countOneBits(select(_wgslsmith_sub_u32(~74840u, 1u), _wgslsmith_add_u32(var_0.a, _wgslsmith_dot_vec4_u32(min(vec4<u32>(26037u, 4294967295u, u_input.a.x, arg_1.a), vec4<u32>(u_input.b.x, 28467u, 64113u, 71083u)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(arg_1.a, u_input.c, 6923u, 22892u)))), !all(!arg_0.yz)));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1148f) - 1694f))) > -179f;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(538f, _wgslsmith_div_f32(571f, -572f)));
    let var_2 = vec2<u32>(17945u, max((func_2(vec3<bool>(arg_1, arg_1, arg_1), Struct_1(43639u), Struct_1(u_input.c)) ^ (4294967295u ^ u_input.a.x)) | u_input.b.x, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(0u, u_input.b.x)), u_input.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(50551u, 0u), u_input.b.x))));
    var_0 = !(_wgslsmith_mult_u32(~(~var_2.x), ~func_2(vec3<bool>(arg_1, arg_1, false), Struct_1(u_input.a.x), Struct_1(4294967295u))) == u_input.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(393f)) - var_1) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1736f, _wgslsmith_f_op_f32(abs(var_1)))), var_1)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_add_u32(~u_input.a.x, ~_wgslsmith_mult_u32(~4294967295u, 1u));
    let var_1 = arg_0;
    var_0 = _wgslsmith_clamp_u32(max(~3724u, countOneBits(31664u)), ~(~var_1.a), ~_wgslsmith_div_u32(select(47588u, 2499u, false), 64726u >> (0u % 32u))) << (abs(func_2(vec3<bool>(-27178i == u_input.d, true, all(vec2<bool>(false, false))), arg_0, Struct_1(4294967295u))) % 32u);
    return -240f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x << (1u % 32u);
    let var_1 = Struct_1(~var_0);
    let var_2 = !any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    var var_3 = vec4<f32>(159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2065f) * _wgslsmith_f_op_f32(round(-1034f)))) + _wgslsmith_f_op_f32(184f + _wgslsmith_f_op_f32(func_4(var_1, 32525u, _wgslsmith_f_op_f32(func_1(2147483647i, false)), ~53222u)))), _wgslsmith_f_op_f32(func_1(u_input.d, all(select(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, true, false, false), vec4<bool>(var_2, true, true, var_2)), select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(false, var_2, true, false), vec4<bool>(true, var_2, false, var_2)), vec4<bool>(false, var_2, true, var_2))))), 537f);
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), ~u_input.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), reverseBits(vec3<i32>(u_input.d, u_input.d, 2147483647i))), -_wgslsmith_sub_i32(8963i, -26763i), reverseBits(i32(-1i) * -2147483647i), -(~u_input.d)) ^ -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-28552i, u_input.d, -1753i, u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), vec4<i32>(-1i, -2147483647i, -2147483647i, 0i)), vec4<i32>(u_input.d, 2147483647i, u_input.d, -78194i) ^ vec4<i32>(-1i, u_input.d, -2147483647i, 2147483647i)));
}

