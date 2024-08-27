struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 1184f, _wgslsmith_div_f32(arg_0, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(min(-346f, 1000f)), _wgslsmith_f_op_f32(ceil(-1111f)), _wgslsmith_div_f32(arg_0, -455f)))))), reverseBits(arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(-111f, 481f), true))), arg_0, 318f));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-610f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -463f)), _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-1178f - -323f))), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), true), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, true), true)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, var_0.a.x, -581f, -1578f) * vec4<f32>(arg_0, 1000f, arg_0, -410f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 2143f, 625f, arg_0) * vec4<f32>(var_0.c.x, 581f, 903f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, 1000f, 1905f, -831f) * vec4<f32>(arg_0, arg_0, var_0.c.x, 1095f))))))));
    let var_3 = !select(vec2<bool>(var_1.x, (-39735i | u_input.a) == _wgslsmith_clamp_i32(u_input.a, -2944i, u_input.a)), vec2<bool>(any(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))), all(var_1.zz)), false);
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, _wgslsmith_sub_u32(4294967295u, 60697u) | var_0.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_0.b.x, var_0.b.x, 39839u), vec4<u32>(arg_1.x, 20386u, var_0.b.x, 4294967295u)) >> (abs(arg_1.x) % 32u)), ~select(vec3<u32>(~var_0.b.x, _wgslsmith_add_u32(arg_1.x, 19165u), 0u >> (var_0.b.x % 32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 0u, 4294967295u), vec3<u32>(4294967295u, var_0.b.x, arg_1.x), vec3<u32>(1u, var_0.b.x, var_0.b.x)) ^ (vec3<u32>(4294967295u, var_0.b.x, arg_1.x) ^ vec3<u32>(arg_1.x, var_0.b.x, var_0.b.x)), all(vec2<bool>(var_1.x, var_1.x))), select(reverseBits(vec3<u32>(var_0.b.x, arg_1.x, 39800u)), ~(~vec3<u32>(arg_1.x, 66362u, 22913u)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_1.x, var_1.x, false))) ^ vec3<u32>(~4294967295u, arg_1.x & (arg_1.x | 29115u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 24713u, 25743u, var_0.b.x) & vec4<u32>(arg_1.x, var_0.b.x, 56078u, 1u), ~vec4<u32>(18735u, 56639u, var_0.b.x, var_0.b.x))));
    return _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1842f)))) + var_2.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-505f - _wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(func_3(1125f, abs(vec2<u32>(arg_0.x, 0u)))), _wgslsmith_f_op_f32(select(-444f, 1483f, true))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f), 527f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-821f * -1575f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1724f, -413f))))), abs(vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), max(vec4<u32>(4294967295u, 1685u, 91168u, 1u), vec4<u32>(38010u, 0u, arg_0.x, 4294967295u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1061f, -1080f, 633f) + vec3<f32>(442f, -1000f, 728f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2095f, -2564f, -137f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-578f, 683f, -888f)))))));
    let var_1 = true || select(true, any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), !(select(true, true, false) || true));
    return 1000f;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 35990u, 7953u), vec3<u32>(1u, 54865u, 0u)), (vec3<i32>(u_input.a, 32447i, u_input.a) & vec3<i32>(32192i, -2147483647i, 36031i)) ^ -vec3<i32>(-88029i, u_input.a, 37648i))), -578f, _wgslsmith_f_op_f32(func_2(~(~vec3<u32>(38261u, 15214u, 62163u)), select(-vec3<i32>(-5661i, 0i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-44184i, u_input.a, u_input.a)), vec3<bool>(true, true, true))))), _wgslsmith_add_vec2_u32(~(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 18602u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec2<u32>(abs(_wgslsmith_clamp_u32(1u, 1u, 1u)), ~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, 1123f, -314f)) - vec3<f32>(_wgslsmith_f_op_f32(step(-2317f, 257f)), _wgslsmith_f_op_f32(-459f + -525f), _wgslsmith_f_op_f32(f32(-1f) * -418f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = (false || (~(-2147483647i) > (u_input.a | _wgslsmith_add_i32(u_input.a, -116147i)))) | any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)));
    let var_1 = select(select(!vec2<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))), vec2<bool>(select(select(true, false, true), true, true), -543f >= _wgslsmith_f_op_f32(var_0.a.x * 1456f))), vec2<bool>(any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true))), true);
    global0 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(var_0.c.x * 744f), vec2<u32>(1u, var_0.b.x)))))) - _wgslsmith_f_op_f32(-1023f - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(1327f * var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x))));
    return ~47004u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1556f - -689f))) * _wgslsmith_f_op_f32(max(-1164f, _wgslsmith_f_op_f32(step(-1763f, 1721f))))))), 1533f);
    global0 = (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-269f)))))) == var_0) != true;
    let var_1 = vec4<i32>(2147483647i, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-20325i, u_input.a), vec2<i32>(0i, 2147483647i)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9187u, 57600u, 3126u), vec3<u32>(4294967295u, 2170u, 28332u)), func_1()) % 32u), ~1i), max(u_input.a, _wgslsmith_mod_i32(u_input.a, -80780i)), reverseBits(-1i));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + -468f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(639f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1730f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-681f, var_3) - vec2<f32>(-182f, var_0))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~var_1.wy, vec2<u32>(53028u, 52016u | ~func_1()), _wgslsmith_mult_i32(-var_1.x, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_sub_i32(-1i, -1i)), -1i)));
}

