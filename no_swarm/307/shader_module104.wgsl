struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x))));
    return u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 1069f, var_0.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x)))));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(6652i, _wgslsmith_dot_vec2_i32(arg_0.a.wx, vec2<i32>(arg_0.a.x, -2147483647i))), ~func_2(arg_1.x)), arg_1.x, ~0i, ~(~_wgslsmith_add_i32(-12718i, arg_1.x))), max(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.b.x, 0u, 3342u), arg_0.b), ~arg_0.b, select(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 0u), vec4<u32>(arg_0.b.x, 59159u, arg_0.b.x, 1u), true)), reverseBits(reverseBits(~vec4<u32>(arg_0.b.x, 56271u, 12995u, 0u)))));
    var_0 = vec2<f32>(global0.x, -423f);
    var_0 = _wgslsmith_f_op_vec2_f32(global0.zz + _wgslsmith_f_op_vec2_f32(floor(global0.zy)));
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-741f)) * 1461f), -190f, all(vec3<bool>(true, true, true)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(-u_input.b, u_input.b | arg_2.a.wz), arg_2.a.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1174f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(787f - -580f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + global0.x), 1000f);
    var var_1 = arg_2;
    let var_2 = arg_0.yy;
    var_1 = Struct_1(vec4<i32>(-1i) * -arg_2.a, arg_2.b);
    return -559f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec3<u32>(1u, 1u, abs(~1u));
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(var_1.x), 4294967295u, var_1.x), vec3<u32>(7571u, countOneBits(_wgslsmith_mult_u32(var_1.x, 20827u)), ~var_1.x) >> (~vec3<u32>(23195u, 24880u >> (var_1.x % 32u), var_1.x << (var_1.x % 32u)) % vec3<u32>(32u)));
    var_0 = !(!(u_input.a.x <= (-2147483647i ^ u_input.b.x)) && (_wgslsmith_f_op_f32(round(global0.x)) > global0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(global0.xy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1873f, 1877f), global0.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -1063f))))) * vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(803f * 231f))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true))), select(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false)), true) || true));
    var_0 = func_1(Struct_1(vec4<i32>(-u_input.a.x, u_input.c, u_input.a.x, -2147483647i), vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_1.x), var_1.x, 1u, _wgslsmith_mult_u32(39226u, var_1.x))), ~vec3<i32>(u_input.b.x, -24457i, -8101i ^ u_input.b.x)) & false;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.yz))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(var_2.x + 757f), _wgslsmith_f_op_f32(floor(global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(-274f * -1088f), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1200f, var_2.x, -213f), true, Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, u_input.c, u_input.c), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(sign(586f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1045f, 1000f, 824f, var_2.x))) + vec4<f32>(1133f, var_2.x, -265f, -810f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, var_2.x, 621f, var_2.x) - vec4<f32>(293f, 615f, -750f, -2338f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global0.x, 720f, -304f) - vec4<f32>(-2061f, var_2.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2078f, 1040f, global0.x, global0.x)))))), (-85855i & (i32(-1i) * -u_input.b.x)) == select(-abs(95376i), -6043i, true)));
    var var_4 = Struct_1(-(select(-vec4<i32>(u_input.a.x, u_input.b.x, u_input.c, -1i), vec4<i32>(12764i, u_input.b.x, u_input.a.x, 1i) << (vec4<u32>(0u, 29869u, var_1.x, var_1.x) % vec4<u32>(32u)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true)) ^ vec4<i32>(~u_input.a.x, func_2(u_input.a.x), u_input.a.x, ~1i)), reverseBits(vec4<u32>(654u, var_1.x, _wgslsmith_mult_u32(1u, var_1.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.x, 59603u), reverseBits(1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-50103i, -13740i, var_4.a.x))), _wgslsmith_div_u32(var_1.x, ~var_4.b.x & _wgslsmith_add_u32(var_1.x, 4294967295u | var_4.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-653f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - global0.x)))), global0.x)), abs(abs(var_4.b.wyz)));
}

