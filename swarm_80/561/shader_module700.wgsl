struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = ((-_wgslsmith_add_i32(0i, u_input.c.x) ^ 1i) >> (0u % 32u)) < u_input.c.x;
    global0 = true;
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 41386u, 74591u), vec3<u32>(~8409u, 6012u, ~(~4294967295u)));
    var var_1 = countOneBits(~u_input.d.wzx ^ vec3<u32>(u_input.d.x, ~(u_input.d.x ^ u_input.d.x), select(_wgslsmith_dot_vec3_u32(u_input.d.yxw, vec3<u32>(var_0.x, 42541u, u_input.b.x)), ~var_0.x, true)));
    var var_2 = 1u;
    return select(false, all(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), abs(var_0.x) == (u_input.b.x << ((var_0.x & ~var_0.x) % 32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = any(vec2<bool>(arg_0.b.x, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -840f, 329f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)))));
    var var_2 = Struct_2(vec2<i32>(44291i, u_input.a.x), 1u, var_1, _wgslsmith_f_op_f32(-var_1));
    let var_3 = vec2<bool>(false, !(!arg_0.b.x));
    global0 = var_3.x;
    return select(select(select(vec4<bool>(any(vec3<bool>(true, arg_0.b.x, var_3.x)), var_3.x && false, false, any(vec2<bool>(var_3.x, arg_0.b.x))), !vec4<bool>(true, true, false, var_3.x), arg_0.b.x), !(!vec4<bool>(var_3.x, true, var_3.x, arg_0.b.x)), !vec4<bool>(false, 1941f > var_1, any(vec3<bool>(true, false, var_3.x)), any(vec4<bool>(false, false, true, false)))), !vec4<bool>(!(var_3.x && arg_0.b.x), select(true, false, false) & true, var_3.x, true), select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, var_3.x && var_3.x, false), vec4<bool>(var_3.x, var_3.x, all(vec3<bool>(arg_0.b.x, arg_0.b.x, var_3.x)), var_3.x), !arg_0.b.x), select(vec4<bool>(true, true, !var_3.x, arg_0.b.x), vec4<bool>(true, false, true | var_3.x, false), ~42156u < _wgslsmith_dot_vec3_u32(vec3<u32>(41471u, 107680u, var_2.b), vec3<u32>(var_2.b, 72422u, u_input.d.x))), vec4<bool>(any(vec2<bool>(true, true)), false, arg_0.b.x, var_3.x == true)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(Struct_1(u_input.b.xz ^ u_input.d.xw, !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true)));
    global0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-615f, -221f) - _wgslsmith_f_op_f32(abs(-411f))) + -1000f) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(419f))))));
    global0 = !func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1047f, _wgslsmith_f_op_f32(f32(-1f) * -524f), 292f))));
    var var_1 = Struct_2(select(-(-vec2<i32>(8818i, 22985i) << (u_input.b.zz % vec2<u32>(32u))), select(max(vec2<i32>(36029i, u_input.c.x), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(abs(u_input.a.x), ~4255i), vec2<bool>(var_0.x, false)), !var_0.zx), u_input.d.x, _wgslsmith_f_op_f32(1041f * 481f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(335f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638f + -687f)))));
    let var_2 = abs(-_wgslsmith_dot_vec2_i32(var_1.a, select(vec2<i32>(2147483647i, 41441i), ~vec2<i32>(0i, -54620i), var_0.x | true)));
    return 1314f;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = 1312f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2085f + _wgslsmith_f_op_f32(select(arg_1.d, 451f, arg_0))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(238f, 1367f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0, arg_1.d)))), _wgslsmith_f_op_f32(f32(-1f) * -777f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -266f, var_0, arg_1.c) - vec4<f32>(var_0, arg_1.c, -617f, 100f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1005f, 1000f, 1569f, arg_1.d), vec4<f32>(arg_1.c, var_0, -813f, 150f))))), vec4<f32>(_wgslsmith_f_op_f32(var_0 * -1004f), 1517f, 1102f, -855f))));
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.wy, vec2<u32>(u_input.b.x, ~30006u)), u_input.b.xy), !select(!(!vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)));
    global0 = true || !any(vec2<bool>(!var_2.b.x, true));
    global0 = reverseBits(reverseBits(u_input.a.x)) > _wgslsmith_clamp_i32(arg_2, _wgslsmith_sub_i32(firstLeadingBit(countOneBits(arg_2)), _wgslsmith_mult_i32(arg_2 | -26428i, 0i)), ~(-2147483647i));
    return Struct_1(max(max(var_2.a, vec2<u32>(1u, 13098u)), u_input.b.yz), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = 30661u;
    let var_1 = arg_1.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
    global0 = -1014f > _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c - arg_0.d), 939f))));
    global0 = all(vec3<bool>(func_2(Struct_1(vec2<u32>(34148u, 4294967295u), arg_1.b)).x, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -648f, arg_0.c) + vec3<f32>(var_2, var_2, 968f))), true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f - arg_0.d))))) < 1153f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = false;
    global0 = any(vec4<bool>(true, -26990i < u_input.c.x, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)) & false));
    global0 = true;
    var var_0 = Struct_1(u_input.b.xy << (u_input.b.yw % vec2<u32>(32u)), vec2<bool>((u_input.c.x == abs(1i)) & all(vec2<bool>(true, false)), 0i > abs(u_input.a.x)));
    var var_1 = select(vec3<bool>(any(!(!vec2<bool>(var_0.b.x, false))), true, false), vec3<bool>(!var_0.b.x && any(!var_0.b), 31924u != u_input.b.x, var_0.b.x), vec3<bool>(true, !(42998i == ~u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-258f + 875f), _wgslsmith_f_op_f32(round(580f))) > -486f));
    global0 = func_5(Struct_2(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, 34121i), any(vec3<bool>(var_1.x, true, false))), _wgslsmith_mod_vec2_i32(u_input.a.zx, ~u_input.c)), _wgslsmith_clamp_u32(1u, var_0.a.x, ~var_0.a.x | 18807u), _wgslsmith_f_op_f32(-1939f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f * -1159f) - -255f)), -1522f), func_4(var_0.b.x, Struct_2(~_wgslsmith_add_vec2_i32(u_input.a.xw, u_input.c), ~1u, _wgslsmith_f_op_f32(func_1(18569u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f + 2885f) + 519f)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(687i, u_input.c.x, u_input.a.x), u_input.a.yzx), countOneBits(vec3<i32>(54717i, u_input.c.x, u_input.a.x))), var_0.a.x));
    var_0 = func_4(true, Struct_2(vec2<i32>(2147483647i, ~22970i), ~_wgslsmith_sub_u32(~var_0.a.x, var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2381f))), _wgslsmith_f_op_f32(-631f * 849f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1070f, _wgslsmith_f_op_f32(f32(-1f) * -2088f), !var_1.x)))), _wgslsmith_clamp_i32(~min(u_input.a.x, 21978i), u_input.c.x, u_input.a.x), firstLeadingBit(0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(636f - 330f), _wgslsmith_f_op_f32(max(696f, 690f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-601f)))));
}

