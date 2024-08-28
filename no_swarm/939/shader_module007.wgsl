struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec4<f32>) -> Struct_4 {
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    let var_0 = -vec2<i32>((u_input.d ^ min(u_input.d, u_input.d)) & _wgslsmith_clamp_i32(min(15555i, u_input.d), countOneBits(1i), 2581i), i32(-1i) * -(u_input.d >> (u_input.a % 32u)));
    global0 = true;
    let var_1 = firstLeadingBit(~(arg_2 << (arg_2 % 32u)));
    let var_2 = ~min(16316i, -var_0.x);
    global0 = !all(vec2<bool>(true, all(vec2<bool>(true, false))));
    return _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(var_0.x, var_0.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_2(arg_1.a);
    global0 = u_input.d <= -5193i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-899f, arg_0.x, arg_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, 311f)), arg_0.x))));
    var var_2 = (u_input.d ^ (countOneBits(u_input.d) | func_3(Struct_2(var_0.a), func_2(Struct_4(Struct_1(var_0.a, arg_2, vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<u32>(u_input.b, 27082u, u_input.a, u_input.c.x), vec2<bool>(false, var_0.a)), vec3<bool>(arg_1.a, true, true), vec2<bool>(arg_1.a, false)), arg_0.x, arg_3), reverseBits(119876u), vec4<bool>(arg_1.a, arg_1.a, var_0.a, true)))) << (u_input.b % 32u);
    var_2 = -19473i;
    return Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f))), vec4<bool>(var_0.a, !arg_1.a || (423i > u_input.d), arg_1.a, false), vec4<u32>(countOneBits(u_input.c.x), ~_wgslsmith_div_u32(1u, u_input.a), ~4294967295u, ~(~u_input.b)), !(!func_2(Struct_4(Struct_1(false, -2005f, vec4<bool>(var_0.a, false, arg_1.a, var_0.a), vec4<u32>(u_input.c.x, 1u, 29609u, 0u), vec2<bool>(true, false)), vec3<bool>(true, arg_1.a, false), vec2<bool>(arg_1.a, true)), 214f, arg_3).b.xz)), all(vec2<bool>(true, true)) || true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_3) -> Struct_4 {
    var var_0 = ~countOneBits(u_input.b);
    let var_1 = vec4<i32>(40467i, 2147483647i, ~(-26682i), 1i);
    var_0 = arg_1.d.d.x;
    var_0 = arg_2.a.d.x;
    let var_2 = arg_2;
    return func_2(Struct_4(arg_2.a, arg_1.c.c.xxw, var_2.a.c.wz), -1000f, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1643f + 1367f)))), -1075f, -738f, _wgslsmith_f_op_f32(trunc(462f))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, arg_3.b, arg_0.a.b)))), vec3<f32>(-1727f, _wgslsmith_f_op_f32(sign(-1501f)), arg_0.a.b)))), Struct_2(false), arg_0.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(418f, arg_3.b, -1983f, arg_3.b))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b, arg_3.b, arg_0.a.b, arg_0.a.b), vec4<f32>(665f, arg_3.b, -1000f, -445f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2057f, arg_3.b, 856f, arg_0.a.b)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_3.b, arg_0.a.b, arg_3.b))))))).a.d.wz;
    var var_1 = -_wgslsmith_add_i32(-27573i, -17225i);
    var_0 = ~vec2<u32>(36621u, (0u >> (0u % 32u)) >> ((~arg_1.x | ~arg_1.x) % 32u));
    global0 = !(!arg_3.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) * _wgslsmith_f_op_f32(258f - -444f)), 1291f)), arg_0.a.b, _wgslsmith_f_op_f32(abs(func_1(vec3<f32>(-775f, arg_3.b, 133f), Struct_2(true), func_1(vec3<f32>(1147f, 1000f, arg_3.b), Struct_2(false), 1000f, vec4<f32>(203f, 722f, arg_0.a.b, arg_3.b)).a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_0.a.b, arg_3.b, arg_0.a.b))).a.b))));
    return arg_0.a.d.x;
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: bool) -> bool {
    var var_0 = arg_2.x;
    var_0 = abs(~(~_wgslsmith_add_u32(u_input.c.x << (22088u % 32u), ~0u)));
    var var_1 = Struct_4(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.b, -2097f, _wgslsmith_f_op_f32(-2971f - arg_1.c.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.c.b, -556f) - vec3<f32>(1369f, arg_1.c.b, -398f))), Struct_2(arg_1.c.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1004f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, arg_1.a.a.b, false))), arg_1.d.b, _wgslsmith_f_op_f32(f32(-1f) * -1524f), arg_1.a.a.b)).a, !vec3<bool>(!(arg_3 && arg_3), select(true, false, true), !any(arg_1.c.c.yzy)), arg_1.d.c.zz);
    global0 = !(!func_2(Struct_4(func_4(vec3<i32>(-2147483647i, u_input.d, 0i), Struct_5(arg_1.a, -845f, arg_1.a.a, arg_1.c, vec4<u32>(1u, arg_0, var_1.a.d.x, var_1.a.d.x)), Struct_3(Struct_1(arg_1.d.e.x, arg_1.a.a.b, var_1.a.c, vec4<u32>(arg_1.d.d.x, 62007u, arg_1.d.d.x, u_input.a), var_1.a.c.xx), arg_1.a.a.a)).a, !vec3<bool>(false, false, arg_3), vec2<bool>(true, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) * var_1.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(227f, -1162f, 814f, -886f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.b, 222f, var_1.a.b, 109f)))).a.e.x);
    var var_2 = func_4(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(u_input.d), u_input.d, _wgslsmith_sub_i32(-2147483647i, u_input.d)), min(-vec3<i32>(u_input.d, u_input.d, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 0i, -25105i), vec3<i32>(u_input.d, u_input.d, -2147483647i))) ^ ~select(vec3<i32>(u_input.d, u_input.d, 1i), vec3<i32>(u_input.d, u_input.d, 55973i), false)), arg_1, arg_1.a);
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(func_4(vec3<i32>(u_input.d, -6936i, u_input.d), Struct_5(Struct_3(Struct_1(true, 372f, vec4<bool>(false, true, true, false), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a), vec2<bool>(false, false)), true), 1124f, Struct_1(false, 1538f, vec4<bool>(false, false, true, true), vec4<u32>(8369u, 46636u, u_input.c.x, u_input.b), vec2<bool>(false, true)), Struct_1(false, 464f, vec4<bool>(false, true, true, false), vec4<u32>(61289u, 14444u, 0u, 37438u), vec2<bool>(false, false)), vec4<u32>(u_input.a, u_input.a, 45075u, u_input.b)), func_1(vec3<f32>(1662f, -1000f, 915f), Struct_2(false), 1738f, vec4<f32>(1072f, -730f, -1618f, 417f))), vec4<u32>(u_input.a, _wgslsmith_sub_u32(u_input.b, u_input.c.x), u_input.a, 1u), (vec4<i32>(-33938i, 44617i, u_input.d, 0i) >> (vec4<u32>(6909u, 29296u, 60531u, 39489u) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.d, 35629i, -5118i, u_input.d), Struct_1(true, _wgslsmith_div_f32(1974f, 179f), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<u32>(u_input.a, 95121u, u_input.b, 96389u) ^ vec4<u32>(10777u, 27141u, u_input.c.x, 0u), vec2<bool>(true, true))) ^ u_input.a, Struct_5(Struct_3(Struct_1(select(true, true, true), -243f, func_1(vec3<f32>(720f, 663f, -539f), Struct_2(false), -491f, vec4<f32>(1201f, 890f, -970f, -703f)).a.c, vec4<u32>(0u, 15624u, u_input.c.x, u_input.b), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), any(vec3<bool>(true, true, false))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-332f, 561f, -402f))), Struct_2(u_input.a == u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -979f, -661f, 2650f)) + vec4<f32>(-302f, -742f, 781f, 159f))).a.b, Struct_1(true, 125f, func_4(-vec3<i32>(u_input.d, -2147483647i, -31883i), Struct_5(Struct_3(Struct_1(false, -407f, vec4<bool>(false, false, false, false), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 3600u), vec2<bool>(false, false)), true), -1056f, Struct_1(true, 440f, vec4<bool>(false, false, false, false), vec4<u32>(1u, 66391u, 0u, u_input.c.x), vec2<bool>(false, false)), Struct_1(false, 645f, vec4<bool>(true, true, false, true), vec4<u32>(23777u, 59041u, 87481u, 10359u), vec2<bool>(true, true)), vec4<u32>(u_input.b, u_input.a, 55842u, 0u)), func_1(vec3<f32>(685f, 514f, -1000f), Struct_2(false), 1890f, vec4<f32>(138f, 670f, 858f, -1193f))).a.c, vec4<u32>(~u_input.a, u_input.a, reverseBits(u_input.c.x), ~64964u), vec2<bool>(true, any(vec2<bool>(false, true)))), Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -206f), vec4<bool>(u_input.b > 0u, any(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, false, true))), select(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), select(vec4<u32>(u_input.c.x, u_input.a, u_input.a, 0u), vec4<u32>(10497u, 0u, 26052u, u_input.c.x), true), all(vec4<bool>(true, false, true, true))), vec2<bool>(true, true)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, -1000f, 3788f))), Struct_2(true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(821f + 156f), -2054f)), vec4<f32>(_wgslsmith_f_op_f32(select(1657f, -726f, false)), -1155f, _wgslsmith_f_op_f32(-222f + -1282f), _wgslsmith_f_op_f32(674f + 882f))).a.d), u_input.c.yz, any(select(func_4(vec3<i32>(16908i, 34343i, 37631i) & vec3<i32>(u_input.d, u_input.d, -1i), Struct_5(Struct_3(Struct_1(true, -802f, vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b), vec2<bool>(true, false)), true), 225f, Struct_1(false, -724f, vec4<bool>(true, false, true, true), vec4<u32>(u_input.a, 1983u, u_input.c.x, u_input.b), vec2<bool>(false, false)), Struct_1(true, 1000f, vec4<bool>(false, true, true, false), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<bool>(false, true)), vec4<u32>(23806u, u_input.a, u_input.c.x, u_input.b)), Struct_3(Struct_1(false, 1112f, vec4<bool>(false, true, false, false), vec4<u32>(4294967295u, u_input.b, 8748u, u_input.a), vec2<bool>(false, false)), false)).c, vec2<bool>(true, all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true))));
    global0 = !(!(-455f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(675f)) * _wgslsmith_f_op_f32(abs(354f)))));
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, -494f, -2932f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-338f, -959f, 701f), vec3<f32>(-1025f, -596f, 1144f))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1049f, _wgslsmith_f_op_f32(f32(-1f) * -907f), func_1(vec3<f32>(-1884f, -306f, 850f), Struct_2(false), -1000f, vec4<f32>(474f, 144f, 235f, -1157f)).a.b))), Struct_2(true), -1249f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f + _wgslsmith_f_op_f32(-686f + -1599f))), 646f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(vec3<f32>(-1000f, -1019f, -490f), Struct_2(false), -774f, vec4<f32>(674f, 1605f, -832f, -986f)).a.b), -254f), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, 1255f, 183f)), vec3<f32>(-336f, 226f, -724f)), Struct_2(all(vec2<bool>(true, false))), -1294f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 101f, -324f, 1040f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 644f, -132f, 592f)))).a.b)).a.c;
    global0 = any(select(!func_4(firstTrailingBit(vec3<i32>(u_input.d, 1i, -18502i)), Struct_5(Struct_3(Struct_1(false, -1040f, vec4<bool>(false, var_0.x, var_0.x, true), vec4<u32>(29796u, u_input.b, u_input.c.x, 41862u), vec2<bool>(false, var_0.x)), var_0.x), 286f, Struct_1(true, 1141f, vec4<bool>(true, var_0.x, var_0.x, true), vec4<u32>(4294967295u, 0u, 77072u, u_input.b), vec2<bool>(var_0.x, false)), Struct_1(var_0.x, 1694f, vec4<bool>(var_0.x, true, true, false), vec4<u32>(1u, u_input.a, 4294967295u, u_input.c.x), var_0.zw), vec4<u32>(30700u, u_input.b, 15285u, u_input.b)), Struct_3(Struct_1(var_0.x, -1000f, vec4<bool>(true, true, false, true), vec4<u32>(u_input.c.x, 1u, u_input.b, 1u), vec2<bool>(true, var_0.x)), false)).a.c, select(vec4<bool>(!var_0.x, var_0.x, func_6(u_input.b, Struct_5(Struct_3(Struct_1(var_0.x, 323f, vec4<bool>(true, false, false, false), vec4<u32>(0u, 58946u, u_input.b, u_input.a), var_0.wx), var_0.x), 778f, Struct_1(var_0.x, 799f, vec4<bool>(true, true, true, var_0.x), vec4<u32>(u_input.a, 0u, u_input.b, 38460u), var_0.yx), Struct_1(var_0.x, 512f, vec4<bool>(true, var_0.x, false, true), vec4<u32>(u_input.b, 78938u, u_input.b, u_input.c.x), var_0.yz), vec4<u32>(0u, u_input.c.x, 9706u, 0u)), u_input.c.yy, true), true && var_0.x), vec4<bool>(func_2(Struct_4(Struct_1(true, -1000f, vec4<bool>(false, true, var_0.x, true), vec4<u32>(1u, u_input.b, 0u, u_input.b), vec2<bool>(true, false)), var_0.xyx, var_0.xx), 1195f, vec4<f32>(582f, 693f, -320f, 388f)).a.a, false, any(vec3<bool>(var_0.x, var_0.x, true)), func_4(vec3<i32>(u_input.d, -25522i, 57359i), Struct_5(Struct_3(Struct_1(false, -1246f, vec4<bool>(false, false, false, var_0.x), vec4<u32>(16099u, u_input.b, u_input.a, u_input.c.x), vec2<bool>(var_0.x, true)), var_0.x), 355f, Struct_1(true, 1765f, vec4<bool>(var_0.x, var_0.x, true, false), vec4<u32>(u_input.a, 0u, u_input.a, 45094u), vec2<bool>(true, var_0.x)), Struct_1(var_0.x, 301f, vec4<bool>(false, false, true, false), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 27803u), vec2<bool>(true, var_0.x)), vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a)), Struct_3(Struct_1(false, 566f, vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<u32>(31450u, 24054u, 24422u, 33181u), vec2<bool>(var_0.x, var_0.x)), var_0.x)).a.c.x), vec4<bool>(var_0.x | false, var_0.x, !var_0.x, false && var_0.x)), vec4<bool>(!(!var_0.x), !(u_input.c.x < u_input.c.x), var_0.x, true)));
    var var_1 = func_2(func_2(func_4(vec3<i32>(select(-1i, u_input.d, false), firstLeadingBit(u_input.d), -38211i), Struct_5(func_1(vec3<f32>(-1328f, -309f, 494f), Struct_2(true), 496f, vec4<f32>(1565f, -588f, 355f, -842f)), _wgslsmith_f_op_f32(ceil(-1223f)), Struct_1(true, -647f, vec4<bool>(var_0.x, true, var_0.x, true), vec4<u32>(u_input.b, u_input.a, 25033u, u_input.b), var_0.yz), Struct_1(var_0.x, 783f, vec4<bool>(var_0.x, true, true, false), vec4<u32>(4294967295u, u_input.a, u_input.a, 43414u), var_0.wy), ~vec4<u32>(4294967295u, 23488u, u_input.a, 4294967295u)), Struct_3(func_2(Struct_4(Struct_1(var_0.x, -1000f, vec4<bool>(false, true, false, true), vec4<u32>(u_input.b, 4294967295u, 78783u, u_input.a), var_0.zz), vec3<bool>(true, var_0.x, var_0.x), var_0.wz), -2355f, vec4<f32>(1470f, 1068f, 2134f, -842f)).a, any(vec3<bool>(var_0.x, true, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, 1612f, 1508f, 1427f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(288f, 1879f, 737f, 229f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, 1415f, -2375f, 244f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1944f + 705f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1345f - -306f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1768f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1214f + 1130f) * _wgslsmith_f_op_f32(f32(-1f) * -1937f)), -382f)))).a.c;
    let var_2 = _wgslsmith_clamp_i32(u_input.d, ~u_input.d, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1366f)))))), 1429f, _wgslsmith_clamp_vec2_i32(~countOneBits(vec2<i32>(1i, u_input.d)), countOneBits(vec2<i32>(var_2, var_2)), max(vec2<i32>(u_input.d, var_2), vec2<i32>(-1i, -34716i)) ^ max(vec2<i32>(19135i, var_2), vec2<i32>(var_2, u_input.d))) >> (func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1063f, -283f, 1784f) + vec3<f32>(313f, 361f, 580f)))), Struct_2(!var_0.x), 1729f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1845f, -1885f, -1727f, 1901f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, -493f, 982f, -874f) * vec4<f32>(176f, 686f, 472f, 194f)))).a.d.zx % vec2<u32>(32u)), -1i);
}

