struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1361f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-391f + -581f), -310f))), 1760f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, _wgslsmith_f_op_f32(-719f + 411f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1292f, -1043f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, 270f), vec2<f32>(-924f, 1004f), global0.yw)))))), true)));
    var var_1 = vec3<bool>(false || (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a)), -u_input.a) <= -13993i), !(!(_wgslsmith_f_op_f32(-var_0.x) != -237f)), !arg_0.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-392f)) + _wgslsmith_f_op_f32(var_0.x + -902f)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(741f, -660f)), -1180f));
    let var_3 = !select(select(arg_0.c.zy, vec2<bool>(-157f != var_0.x, false), global0.x), !select(!global0.xy, arg_0.c.xy, arg_0.a), var_1.x);
    var_1 = !vec3<bool>(false, true & (true & all(vec3<bool>(false, var_3.x, global0.x))), var_3.x);
    return ~(~min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 11257u, 4294967295u)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(4294967295u, arg_0, 45099u))), func_3(Struct_1(global0.x, global0.x, select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(true, true, global0.x, global0.x), global0.x)))));
    var var_1 = Struct_1(false, true, vec4<bool>(!(!global0.x), -u_input.a < reverseBits(~(-15138i)), arg_0 < countOneBits(abs(6993u)), !all(vec2<bool>(arg_1.x, arg_1.x))));
    let var_2 = -1i;
    var var_3 = vec4<bool>(arg_1.x, true, select(var_1.a, true, arg_1.x), all(vec2<bool>(all(vec3<bool>(global0.x, global0.x, true)), all(!global0.wy))));
    let var_4 = ~0i;
    return -709f;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1678f, -1014f, -159f) * vec3<f32>(-1012f, -237f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(58217u, global0.xyw, vec3<f32>(-1411f, 1253f, 384f), 4294967295u)) - _wgslsmith_f_op_f32(func_2(55394u, global0.yzw, vec3<f32>(-2229f, -752f, -581f), 23757u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(928f - 1331f))), _wgslsmith_f_op_f32(349f - 1000f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(round(-526f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1067f, -1119f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1825f, 1784f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2077f, 396f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x)))))), !global0.xxx)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.x - 577f), ~vec4<u32>(1u, 1u, 1u, 1u), !(!select(!global0.xzz, global0.zyz, vec3<bool>(global0.x, false, false))), 4294967295u);
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-775f, _wgslsmith_f_op_f32(var_0.x * var_0.x))))), vec4<u32>(reverseBits(func_3(Struct_1(true, var_2.c.x, vec4<bool>(global0.x, false, global0.x, true))).x), var_2.d, max(abs(43438u), var_2.d | var_2.d), _wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, var_2.d), abs(select(var_2.d, var_2.b.x, true)))), !select(!(!vec3<bool>(var_2.c.x, global0.x, var_2.c.x)), !select(global0.zyy, vec3<bool>(false, true, false), global0.x), vec3<bool>(global0.x, false, var_2.c.x)), var_2.b.x);
    var var_3 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(36101u, var_2.d), _wgslsmith_div_u32(var_2.d, ~1u)), var_2.d));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.a, 726i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(-644f)), vec4<u32>(1u, ~(~func_1()), 1u, _wgslsmith_clamp_u32(1u, ~(~3665u), countOneBits(~0u))), vec3<bool>(true, any(select(vec3<bool>(global0.x, true, global0.x), global0.yzx, global0.zwy)) || true, !select(true, all(vec4<bool>(global0.x, true, global0.x, true)), global0.x)), min(~(~1u), 91498u));
    let var_2 = vec4<bool>(global0.x, all(global0.zzy), select(!(var_0 >= var_0) & true, all(select(vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), select(vec4<bool>(global0.x, true, false, var_1.c.x), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), true), true)), global0.x), _wgslsmith_add_u32(var_1.b.x, 31712u) > ~74416u);
    var var_3 = var_1.c.x;
    var_3 = !var_2.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -1204f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(max(1000f, var_1.a))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(var_1.a + -1000f), -342f);
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<u32>(42118u, var_1.b.x >> (var_1.d % 32u), ~51359u, var_1.d)), _wgslsmith_f_op_vec2_f32(var_4.yz * _wgslsmith_f_op_vec2_f32(max(var_4.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_1.a))))), var_1.b);
}

