struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(vec3<bool>(false, true, !(!arg_0.a)), Struct_1(select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), select(vec4<bool>(false, false, arg_0.a, arg_0.a), vec4<bool>(true, false, true, false), arg_0.a), false)), true));
    let var_1 = 4294967295u;
    global0 = -255f;
    let var_2 = arg_0.a;
    var var_3 = vec3<i32>(~(~(-12910i)), 1i, -15737i >> (_wgslsmith_clamp_u32(4294967295u, ~1u, 4294967295u) % 32u));
    return select(!(!(!select(var_0.a.a.yy, vec2<bool>(var_2, true), arg_0.a))), vec2<bool>(true, true), !var_0.a.b.a.wx);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = -666f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2129f, arg_0.x) * 333f)), 196f)));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(arg_0));
    var var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(1081f * arg_0.x) <= _wgslsmith_f_op_f32(arg_0.x - var_0.x), true), !select(func_3(Struct_5(false, 0i, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -517f) - arg_0.xy)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, true));
    var_1 = func_3(Struct_5(var_1.x, -82652i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(712f - arg_0.x), -351f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 143f, -968f)) - vec3<f32>(arg_0.x, 268f, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, var_0.x) * arg_0.yy) + arg_0.yy))));
    return Struct_1(!(!select(select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false)), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, false, true, var_1.x)), !vec4<bool>(true, true, var_1.x, var_1.x))));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(select(vec3<bool>(true != func_2(vec3<f32>(-1000f, -100f, -331f)).a.x, _wgslsmith_mult_i32(u_input.a, 0i) > firstLeadingBit(u_input.a), true), vec3<bool>(arg_0.a.a.x, !(!arg_0.a.b.a.x), arg_0.a.b.a.x), func_2(vec3<f32>(-565f, _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a.x), arg_0.a.b, false);
    var var_1 = arg_0;
    let var_2 = !(!(!func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, 350f, 550f) * vec3<f32>(793f, 604f, -523f))).a));
    var var_3 = true;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(-518f * 304f))));
    return !vec3<bool>((4294967295u << (u_input.b % 32u)) < 46017u, var_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f + 142f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(928f, -753f))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> bool {
    var var_0 = func_4(Struct_3(Struct_2(select(!vec3<bool>(false, arg_0.a.x, false), arg_0.b.a.zxz, true), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1075f, 171f, 120f) - vec3<f32>(-454f, 1000f, -874f))), false)));
    let var_1 = Struct_4(~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-9926i, 5470i, -31006i), vec3<i32>(u_input.a, 53789i, 0i), vec3<i32>(u_input.a, -2147483647i, 2147483647i)), vec3<i32>(arg_1, -1i, u_input.a) ^ vec3<i32>(arg_1, 1i, arg_1)) >> ((vec3<u32>(min(u_input.b, 2955u), ~u_input.b, firstTrailingBit(62638u)) | _wgslsmith_mult_vec3_u32(arg_2, ~arg_2)) % vec3<u32>(32u)), arg_0.b.a, !func_4(Struct_3(Struct_2(vec3<bool>(var_0.x, var_0.x, true), arg_0.b, var_0.x))).yy, func_4(Struct_3(Struct_2(arg_0.b.a.zxy, arg_0.b, true))), Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1732f, 1564f, -1000f) * vec3<f32>(1128f, -1189f, -1000f))).a.zxy, func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1793f, 472f, -427f)))), var_0.x != (var_0.x & var_0.x))));
    global0 = -459f;
    let var_2 = Struct_3(var_1.e.a);
    var var_3 = Struct_2(arg_0.b.a.yxz, Struct_1(select(!(!vec4<bool>(false, false, true, var_2.a.a.x)), select(select(vec4<bool>(true, var_2.a.b.a.x, var_0.x, var_2.a.c), vec4<bool>(true, false, false, true), false), arg_0.b.a, true), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 2865f, -753f), vec3<f32>(-1182f, -1000f, 290f))).a)), false);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(true, true, select(false, true, false)), vec3<bool>(true, true, any(vec2<bool>(false, true))), true), !vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, func_1(Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, false, false, true)), false), u_input.a, vec3<u32>(u_input.b, u_input.b, u_input.b)), true), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-665f, -442f, 1477f)))).a.wwx)), func_4(Struct_3(Struct_2(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), Struct_1(vec4<bool>(false, true, false, false)), true))), !func_4(Struct_3(Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, false, false, false)), false))));
    let var_1 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(24051i, u_input.a, 45890i) >> (vec3<u32>(4294967295u, 4294967295u, u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(43423i, u_input.a, 53696i), vec3<i32>(-1i, 15709i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), u_input.a), abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 0i), -vec3<i32>(11631i, -1i, -1i)))), vec4<bool>(true, any(!vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x & true, all(select(!vec2<bool>(var_0.x, var_0.x), !var_0.yx, all(vec4<bool>(var_0.x, true, var_0.x, false))))), vec2<bool>((all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)) & true) | (var_0.x == var_0.x), (reverseBits(0u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1512u, 112367u))) || true), vec3<bool>(!var_0.x, false, true), Struct_3(Struct_2(var_0, Struct_1(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1360f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-472f, -728f, true)) * _wgslsmith_f_op_f32(-587f - _wgslsmith_f_op_f32(sign(1203f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f + 1386f) + _wgslsmith_f_op_f32(ceil(794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) + _wgslsmith_f_op_f32(-419f + 1331f))), -1122f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -772f))), -1000f), 4294967295u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-1039f)), _wgslsmith_div_f32(-1631f, _wgslsmith_f_op_f32(f32(-1f) * -544f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1895f)) * _wgslsmith_f_op_f32(f32(-1f) * -942f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-420f)) + _wgslsmith_f_op_f32(sign(-758f))), 392f))));
}

