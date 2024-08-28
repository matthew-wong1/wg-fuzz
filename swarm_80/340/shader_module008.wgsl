struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_2 {
    return Struct_2(9247i, -arg_0, Struct_1(-(~arg_0), max(u_input.a.yz, ~u_input.a.zy), _wgslsmith_add_u32(arg_2, abs(0u))), _wgslsmith_sub_vec3_u32(~u_input.a, ~u_input.a), !all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), false)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1((-_wgslsmith_clamp_i32(-38167i, 1i, -670i) << (u_input.c % 32u)) & 1i, min(~(vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.yy) & u_input.a.zx, u_input.a.yy), 36367u);
    var var_1 = var_0.b.x;
    let var_2 = _wgslsmith_mult_vec2_u32(reverseBits(min(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.b, var_0.c)), u_input.a.zy)), ~vec2<u32>(4294967295u, 64634u));
    var_0 = func_1(func_1(18749i & ~var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(785f)), _wgslsmith_f_op_f32(f32(-1f) * -2079f)))), var_2.x).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1039f - -1114f) + _wgslsmith_f_op_f32(277f - 195f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1448f + -806f)))), _wgslsmith_sub_u32(~30379u >> (u_input.b % 32u), func_1(abs(-22180i), _wgslsmith_f_op_f32(-501f * -280f), u_input.a.x).d.x) | u_input.b).c;
    var_1 = ~var_2.x;
    return abs(-_wgslsmith_mult_i32(_wgslsmith_add_i32(-var_0.a, var_0.a), 1i));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(26186i, arg_1.x, func_1(arg_2.a, 520f, _wgslsmith_mod_u32(min(_wgslsmith_add_u32(arg_2.c, arg_0.c.b.x), 47252u ^ arg_2.b.x), 12118u >> (arg_2.c % 32u))).c, reverseBits(vec3<u32>(arg_2.c, reverseBits(abs(u_input.a.x)), 1u)), false);
    var_0 = func_1(_wgslsmith_mult_i32(func_3(), select(min(2147483647i, arg_1.x), -var_0.b, !var_0.e)) ^ arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1115f + 1713f), _wgslsmith_f_op_f32(select(450f, -371f, var_0.e))))), 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, _wgslsmith_div_f32(-341f, -1000f), _wgslsmith_div_f32(-553f, 1f))));
    let var_2 = vec4<bool>(~_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-56865i, arg_1.x, -1i, 0i)) < -arg_1.x, select(!var_0.e, !(!(-537f > var_1.x)), any(vec3<bool>(true, true, true))), !(3607u >= ~(62750u ^ arg_0.c.c)), !(!all(select(vec4<bool>(var_0.e, true, arg_0.e, true), vec4<bool>(arg_0.e, var_0.e, true, var_0.e), arg_0.e))));
    let var_3 = var_0.c.b.x;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -2663f));
    let var_1 = func_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 142f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(max(577f, 926f))), _wgslsmith_f_op_f32(ceil(var_0)))), u_input.b | ~u_input.a.x);
    let var_2 = var_1.d.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1967f, 1098f) - vec4<f32>(-526f, 1082f, var_0, 831f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1204f, 483f, -887f, var_0)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-809f))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * _wgslsmith_f_op_f32(849f + 199f)), -1046f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, 1287f, 458f), vec4<f32>(var_0, var_0, var_0, -254f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, -180f, 170f, -238f))))), !func_2(Struct_2(var_1.a, var_1.a, var_1.c, var_1.d, false), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, var_1.b, var_1.c.a, var_1.c.a), vec4<i32>(-2147483647i, var_1.c.a, var_1.a, 1i)), var_1.c) && false));
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-select(0i, -62275i, any(vec4<bool>(true, false, true, true))), -1i), vec3<i32>(~(~16997i), 14974i, ~min(2147483647i, var_4.a)), 4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -905f), -123f)) * -1783f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(282f + var_3.x))))), true)));
}

