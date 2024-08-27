struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -13049i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    var var_0 = ~u_input.b | ~(~1u);
    var var_1 = Struct_4(u_input.c.wxz);
    var_0 = ~(~(~select(8871u, 6054u, false)) & _wgslsmith_sub_u32(var_1.a.x << (~u_input.b % 32u), ~(~u_input.a)));
    let var_2 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), false)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, true, true));
    var_1 = Struct_4(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.c.x) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 22670u), vec3<u32>(0u, 50456u, u_input.b)), vec3<u32>(reverseBits(37549u), var_1.a.x ^ var_1.a.x, var_1.a.x))));
    return abs(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(u_input.d.x), 70000i, reverseBits(u_input.d.x)), vec3<i32>(i32(-1i) * -24232i, -u_input.d.x, 53553i)) & countOneBits(min(27521i, i32(-1i) * -14487i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_3(-1663f, vec4<i32>(_wgslsmith_mod_i32(max(0i, abs(26050i)), select(select(2147483647i, u_input.d.x, true), -u_input.d.x, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.d.x, func_3()), u_input.d.zy), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_div_i32(u_input.d.x, 0i), u_input.d.x, firstLeadingBit(u_input.d.x)), -u_input.d), _wgslsmith_add_i32(0i, 0i)), Struct_2(~0i, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(u_input.a, u_input.c.x)), 4294967295u) <= 0u), any(vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !all(arg_0), _wgslsmith_dot_vec3_u32(u_input.c.zzw, vec3<u32>(u_input.c.x, 1u, 0u)) >= u_input.c.x)), !arg_1.wzw);
    global1 = abs(-2147483647i);
    let var_1 = any(!select(var_0.e, select(select(var_0.e, vec3<bool>(false, var_0.e.x, arg_1.x), true), var_0.e, arg_1.zxw), (4294967295u ^ u_input.a) == u_input.b));
    var var_2 = var_0;
    var var_3 = var_0;
    return abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 6418u, 0u, 1u), abs(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c))), abs(firstTrailingBit(0u))));
}

fn func_1() -> vec2<f32> {
    global1 = max(-17685i << (min(_wgslsmith_mod_u32(30005u, ~1u), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) & ~u_input.a) % 32u), _wgslsmith_dot_vec4_i32(u_input.d, ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, 1i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, -2959i, u_input.d.x)), -u_input.d)));
    let var_0 = Struct_4(vec3<u32>(u_input.a, func_2(vec2<bool>(true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false)), _wgslsmith_mult_u32(u_input.b, u_input.c.x)));
    let var_1 = Struct_4(~(~(vec3<u32>(28757u, 28011u, var_0.a.x) << (firstLeadingBit(vec3<u32>(4294967295u, var_0.a.x, u_input.b)) % vec3<u32>(32u)))));
    global0 = true;
    let var_2 = Struct_2(firstTrailingBit(select(-283i, firstLeadingBit(_wgslsmith_add_i32(u_input.d.x, u_input.d.x)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(-652f - -614f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(211f, -1018f)) + _wgslsmith_f_op_f32(f32(-1f) * -1179f)), _wgslsmith_f_op_f32(sign(344f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1888f, 1258f) - vec2<f32>(351f, -390f)), vec2<f32>(-1851f, 1143f), !vec2<bool>(var_2.b, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1874f))), vec2<bool>(all(vec2<bool>(var_2.b, var_2.b)), true))))), !(var_2.a <= _wgslsmith_mult_i32(~var_2.a, u_input.d.x))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    global0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))) || all(vec4<bool>(true, _wgslsmith_f_op_f32(-arg_2.x) >= arg_2.x, !(75258u <= arg_0), false));
    var var_0 = true;
    global0 = all(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true)));
    global0 = !(!(0i >= u_input.d.x));
    var var_1 = firstLeadingBit(vec3<u32>(~min(arg_3.x, 50550u), 77924u, ~(~23542u))) | ~(~vec3<u32>(63576u, func_2(vec2<bool>(false, true), vec4<bool>(false, true, true, false)), select(0u, 4294967295u, true)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(30526u, (u_input.d.x ^ ~(~0i)) << (5495u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1672f, -1877f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(159f, -136f), vec2<f32>(-611f, 676f)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~15715u), ~abs(u_input.c.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), ~u_input.c.x)), vec3<u32>(78952u, 1u, 40630u)));
    global1 = -15992i;
    var var_1 = Struct_2(_wgslsmith_div_i32(-2147483647i, ~u_input.d.x), true);
    var var_2 = (u_input.b << (~_wgslsmith_sub_u32(0u, u_input.b << (4294967295u % 32u)) % 32u)) > ~u_input.b;
    global1 = abs(_wgslsmith_mult_i32(abs(0i) ^ ~firstTrailingBit(-1i), abs(_wgslsmith_dot_vec2_i32(min(u_input.d.xy, vec2<i32>(-1i, u_input.d.x)), ~vec2<i32>(1i, -2147483647i)))));
    global0 = var_1.b;
    let var_3 = Struct_1(select(!(any(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)) || true), any(vec3<bool>(1u < u_input.c.x, 0u >= var_0, select(var_1.b, true, false))), true));
    let var_4 = ~45981u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i));
}

