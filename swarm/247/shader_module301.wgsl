struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(450f, -1000f), vec2<f32>(-1110f, 1000f), vec2<f32>(430f, 1258f), vec2<f32>(-464f, 892f), vec2<f32>(1000f, -597f), vec2<f32>(-625f, -1000f), vec2<f32>(1022f, -731f), vec2<f32>(-1000f, 956f), vec2<f32>(590f, -832f), vec2<f32>(-125f, -1604f), vec2<f32>(-629f, 331f), vec2<f32>(410f, -2505f), vec2<f32>(-1207f, -885f), vec2<f32>(-620f, -400f), vec2<f32>(733f, 238f), vec2<f32>(-192f, -862f));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.b.x, countOneBits(arg_0.b.x), global1.b.x, max(54260i, arg_0.b.x)), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -41067i, arg_3.b.x, global1.b.x), vec4<i32>(-32042i, arg_3.b.x, -28977i, 16546i) ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, arg_3.b.x))));
    global1 = arg_3;
    var var_1 = vec2<i32>(0i, _wgslsmith_div_i32(arg_3.b.x, _wgslsmith_add_i32(-1i, -40379i)) << (~select(4294967295u, ~28161u, arg_0.e.x) % 32u));
    let var_2 = !((var_0.x >= 28264i) | true);
    return 1250f;
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_mod_u32(global1.a, 1821u)), _wgslsmith_add_u32(58407u, u_input.b.x)), global1.a, global1.a);
    global0 = array<vec2<f32>, 16>();
    var var_1 = Struct_1(countOneBits(~(~firstTrailingBit(4294967295u))), global1.b, global1.d.x, !(!global1.d), global1.d);
    return !vec3<bool>(global1.e.x && global1.d.x, (_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(6364u, u_input.a)) > ~global1.a) && any(vec3<bool>(global1.e.x, global1.d.x, false)), !(-1640f < _wgslsmith_f_op_f32(trunc(-1011f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> vec2<bool> {
    global0 = array<vec2<f32>, 16>();
    var var_0 = !vec4<bool>(false, false, any(!arg_0), arg_0.x);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -global1.b.x, global1.b.x, select(_wgslsmith_add_i32(-2147483647i, 0i), ~13779i, any(var_0.zyy)), u_input.d.x) ^ (_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.d.x, global1.b.x, global1.b.x, global1.b.x), vec4<i32>(0i, global1.b.x, u_input.d.x, -77624i), false), abs(vec4<i32>(0i, global1.b.x, -2147483647i, 2378i))) | ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.d.x, 0i, global1.b.x), vec4<i32>(global1.b.x, u_input.d.x, 1i, global1.b.x))), reverseBits(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -991i, -2147483647i, u_input.d.x), vec4<i32>(-16610i, 2147483647i, global1.b.x, 1i)))));
    global1 = Struct_1(79221u, global1.b, any(vec4<bool>((global1.b.x <= u_input.d.x) & global1.c, ~u_input.a < 72724u, false, global1.e.x)), func_3().xz, select(vec2<bool>(global1.c && all(arg_0), arg_0.x), !global1.d, global1.e));
    let var_2 = Struct_1(0u, vec3<i32>(-(~(-13064i)) | _wgslsmith_div_i32(countOneBits(u_input.d.x), -37654i), global1.b.x, 26752i & _wgslsmith_mult_i32(countOneBits(36380i), global1.b.x & -12314i)), _wgslsmith_mult_i32(~abs(-40463i), countOneBits(global1.b.x)) >= global1.b.x, vec2<bool>(false, arg_0.x), vec2<bool>(true, _wgslsmith_f_op_f32(arg_2 - -235f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    return var_0.wz;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec3<i32> {
    global1 = Struct_1(16208u, arg_1.xwy, arg_0.x, select(func_4(func_3(), _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.a, u_input.c.x, global1.a), u_input.c)), 1f), func_3().zz, select(global1.e, arg_0.zy, true)), arg_0.zz);
    global0 = array<vec2<f32>, 16>();
    var var_0 = 355f;
    var var_1 = max(arg_1, ~vec4<i32>(firstTrailingBit(~arg_1.x), ~2147483647i, -2147483647i, global1.b.x));
    var var_2 = _wgslsmith_mult_i32(-global1.b.x, _wgslsmith_add_i32(~var_1.x, max(countOneBits(-23048i), 2147483647i >> (u_input.a % 32u))));
    return max(select(~arg_1.xxw, vec3<i32>(-1075i, firstLeadingBit(-arg_1.x), ~(u_input.d.x & -2147483647i)), !(!select(arg_0.zxx, vec3<bool>(true, true, arg_0.x), arg_0.x))), vec3<i32>(~43468i, 48527i, -u_input.d.x | -_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, arg_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    global1 = Struct_1(4294967295u, ~vec3<i32>(-34094i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, arg_0.b.x), global1.b), 2147483647i), true, vec2<bool>(true, (global1.c | arg_3.d.x) | (false | select(false, true, arg_0.d.x))), !func_3().zy);
    global0 = array<vec2<f32>, 16>();
    return ~_wgslsmith_sub_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 71842u), u_input.b.yzz) >> (~1u % 32u), 42995u ^ ~arg_3.a), _wgslsmith_mod_u32(abs(arg_0.a), ~arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 16>();
    var var_0 = -1044f;
    var var_1 = -global1.b.x;
    global1 = Struct_1(func_5(Struct_1(countOneBits(_wgslsmith_mod_u32(u_input.a, u_input.c.x)), global1.b, global1.d.x, select(!global1.e, !global1.d, vec2<bool>(global1.c, false)), vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2689f * 1100f)), _wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, _wgslsmith_f_op_f32(1535f * -482f), _wgslsmith_f_op_f32(func_1(Struct_1(31962u, global1.b, global1.c, vec2<bool>(false, true), global1.d), vec3<u32>(0u, 0u, global1.a), global1.e.x, Struct_1(1u, global1.b, global1.c, vec2<bool>(global1.e.x, true), global1.d))), _wgslsmith_f_op_f32(f32(-1f) * -2639f))), Struct_1(~(~1u), func_2(select(vec4<bool>(global1.d.x, global1.c, global1.d.x, global1.d.x), vec4<bool>(global1.e.x, global1.e.x, false, false), vec4<bool>(true, global1.d.x, global1.e.x, false)), vec4<i32>(-2147483647i, -2147483647i, 1i, global1.b.x)), true, select(global1.e, !global1.e, !global1.e), select(!global1.d, vec2<bool>(global1.d.x, true), vec2<bool>(true, true)))), -global1.b, false, func_3().yx, global1.d);
    var_1 = func_2(select(!vec4<bool>(true, true, func_3().x, false), select(!vec4<bool>(true, false, global1.c, true), !vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.c), !(!vec4<bool>(global1.e.x, false, true, global1.e.x))), vec4<bool>(true, global1.d.x, select(true, !global1.d.x, true), global1.d.x)), ~((vec4<i32>(global1.b.x, 2147483647i, u_input.d.x, -4214i) << (~u_input.b % vec4<u32>(32u))) ^ vec4<i32>(abs(10374i), firstLeadingBit(u_input.d.x), -u_input.d.x, -14712i))).x;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -956f))))), 1155f);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1073f, 709f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) * _wgslsmith_f_op_f32(abs(1000f)))))));
    var_0 = 588f;
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(vec4<bool>(any(vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), true, all(vec4<bool>(true, false, true, global1.d.x)), global1.d.x), (vec4<i32>(-51386i, -29973i, global1.b.x, -851i) >> (u_input.b % vec4<u32>(32u))) >> (vec4<u32>(global1.a, 1u, 0u, u_input.a) % vec4<u32>(32u))).zy, -654f);
}

