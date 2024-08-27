struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(282f, -1202f, 347f, 1476f);

var<private> global1: f32 = 563f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    var var_0 = arg_1 | ~vec2<u32>(0u, ~(arg_1.x ^ u_input.a));
    var_0 = vec2<u32>(arg_1.x, 1u);
    let var_1 = u_input.a;
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a - 714f), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_f_op_f32(select(arg_0.a, 584f, true)))))));
    var var_2 = _wgslsmith_mod_u32(var_1, 0u);
    return !arg_0.b.a.x;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(select(_wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(20055u, 1u)), u_input.a, true || func_3(Struct_2(-1000f, Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, u_input.a, 53444u, u_input.a), vec3<bool>(false, false, false))), vec2<u32>(u_input.a, u_input.a))) < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a) >> (abs(vec4<u32>(u_input.a, 53526u, 4294967295u, 22155u)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), Struct_1(vec2<bool>((u_input.a >= 19354u) | true, func_3(Struct_2(global0.x, Struct_1(vec2<bool>(false, false), vec4<u32>(28080u, 1u, 0u, 31932u), vec3<bool>(false, true, false))), min(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 1u)))), ~(~select(vec4<u32>(u_input.a, 1u, 8622u, 0u), vec4<u32>(0u, 0u, 22462u, 0u), vec4<bool>(false, true, false, true))), vec3<bool>(select(true, true, true), any(vec3<bool>(false, true, false)), !func_3(Struct_2(-1897f, Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec3<bool>(false, false, false))), vec2<u32>(u_input.a, u_input.a)))), ((_wgslsmith_clamp_vec3_i32(vec3<i32>(-21719i, 8860i, 1i), vec3<i32>(21852i, u_input.b.x, u_input.b.x), u_input.b.zxy) & _wgslsmith_sub_vec3_i32(u_input.b.wxz, u_input.b.www)) ^ (vec3<i32>(62251i, -66138i, u_input.b.x) | -vec3<i32>(u_input.b.x, 2147483647i, -2147483647i))) | abs(~u_input.b.xxy), all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)))));
    var_0 = Struct_3(false, Struct_1(!select(select(var_0.b.c.zz, var_0.b.a, var_0.b.c.x), !vec2<bool>(var_0.d, var_0.b.c.x), var_0.b.a), firstTrailingBit(~(~vec4<u32>(71164u, 20652u, 29536u, var_0.b.b.x))), var_0.b.c), vec3<i32>(firstTrailingBit(-_wgslsmith_mult_i32(-30492i, 18214i)), _wgslsmith_dot_vec3_i32(countOneBits(min(vec3<i32>(0i, 2147483647i, -64351i), vec3<i32>(7933i, -67921i, u_input.b.x))), u_input.b.yyy), -4556i), true);
    let var_1 = var_0.b;
    var_0 = Struct_3(var_1.c.x, var_0.b, var_0.c, false);
    var_0 = Struct_3(func_3(Struct_2(_wgslsmith_f_op_f32(-global0.x), Struct_1(var_1.a, ~vec4<u32>(u_input.a, 41712u, 4294967295u, 4294967295u), var_0.b.c)), var_1.b.zw), var_0.b, _wgslsmith_clamp_vec3_i32(min(u_input.b.zzy, u_input.b.wxz), vec3<i32>(1i, u_input.b.x, -16290i), ~vec3<i32>(u_input.b.x & 2147483647i, ~(-1i), _wgslsmith_sub_i32(41837i, -33619i))), any(!(!(!vec4<bool>(var_0.a, false, var_0.b.c.x, var_0.b.a.x)))));
    return var_0.c.x << ((var_1.b.x ^ var_0.b.b.x) % 32u);
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(4294967295u, u_input.a))), vec2<u32>((u_input.a ^ u_input.a) ^ 14371u, u_input.a) >> (~(~(~vec2<u32>(32127u, 3854u))) % vec2<u32>(32u)));
    return Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec4<u32>(~1u, u_input.a, 1u, u_input.a), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), true), vec3<bool>(all(vec2<bool>(true, true)), true, !all(vec2<bool>(true, false))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(true, firstLeadingBit(vec3<i32>(firstTrailingBit(-41471i), ~_wgslsmith_dot_vec3_i32(u_input.b.zwx, vec3<i32>(-1i, 2147483647i, -8716i)), u_input.b.x)), func_4(-(-1i ^ abs(u_input.b.x)), func_2()), Struct_3(true, func_4(0i, u_input.b.x), vec3<i32>(firstLeadingBit(-2147483647i) << ((0u << (u_input.a % 32u)) % 32u), reverseBits(u_input.b.x) << (60852u % 32u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -1i), u_input.b.x ^ u_input.b.x)), true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(572f))), func_4(~_wgslsmith_sub_i32(abs(u_input.b.x), _wgslsmith_mult_i32(-2147483647i, u_input.b.x)), ~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, var_0.b.x) >> (var_0.d.b.b % vec4<u32>(32u)))));
    var var_2 = -1355f;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 139f, var_1.a, -1158f)))) * vec4<f32>(-532f, -439f, _wgslsmith_f_op_f32(ceil(203f)), _wgslsmith_div_f32(var_1.a, 433f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1651f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - var_1.a)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a, -169f)))), var_1.a));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(min(global0.x, 411f))), -608f)))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1508f, -393f) + -326f)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 286f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, global0.x, 1078f, 1421f) - vec4<f32>(global0.x, -151f, global0.x, global0.x))) * vec4<f32>(-247f, _wgslsmith_f_op_f32(-636f - -1000f), global0.x, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1000f, 100f, global0.x), vec4<f32>(global0.x, global0.x, -878f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, global0.x, -436f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), !any(vec2<bool>(true, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-2092f * 624f), _wgslsmith_f_op_f32(round(243f)), _wgslsmith_div_f32(1307f, -635f), _wgslsmith_div_f32(global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -625f, global0.x, 387f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, -343f, 1000f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(floor(1105f)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(486f)))))));
    let var_0 = ~select(vec2<u32>(~17506u, u_input.a), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)) ^ (~vec2<u32>(u_input.a, 25861u) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)));
    let var_1 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yx << (var_0 % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec2_i32(min(vec2<i32>(2147483647i, u_input.b.x), u_input.b.zy), u_input.b.zw)) >= countOneBits(u_input.b.x), Struct_1(vec2<bool>(true, func_4(1i, firstLeadingBit(-1389i)).a.x), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(func_4(-2166i, u_input.b.x).b, vec4<u32>(41768u, u_input.a, 9995u, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 61082u, 1u, var_0.x), vec4<u32>(1u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(var_0.x, 60079u, 0u, 7461u))), vec3<bool>(true, true, all(vec2<bool>(true, true)))), u_input.b.xxz, any(func_4(_wgslsmith_mult_i32(-35397i, -1i << (u_input.a % 32u)), u_input.b.x ^ firstTrailingBit(17165i)).c));
    let var_2 = Struct_2(global0.x, var_1.b);
    var var_3 = vec2<i32>(2147483647i >> (_wgslsmith_sub_u32((0u & var_1.b.b.x) & 1u, select(countOneBits(u_input.a), 4294967295u, true)) % 32u), 23577i);
    let var_4 = vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.b.x, u_input.a) ^ vec2<u32>(0u, 1u), var_2.b.b.yy)), ~14783u, 1u);
    let var_5 = func_4(~(-var_1.c.x), ~abs(u_input.b.x)).c;
    var var_6 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1170f, _wgslsmith_div_f32(var_2.a, global0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(15851u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(global0.x * global0.x))))), (~min(var_2.b.b, vec4<u32>(var_4.x, 51001u, 35438u, var_0.x)) ^ ~vec4<u32>(var_2.b.b.x, 57783u, 4294967295u, var_4.x)) & vec4<u32>((var_2.b.b.x << (var_1.b.b.x % 32u)) >> (~31387u % 32u), ~abs(0u), abs(4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 13394u, 0u), var_1.b.b.zxy) % 32u), var_2.b.b.x | var_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(var_2.a + global0.x)))));
}

