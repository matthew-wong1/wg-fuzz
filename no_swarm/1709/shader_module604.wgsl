struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(0u, 15453u, 4294967295u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(u_input.c, ~(countOneBits(~vec4<u32>(u_input.d.x, 0u, 9877u, 29309u)) | vec4<u32>(firstLeadingBit(4294967295u), ~u_input.a.x, 320u ^ global0.a.x, ~u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(666f - 1599f) * _wgslsmith_f_op_f32(sign(765f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-534f)))))));
    global0 = Struct_2(~vec4<u32>(~(var_0.x >> (16250u % 32u)), firstLeadingBit(min(0u, 41683u)), ~var_0.x, _wgslsmith_sub_u32(7230u, ~global0.a.x)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2113f)), _wgslsmith_f_op_f32(max(880f, -1000f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(234f + -710f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)));
    return u_input.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2197f), _wgslsmith_div_f32(-413f, 1079f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1284f * -532f))), 422f, -508f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 594f, var_0.x)));
    var var_2 = Struct_3(Struct_2(~vec4<u32>(func_3(u_input.d, vec4<bool>(arg_3, true, arg_1.x, false), true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a.x), global0.a.xx), ~23451u, 1u)));
    var var_3 = 107246u;
    var var_4 = -(~select(2147483647i, 19122i | arg_0.x, arg_3));
    return abs(arg_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    global0 = arg_3;
    global0 = arg_3;
    global0 = arg_0;
    global0 = arg_0;
    global0 = arg_0;
    return Struct_3(Struct_2(~u_input.c));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_4(Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(56136u, global0.a.x, u_input.a.x, u_input.a.x), global0.a)), ~_wgslsmith_sub_u32(max(func_2(u_input.b, vec3<bool>(true, false, false), vec4<u32>(u_input.d.x, 69184u, 5622u, global0.a.x), false), 1u), 4294967295u), ~abs(1i), Struct_2(select(vec4<u32>(1u, global0.a.x ^ global0.a.x, u_input.d.x, countOneBits(42151u)), vec4<u32>(0u, 4294967295u, 29323u, u_input.a.x) | ~u_input.c, true)));
    var var_1 = Struct_2(var_0.a.a);
    var_0 = Struct_3(func_4(func_4(var_0.a, u_input.c.x, i32(-1i) * -36877i, Struct_2(var_1.a)).a, _wgslsmith_add_u32(var_1.a.x, ~(~var_1.a.x)), ~(-24496i), Struct_2(_wgslsmith_div_vec4_u32(~global0.a, vec4<u32>(var_1.a.x, var_0.a.a.x, u_input.d.x, 16810u) & global0.a))).a);
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(abs(var_1.a.x), 1u, ~((global0.a.x ^ 1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 0u, 4294967295u), vec3<u32>(var_1.a.x, u_input.c.x, 2673u)) % 32u))), ~firstLeadingBit(1u), 0u, ~_wgslsmith_dot_vec3_u32(~func_4(var_0.a, 28773u, 11142i, Struct_2(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 64464u))).a.a.xwy, ~vec3<u32>(20657u, 1u, global0.a.x)));
    global0 = func_4(Struct_2(vec4<u32>(abs(u_input.a.x), reverseBits(7927u), ~u_input.c.x, 0u) ^ u_input.c), 4294967295u, -u_input.b.x, func_4(Struct_2(~vec4<u32>(0u, var_1.a.x, 0u, global0.a.x) | vec4<u32>(42798u, global0.a.x, 1u, 39785u)), countOneBits(~(20069u & global0.a.x)), _wgslsmith_mult_i32(u_input.b.x, 1059i), func_4(var_0.a, ~var_0.a.a.x, 50221i, func_4(Struct_2(vec4<u32>(u_input.c.x, 25316u, 70054u, 1u)), ~4294967295u, -21589i, func_4(var_0.a, 1u, u_input.b.x, Struct_2(vec4<u32>(1u, var_1.a.x, 70694u, 4294967295u))).a).a).a).a).a;
    return Struct_3(func_4(Struct_2(vec4<u32>(_wgslsmith_clamp_u32(1u, var_1.a.x, var_2.x), _wgslsmith_sub_u32(1u, var_0.a.a.x), ~var_0.a.a.x, _wgslsmith_div_u32(1u, u_input.d.x))), ~(~firstTrailingBit(3876u)), select(21040i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, arg_0), ~0i, select(14506i, 2147483647i, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), func_4(Struct_2(~global0.a), var_1.a.x << (~1u % 32u), ~u_input.b.x, func_4(func_4(var_0.a, global0.a.x, u_input.b.x, Struct_2(vec4<u32>(var_1.a.x, 1u, global0.a.x, 15384u))).a, ~var_0.a.a.x, -24784i, func_4(var_0.a, 16992u, -12642i, Struct_2(u_input.c)).a).a).a).a);
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    global0 = arg_1.a;
    return func_4(func_1(-u_input.b.x).a, _wgslsmith_mult_u32(~(~(~27035u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45393u, global0.a.x, 14398u), vec4<u32>(global0.a.x, 1u, arg_0, 38341u)))), u_input.b.x, func_4(func_4(Struct_2(~u_input.c), abs(~arg_1.a.a.x), ~(-1436i), func_1(u_input.b.x).a).a, 4294967295u, -min(-13442i, -1i), arg_1.a).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2293f + _wgslsmith_f_op_f32(871f + -1455f)) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1404f, 736f)) + _wgslsmith_f_op_f32(-653f + -1329f))))), _wgslsmith_f_op_f32(f32(-1f) * -273f));
    var var_1 = ~(_wgslsmith_div_u32(global0.a.x, u_input.a.x & firstLeadingBit(1u)) & 46945u);
    var_1 = global0.a.x;
    var var_2 = func_5(global0.a.x, func_1(select(~u_input.b.x, u_input.b.x, true)));
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~firstTrailingBit(global0.a.x), ~u_input.d.x, firstTrailingBit(4294967295u), countOneBits(var_2.a.a.x)), vec4<u32>(func_4(Struct_2(vec4<u32>(var_2.a.a.x, global0.a.x, global0.a.x, 68978u)), 1u, -52324i, func_1(0i).a).a.a.x, 0u, ~select(50513u, ~global0.a.x, true), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~vec4<i32>(u_input.b.x, u_input.b.x ^ u_input.b.x, abs(-u_input.b.x), -1i));
}

