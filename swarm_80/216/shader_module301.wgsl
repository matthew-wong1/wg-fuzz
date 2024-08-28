struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(((vec3<u32>(1u, 41495u, 71541u) << (vec3<u32>(39552u, arg_0.b, 1u) % vec3<u32>(32u))) & ~vec3<u32>(1u, arg_0.e.a, arg_0.e.a)) << (~select(vec3<u32>(arg_0.b, 53266u, arg_0.e.a), vec3<u32>(arg_0.b, 17802u, arg_0.e.a), false) % vec3<u32>(32u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.e.a, 4294967295u, arg_0.b), vec3<u32>(86185u, arg_0.b, arg_0.b)))) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(30703u, ~arg_0.b), min(arg_0.b, arg_0.b) >> (~arg_0.b % 32u)), ~(~reverseBits(vec3<u32>(arg_0.b, arg_0.e.a, 56323u)))) % vec3<u32>(32u));
    let var_1 = true;
    global0 = countOneBits(countOneBits(var_0.x));
    let var_2 = !var_1;
    global0 = firstTrailingBit(~0u);
    return u_input.b;
}

fn func_2() -> bool {
    var var_0 = ~vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-2147483647i, u_input.a.x), -u_input.a.x, _wgslsmith_mod_i32(72706i, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, 2147483647i)) >> (min(3555u, 16032u) % 32u)));
    let var_1 = -54669i;
    var var_2 = 0u;
    let var_3 = true;
    let var_4 = max(~(-1i) & (i32(-1i) * -func_3(Struct_4(vec3<f32>(1204f, 1204f, -145f), 27637u, 1243f, 1329f, Struct_3(4294967295u)))), max(-1i, var_0.x));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> bool {
    global0 = countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(105894u, 0u, firstLeadingBit(arg_1), arg_1), _wgslsmith_clamp_vec4_u32(~vec4<u32>(48040u, 4294967295u, 55485u, 1u), vec4<u32>(arg_1, 4294967295u, arg_1, arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(20916u, 4294967295u, arg_1, arg_1), vec4<u32>(arg_1, 4294967295u, arg_1, 47060u)))));
    global0 = _wgslsmith_add_u32(20005u, arg_1 ^ 4294967295u);
    global0 = ~1u;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.x)))), arg_0.x, 330f);
    let var_1 = select(!vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), false, _wgslsmith_f_op_f32(arg_0.x * 1308f) >= _wgslsmith_f_op_f32(floor(arg_0.x))), !vec3<bool>(func_2(), false, true), true);
    return any(!select(select(select(var_1, var_1, var_1), select(vec3<bool>(true, false, var_1.x), var_1, vec3<bool>(var_1.x, false, var_1.x)), !vec3<bool>(var_1.x, var_1.x, var_1.x)), select(select(var_1, vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, true)), vec3<bool>(var_1.x, true, var_1.x), true), vec3<bool>(var_1.x, !var_1.x, var_1.x != false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1782f, -1194f, 988f, 1058f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1598f, -274f, 873f, 615f), vec4<f32>(283f, 1033f, -134f, -683f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, 1000f, -1446f, -1059f)) - vec4<f32>(-843f, -734f, 761f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1722f)), -2271f, func_1(vec2<f32>(-925f, -624f), 56979u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(f32(-1f) * -697f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(893f + -1643f) - _wgslsmith_f_op_f32(trunc(-1000f))), -436f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-847f, _wgslsmith_f_op_f32(min(960f, -482f)), true)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(456f, var_0.x, true)))));
    let var_2 = vec2<u32>(~abs(1u), 14789u);
    var var_3 = select(select(vec3<bool>(func_1(var_0.yz, min(4294967295u, var_2.x)), !(var_0.x >= var_0.x), select(true, all(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)))), vec3<bool>(-1000f > _wgslsmith_f_op_f32(var_0.x + -2354f), true, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x) > _wgslsmith_clamp_i32(-2147483647i, u_input.b, -2147483647i)), select(true, 0i < u_input.b, true) | all(vec2<bool>(true, true))), vec3<bool>(true, true, ~(~0u) > abs(_wgslsmith_div_u32(var_2.x, 12750u))), true);
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1475f * -1210f)), _wgslsmith_f_op_f32(var_0.x + -520f), 102f), vec3<f32>(637f, _wgslsmith_f_op_f32(max(505f, 1652f)), _wgslsmith_f_op_f32(-var_0.x)))), var_2.x, 609f, _wgslsmith_f_op_f32(round(-576f)), Struct_3(~(min(var_2.x, var_2.x) & reverseBits(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(-302f - -1161f)), -227f), vec2<i32>(0i, -3854i), 67511u);
}

