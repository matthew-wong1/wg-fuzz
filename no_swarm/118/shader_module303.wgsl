struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_1(u_input.a, select(arg_1.b, arg_1.b, arg_1.b), !arg_1.c, _wgslsmith_sub_u32(~abs(69894u), 3321u), _wgslsmith_add_u32(_wgslsmith_mod_u32(~arg_1.e, arg_0), _wgslsmith_sub_u32(~6259u ^ arg_1.a, 17266u)));
    let var_1 = _wgslsmith_div_u32(~(~(arg_1.a ^ 4294967295u) ^ 4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(arg_1.d, var_0.e)), firstLeadingBit(~63776u)), 1u));
    var var_2 = arg_1;
    let var_3 = arg_3.ywz;
    var var_4 = var_3.x;
    return arg_3.yxz;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -753f, -392f), vec3<f32>(global0.x, global0.x, 1320f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(max(48907u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(22609u, 3131u), ~u_input.a)), Struct_1(~1u, arg_1.b, true, arg_1.d, arg_1.e), arg_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1076f + 833f) + _wgslsmith_f_op_f32(f32(-1f) * -1107f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(trunc(global0.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, 925f, 140f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(130f, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -261f), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 105f, 705f) - vec3<f32>(-726f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, global0.x, -1570f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(578f, -1702f, 168f), vec3<f32>(-1243f, global0.x, -1000f), arg_1.c))))))), !arg_1.c));
    var var_0 = max(1u, u_input.a);
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(step(global0.x, -440f));
    return _wgslsmith_f_op_f32(min(1803f, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(773f, 651f)) - _wgslsmith_f_op_f32(-var_1))))))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_0.a.e & 0i, arg_0.a.a, ~30080u, vec4<i32>(13024i, arg_0.a.e, -3342i, -2147483647i) ^ vec4<i32>(0i, 29739i, 0i, arg_0.a.e))), -1144f), _wgslsmith_f_op_f32(round(1000f)), -1288f));
    var var_0 = vec4<u32>(firstTrailingBit(~(~(arg_0.a.d.x ^ arg_0.b.x))), u_input.a, countOneBits(_wgslsmith_mod_u32((arg_0.b.x ^ arg_0.a.c.e) | u_input.a, firstLeadingBit(u_input.a))), ~(arg_0.a.d.x | select(_wgslsmith_dot_vec3_u32(vec3<u32>(24093u, arg_0.b.x, u_input.a), arg_0.b), arg_0.b.x, false)));
    var var_1 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2917i, 18006i, ~(-1i)), vec3<i32>(2147483647i, -2147483647i, -55411i)));
    var var_2 = Struct_2(arg_0.a.b, arg_0.a.b, Struct_1(20373u, vec2<bool>(true, !all(vec3<bool>(arg_0.a.a.b.x, arg_0.c.x, true))), all(!select(vec2<bool>(arg_0.a.c.b.x, arg_0.c.x), vec2<bool>(arg_0.a.c.b.x, arg_0.c.x), arg_0.c.yy)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 71268u, var_0.x), arg_0.a.d), ~var_0.x), ~1u), arg_0.a.d, ~(-(select(var_1.x, 29681i, arg_0.a.c.b.x) | 2147483647i)));
    var var_3 = var_2.d.yzw;
    return Struct_3(arg_0.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.x, ~_wgslsmith_div_u32(var_0.x, var_2.d.x)), var_0.yzx), arg_0.c);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(func_1(Struct_3(arg_3.a, arg_3.a.d.zwy, arg_3.c)).a, ~abs(vec3<u32>(24735u, arg_2.d, _wgslsmith_mult_u32(arg_2.e, arg_3.b.x))), arg_3.c);
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))), -671f, global0.x)));
    var_0 = arg_3;
    var var_1 = arg_1.a.c;
    let var_2 = var_0.a.a.b;
    return Struct_3(func_1(Struct_3(Struct_2(func_1(arg_3).a.c, arg_1.a.b, arg_3.a.b, arg_3.a.d, _wgslsmith_mult_i32(0i, 1i)), abs(vec3<u32>(arg_1.a.c.d, u_input.a, var_1.d)) >> (~vec3<u32>(arg_3.a.b.d, 86959u, arg_2.e) % vec3<u32>(32u)), vec4<bool>(global0.x >= 1238f, true, arg_3.b.x >= arg_3.a.d.x, true))).a, vec3<u32>(~arg_1.b.x << (var_0.b.x % 32u), select(_wgslsmith_add_u32(var_1.a, u_input.a), 30983u, any(vec3<bool>(var_0.c.x, var_2.x, true))), ~countOneBits(arg_2.a)) << ((abs(var_0.a.d.zxx) ^ ~max(vec3<u32>(2854u, 0u, u_input.a), arg_1.a.d.wwx)) % vec3<u32>(32u)), var_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = -682f;
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 169f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-139f, 412f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(26323u, vec2<bool>(true, true), true, u_input.a, firstLeadingBit(u_input.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-31760i, 27560i), vec2<i32>(-48385i, -1i)), ~vec2<i32>(2147483647i, 0i)), func_4(u_input.a, func_1(Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(true, true), true, u_input.a, u_input.a), Struct_1(34454u, vec2<bool>(false, false), true, u_input.a, u_input.a), Struct_1(22640u, vec2<bool>(false, false), false, 0u, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u), -11083i), vec3<u32>(0u, u_input.a, 30758u), vec4<bool>(false, false, true, false))), func_1(Struct_3(Struct_2(Struct_1(4294967295u, vec2<bool>(false, true), true, u_input.a, 4294967295u), Struct_1(24112u, vec2<bool>(false, true), true, 4294967295u, 23923u), Struct_1(u_input.a, vec2<bool>(true, false), false, u_input.a, u_input.a), vec4<u32>(0u, 62693u, 1u, 0u), -1i), vec3<u32>(u_input.a, u_input.a, 6391u), vec4<bool>(false, true, true, false))).a.c, Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(true, false), false, 85265u, 26003u), Struct_1(4294967295u, vec2<bool>(true, false), true, 0u, u_input.a), Struct_1(45246u, vec2<bool>(false, true), false, u_input.a, 2142u), vec4<u32>(100314u, u_input.a, 1u, u_input.a), -1i), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, true)))))), -1955f);
    let var_0 = ~47167i;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, 930f, global0.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1695f, global0.x) * vec3<f32>(-876f, global0.x, 2009f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, 164f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(204f, global0.x, -1053f))))))));
    var var_1 = 46636u << (~u_input.a % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(func_3(reverseBits(u_input.a), Struct_1(47155u, select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), all(vec3<bool>(true, true, true)), 0u, abs(40387u)), -(~_wgslsmith_clamp_i32(func_1(Struct_3(Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), false, u_input.a, u_input.a), Struct_1(u_input.a, vec2<bool>(false, false), true, u_input.a, 27296u), Struct_1(4733u, vec2<bool>(true, false), false, u_input.a, u_input.a), vec4<u32>(0u, 10088u, u_input.a, 20914u), -1i), vec3<u32>(u_input.a, 22737u, u_input.a), vec4<bool>(false, false, true, true))).a.e, 2147483647i ^ var_0, var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(21058u, vec2<bool>(true, false), false, u_input.a, 0u), vec2<i32>(var_0, var_0), Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(false, true), false, u_input.a, 32117u), Struct_1(u_input.a, vec2<bool>(true, true), true, 33516u, 8125u), Struct_1(24526u, vec2<bool>(true, false), false, u_input.a, 1u), vec4<u32>(4294967295u, u_input.a, 18605u, 1u), -30439i), vec3<u32>(18320u, u_input.a, u_input.a), vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(min(global0.x, -742f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(779f, 255f, -247f, -415f))))));
    var_1 = 26063u;
    global0 = vec3<f32>(-1442f, _wgslsmith_f_op_f32(func_2(~(-71679i), func_1(Struct_3(Struct_2(Struct_1(37654u, vec2<bool>(true, false), false, u_input.a, 15092u), Struct_1(281u, vec2<bool>(false, true), true, 0u, u_input.a), Struct_1(20021u, vec2<bool>(true, true), false, u_input.a, u_input.a), vec4<u32>(u_input.a, 35630u, u_input.a, u_input.a), -2147483647i), vec3<u32>(u_input.a, 48463u, u_input.a), vec4<bool>(true, false, false, true))).a.c, ~(~u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1625i, ~(-2507i), ~var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, 1i, var_0, var_0), vec4<i32>(var_0, 2147483647i, var_0, var_0)) >> (~vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u))))), global0.x);
    var var_2 = any(select(!vec4<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, true)), var_0 <= 1i), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), func_1(Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(true, true), true, u_input.a, u_input.a), Struct_1(5159u, vec2<bool>(false, false), false, 4294967295u, 73818u), Struct_1(u_input.a, vec2<bool>(true, false), true, u_input.a, 60243u), vec4<u32>(u_input.a, 0u, 4659u, 117919u), -22032i), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, true))).a.a.b.x), all(vec4<bool>(true, true, true, true))), !vec4<bool>(u_input.a >= 35118u, u_input.a <= 1u, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_1(Struct_3(Struct_2(Struct_1(u_input.a, vec2<bool>(false, true), false, 1u, u_input.a), Struct_1(19680u, vec2<bool>(true, false), false, 28785u, u_input.a), Struct_1(u_input.a, vec2<bool>(false, true), false, 45171u, 4294967295u), vec4<u32>(u_input.a, 45213u, u_input.a, u_input.a), var_0), vec3<u32>(8235u, u_input.a, 37717u), vec4<bool>(true, true, true, false))).b << (select(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 40136u)), countOneBits(vec3<u32>(84300u, 14441u, u_input.a)), all(vec3<bool>(true, false, false))) % vec3<u32>(32u))));
}

