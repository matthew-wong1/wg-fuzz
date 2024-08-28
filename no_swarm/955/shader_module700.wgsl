struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.e.x, 2147483647i, u_input.a, u_input.b.x), -u_input.e), ~_wgslsmith_mult_vec4_i32(u_input.e, u_input.e)), min(vec2<u32>(~arg_0.x, ~arg_0.x), ~arg_0.zz), _wgslsmith_f_op_f32(f32(-1f) * -746f), false, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), 1831f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1000f * 766f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -834f, global0.x, global0.x), vec4<f32>(-811f, global0.x, global0.x, -2377f))), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, var_0.x, true, var_0.x))))), u_input.e, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, global0.x, global0.x) - vec3<f32>(global0.x, -652f, -1002f))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1497f + -1080f))))), ~_wgslsmith_clamp_vec2_u32(~arg_0.zz, ~arg_0.xz, ~arg_0.zz), reverseBits(-_wgslsmith_clamp_i32(~(-13199i), -u_input.e.x, -2147483647i)));
    var var_2 = _wgslsmith_clamp_i32(var_1.a.a, -(var_1.b.x | (i32(-1i) * -2147483647i)), 1220i);
    let var_3 = ~1i;
    let var_4 = all(vec3<bool>(var_0.x, true || (_wgslsmith_f_op_f32(ceil(1000f)) >= -1000f), var_1.a.c < 225f));
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(u_input.a, vec2<u32>(abs(func_3(vec3<u32>(29212u, arg_1, u_input.d))), func_3(vec3<u32>(26559u, u_input.d, u_input.d) >> (vec3<u32>(24279u, 99286u, arg_1) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(sign(global0.x)), any(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, true), true), vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(143f, 1000f, global0.x, -238f)))), u_input.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -937f, -1000f)))), vec2<u32>(_wgslsmith_div_u32(arg_1, ~u_input.c ^ arg_1), u_input.c), -12529i);
    var var_1 = Struct_3(var_0.a.d, Struct_2(Struct_1(-23422i, select(var_0.d, select(vec2<u32>(26919u, arg_1), var_0.a.b, var_0.a.d), !vec2<bool>(var_0.a.d, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - var_0.a.e.x), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_0.a.e)), _wgslsmith_f_op_vec4_f32(var_0.a.e - var_0.a.e), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(var_0.a.d, true, false, arg_0), vec4<bool>(true, true, false, false))))), var_0.b, vec3<f32>(-1279f, _wgslsmith_f_op_f32(ceil(var_0.a.c)), global0.x), ~vec2<u32>(~arg_1, ~4294967295u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.e, var_0.b, vec4<i32>(38343i, 11909i, -1i, var_0.a.a)) >> (~vec4<u32>(u_input.d, 4294967295u, 45689u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-6425i, var_0.b.x, u_input.b.x, -23921i))), !select(!vec2<bool>(var_0.a.d, true), vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.a.d), vec2<bool>(var_0.a.d, true)), vec2<bool>(false, arg_0), vec2<bool>(false, false))), var_0.a);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(739f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(floor(1004f)))), all(vec3<bool>(arg_0, var_1.c.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-286f)))))), 1619f));
    var_1 = Struct_3(true != (_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.c.x, var_1.d.e.x) + var_0.a.c) < _wgslsmith_f_op_f32(ceil(-819f))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-47482i, 2147483647i, u_input.e.x, -2147483647i), vec4<i32>(u_input.b.x, 13907i, 1i, var_1.b.e)), var_1.b.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1192f, var_0.a.c))), var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.d.e)), u_input.e, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), var_0.a.c, 720f))), firstLeadingBit(vec2<u32>(0u, func_3(vec3<u32>(arg_1, arg_1, 1u)))), (~u_input.a >> (~81717u % 32u)) & -firstLeadingBit(var_1.d.a)), vec2<bool>(!var_1.b.a.d, true), Struct_1(0i, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(54952u, var_0.d.x, 67224u), var_0.a.b.x ^ 0u), var_0.d), _wgslsmith_f_op_f32(floor(var_1.d.e.x)), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1073f, var_0.a.e.x, -409f, -111f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1392f, 689f, var_0.c.x))))));
    var var_3 = firstTrailingBit(vec4<i32>(i32(-1i) * -45576i, -_wgslsmith_add_i32(1i, u_input.e.x), 2147483647i, ~(~(~var_0.e))));
    return Struct_1(i32(-1i) * -1092i, abs(select(var_0.d | select(var_1.b.a.b, var_1.b.d, var_1.c), min(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.d.b.x, var_1.d.b.x), vec2<u32>(1u, arg_1)), vec2<u32>(38266u, 3189u)), var_1.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-203f)))), true & var_0.a.d, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.c), _wgslsmith_div_f32(-983f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d.e.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c + global0.x)), -140f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-814f))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.a.d;
    let var_1 = arg_1.x;
    let var_2 = func_2(arg_0.a.d, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(0u, ~(~u_input.d))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1319f) - var_2.e.x), 1122f, arg_0.c.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-801f - global0.x)), 806f)));
    return Struct_1(arg_0.b.x, ~(~(~var_2.b)), _wgslsmith_div_f32(global0.x, func_2(select(true, any(vec4<bool>(var_2.d, true, var_2.d, true)), var_0), arg_0.a.b.x).e.x), all(select(!vec2<bool>(true, arg_0.a.d), vec2<bool>(true, true), vec2<bool>(func_2(var_2.d, arg_0.d.x).d, all(vec2<bool>(true, arg_0.a.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(true, var_2.b.x).e - vec4<f32>(var_2.c, _wgslsmith_div_f32(var_2.c, global0.x), _wgslsmith_f_op_f32(round(arg_0.a.e.x)), _wgslsmith_f_op_f32(floor(arg_0.a.e.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = true;
    var var_1 = func_2(any(!vec3<bool>(true, arg_0.d, var_0)) & arg_3.c.d, arg_3.c.b.x).d;
    var_1 = false;
    var var_2 = arg_0.e.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(Struct_2(arg_0, vec4<i32>(23282i, arg_3.c.a, arg_3.c.a, 2147483647i), vec3<f32>(-805f, arg_3.b.x, 3067f), arg_0.b, -1i), abs(u_input.e)).e.x) - _wgslsmith_f_op_f32(max(1f, 1135f))), _wgslsmith_f_op_f32(trunc(arg_3.b.x)), 168f);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_2(Struct_1(0i, vec2<u32>(1u, u_input.d), global0.x, false, vec4<f32>(1895f, global0.x, 115f, global0.x)), vec4<i32>(-1i, 0i, -2147483647i, u_input.a), vec3<f32>(-546f, 607f, global0.x), vec2<u32>(1u, u_input.d), u_input.a), u_input.e), vec4<u32>(u_input.d, u_input.c, 58382u, u_input.c), ~u_input.d, Struct_4(vec2<bool>(false, true), vec3<f32>(global0.x, global0.x, -832f), Struct_1(-1i, vec2<u32>(90975u, u_input.d), global0.x, true, vec4<f32>(-420f, 288f, global0.x, global0.x))))) * vec3<f32>(_wgslsmith_f_op_f32(select(-1082f, global0.x, true)), -681f, global0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1006f, global0.x, 2021f), vec3<f32>(global0.x, global0.x, -1158f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(622f, -282f, 601f) + vec3<f32>(global0.x, 1796f, global0.x)) * vec3<f32>(-146f, global0.x, 1077f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-617f, 390f, 425f)))))));
    let var_0 = Struct_1(~(-11648i), vec2<u32>(u_input.c, func_1(Struct_2(Struct_1(7255i, vec2<u32>(50204u, 4294967295u), global0.x, false, vec4<f32>(global0.x, -1064f, 159f, global0.x)), -vec4<i32>(-27327i, 31991i, 0i, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -619f, global0.x)), ~vec2<u32>(24649u, u_input.c), u_input.e.x), u_input.e >> (vec4<u32>(43431u, 1u, u_input.c, 59636u) % vec4<u32>(32u))).b.x), global0.x, !all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(718f, -376f)), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-global0.x))), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, -696f, false)), -2202f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, 415f))), vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, -1000f, true)), -1472f, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(global0.x))))));
    var var_1 = select(!vec3<bool>(all(!vec4<bool>(var_0.d, true, true, var_0.d)), var_0.a >= -u_input.b.x, true), !select(vec3<bool>(func_2(var_0.d, 4294967295u).d, any(vec3<bool>(true, var_0.d, true)), false), select(!vec3<bool>(false, var_0.d, true), vec3<bool>(var_0.d, false, var_0.d), true), !(!vec3<bool>(true, var_0.d, var_0.d))), select(vec3<bool>(false, var_0.d, (var_0.d || false) | (false | var_0.d)), !vec3<bool>(var_0.d != true, var_0.d, any(vec3<bool>(var_0.d, var_0.d, true))), !vec3<bool>(!var_0.d, var_0.d || var_0.d, false)));
    let var_2 = Struct_3(all(vec4<bool>(false, true, !func_1(Struct_2(Struct_1(1i, var_0.b, 1554f, true, vec4<f32>(1000f, -1626f, global0.x, var_0.e.x)), u_input.e, var_0.e.zyx, vec2<u32>(10457u, 25664u), 26924i), u_input.e).d, true)), Struct_2(var_0, ~(-vec4<i32>(var_0.a, -31441i, 218i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.e.yzx)) - _wgslsmith_f_op_vec3_f32(abs(var_0.e.yzx)))), vec2<u32>(u_input.d, 1u), select(reverseBits(var_0.a << (var_0.b.x % 32u)), -1i, !(!var_0.d))), select(vec2<bool>(select(var_0.d, false, true), var_1.x), !(!(!vec2<bool>(var_0.d, var_1.x))), true), var_0);
    let var_3 = min(reverseBits(vec3<i32>(_wgslsmith_sub_i32(min(-18135i, var_2.d.a), _wgslsmith_dot_vec2_i32(u_input.e.xz, vec2<i32>(var_0.a, u_input.a))), max(~14048i, min(var_2.b.e, u_input.a)), _wgslsmith_mult_i32(-1i, -24330i))), vec3<i32>(-12879i, var_2.b.b.x, i32(-1i) * -var_0.a) & firstLeadingBit(firstTrailingBit(select(vec3<i32>(var_0.a, -35406i, 8454i), vec3<i32>(var_2.d.a, var_0.a, -2147483647i), vec3<bool>(false, true, var_2.d.d)))));
    let var_4 = global0.x;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_2(var_0.d, 0u).c)));
    let var_6 = ~vec2<i32>(0i, u_input.b.x);
    let var_7 = Struct_1(var_6.x, firstLeadingBit(var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-1088f - -1141f)) - -1852f), select(func_1(var_2.b, vec4<i32>(var_3.x, 0i, 51891i, u_input.b.x)).d, false, any(select(var_2.c, var_2.c, true))) & var_1.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(var_0.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~(~5624u), firstTrailingBit(48739u), (var_2.d.b.x << (var_2.d.b.x % 32u)) | u_input.d, ~var_0.b.x)), ~(~abs(23659u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, _wgslsmith_f_op_f32(var_0.c - -1242f))), var_7.e.wz), vec2<f32>(-193f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1578f)), vec4<u32>(var_2.b.d.x, func_1(var_2.b, vec4<i32>(1i, 11237i, var_7.a, var_6.x)).b.x, ~var_0.b.x & 4294967295u, 4294967295u) & _wgslsmith_sub_vec4_u32(~(vec4<u32>(4294967295u, 51689u, var_7.b.x, u_input.c) | vec4<u32>(4294967295u, 15542u, 97303u, 54685u)), vec4<u32>(var_2.d.b.x, _wgslsmith_mod_u32(4294967295u, 8973u), firstTrailingBit(var_2.b.d.x), ~47147u)));
}

