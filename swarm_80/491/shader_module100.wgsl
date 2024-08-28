struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = !(!(!vec4<bool>(true, select(arg_0, arg_0, false), arg_0, arg_1 == arg_1)));
    var var_1 = Struct_3(arg_1, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1)))), var_0.zww, !var_0.x, -2147483647i), !any(!(!var_0.xx)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1, 1835f), _wgslsmith_f_op_f32(-630f - -628f), 108f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1213f, arg_1, 341f), vec3<f32>(-1151f, arg_1, arg_1), false))))));
    var_0 = vec4<bool>(-1349f < var_1.d.x, false, !any(select(var_1.b.b, !vec3<bool>(true, false, var_1.b.c), select(vec3<bool>(var_1.b.b.x, var_1.b.c, false), vec3<bool>(true, true, var_1.c), false))), true);
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1113f, _wgslsmith_f_op_f32(arg_1 * 419f))) - var_1.d) * vec3<f32>(_wgslsmith_f_op_f32(min(585f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(floor(685f)), -340f));
    return vec3<bool>(all(vec3<bool>(all(vec4<bool>(true, false, false, arg_0)), false, (var_1.b.b.x && arg_0) | select(false, true, arg_0))), false, true);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) + -432f), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-1000f - arg_1.x))), select(select(vec3<bool>(true, true, true), func_3(false, 1019f), true), select(func_3(true, 1869f), vec3<bool>(true, true, true), func_3(true, arg_1.x).x), vec3<bool>(true, true, true)), all(vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -43298i, -2147483647i), vec4<i32>(u_input.b.x, -23691i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(70067i, u_input.b.x)), 1i, u_input.b.x)), (_wgslsmith_f_op_f32(1242f + _wgslsmith_f_op_f32(330f - arg_1.x)) != 1000f) && true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(2093f, 339f, arg_1.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2600f, 857f, arg_1.x), vec3<f32>(478f, arg_1.x, arg_1.x))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3061f - arg_1.x), 319f)), 598f));
    var var_2 = abs(~max(~vec4<u32>(6365u, 1u, 12903u, 9785u), ~(vec4<u32>(32994u, arg_0, arg_0, arg_0) & vec4<u32>(arg_0, u_input.a.x, arg_0, 4294967295u))));
    var_0 = Struct_3(var_0.b.a.a.x, Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), 416f)), select(vec3<bool>(true, !var_0.b.b.x, true), select(!vec3<bool>(var_0.b.c, false, false), var_0.b.b, var_0.c), all(vec3<bool>(var_0.b.b.x, var_0.b.b.x, true))), false, -u_input.b.x), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 379f) + vec3<f32>(1107f, 2209f, -196f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.a.x, 274f, var_1)))))));
    var_0 = Struct_3(899f, Struct_2(var_0.b.a, vec3<bool>(false & (var_2.x <= 1u), any(var_0.b.b), -2419f <= _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(559f * var_0.b.a.a.x), var_0.d.x)), u_input.b.x), false, _wgslsmith_f_op_vec3_f32(-arg_1));
    return var_0.b.a;
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(538f, 1264f, -741f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1011f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1507f * 179f) - _wgslsmith_f_op_f32(abs(1190f))))), u_input.a.x);
    var var_1 = Struct_2(func_2(_wgslsmith_add_u32(~(~var_0.b), 50177u & ~var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, -445f, var_0.a.x)))), func_3(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(471f, var_0.a.x)) * 140f)))), arg_1, arg_0);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-var_1.a.a.x), var_1.c)))));
    var_1 = Struct_2(Struct_1(var_1.a.a), !vec3<bool>(any(func_3(var_1.c, var_1.a.a.x).xx), false, all(var_1.b.xz)), any(vec2<bool>(true, var_1.b.x)), var_1.d);
    var_1 = Struct_2(var_1.a, var_1.b, (~firstLeadingBit(-2147483647i) == _wgslsmith_mult_i32(u_input.b.x, 38722i)) & false, ~abs(-2147483647i) | u_input.b.x);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2236f, 271f, _wgslsmith_f_op_f32(f32(-1f) * -115f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) * _wgslsmith_f_op_f32(min(1313f, 384f))), 1378f)), 28568u);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(26856i, _wgslsmith_dot_vec2_i32(vec2<i32>(4626i, u_input.b.x), u_input.b.yz), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -38000i), u_input.b)), vec3<i32>(-(~u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(~vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x)))));
    let var_2 = !(!(((-15518i << (var_0.b % 32u)) & ~(-10113i)) >= _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, -2147483647i), u_input.b.x)));
    var var_3 = true;
    var var_4 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.b, 13109u << (var_0.b % 32u), u_input.a.x, var_0.b) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(35007u, u_input.a.x, 43645u, var_0.b), ~vec4<u32>(var_0.b, 77655u, u_input.a.x, 36994u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0.b, var_0.b), vec4<u32>(u_input.a.x, u_input.a.x, 55434u, 43239u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, u_input.a.x, _wgslsmith_div_u32(1u, var_0.b), 1u), ~(~vec4<u32>(var_0.b, u_input.a.x, 1u, 0u)))), vec4<u32>(var_0.b, 1u, abs(var_0.b), func_1(2147483647i, var_2)));
    var_3 = all(!vec4<bool>(select(true, true, true), var_2, false, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -1955f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 295f, var_0.a.x, 366f)) * vec4<f32>(-124f, var_0.a.x, 1000f, 980f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 379f, 778f, var_0.a.x), vec4<f32>(221f, -726f, var_0.a.x, 1516f)))), var_2)))));
}

