struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_5(~u_input.a.zz, Struct_3(Struct_1(true), ~firstLeadingBit(~4294967295u)), min(-23256i, 1i));
    var var_1 = ~(var_0.b.b ^ var_0.b.b);
    global0 = vec3<i32>(u_input.a.x, -1i, 46871i);
    var var_2 = var_0;
    var var_3 = Struct_4(vec2<bool>(true, var_2.b.a.a), Struct_3(Struct_1(!var_0.b.a.a), ~_wgslsmith_add_u32(max(var_2.b.b, var_0.b.b), 4294967295u)));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(63381i, 0i, -2147483647i), firstLeadingBit(-(vec3<i32>(2147483647i, var_2.a.x, -2147483647i) ^ vec3<i32>(var_0.c, var_2.c, global0.x))) >> ((abs(firstLeadingBit(vec3<u32>(1u, 1u, 1u))) << (countOneBits(~vec3<u32>(49259u, 0u, var_0.b.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = arg_0;
    global0 = (_wgslsmith_div_vec3_i32(u_input.a, firstLeadingBit(~u_input.a)) | _wgslsmith_mult_vec3_i32(~u_input.a & func_3(), u_input.a)) | (vec3<i32>(arg_2, firstLeadingBit(~11258i), global0.x) << (reverseBits(~vec3<u32>(6844u, 0u, 1u)) % vec3<u32>(32u)));
    let var_1 = ~(arg_1 & _wgslsmith_clamp_u32(~(0u | var_0), _wgslsmith_mult_u32(22571u, 0u), ~(~30178u)));
    var var_2 = Struct_3(Struct_1(arg_3), 25264u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2035f, -1513f, 1874f, -1039f) + vec4<f32>(1264f, 296f, 970f, -1047f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, -666f, 395f, 398f) - vec4<f32>(395f, -897f, 872f, -991f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-189f, -2535f, -272f, -576f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 246f, -1170f, 534f) - vec4<f32>(925f, -560f, -117f, 457f)), select(vec4<bool>(arg_3, true, false, var_2.a.a), vec4<bool>(arg_3, false, false, var_2.a.a), arg_3))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(784f, -1036f, 1790f, 860f) + vec4<f32>(860f, -1070f, 366f, -480f)))))));
    return Struct_3(var_2.a, var_2.b);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 1343f, 1451f) + vec3<f32>(-652f, -1000f, -905f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(724f, 1024f, -1203f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(274f, 1145f, -837f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, -1903f, 2811f) - vec3<f32>(1000f, -782f, -119f))), vec3<f32>(_wgslsmith_div_f32(-550f, -759f), _wgslsmith_f_op_f32(min(378f, 688f)), _wgslsmith_f_op_f32(-260f + -1024f)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))))));
    let var_1 = func_2(0u, 4294967295u, 1i, any(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_mod_u32(max(~_wgslsmith_add_u32(0u, 47343u), _wgslsmith_div_u32(~(var_1.b ^ 1u), 0u)), ~var_1.b);
    var var_3 = ~global0.x;
    let var_4 = Struct_4(!select(select(select(vec2<bool>(false, var_1.a.a), vec2<bool>(var_1.a.a, var_1.a.a), var_1.a.a), select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(true, false), true), true), vec2<bool>(true, true), !select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.a.a, var_1.a.a), true)), func_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_1.b, min(var_2, var_1.b)), var_1.b), var_1.b, 2147483647i, !(!(var_1.a.a | var_1.a.a))));
    return Struct_1(false);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global0 = -(u_input.a >> (_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 83234u, arg_2), vec3<u32>(arg_3.b, arg_3.b, arg_2), vec3<u32>(arg_3.b, 77850u, arg_3.b)), countOneBits(vec3<u32>(37926u, arg_3.b, 39870u))) % vec3<u32>(32u))) << ((~(~(vec3<u32>(arg_3.b, 1u, 59627u) ^ vec3<u32>(arg_3.b, arg_2, arg_2))) << ((vec3<u32>(abs(39503u), arg_2 | arg_2, countOneBits(90757u)) & _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 49170u, arg_2), reverseBits(vec3<u32>(1u, arg_3.b, arg_3.b)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_mod_vec3_i32(reverseBits(u_input.a), vec3<i32>(-31973i, 65408i, max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(15307i, 0i, -27835i), vec3<i32>(u_input.a.x, 11543i, global0.x)))) | u_input.a);
    global0 = max(vec3<i32>(1i, u_input.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, -32031i, global0.x, 1i), vec4<i32>(61890i, arg_1, u_input.a.x, u_input.a.x), vec4<bool>(false, arg_3.a.a, arg_0, true)) | vec4<i32>(global0.x, arg_1, 23468i, 16911i), select(vec4<i32>(u_input.a.x, global0.x, -2147483647i, arg_1), -vec4<i32>(1i, 13800i, global0.x, u_input.a.x), select(arg_0, false, arg_0)))), vec3<i32>(0i, -global0.x, 2147483647i));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(430f, -1000f), vec2<f32>(227f, 277f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -3129f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1331f * 103f)), _wgslsmith_div_f32(-1051f, _wgslsmith_f_op_f32(f32(-1f) * -1161f))), select(select(select(vec2<bool>(arg_3.a.a, arg_3.a.a), vec2<bool>(arg_3.a.a, false), false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_3.a.a), !vec2<bool>(arg_3.a.a, false), !vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(true, arg_3.a.a), vec2<bool>(arg_0, arg_3.a.a), arg_0)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1236f * -334f), _wgslsmith_f_op_f32(trunc(-316f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, -956f))))));
    var var_1 = func_2(~min(~arg_3.b, max(firstLeadingBit(0u), firstTrailingBit(arg_2))), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_3.b, arg_2, arg_2)), vec3<u32>(arg_2 & arg_2, ~1u, _wgslsmith_sub_u32(arg_2, arg_3.b))), -u_input.a.x, true);
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-22882i, 1i, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = abs(~min(vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, _wgslsmith_sub_u32(3984u, 0u))));
    global0 = vec3<i32>(-15503i, min(_wgslsmith_mult_i32(abs(global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-14142i, global0.x, -1i, 2147483647i), vec4<i32>(u_input.a.x, global0.x, -24137i, global0.x))), max(u_input.a.x & 3783i, min(47i, global0.x))), 1i) | ~(~(~u_input.a));
    let var_2 = !select(vec2<bool>(abs(var_1.x) == abs(var_1.x), true), select(vec2<bool>(var_1.x > var_1.x, false), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true)), vec2<bool>(true, true));
    var var_3 = Struct_3(func_4(var_2.x, -reverseBits(global0.x), ~var_1.x, Struct_3(func_1(), _wgslsmith_mod_u32(max(0u, var_1.x), 1u))), ~52623u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1807f, _wgslsmith_f_op_f32(min(-537f, -345f)), 896f))));
}

