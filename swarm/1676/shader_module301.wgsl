struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), true, !all(vec4<bool>(false, false, false, false)), false), false), select(vec4<bool>(false, !(792f <= arg_0), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, arg_0, 1840f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(667f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0), var_0.wxw)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -719f);
    let var_2 = Struct_4(~u_input.a.x, 744f, vec4<i32>(abs(abs(_wgslsmith_clamp_i32(0i, -1i, -1i))), 2147483647i, 20614i, ~(-_wgslsmith_sub_i32(2147483647i, 17656i))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1011f + -1719f), arg_0, -2144f, _wgslsmith_div_f32(var_1.x, -506f)), true, ~min(vec2<u32>(0u, u_input.a.x), u_input.a.yw), _wgslsmith_f_op_f32(round(1105f)), u_input.a.x >> (u_input.a.x % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, 1152f, -893f, var_1.x)), true && var_0.x, u_input.a.zz | countOneBits(vec2<u32>(13566u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1453f)), 52915u)), vec3<u32>(71454u, u_input.a.x, 1u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(427f, 737f))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1375f))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f) - -809f))))));
    var var_0 = Struct_2(arg_2, arg_2);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + var_0.b.d) - -2476f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_2.a)), !arg_2.b, _wgslsmith_clamp_vec2_u32(arg_2.c, arg_2.c << (~arg_2.c % vec2<u32>(32u)), var_0.b.c), -1906f, ~arg_1);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) - -153f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(2100f * 729f)) - _wgslsmith_f_op_f32(f32(-1f) * -1168f))), ~(~(1u ^ u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1), arg_0, u_input.a.zy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)), 37705u));
    global1 = 508f;
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a))), true, ~u_input.a.xw, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -144f)), u_input.a.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_f_op_f32(-arg_1.x)), func_2(_wgslsmith_f_op_f32(861f + 1000f), 1u, Struct_1(vec4<f32>(arg_1.x, var_0.a.x, 1253f, 1492f), var_0.b, u_input.a.yw, 1000f, var_0.e)).e, func_2(_wgslsmith_f_op_f32(-arg_1.x), u_input.a.x, Struct_1(arg_1, false, vec2<u32>(var_0.e, var_0.c.x), arg_1.x, 40737u)))), ~u_input.a);
    var_1 = Struct_3(Struct_2(var_1.a.b, func_2(var_1.a.b.a.x, _wgslsmith_clamp_u32(~var_0.c.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-134f, -961f, arg_1.x, 1000f), var_0.a), func_2(1093f, var_1.a.a.c.x, var_1.a.b).b, u_input.a.ww, -561f, min(var_0.e, var_0.e)))), ~select(vec4<u32>(firstLeadingBit(1u), max(var_1.a.b.e, 1u), ~37212u, var_1.b.x), max(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, u_input.a.x, 12092u, u_input.a.x), u_input.a)), !vec4<bool>(var_1.a.a.b, true, var_1.a.a.b, arg_0)));
    var var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(~0u, u_input.a.x, func_2(-699f, 1u, var_1.a.b).e, var_1.a.b.e)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(44909u, 0u, _wgslsmith_sub_u32(4294967295u, var_1.a.a.c.x), abs(7504u)), ~(~u_input.a), u_input.a ^ ~u_input.a));
    return !select(vec3<bool>(true, true, var_0.b), vec3<bool>(any(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, true, true, false), false)), !all(vec2<bool>(true, false)), (true || arg_0) | true), var_1.a.a.b);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = -712f;
    var var_2 = Struct_5(Struct_4(abs(arg_2), _wgslsmith_f_op_f32(func_2(1585f, u_input.a.x, Struct_1(vec4<f32>(-786f, -2670f, 602f, 558f), true, u_input.a.zy, -798f, u_input.a.x)).d - _wgslsmith_f_op_f32(trunc(-915f))), reverseBits(vec4<i32>(-24437i, _wgslsmith_clamp_i32(arg_3, arg_3, -2147483647i), arg_3, _wgslsmith_add_i32(-35280i, arg_3))), Struct_2(func_2(_wgslsmith_f_op_f32(213f + -1092f), u_input.a.x << (28677u % 32u), Struct_1(vec4<f32>(1509f, -801f, -102f, -1301f), var_0, u_input.a.yz, 1362f, arg_2)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, -869f, 1000f, -619f)), any(arg_1), vec2<u32>(17470u, u_input.a.x), func_2(975f, u_input.a.x, Struct_1(vec4<f32>(960f, -179f, -222f, 868f), false, u_input.a.xy, 1355f, 4294967295u)).a.x, ~arg_2)), _wgslsmith_clamp_vec3_u32(u_input.a.xww, countOneBits(min(vec3<u32>(u_input.a.x, 4294967295u, 1u), u_input.a.ywy)), ~vec3<u32>(u_input.a.x, 0u, 0u))), vec4<bool>(arg_0, false, select(~u_input.a.x >= (arg_2 ^ 18002u), true, arg_1.x), ((2147483647i | arg_3) & (arg_3 ^ arg_3)) <= arg_3), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_3, arg_3), vec3<i32>(arg_3, arg_3, arg_3))), ~countOneBits(vec3<i32>(arg_3, arg_3, arg_3)))), 32965i, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-711f, 1567f, 146f, 1000f))), false, _wgslsmith_add_vec2_u32(vec2<u32>(38263u, 14119u), u_input.a.xy), -242f, 28011u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1592f, 842f, -1138f, -1236f)), arg_0, vec2<u32>(u_input.a.x, 0u) | vec2<u32>(arg_2, 13284u), _wgslsmith_div_f32(-230f, -412f), arg_2)), select(u_input.a & select(u_input.a, vec4<u32>(12861u, u_input.a.x, arg_2, arg_2), arg_1), ~(~vec4<u32>(4294967295u, 24602u, u_input.a.x, arg_2)), !(!vec4<bool>(var_0, arg_1.x, arg_0, arg_1.x)))));
    var var_3 = var_2.a.d.b.a.zxz;
    let var_4 = _wgslsmith_f_op_f32(abs(var_3.x));
    return var_2.e.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 25167i;
    global1 = -468f;
    let var_1 = func_4(all(func_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-688f, 895f, 1000f, 1017f), vec4<f32>(-517f, -499f, -983f, -351f))))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), func_1(true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2225f, -1000f, 889f, -1060f)))).x, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u, select(35361u, _wgslsmith_sub_u32(0u, u_input.a.x), true), u_input.a.x), vec4<u32>(~(~1u), 4294967295u & _wgslsmith_mult_u32(36082u, u_input.a.x), reverseBits(21639u) >> (~u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 94829u), u_input.a.xz >> (vec2<u32>(94013u, 60929u) % vec2<u32>(32u))))), var_0);
    global1 = -138f;
    let var_2 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_1.a.x)), 0u, Struct_1(vec4<f32>(var_1.a.x, var_1.d, var_1.a.x, 2760f), all(vec3<bool>(true, false, false)), ~vec2<u32>(var_1.c.x, u_input.a.x), 561f, ~1u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.d, 835f, var_1.a.x))), var_1.b, ~(~vec2<u32>(var_1.c.x, 4294967295u)), _wgslsmith_f_op_f32(floor(1164f)), 31759u)), ~(~(~min(u_input.a, vec4<u32>(44350u, u_input.a.x, u_input.a.x, 1u)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -115f) - _wgslsmith_f_op_f32(var_2.a.a.a.x + -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.a.a.d, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(676f, var_1.a.x), _wgslsmith_div_f32(-1576f, 957f))))), _wgslsmith_div_i32(countOneBits(~(~var_0)), firstLeadingBit(var_0)), var_2.a.a.a.zxy);
}

