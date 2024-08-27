struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-234f, 840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f)) + 1825f), (true && (arg_2 == 2245i)) & true)), any(vec4<bool>(-1i >= _wgslsmith_clamp_i32(u_input.b, u_input.a, u_input.a), all(vec4<bool>(true, arg_0.x, false, arg_0.x)), all(vec3<bool>(true, arg_0.x, arg_0.x)), true)));
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(var_0.a * var_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, -1494f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1048f, var_0.a)), _wgslsmith_f_op_f32(-140f - -253f))) - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(select(var_0.a, 585f, var_0.b)), true))))));
    let var_3 = var_0;
    return ~vec2<i32>(_wgslsmith_mult_i32(u_input.b, max(countOneBits(-23151i), arg_2)), arg_2);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<u32> {
    var var_0 = firstTrailingBit(-vec3<i32>(-34169i, 1i, _wgslsmith_mult_i32(-2677i, 8805i))) & ((select(vec3<i32>(arg_0.x, -1i, u_input.a), select(vec3<i32>(9807i, u_input.a, -2147483647i), vec3<i32>(arg_0.x, arg_0.x, 1i), vec3<bool>(false, arg_2.x, true)), !vec3<bool>(true, arg_2.x, true)) >> (~(~vec3<u32>(4294967295u, 1u, 0u)) % vec3<u32>(32u))) & -_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, -2147483647i), vec3<i32>(u_input.a, 26077i, arg_0.x)), vec3<i32>(u_input.a, u_input.b, -4593i)));
    var_0 = ~(~firstLeadingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30447i, -5339i, 44289i), vec3<i32>(-2147483647i, u_input.a, -59841i), vec3<i32>(var_0.x, u_input.a, arg_0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a, arg_1.a, _wgslsmith_f_op_f32(-1280f + arg_1.a)), vec4<f32>(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(1000f * 781f), _wgslsmith_f_op_f32(-arg_1.a)), select(!vec4<bool>(arg_1.b, false, false, arg_1.b), vec4<bool>(true, true, false, arg_2.x), !vec4<bool>(false, true, arg_2.x, false))))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1088f)))))));
    return vec4<u32>(4294967295u, 32806u, ~4294967295u, min(37210u, 1u));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_3((firstLeadingBit(arg_1.xw) ^ arg_1.xw) & -func_2(vec3<bool>(true, true, true), ~vec3<u32>(71236u, 27049u, 1u), -45995i), Struct_2(-255f, false), vec2<bool>(true, true));
    let var_1 = Struct_1(select(_wgslsmith_mult_vec2_i32(-(~arg_1.yy), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), -arg_1.yx)), arg_1.zx, all(vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, false)), true))), !(arg_1.x > -10660i));
    let var_2 = vec4<i32>(-14758i, -10295i, ~(-1574i), 1i);
    var_0 = vec4<u32>(countOneBits(~_wgslsmith_sub_u32(var_0.x, ~0u)), ~0u, min(~countOneBits(var_0.x), ~var_0.x ^ max(1u, var_0.x)), ~var_0.x << (_wgslsmith_sub_u32(4294967295u, min(~var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x))) % 32u));
    let var_3 = var_1;
    return Struct_1(vec2<i32>(-(~(-27752i >> (var_0.x % 32u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, var_2.x) >> (var_0.x % 32u), countOneBits(-7302i))), any(select(!(!vec2<bool>(var_3.b, var_3.b)), vec2<bool>(any(vec2<bool>(true, false)), false), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec3_i32(-select(-vec3<i32>(0i, u_input.b, -13793i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, -2113i), vec3<i32>(2147483647i, u_input.a, 1i)), true), vec3<i32>(u_input.b, reverseBits(_wgslsmith_mod_i32(25120i, u_input.b)), -min(2147483647i, 0i)));
    var var_1 = func_1(-2593f, vec4<i32>(_wgslsmith_div_i32(u_input.b, -2147483647i) | u_input.b, u_input.b, countOneBits(~(-6716i)), u_input.a) ^ (vec4<i32>(62129i, firstTrailingBit(2147483647i), u_input.b << (3310u % 32u), ~8205i) | abs(vec4<i32>(2147483647i, 2147483647i, 17997i, u_input.b) & vec4<i32>(u_input.b, -37663i, -68167i, u_input.b))));
    let var_2 = select(!vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(var_1.b, true), vec2<bool>(!var_1.b != true, select(true, !var_1.b, all(vec2<bool>(false, var_1.b)))), vec2<bool>(all(vec3<bool>(var_1.b, false, false)), false)), var_1.b);
    var_0 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -9349i, u_input.a), vec3<i32>(u_input.a, 33706i, var_1.a.x)), firstTrailingBit(-vec3<i32>(var_1.a.x, -41405i, 1i)))), ~vec3<i32>(-u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_1.a.x, u_input.a) << (vec3<u32>(20392u, 8152u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.b, var_1.a.x, var_1.a.x)), u_input.b));
    let var_3 = Struct_1(~min(var_1.a, var_1.a), true);
    let var_4 = var_3;
    var_0 = reverseBits(_wgslsmith_sub_i32(firstLeadingBit(-_wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(u_input.a, u_input.a))), -func_2(select(vec3<bool>(var_2.x, var_4.b, var_1.b), vec3<bool>(false, false, var_1.b), vec3<bool>(var_2.x, true, var_4.b)), ~vec3<u32>(4294967295u, 1u, 29546u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a.x, u_input.b), vec3<i32>(37290i, var_3.a.x, 4935i))).x));
    var_0 = _wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(22700i, u_input.b, u_input.a)), vec3<i32>(u_input.b, var_1.a.x, 19034i) ^ ~vec3<i32>(25030i, -28667i, -2147483647i), ~(vec3<i32>(var_1.a.x, var_3.a.x, var_4.a.x) | vec3<i32>(var_3.a.x, var_1.a.x, 35962i))), min(abs(vec3<i32>(-2147483647i, -1i, var_1.a.x)), firstLeadingBit(vec3<i32>(-1i, u_input.a, -2147483647i)))), ~(~(-(~vec3<i32>(var_3.a.x, u_input.b, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(_wgslsmith_mult_u32(32747u, 9388u), 72993u, 1u, ~26541u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -823f) + _wgslsmith_f_op_f32(abs(1325f))) + _wgslsmith_f_op_f32(-572f - _wgslsmith_f_op_f32(step(-288f, -186f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-384f)))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 32943u)), vec2<u32>(1u, abs(_wgslsmith_mult_u32(4294967295u, 0u)))));
}

