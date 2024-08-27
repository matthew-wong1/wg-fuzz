struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(arg_0.c - -499f)))), arg_0.c));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1985f, -1571f, arg_1.c)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-581f, -1019f, arg_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, arg_1.c, arg_1.c) - vec3<f32>(-550f, -430f, 427f)), arg_1.a.x & true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.c, -1864f, 252f), vec3<f32>(arg_1.d, arg_1.d, 789f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d, -1000f, 1547f))), !vec3<bool>(arg_1.a.x, arg_1.a.x, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d, -1000f, arg_1.d)))))), u_input.e.x, arg_1.a);
    var var_1 = vec4<bool>(true, var_0.c.x, true, var_0.c.x);
    let var_2 = var_1.x;
    let var_3 = var_0;
    let var_4 = all(!select(select(!vec2<bool>(true, arg_1.a.x), !var_3.c.zx, false && var_1.x), arg_1.a.yx, false));
    return ~min(~(u_input.e.x & var_0.b), ~(~u_input.c.x)) < 17414u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(arg_0.yyx, reverseBits(~vec2<u32>(u_input.e.x, u_input.c.x)), -444f, _wgslsmith_f_op_f32(sign(363f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec3<bool>(true, arg_0.x, arg_0.x), vec2<u32>(76531u, u_input.b), 1000f, -1258f))) - vec2<f32>(-318f, arg_1.x)) - arg_1.zx) + arg_1.yx));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -752f) + arg_1.yy)))))));
    var var_1 = Struct_2(vec3<bool>(false, arg_0.x, !func_3(u_input.c, Struct_2(vec3<bool>(arg_0.x, true, arg_0.x), vec2<u32>(u_input.b, 0u), arg_1.x, -233f))), ~u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, -1273f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, 144f), _wgslsmith_f_op_f32(abs(1307f)), !arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = all(!arg_0);
    return arg_1.x >= _wgslsmith_div_f32(490f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * 1123f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mult_u32(abs(1u), min(abs(1u), 39558u)), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, func_1(vec4<bool>(false, false, false, false), vec3<f32>(-330f, 856f, -860f))), true), select(~u_input.c.ww, vec2<u32>(u_input.c.x, reverseBits(1u)), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2955f - _wgslsmith_f_op_f32(-1274f * 1342f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f)))), Struct_2(!vec3<bool>(true, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_mult_vec2_u32(countOneBits(u_input.e), u_input.c.wx)), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f + -388f) + _wgslsmith_f_op_f32(step(-393f, 771f))), _wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, var_0.b.c))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.d, -1591f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d, var_0.b.c) + vec2<f32>(-1738f, var_0.c.c))))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.b.d) + _wgslsmith_f_op_f32(-1000f - var_0.b.c)), true)) - 1176f));
    var var_3 = max(~reverseBits(1u) & max(~1u, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_0.b.b.x), u_input.e.x)), ~_wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.c.x, 4294967295u), 12875u));
    var var_4 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.b.b.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), ~abs(u_input.b)), var_0.b, var_0.b);
    var_3 = ~43705u;
    var var_5 = vec4<bool>(~(-u_input.a) == -1i, var_0.b.a.x, true, (true && var_4.c.a.x) | !(all(var_4.b.a) | (var_0.b.a.x != true)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.c, var_1.x, var_2))) * vec3<f32>(var_0.c.d, -429f, 354f)))));
    let var_7 = Struct_2(!select(var_5.xyz, var_4.b.a, var_0.b.a.x | var_4.c.a.x), vec2<u32>(~var_0.b.b.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f * -1196f))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1073f), 68954u, ~vec3<i32>(-_wgslsmith_add_i32(u_input.d, u_input.a), u_input.d, _wgslsmith_sub_i32(~(-67571i), -1i & u_input.a)));
}

