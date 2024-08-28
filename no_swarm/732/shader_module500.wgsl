struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = countOneBits(~select(max(u_input.e.xw, vec2<i32>(u_input.e.x, u_input.d) ^ vec2<i32>(u_input.d, 0i)), -vec2<i32>(u_input.d, -1i), all(vec3<bool>(false, false, false))));
    global0 = any(vec3<bool>(55494u >= _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.b, u_input.a, u_input.a)), vec3<u32>(u_input.b, u_input.a, u_input.a)), false, select(true, false, any(vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -832f))))) - 1f)));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_1(vec4<f32>(-352f, -1928f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1079f)), _wgslsmith_f_op_f32(f32(-1f) * -420f)) * -1780f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -175f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), 1402f, _wgslsmith_f_op_f32(var_0.a.x - -144f), 1807f), var_0.a)))));
    var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(1023f * -630f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_1.a.x)));
    var var_2 = Struct_2(~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(38351u, arg_0), u_input.c.xx)) & ~(~vec2<u32>(1u, arg_0)), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-137f, -1000f, var_1.a.x, 1022f), vec4<f32>(var_0.a.x, 1170f, 1037f, var_1.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(round(1583f)), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + 1742f), -506f))), abs(vec4<u32>(1u, select(arg_0 >> (4294967295u % 32u), ~0u, true), ~max(4745u, arg_0), ~4294967295u)));
    var var_3 = Struct_2(var_2.d.xx, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, var_1.a.x, var_2.b.a.x, -718f) * var_1.a))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_1.a.x, -840f, 283f), var_0.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 272f, var_0.a.x, 3120f), var_2.b.a, true)))))), (var_2.d ^ _wgslsmith_div_vec4_u32(vec4<u32>(26212u, 31244u, 49510u, var_2.a.x) << (vec4<u32>(20138u, arg_0, u_input.b, var_2.a.x) % vec4<u32>(32u)), var_2.d)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 35564u, var_2.a.x) & _wgslsmith_sub_vec4_u32(var_2.d, vec4<u32>(arg_0, u_input.a, 6973u, 58645u)), var_2.d));
    return u_input.d;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, _wgslsmith_f_op_f32(abs(733f))))) - vec2<f32>(-284f, _wgslsmith_f_op_f32(988f - _wgslsmith_f_op_f32(f32(-1f) * -653f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))))));
    let var_1 = vec3<i32>(u_input.e.x, max(reverseBits(~u_input.e.x | u_input.e.x), _wgslsmith_add_i32(u_input.e.x, 2147483647i)), func_2(~54968u & min(~u_input.b, 1u)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(select(-726f, var_0.x, false)), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -693f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -2663f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(max(-736f, -905f)), _wgslsmith_f_op_f32(floor(var_0.x)))), vec4<bool>(true, true, true, true));
    var var_3 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>((u_input.a ^ 4294967295u) | firstLeadingBit(u_input.c.x), 0u), u_input.c.xx), var_2.b, var_2.b, ~min(min(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.b, u_input.a, u_input.b, 4294967295u)), vec4<u32>(1u, u_input.b, u_input.c.x, u_input.c.x)) ^ ~(~min(vec4<u32>(u_input.b, u_input.a, u_input.a, 5779u), vec4<u32>(u_input.a, 0u, u_input.c.x, u_input.b))));
    return Struct_2(~min(~(var_3.d.xz ^ u_input.c.zx), u_input.c.xz), var_3.c, Struct_1(var_2.a.a), ~vec4<u32>(max(1u, 16338u), reverseBits(var_3.a.x), var_3.d.x, 3208u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (-u_input.d != u_input.d) & select(!select(true, true, 0i > u_input.e.x), true, !all(vec2<bool>(true, false)));
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -19229i), vec2<i32>(u_input.d, u_input.e.x)), firstLeadingBit(u_input.e.yx))), select(-2147483647i, -u_input.e.x, true)), abs(u_input.d));
    let var_1 = 4294967295u;
    let var_2 = func_1();
    let var_3 = var_0.x;
    global0 = any(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(48225u, ~1u), (firstLeadingBit(countOneBits(0u)) | ~var_2.d.x) ^ var_1);
}

