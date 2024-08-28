struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(-1120f, arg_1.d.d, arg_1.a.c.d, arg_1.a.d.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.e.ywy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.a, 121f, 1144f) + vec3<f32>(250f, 1011f, arg_1.a.d.a))))), arg_1.a.d, arg_1.d, arg_1.a.e);
    var var_1 = arg_1.a.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - -247f) + var_0.a.a)), !(!select(vec2<bool>(false, true), !var_1.b, var_1.b)), vec2<bool>(true, true), select(vec2<bool>(true, var_1.b.x), vec2<bool>(var_1.c.x, arg_1.d.d.x), !vec2<bool>(var_1.b.x, all(vec3<bool>(var_0.d.c.x, false, true)))));
    var var_3 = !any(vec2<bool>(false, var_2.b.x));
    return var_0.c.d.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1540f), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), select(false, true, true)), select(true, true, true)), func_3(vec2<i32>(firstLeadingBit(683i), 1426i), Struct_3(Struct_2(Struct_1(-775f, vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec3<f32>(432f, -374f, 322f), Struct_1(-392f, vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(687f, vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec4<f32>(1198f, -2955f, 1516f, -2017f)), ~vec3<u32>(u_input.a, 30512u, 39659u), -vec4<i32>(-31730i, -1i, 2147483647i, 42656i), Struct_1(-622f, vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, select(false, false, true))));
    let var_1 = true;
    let var_2 = vec4<i32>(_wgslsmith_add_i32(-26565i, i32(-1i) * -1i), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i))), firstLeadingBit(vec2<i32>(-24146i, -15737i) >> (vec2<u32>(49140u, u_input.a) % vec2<u32>(32u)))), 28123i) & ~(~firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)));
    let var_3 = vec2<bool>(any(vec3<bool>(select(any(vec3<bool>(var_1, var_0.d.x, false)), false & var_1, false), var_0.c.x, var_1)), true);
    var_0 = Struct_1(var_0.a, !var_3, !(!(!var_0.c)), var_3);
    return vec2<bool>(var_3.x, true);
}

fn func_4(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_vec3_u32(~(select(vec3<u32>(21601u, 7854u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 109976u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)), true) | (~vec3<u32>(32581u, u_input.a, 23098u) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 7162u)))), ~vec3<u32>(max(_wgslsmith_mult_u32(58788u, u_input.a), _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u)), 0u ^ u_input.a, abs(~4294967295u)));
    var_0 = ~(~vec3<u32>(~36866u, u_input.a, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<bool>(true, arg_0.x, arg_0.x)), vec3<u32>(17950u, var_0.x, var_0.x))));
    let var_1 = countOneBits(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(28273u, u_input.a, u_input.a, 1094u), _wgslsmith_sub_vec4_u32(vec4<u32>(4656u, 68504u, 1u, var_0.x), vec4<u32>(27446u, var_0.x, var_0.x, u_input.a))), _wgslsmith_mod_u32(0u, var_0.x), arg_0.x));
    var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(min(var_0.x, var_1) >> (46168u % 32u), ~(~var_1), ~(~u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, 1u), vec4<u32>(0u, 1u, 1u, var_1)), ~1u, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_0.x), ~vec3<u32>(0u, u_input.a, 28505u))));
    var_0 = countOneBits(min(~(~vec3<u32>(var_1, var_0.x, 74843u) & (vec3<u32>(52850u, u_input.a, 0u) << (vec3<u32>(82889u, var_0.x, var_0.x) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(32209u), ~1u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, var_1))));
    return -440f;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f + _wgslsmith_f_op_f32(-1242f - 1106f))), _wgslsmith_f_op_f32(round(1001f)), -616f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f)), 351f, -844f, _wgslsmith_f_op_f32(func_4(func_2()))))));
    let var_1 = Struct_2(Struct_1(741f, vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.xxw * vec3<f32>(var_0.x, 1000f, var_0.x)), var_0.yzz), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x))))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(792f, 330f, 1107f) * _wgslsmith_f_op_vec3_f32(-var_0.yzw)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -967f), vec3<f32>(var_0.x, -758f, 1282f)))))), Struct_1(-403f, select(vec2<bool>(true, true), !func_2(), func_2().x), vec2<bool>(true, true), vec2<bool>(select(true, true, u_input.a == 14332u), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1649f)), vec2<bool>(true, true), func_2(), vec2<bool>(func_2().x, 528f >= _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), -593f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -1253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -2197f) - -2265f))));
    let var_2 = var_1.e.yz;
    let var_3 = var_0;
    var var_4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a), u_input.a, 0u, 0u), ~(~(~vec4<u32>(64026u, 1u, u_input.a, 1u))) >> (vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(70436u, u_input.a) ^ vec2<u32>(55900u, 0u), ~vec2<u32>(0u, 18258u)), u_input.a, abs(~u_input.a)) % vec4<u32>(32u)));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(757f, select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), true), vec2<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))) | (func_1() != ~u_input.a)), select(vec2<bool>(true, true), func_2(), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(107f, -691f, var_0.a), vec3<f32>(-1062f, var_0.a, _wgslsmith_f_op_f32(-922f * _wgslsmith_f_op_f32(-273f * var_0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -1000f, 1285f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1243f, 496f) - vec3<f32>(var_0.a, 1098f, var_0.a)) + vec3<f32>(var_0.a, 167f, 1250f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), -1509f, _wgslsmith_f_op_f32(776f * -903f)))));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(-1000f, var_0.a))), var_0.c, !vec2<bool>(var_0.d.x, false), func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(846f - var_0.a) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))), var_0, var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(608f, var_0.a, 1219f, var_0.a), vec4<f32>(-305f, -175f, 1071f, var_0.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-807f, 1027f, 1000f, var_0.a), vec4<f32>(-1090f, var_1.x, 640f, 404f), vec4<bool>(var_0.b.x, var_0.b.x, true, true)))))))), vec3<u32>(countOneBits(u_input.a), 0u, 4294967295u), firstTrailingBit(select(vec4<i32>(1i, firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-53992i, 1i), vec2<i32>(-44043i, 36929i)), ~(-1i)), vec4<i32>(-6913i, abs(0i), 1i, min(41690i, 1i)), false)), var_0);
    var var_3 = ~_wgslsmith_mod_u32(0u, 101296u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~1u, u_input.a >> (((u_input.a >> (9510u % 32u)) << (~73544u % 32u)) % 32u)));
}

