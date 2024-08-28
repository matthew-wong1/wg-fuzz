struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(37852u, 4294967295u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = ~_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 39426u)), min(vec2<u32>(global0.x, u_input.a), vec2<u32>(u_input.a, global0.x))), vec2<u32>(~global0.x, firstTrailingBit(u_input.a)), any(vec2<bool>(true, true)) != false), ~countOneBits(max(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u))), reverseBits(vec2<u32>(firstTrailingBit(0u), ~32852u)));
    global0 = min(~(~(~vec2<u32>(47116u, 110178u))) << (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global0.x, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, 14312u)), reverseBits(vec2<u32>(1u, global0.x)))) % vec2<u32>(32u)), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 1u, 0u, 36808u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 35599u, global0.x, 25326u), vec4<u32>(u_input.a, global0.x, u_input.a, 20750u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false)), ~(~vec4<u32>(1u, 39522u, u_input.a, u_input.a)))));
    var var_0 = _wgslsmith_f_op_f32(1513f + -754f);
    var var_1 = firstTrailingBit(reverseBits(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 1u), 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 11865u, 0u), vec3<u32>(u_input.a, global0.x, 0u)), ~vec3<u32>(u_input.a, 9407u, 0u)), ~8616u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f))), all(vec3<bool>(true, true, true)))) - 2140f);
    return 998f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(arg_2.c.x, -141f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f - -687f))), -1328f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1641f, arg_2.b.b)), arg_1.b)), 0i, arg_2.b.e);
    let var_1 = _wgslsmith_mult_i32(select(~(-(~arg_2.b.d)), ~34714i, false), _wgslsmith_mod_i32(var_0.d, 32293i));
    var_0 = arg_2.b;
    let var_2 = 21520u;
    global0 = max(arg_2.b.e.yz, var_0.e.yw);
    return firstLeadingBit(arg_1.e.xz | ~arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    global0 = _wgslsmith_add_vec2_u32(select(max(firstTrailingBit(func_2(arg_0.e.yx, arg_0, Struct_2(arg_0.e.x, Struct_1(1328f, arg_0.b, arg_0.c, arg_0.d, arg_0.e), arg_0.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.e.x, 4294967295u) ^ arg_0.e.yw, max(arg_0.e.yx, vec2<u32>(4294967295u, u_input.a)))), arg_0.e.wx, arg_1.x), _wgslsmith_div_vec2_u32(vec2<u32>(~reverseBits(4294967295u), ~global0.x >> ((1u | global0.x) % 32u)), ~abs(vec2<u32>(15954u, u_input.a) | arg_0.e.yy)));
    global0 = abs(~_wgslsmith_sub_vec2_u32(abs(abs(arg_0.e.wy)), ~_wgslsmith_mod_vec2_u32(arg_0.e.zw, arg_0.e.xy)));
    global0 = ~(~vec2<u32>(min(~28643u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 0u), arg_0.e.yyw)), _wgslsmith_sub_u32(arg_2, ~78948u)));
    global0 = reverseBits(arg_0.e.xw);
    var var_0 = arg_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((_wgslsmith_div_u32(u_input.a, ~9139u) | reverseBits(~37505u)) & u_input.a) <= abs(~u_input.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1121f + 1f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1075f, 1236f)) - _wgslsmith_f_op_f32(func_1(Struct_1(-1005f, -1820f, vec3<f32>(-1493f, 1384f, -761f), -1i, vec4<u32>(7561u, u_input.a, global0.x, 44535u)), vec4<bool>(false, false, false, false), 0u))), _wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2782f, -1000f, 1000f, 1189f)))) - vec4<f32>(-410f, _wgslsmith_f_op_f32(176f + -717f), _wgslsmith_f_op_f32(step(-155f, -502f)), -478f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2231f, -2739f, -1174f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 485f, -1733f, -1316f)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2313f, -716f, -1000f, 799f), vec4<f32>(-1180f, -225f, -891f, 308f)))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) - _wgslsmith_f_op_f32(f32(-1f) * -1674f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(952f, _wgslsmith_f_op_f32(743f + 1309f))) + _wgslsmith_f_op_f32(f32(-1f) * -1081f)), _wgslsmith_f_op_f32(-629f * 359f)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * 669f))) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(func_1(Struct_1(2236f, var_2.x, vec3<f32>(-1958f, 610f, var_2.x), u_input.b, vec4<u32>(global0.x, 0u, global0.x, global0.x)), vec4<bool>(false, true, false, true), 76634u))))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), var_2.x);
    let var_3 = 0i;
    var var_4 = ~countOneBits(vec3<u32>(4294967295u, global0.x << (global0.x % 32u), func_2(firstLeadingBit(vec2<u32>(64897u, u_input.a)), Struct_1(var_2.x, 1000f, var_2.yyx, var_3, vec4<u32>(global0.x, global0.x, 2407u, global0.x)), Struct_2(global0.x, Struct_1(-569f, var_2.x, vec3<f32>(444f, -493f, 399f), var_3, vec4<u32>(97881u, u_input.a, 4294967295u, global0.x)), var_2.ywz)).x));
    global0 = reverseBits(select(var_4.xy, var_4.xz, select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec3<bool>(true, true, true)))));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(abs(-1i), -29712i), _wgslsmith_mod_i32(u_input.b, u_input.b)), -max(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-8356i, var_3), vec2<i32>(0i, 1i)), vec2<i32>(u_input.b, u_input.b), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), min(vec2<i32>(u_input.b, -25754i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(8766i, 11615i)))));
}

