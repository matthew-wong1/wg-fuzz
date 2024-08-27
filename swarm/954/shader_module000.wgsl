struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(2135f)), -529f)) + -3001f) * _wgslsmith_f_op_f32(f32(-1f) * -616f)), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), true), vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), global0.x <= global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), !any(vec4<bool>(false, true, true, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), any(vec3<bool>(true, false, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -2009f));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(-417f, _wgslsmith_f_op_f32(floor(-883f)))))), vec4<bool>(false, var_0.c.x, var_0.c.x, true), select(var_0.b.xyy, vec3<bool>(!any(vec4<bool>(true, true, var_0.c.x, false)), !var_0.b.x, true), false), var_0.d);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1690f), 1207f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) * var_0.d)))) * -1177f);
    return true;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2393f)))), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, func_3(vec4<i32>(1i, -2147483647i, -68919i, -2147483647i), vec4<u32>(4294967295u, 4440u, global0.x, 0u))), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, 0u <= global0.x), -391f), select(true, !all(vec3<bool>(false, false, false)), true) | true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, 106f, 3058f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1057f, 306f, -1071f)))))));
    var var_1 = Struct_1(1753f, select(select(!vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.a.b.x, false, any(vec3<bool>(true, true, false)), any(vec3<bool>(var_0.b, true, false))), !any(vec4<bool>(var_0.b, false, var_0.a.c.x, var_0.b))), !vec4<bool>(var_0.a.c.x & var_0.b, true, true, true), !all(vec4<bool>(true, false, var_0.a.b.x, var_0.a.b.x))), var_0.a.c, -1698f);
    return Struct_3(Struct_1(var_1.a, !vec4<bool>(var_0.a.c.x, var_1.b.x, true, all(var_1.b.ww)), !(!vec3<bool>(var_1.b.x, false, false)), var_1.d), var_1.b.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, var_0.a.d, true)), -1580f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - var_1.a), var_0.c.x))));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_clamp_u32(global0.x, ~global0.x | abs(1u), u_input.a.x);
    var var_2 = func_2().a;
    var var_3 = Struct_2(var_0.a.c.xz, global0.x);
    let var_4 = abs(_wgslsmith_mod_u32(firstLeadingBit(~140870u), u_input.a.x)) != firstTrailingBit(_wgslsmith_clamp_u32(4294967295u & var_1, ~global0.x | firstTrailingBit(0u), ~var_1));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1441f, -392f, -363f, 548f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1626f, -115f, 1007f, 989f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, -337f, -1318f, -428f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(649f, 448f, 1134f, -309f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1760f, -1000f, -108f, 289f) - vec4<f32>(769f, -210f, 1325f, -257f)))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !func_1()))));
    var var_1 = vec4<bool>(false & !all(vec4<bool>(true, false, true, false)), !(~u_input.a.x < 1u), _wgslsmith_add_u32(max(global0.x, global0.x), u_input.a.x) >= 4294967295u, !func_1().x);
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(u_input.a.zyz, vec3<u32>(1u, u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a.wyx) | ~u_input.a.yzy), 0u), ~_wgslsmith_clamp_u32(global0.x, 39419u, 0u) << (_wgslsmith_add_u32(1u, 30931u) % 32u));
    let var_2 = vec2<i32>(abs(firstTrailingBit(firstTrailingBit(26618i)) << (106547u % 32u)), ~select(_wgslsmith_div_i32(-31953i, ~37181i), _wgslsmith_sub_i32(-7006i >> (u_input.a.x % 32u), -2147483647i), true));
    var_1 = select(func_2().a.b, vec4<bool>(true, !(!(-1i == var_2.x)), var_1.x, var_1.x), var_1.x);
    let var_3 = ~(~countOneBits(~_wgslsmith_add_u32(0u, u_input.a.x)));
    global0 = u_input.a.zy ^ (firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.zy | u_input.a.xy, _wgslsmith_clamp_vec2_u32(u_input.a.wz, vec2<u32>(45087u, u_input.a.x), u_input.a.yw))) & (abs(~vec2<u32>(18717u, var_3)) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(19713u, var_3), u_input.a.zy)));
    var var_4 = Struct_2(vec2<bool>(false, !(var_1.x && func_3(vec4<i32>(var_2.x, -8805i, -2147483647i, -1i), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global0.x)))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1168f, -1008f)), _wgslsmith_f_op_f32(1258f * -556f))))), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x - -780f)), _wgslsmith_f_op_f32(-var_0.x))));
}

