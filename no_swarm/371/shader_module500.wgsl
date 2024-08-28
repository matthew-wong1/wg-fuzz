struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> bool {
    var var_0 = Struct_1(vec3<u32>(~(~arg_0.a.b) & 54770u, 11757u, 4294967295u), arg_3, !select(select(!vec3<bool>(false, arg_3, arg_3), !vec3<bool>(arg_1, true, false), true), select(select(vec3<bool>(arg_3, arg_1, true), vec3<bool>(arg_1, arg_3, true), vec3<bool>(arg_3, arg_3, arg_3)), select(vec3<bool>(true, arg_3, false), vec3<bool>(arg_1, arg_3, true), false), !vec3<bool>(true, arg_3, true)), arg_3), vec2<u32>(arg_0.a.b | arg_0.c.b, 7774u));
    var var_1 = ~vec2<i32>(countOneBits(u_input.a.x), (select(-1471i, 0i, arg_1) << (~arg_0.c.b % 32u)) << (var_0.a.x % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_2);
    var_2 = _wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_div_f32(-1695f, var_2.x), var_2.x, arg_0.b)), _wgslsmith_f_op_vec4_f32(trunc(arg_2))));
    let var_3 = arg_0.c;
    return !(arg_0.c.b <= ~_wgslsmith_dot_vec2_u32(var_0.a.yy, var_0.d)) & var_0.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1787f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(202f))), -826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(439f, 1384f, 1127f, 577f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(718f, arg_2.x, arg_2.x, arg_0.x))), vec4<f32>(-968f, arg_0.x, 178f, -903f), vec4<bool>(arg_1, arg_1, false, true))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-470f, arg_2.x));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))) * arg_0.x), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_0.zx));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0.wy);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, 1000f))))))))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec4<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -1734f), _wgslsmith_f_op_f32(select(606f, -568f, true))), _wgslsmith_f_op_f32(f32(-1f) * -907f))) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(floor(global0.xyw)), func_3(Struct_5(Struct_3(arg_1.x, 0u, 2147483647i), 376f, Struct_3(u_input.a.x, 52375u, arg_1.x)), global0.x > 302f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-735f, global0.x, global0.x, 461f))), any(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), global0.yz))), vec3<i32>(u_input.a.x << (1u % 32u), 2147483647i, min(u_input.a.x, arg_1.x))))));
    let var_0 = Struct_5(Struct_3(firstTrailingBit(_wgslsmith_add_i32(-1i, abs(arg_1.x))), 1u, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 25724i, u_input.a.x, u_input.a.x), vec4<i32>(-28590i, arg_1.x, -31657i, u_input.a.x)), vec4<i32>(max(arg_1.x, arg_1.x), -22578i, 242i, ~0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1000f, global0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + _wgslsmith_f_op_f32(-880f - arg_0)))), Struct_3(1i, ~61850u, ~_wgslsmith_div_i32(max(-23103i, 16962i), -28839i)));
    let var_1 = !vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !select(true, true, true), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(263f, arg_0))) != -1787f);
    return vec4<bool>(func_3(Struct_5(Struct_3(abs(-2147483647i), ~var_0.c.b, arg_1.x & arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + arg_0), 1820f)), var_0.c), var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, 2070f, var_0.b, 307f) * vec4<f32>(180f, -891f, arg_0, var_0.b))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1363f, 178f, arg_0, -463f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 542f, global0.x, global0.x), vec4<f32>(var_0.b, var_0.b, var_0.b, 2619f))))), var_1.x), true, true, true);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, global0.x, -628f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1296f, -1000f, 480f) - vec4<f32>(633f, global0.x, global0.x, global0.x)))), select(select(vec4<bool>(true, true, true, true), func_2(1204f, u_input.a.yx), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), false, any(vec3<bool>(false, true, false)), true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(1446f + -1000f), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 877f) * _wgslsmith_f_op_f32(min(global0.x, -1587f))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.www, false, global0.yw, vec3<i32>(arg_0.x, 2147483647i, -2147483647i))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, global0.x, 1002f, global0.x))))))));
    let var_0 = vec2<bool>(false, false);
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 1000f, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(global0.yyw, false, global0.wx, u_input.a)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1102f, -987f), global0.x)), !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), select(true, true, var_0.x), var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))))) * vec4<f32>(global0.x, 615f, _wgslsmith_f_op_f32(func_4(global0.zww, !(!var_0.x), _wgslsmith_f_op_vec2_f32(global0.zw - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -1195f)))), vec3<i32>(~23156i, ~arg_0.x, arg_0.x))), 1209f));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1663f - _wgslsmith_f_op_f32(step(global0.x, global0.x))) * _wgslsmith_f_op_f32(-428f - _wgslsmith_f_op_f32(f32(-1f) * -456f))))));
    return Struct_3(-34097i, select(25879u, _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(1u, 1u)), true), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 724f, global0.x) - vec4<f32>(179f, 205f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, -212f, 780f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, global0.x) * vec4<f32>(731f, global0.x, global0.x, 840f)), true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, false)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1184f, -424f, global0.x))))))));
    let var_0 = false;
    let var_1 = func_1(-(~_wgslsmith_clamp_vec2_i32(u_input.a.xy, select(vec2<i32>(u_input.a.x, 1i), u_input.a.xy, vec2<bool>(var_0, false)), u_input.a.xy)));
    var var_2 = Struct_4(Struct_1(~(~(~vec3<u32>(var_1.b, var_1.b, var_1.b))), any(func_2(-1034f, vec2<i32>(var_1.c, 2147483647i))), vec3<bool>(!all(vec2<bool>(false, var_0)), true, !var_0), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.b, var_1.b), vec2<u32>(var_1.b, var_1.b)) & (~vec2<u32>(var_1.b, var_1.b) | vec2<u32>(var_1.b, var_1.b))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), var_0))), _wgslsmith_f_op_f32(round(376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !select(func_2(_wgslsmith_f_op_f32(step(1278f, global0.x)), vec2<i32>(var_1.a, var_1.a)).zyx, select(!vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, var_0, var_0)), false));
    var var_3 = all(select(select(vec4<bool>(var_1.b == 88733u, var_0, var_0, !var_2.c.x), vec4<bool>(true, !var_2.c.x, var_2.a.a.x > 1u, true), true), vec4<bool>(true, var_0, true & (var_0 != false), any(func_2(var_2.b.x, vec2<i32>(var_1.a, 63458i)).xyy)), vec4<bool>(var_0, ~var_2.a.a.x == (30826u >> (0u % 32u)), var_0, var_2.a.c.x)));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(var_2.b))))));
    var var_4 = ~(-reverseBits(countOneBits(select(u_input.a.xz, u_input.a.yx, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 5797u, _wgslsmith_sub_u32(48697u, var_2.a.d.x), 0u) >> (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, 0u, 61u, var_2.a.d.x), vec4<u32>(var_2.a.d.x, 1u, 0u, var_2.a.a.x), vec4<u32>(var_1.b, var_1.b, 0u, 1u)) ^ reverseBits(vec4<u32>(var_2.a.d.x, var_2.a.d.x, var_1.b, var_1.b)), vec4<u32>(~var_1.b, var_2.a.d.x, firstLeadingBit(38119u), _wgslsmith_div_u32(var_2.a.a.x, var_1.b))) % vec4<u32>(32u)));
}

