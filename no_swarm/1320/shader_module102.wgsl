struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1366f, -1000f), vec3<i32>(14373i, -6088i, 1i), vec3<bool>(true, false, true), false, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    return global0.a.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(u_input.b.zw);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, _wgslsmith_div_vec3_u32(u_input.b.yyy, vec3<u32>(u_input.b.x, 4294967295u, 1u)), Struct_1(global0.a, vec3<i32>(-7029i, -58456i, -1i), global0.c, false, false)))), 1101f)) + global0.a.x);
    global0 = Struct_1(vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(sign(1215f))))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(abs(u_input.c.x), firstTrailingBit(u_input.c.x)), -u_input.a.x), ~min(21617i ^ global0.b.x, _wgslsmith_div_i32(u_input.a.x, global0.b.x)), (global0.b.x ^ -global0.b.x) | abs(select(u_input.c.x, -16725i, global0.d))), !select(vec3<bool>(arg_0, true, any(vec4<bool>(true, global0.e, arg_0, true))), select(!global0.c, global0.c, true), !select(vec3<bool>(false, false, true), global0.c, false)), true, all(vec3<bool>(false, true, false)));
    var_0 = Struct_3(abs(vec2<u32>(4294967295u, 0u) >> (var_0.a % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_3(true, vec3<u32>(var_0.a.x, u_input.b.x, 1u), Struct_1(vec2<f32>(479f, -811f), u_input.c, vec3<bool>(arg_0, false, global0.d), true, true))))), var_1, _wgslsmith_f_op_f32(ceil(-1065f)))));
    return Struct_2(global0.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(829f, -2381f), vec2<f32>(var_1, -183f)))), u_input.a.zwx, !vec3<bool>(false || global0.e, true, any(vec4<bool>(true, false, arg_0, arg_0))), any(select(select(global0.c.yz, global0.c.zy, global0.d), !vec2<bool>(true, global0.e), true)), false), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(select(var_2.x, global0.a.x, true))))), _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, -32123i, u_input.c.x), u_input.c ^ global0.b), select(vec3<bool>(!arg_0, true, select(global0.c.x, arg_0, true)), global0.c, global0.c), false, !(!(!global0.e))), -712f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = arg_2;
    let var_0 = select(arg_1.c, !vec3<bool>(arg_2.e, global0.d, arg_1.e), !(!vec3<bool>(all(vec4<bool>(arg_1.e, false, arg_2.e, true)), false, true)));
    let var_1 = Struct_3(vec2<u32>(41449u, _wgslsmith_sub_u32(u_input.b.x, 51085u)));
    global0 = arg_0.c;
    var var_2 = reverseBits(global0.b.yy);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-581f)) + _wgslsmith_f_op_f32(arg_1.a.x - 1f)), Struct_1(vec2<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), global0.b, vec3<bool>(!var_0.x, all(select(var_0.xz, vec2<bool>(var_0.x, true), global0.d)), true), false, arg_2.b.x != func_2(!var_0.x).c.b.x), func_2(true).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f * 1068f) * _wgslsmith_div_f32(571f, -959f)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = vec4<i32>(reverseBits(u_input.a.x), 18973i, arg_2.c.b.x, 7387i << (min(_wgslsmith_sub_u32(~u_input.b.x, reverseBits(148u)), ~(~18697u)) % 32u));
    var_0 = vec4<i32>(abs(u_input.a.x), u_input.c.x, var_0.x, func_4(func_2(arg_2.c.d), func_4(arg_2, arg_2.b, func_4(arg_2, arg_2.b, arg_2.b).c).c, arg_2.b).b.b.x);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.a.x, global0.a.x)) * _wgslsmith_f_op_vec2_f32(abs(global0.a))) + _wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(-arg_2.b.a)))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b.b.x, 45211i, -8866i), var_0.yxw ^ vec3<i32>(-23492i, -60902i, arg_2.b.b.x)), !(!(!global0.c)), global0.c.x, -12738i > ~(~(u_input.a.x >> (0u % 32u))));
    var_0 = vec4<i32>(~(global0.b.x >> (abs(1u) % 32u)), func_4(func_4(Struct_2(_wgslsmith_f_op_f32(exp2(arg_2.d)), arg_2.b, func_4(arg_2, arg_2.b, Struct_1(arg_2.c.a, vec3<i32>(-2147483647i, 0i, 26025i), vec3<bool>(false, global0.e, global0.c.x), arg_2.b.c.x, false)).c, 712f), arg_2.b, arg_2.b), arg_2.c, func_2(false).b).b.b.x, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c.x, u_input.c.x & ~1i, u_input.a.x), vec3<i32>(select(-1i, 770i, false), -27190i, -2147483647i) & u_input.a.xwx));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false).b.a.x - 217f) + -386f) + _wgslsmith_f_op_f32(abs(arg_0))) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, true)), ~vec3<u32>(4294967295u, 1u, 4294967295u), func_2(false).b))));
    return (~_wgslsmith_add_vec3_i32(~vec3<i32>(-41087i, arg_2.b.b.x, var_0.x), var_0.xwy) & u_input.c) >> (~vec3<u32>(u_input.b.x, 1u, ~(~u_input.b.x)) % vec3<u32>(32u));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 2147483647i;
    global0 = Struct_1(global0.a, func_5(-1000f, 847f, func_4(func_2(global0.d | global0.e), func_2(global0.c.x).c, func_2(select(global0.e, global0.d, true)).b)), vec3<bool>(any(vec4<bool>(global0.e, !global0.e, false, any(global0.c.zx))), global0.c.x, true), !global0.e, false);
    let var_1 = _wgslsmith_f_op_f32(func_4(func_2(false), Struct_1(vec2<f32>(-244f, -1001f), func_4(func_2(true), func_4(Struct_2(1000f, Struct_1(global0.a, global0.b, global0.c, false, global0.e), Struct_1(vec2<f32>(-1435f, 1014f), vec3<i32>(2147483647i, 6505i, global0.b.x), global0.c, false, false), global0.a.x), Struct_1(global0.a, global0.b, global0.c, false, false), Struct_1(vec2<f32>(-712f, -1000f), vec3<i32>(-2147483647i, -34359i, global0.b.x), vec3<bool>(false, global0.d, true), false, global0.e)).c, Struct_1(global0.a, global0.b, global0.c, global0.d, true)).b.b, !(!global0.c), all(vec3<bool>(global0.e, global0.e, global0.e)), all(func_4(Struct_2(805f, Struct_1(vec2<f32>(-322f, global0.a.x), vec3<i32>(global0.b.x, -9088i, u_input.c.x), global0.c, false, global0.c.x), Struct_1(vec2<f32>(-1872f, -1000f), u_input.a.yyx, vec3<bool>(true, global0.e, false), false, global0.d), 3301f), Struct_1(global0.a, vec3<i32>(-22934i, global0.b.x, -31011i), global0.c, global0.c.x, false), Struct_1(global0.a, global0.b, global0.c, false, global0.c.x)).b.c)), func_2(any(!vec3<bool>(true, global0.e, global0.e))).c).c.a.x - -1000f);
    var_0 = -32922i;
    var var_2 = abs(vec4<u32>(2030u, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~1u), u_input.b.x), _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), u_input.b.x ^ (~u_input.b.x << (~21631u % 32u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-20976i, u_input.c.x, u_input.c.x) ^ -global0.b), _wgslsmith_clamp_vec3_i32(func_4(Struct_2(global0.a.x, Struct_1(vec2<f32>(1000f, -436f), vec3<i32>(u_input.c.x, -13766i, u_input.a.x), vec3<bool>(false, global0.c.x, global0.e), global0.e, global0.c.x), Struct_1(global0.a, u_input.a.ywz, global0.c, global0.d, global0.d), -1000f), Struct_1(vec2<f32>(var_1, var_1), global0.b, vec3<bool>(true, true, false), global0.d, global0.e), func_2(global0.e).c).b.b, max(~vec3<i32>(global0.b.x, 31279i, u_input.c.x), u_input.c), global0.b)), global0.c, global0.c.x, true);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = !(!(!(arg_0.a.x > arg_0.a.x)));
    var var_1 = arg_1;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) - _wgslsmith_f_op_f32(global0.a.x + arg_3.b.a.x)) * global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-466f, 294f))), func_4(func_2(true), func_1(arg_2.x), Struct_1(global0.a, vec3<i32>(1i, arg_3.c.b.x, global0.b.x), arg_3.b.c, false, global0.e)).a)), global0.b | ~u_input.c, vec3<bool>(-func_1(40257u).b.x <= -42562i, !all(select(vec4<bool>(false, global0.c.x, false, arg_3.c.c.x), vec4<bool>(arg_3.b.d, arg_3.b.d, true, arg_3.b.c.x), arg_3.b.d)), all(arg_3.c.c.zy)), _wgslsmith_f_op_f32(-670f + _wgslsmith_f_op_f32(-global0.a.x)) != _wgslsmith_f_op_f32(-global0.a.x), !(~max(u_input.b.x, 0u) < _wgslsmith_dot_vec4_u32(vec4<u32>(43321u, 1u, 1u, var_1.a.x) | u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, arg_0.a.x), u_input.b))));
    let var_2 = 0u;
    let var_3 = all(select(!select(global0.c.yy, vec2<bool>(arg_3.c.e, true), vec2<bool>(true, true)), vec2<bool>(!all(vec2<bool>(false, false)), true), true));
    return func_1(0u);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.b.ywz;
    var_0 = firstTrailingBit(~(~vec3<u32>(~2715u, firstLeadingBit(1u), var_0.x)));
    let var_1 = Struct_3(max(var_0.xz, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), u_input.b.zyy), u_input.b.wyy), var_0.x)));
    var_0 = u_input.b.ywy;
    global0 = func_6(var_1, var_1, vec3<u32>(4294967295u ^ ~_wgslsmith_sub_u32(15302u, var_1.a.x), (44663u & var_0.x) | 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.ywx, ~vec3<u32>(5095u, var_1.a.x, 69423u), select(vec3<u32>(0u, 1u, u_input.b.x), u_input.b.wyw, global0.d)), select(u_input.b.zzz, u_input.b.xyx, arg_0.c))), Struct_2(arg_2.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1263f, global0.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))), select(-global0.b, global0.b, arg_0.c), vec3<bool>(any(vec4<bool>(false, false, true, false)), arg_0.c.x, true), arg_1.x, true), func_6(var_1, Struct_3(vec2<u32>(var_1.a.x, 28391u)), vec3<u32>(~4294967295u, 0u ^ var_0.x, u_input.b.x << (var_0.x % 32u)), func_4(func_2(false), arg_0, func_1(u_input.b.x))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -2159f) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(global0.a.x, 540f)), -948f)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.x, _wgslsmith_sub_i32(~0i, _wgslsmith_clamp_i32(arg_0.b.x, arg_0.b.x, global0.b.x)), ~global0.b.x), ~(~global0.b & u_input.c)), select(func_2(!global0.e).c.c, vec3<bool>(select(true, global0.d, arg_1.x) || true, select(global0.d, false, true) == true, ~4294967295u <= select(var_0.x, 32217u, false)), func_4(func_2(func_4(Struct_2(global0.a.x, Struct_1(vec2<f32>(arg_0.a.x, arg_2.x), vec3<i32>(arg_0.b.x, -60394i, -69172i), arg_1, false, arg_1.x), Struct_1(global0.a, global0.b, vec3<bool>(arg_0.d, arg_0.e, global0.d), arg_1.x, true), 1718f), arg_0, Struct_1(vec2<f32>(arg_2.x, global0.a.x), vec3<i32>(1i, 55025i, 0i), arg_0.c, false, true)).c.c.x), func_1(_wgslsmith_mult_u32(var_0.x, 18549u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1391f) * vec2<f32>(global0.a.x, 224f)), vec3<i32>(global0.b.x, 1i, 8556i) | arg_0.b, func_2(arg_1.x).c.c, any(vec3<bool>(true, false, true)), false)).b.c), (true || arg_1.x) == false, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = func_7(func_6(Struct_3(u_input.b.wy), Struct_3(select(vec2<u32>(1u, 30721u), vec2<u32>(u_input.b.x, u_input.b.x), true)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (u_input.b.yxy % vec3<u32>(32u)), u_input.b.wxw), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) + _wgslsmith_f_op_f32(-global0.a.x)), func_1(_wgslsmith_mult_u32(28656u, 0u)), Struct_1(vec2<f32>(global0.a.x, 1000f), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.a.x), vec3<i32>(global0.b.x, -1317i, global0.b.x)), select(global0.c, global0.c, global0.c), false, u_input.b.x < u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), func_4(func_2(any(select(vec4<bool>(true, false, true, global0.c.x), vec4<bool>(true, false, global0.e, false), vec4<bool>(true, false, global0.e, global0.e)))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.a))), abs(u_input.a.zyy), !global0.c, true, select(global0.c.x, true, true)), Struct_1(vec2<f32>(-465f, -776f), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, -2147483647i), firstTrailingBit(u_input.c)), vec3<bool>(true, global0.e, u_input.a.x > global0.b.x), (global0.e && global0.d) && (u_input.b.x > u_input.b.x), select(global0.e, any(global0.c.xz), true))).c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, -1292f, -666f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, global0.a.x, -375f))), vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, 142f, 267f), vec3<f32>(global0.a.x, global0.a.x, global0.a.x), true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, 518f, 1085f))) + vec3<f32>(global0.a.x, global0.a.x, 1725f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1131f, -1000f) * vec3<f32>(global0.a.x, 1000f, 347f)) - vec3<f32>(1061f, global0.a.x, -844f)))));
    var var_2 = func_2(!global0.e);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-280f, 702f, global0.a.x) - vec3<f32>(var_2.b.a.x, var_1.x, -278f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-596f, 261f, -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(false, u_input.b.ywx, Struct_1(vec2<f32>(global0.a.x, -610f), vec3<i32>(1i, u_input.c.x, 54035i), var_2.c.c, var_2.c.e, true))), -1000f, global0.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(-260f)), _wgslsmith_f_op_f32(func_3(var_2.b.e, u_input.b.xxx, var_2.b)), 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, -2036f, global0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1351f, -1788f)), vec3<bool>(true, global0.c.x, global0.d)))))));
    var_0 = all(!select(vec4<bool>(global0.d, global0.c.x, global0.e, global0.e), vec4<bool>(false, var_2.b.e, var_2.c.d, var_2.c.e), true)) || any(select(vec4<bool>(true, u_input.b.x >= 10726u, any(vec4<bool>(var_2.c.c.x, true, var_2.b.e, global0.d)), func_6(Struct_3(vec2<u32>(71971u, u_input.b.x)), Struct_3(vec2<u32>(14264u, 4294967295u)), vec3<u32>(75764u, u_input.b.x, u_input.b.x), Struct_2(-542f, var_2.c, Struct_1(vec2<f32>(-750f, var_1.x), global0.b, vec3<bool>(false, false, var_2.c.d), false, true), 980f)).c.x), !(!vec4<bool>(true, true, var_2.c.d, false)), !(!vec4<bool>(global0.c.x, false, global0.e, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

