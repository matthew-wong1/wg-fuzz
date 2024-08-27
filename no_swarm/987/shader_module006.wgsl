struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global0 = select(vec4<bool>(!arg_1, all(vec3<bool>(true, !arg_3.c, false)), true, all(!(!arg_2.xx))), vec4<bool>(true, arg_3.c, all(select(arg_2.yx, select(arg_2.yz, arg_2.xz, false), arg_2.x || arg_1)), arg_2.x && all(!vec3<bool>(arg_2.x, false, true))), vec4<bool>(arg_3.c, true & !(false & arg_2.x), arg_2.x, any(select(vec3<bool>(arg_1, arg_2.x, arg_3.c), vec3<bool>(arg_1, global0.x, true), global0.x))));
    global0 = select(!vec4<bool>(all(global0.xz), false, all(select(vec2<bool>(false, arg_1), arg_2.zz, vec2<bool>(true, global0.x))), arg_1 && any(global0.xxz)), vec4<bool>(all(select(!arg_2, select(vec3<bool>(false, arg_1, true), arg_2, vec3<bool>(global0.x, arg_2.x, true)), global0.xzz)), any(vec4<bool>(all(global0.zxy), false, any(vec2<bool>(false, true)), arg_2.x)), !(_wgslsmith_div_u32(arg_0, u_input.b.x) <= 1u), arg_2.x), !all(vec4<bool>(true, true, !arg_1, arg_3.c)));
    global0 = !select(!select(vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(true, false, true, arg_3.c), select(vec4<bool>(global0.x, global0.x, arg_3.c, global0.x), vec4<bool>(global0.x, global0.x, true, arg_1), vec4<bool>(false, arg_2.x, arg_1, true))), vec4<bool>(all(select(vec2<bool>(false, true), arg_2.zz, false)), any(vec3<bool>(false, arg_2.x, true)), true, !(true || arg_1)), !(!(true & arg_1)));
    global0 = !(!select(!vec4<bool>(arg_2.x, arg_1, false, true), vec4<bool>(all(arg_2), arg_1, any(vec3<bool>(global0.x, true, arg_2.x)), any(vec4<bool>(false, false, false, false))), !vec4<bool>(true, true, false, arg_1)));
    global0 = vec4<bool>(arg_1, (_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_3.b, 1u, 65034u), vec4<u32>(u_input.b.x, arg_0, 1u, 0u))) ^ ~(~arg_0)) != (2285u ^ u_input.b.x), !arg_2.x, select(!select(arg_3.c, false, 996f < arg_3.a.x), any(global0.yx), all(vec2<bool>(all(vec4<bool>(arg_3.c, global0.x, global0.x, false)), true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1882f + _wgslsmith_f_op_f32(ceil(453f))) * _wgslsmith_f_op_f32(trunc(arg_3.e)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(17230u, all(vec2<bool>(global0.x, global0.x)), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, global0.x, true), global0.xxx, true)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1501f, 884f, -618f), vec3<f32>(-1070f, -1205f, 725f)), 1u, global0.x, ~vec4<i32>(u_input.c, 21066i, 0i, 18284i), 899f)))), -634f, vec3<bool>(global0.x, global0.x, all(vec4<bool>(all(vec4<bool>(true, false, false, global0.x)), all(global0.yyz), !global0.x, true && global0.x))));
    global0 = !select(!(!vec4<bool>(true, true, true, var_0.c.x)), vec4<bool>(all(var_0.c.zy), _wgslsmith_f_op_f32(sign(-1084f)) != _wgslsmith_f_op_f32(-var_0.a), select(any(global0.yyw), var_0.c.x, u_input.b.x > u_input.b.x), true | !var_0.c.x), false);
    global0 = vec4<bool>(true, true, select(!(true | global0.x), all(select(vec4<bool>(global0.x, global0.x, var_0.c.x, false), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, var_0.c.x, false, global0.x))) & any(select(vec4<bool>(global0.x, false, var_0.c.x, global0.x), vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(false, true, true, true))), false), all(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.c.x, false, var_0.c.x), false)));
    let var_1 = Struct_1(vec3<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)), ~1u, any(select(select(vec3<bool>(var_0.c.x, false, false), vec3<bool>(true, true, true), var_0.c.x), vec3<bool>(false, !var_0.c.x, var_0.c.x), !(u_input.b.x == 65186u))), _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(u_input.c, u_input.c), abs(_wgslsmith_div_i32(2147483647i, -2147483647i)), 10740i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c, -25260i, u_input.c), max(u_input.c, u_input.c))), (vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) << (_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, 26405u, u_input.b.x, u_input.a), u_input.b), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 54646u, 0u)) % vec4<u32>(32u))), 2408f);
    var var_2 = var_0.b == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(49720u, true, select(!var_0.c, vec3<bool>(true, global0.x, var_1.c), !global0.zzx), Struct_1(var_1.a, max(108389u, 4294967295u), !var_1.c, vec4<i32>(0i, 8175i, var_1.d.x, -1i), _wgslsmith_div_f32(var_1.a.x, var_0.a)))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(var_1.b, false, vec3<bool>(global0.x, true, global0.x), var_1))))), 299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e - var_1.a.x), _wgslsmith_f_op_f32(round(var_1.a.x)))))), 66797u & u_input.a, false, max(var_1.d, ~var_1.d), _wgslsmith_f_op_f32(-var_0.b));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = 13931i;
    global0 = !select(!(!select(vec4<bool>(false, arg_3.b, false, arg_3.b), vec4<bool>(arg_3.b, false, true, true), vec4<bool>(false, arg_1.c, true, global0.x))), vec4<bool>(global0.x, true, false, !arg_2.x), !select(select(vec4<bool>(false, false, true, arg_1.c), vec4<bool>(arg_3.b, arg_3.b, false, arg_1.c), arg_2.x), select(vec4<bool>(arg_3.b, false, true, arg_1.c), vec4<bool>(global0.x, arg_3.b, true, arg_2.x), vec4<bool>(arg_1.c, arg_1.c, false, true)), select(vec4<bool>(arg_1.c, false, false, global0.x), vec4<bool>(false, arg_1.c, false, true), vec4<bool>(arg_3.b, global0.x, global0.x, false))));
    var_0 = 48987i;
    let var_1 = ~u_input.b.wxy;
    let var_2 = arg_1;
    return Struct_5(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_sub_vec2_i32(arg_1.d.yx, firstTrailingBit(arg_1.d.zy)), !select(select(select(vec4<bool>(global0.x, arg_2.x, var_2.c, false), vec4<bool>(var_2.c, arg_3.b, true, false), false), vec4<bool>(var_2.c, false, true, arg_1.c), select(true, false, true)), vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_1.c, var_2.c, false, arg_1.c))), vec2<i32>((i32(-1i) * -10684i) >> (~var_2.b % 32u), arg_1.d.x) & select(vec2<i32>(u_input.c, -var_2.d.x), vec2<i32>(-2147483647i, select(var_2.d.x, 13911i, arg_2.x)), true), max((u_input.b.xxx ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(39153u, var_2.b, u_input.a))) | var_1, min(vec3<u32>(~1u, ~u_input.a, var_2.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 10455u, u_input.b.x, var_1.x), u_input.b), var_1.x | var_2.b, arg_1.b & var_2.b))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> Struct_5 {
    var var_0 = ~arg_0.e;
    let var_1 = Struct_3(func_2().e, func_2());
    var_0 = vec3<u32>(4294967295u, 25978u, _wgslsmith_add_u32(firstLeadingBit(arg_0.e.x), select(var_1.b.b, 4294967295u, any(arg_0.c))));
    var_0 = ~arg_1.e;
    var var_2 = true;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = func_5(func_4(-2426f, func_2(), select(!select(vec3<bool>(false, true, true), global0.zyx, arg_1.x), vec3<bool>(arg_1.x || arg_1.x, false, false), !arg_1), Struct_4(-1247f, true, countOneBits(reverseBits(vec2<i32>(22425i, u_input.c))), u_input.c)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - -1098f))), (~vec2<i32>(45484i, u_input.c) | -vec2<i32>(u_input.c, u_input.c)) & vec2<i32>(u_input.c, func_2().d.x), !vec4<bool>(true, true, true, arg_0), -(~(~vec2<i32>(1i, u_input.c))), vec3<u32>(24522u, ~u_input.a, u_input.b.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-func_5(func_5(Struct_5(var_0.a, vec2<i32>(var_0.b.x, u_input.c), var_0.c, vec2<i32>(-26775i, 1i), var_0.e), func_4(var_0.a, Struct_1(vec3<f32>(1812f, var_0.a, 1000f), var_0.e.x, true, vec4<i32>(var_0.b.x, 18003i, 21858i, -1i), -829f), global0.xzy, Struct_4(-1120f, false, var_0.d, u_input.c))), Struct_5(_wgslsmith_f_op_f32(max(-1260f, -847f)), var_0.d, vec4<bool>(global0.x, true, true, true), var_0.d & vec2<i32>(-2147483647i, 2147483647i), max(u_input.b.zwy, u_input.b.ywx))).a), true, var_0.b, -var_0.b.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))))), var_1.a, arg_1);
    let var_3 = 33391u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f));
    return Struct_2(_wgslsmith_f_op_f32(-var_2.a), var_0.a, var_0.c.ywy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.x, global0.zyw);
    let var_1 = vec3<i32>(max(u_input.c, u_input.c), -38473i, _wgslsmith_mult_i32(i32(-1i) * -39088i, 0i));
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1756f - _wgslsmith_f_op_f32(938f - 102f)))), var_0.a), true, var_1.yz, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, u_input.c), u_input.c), func_2().d.x));
    var var_3 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -911f), func_2(), var_0.c, Struct_4(_wgslsmith_f_op_f32(-func_1(false, !vec3<bool>(global0.x, true, true)).a), var_0.c.x, _wgslsmith_add_vec2_i32(max(var_1.xz, ~var_2.c), vec2<i32>(var_1.x, var_2.d)), 45489i));
    let var_4 = ~(~u_input.b.x) >> (~var_3.e.x % 32u);
    var_3 = Struct_5(-1847f, abs(var_2.c), vec4<bool>(var_3.c.x & true, true, false, false), vec2<i32>(_wgslsmith_mod_i32(1i, var_1.x ^ var_1.x) | func_4(var_0.a, func_2(), !vec3<bool>(global0.x, var_3.c.x, true), Struct_4(-504f, false, var_3.b, u_input.c)).d.x, -1i), vec3<u32>(var_4, _wgslsmith_clamp_u32(30730u, u_input.a, 56204u), _wgslsmith_add_u32(min(~u_input.a, _wgslsmith_sub_u32(u_input.b.x, 1u)), 0u)));
    global0 = !(!vec4<bool>(!any(global0.wzy), var_3.c.x, func_5(func_5(Struct_5(-297f, var_3.b, var_3.c, vec2<i32>(40184i, var_2.d), u_input.b.zwz), Struct_5(-432f, vec2<i32>(var_3.b.x, -2147483647i), vec4<bool>(true, true, var_0.c.x, false), var_3.d, vec3<u32>(0u, 33315u, 19528u))), Struct_5(-1360f, var_2.c, vec4<bool>(var_2.b, true, global0.x, var_3.c.x), vec2<i32>(2147483647i, 1i), vec3<u32>(4294967295u, u_input.a, var_4))).c.x, (var_3.a != -2493f) && true));
    var_3 = func_5(Struct_5(var_2.a, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), var_3.b.x), (15130i >> (var_3.e.x % 32u)) >> (var_3.e.x % 32u)), select(func_5(func_5(Struct_5(942f, var_2.c, var_3.c, vec2<i32>(var_2.d, -1i), u_input.b.xyw), Struct_5(-618f, vec2<i32>(2147483647i, u_input.c), vec4<bool>(false, false, false, true), vec2<i32>(var_2.c.x, 21815i), var_3.e)), func_4(-457f, Struct_1(vec3<f32>(-1000f, 1218f, -150f), 74457u, var_3.c.x, vec4<i32>(-2147483647i, 12712i, var_1.x, var_1.x), 574f), var_0.c, Struct_4(var_3.a, global0.x, vec2<i32>(var_1.x, 5723i), var_1.x))).c, select(var_3.c, !vec4<bool>(true, global0.x, var_3.c.x, var_3.c.x), var_3.c), var_3.c), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, var_2.c.x), 0i), _wgslsmith_dot_vec2_i32(var_1.yz ^ vec2<i32>(-37410i, 0i), var_1.xz)), u_input.b.wzy), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a * 801f), _wgslsmith_div_f32(144f, var_2.a)))), func_2(), !(!(!global0.yzx)), Struct_4(_wgslsmith_f_op_f32(floor(-515f)), any(!vec4<bool>(false, true, global0.x, false)), var_1.zy, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(54776u, max(var_3.e.x, 1u), ~(_wgslsmith_add_u32(u_input.a, var_4) ^ reverseBits(var_3.e.x)), _wgslsmith_mult_u32(var_4, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.a, 3425u), var_4 ^ u_input.b.x))), 1566f, func_2().a.x, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - var_3.a)))));
}

