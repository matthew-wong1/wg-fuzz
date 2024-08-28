struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 17> = array<bool, 17>(true, true, false, true, false, true, true, true, true, true, false, false, false, false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    return select(!vec3<bool>(1i <= ~global1.x, global2[_wgslsmith_index_u32(1u, 17u)], !(!global2[_wgslsmith_index_u32(31169u, 17u)])), select(vec3<bool>(false, false, true), !(!vec3<bool>(global2[_wgslsmith_index_u32(53156u, 17u)], false, false)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) != u_input.a.x), global2[_wgslsmith_index_u32(u_input.a.x, 17u)]);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = vec4<u32>(u_input.a.x, ~(~(~(~0u))), firstLeadingBit(u_input.a.x), u_input.a.x);
    global2 = array<bool, 17>();
    global0 = array<vec4<u32>, 1>();
    global0 = array<vec4<u32>, 1>();
    let var_1 = 94103u;
    return _wgslsmith_f_op_vec3_f32(exp2(arg_0));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<vec4<u32>, 1>();
    var var_0 = arg_2.c;
    global1 = ~vec4<i32>(~(~1i), 53521i, -2147483647i, -u_input.b.x ^ global1.x);
    global0 = array<vec4<u32>, 1>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2477f)), _wgslsmith_f_op_f32(round(2307f)), false)))));
    return Struct_2(Struct_1(var_0.a, var_0.b), max(~arg_2.b, arg_0.a), u_input.a.wz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, 2491f, -539f, 865f) * vec4<f32>(var_0.b, arg_2.c.b, var_0.b, 1145f)) * vec4<f32>(-774f, 1000f, -2798f, -1656f)) * vec4<f32>(-629f, -497f, _wgslsmith_f_op_f32(-arg_2.c.b), -732f)) - vec4<f32>(var_0.b, _wgslsmith_div_f32(var_0.b, 1971f), -1285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(493f, 1194f)) - _wgslsmith_f_op_f32(max(-598f, 828f))))), !select(reverseBits(global1.x) > arg_1, select(arg_3.x, true, global2[_wgslsmith_index_u32(27944u, 17u)]) & !arg_3.x, all(!vec4<bool>(true, false, true, arg_3.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_3;
    var var_1 = any(vec2<bool>(!(!(!global2[_wgslsmith_index_u32(0u, 17u)])), arg_3.e));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(942f + -290f))) - 648f)), _wgslsmith_f_op_f32(-2216f * 733f));
    var_1 = var_0.e;
    var_0 = Struct_2(func_4(Struct_5(countOneBits(~48178u)), ~(-1730i), Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, var_0.a.b)), _wgslsmith_f_op_vec3_f32(abs(arg_0.zxy)), _wgslsmith_sub_vec3_i32(vec3<i32>(-12474i, arg_2, u_input.b.x), global1.www)), max(u_input.a.x, u_input.a.x), arg_3.a, arg_1.ywx), select(vec2<bool>(true, false | var_0.e), vec2<bool>(false, any(vec3<bool>(arg_3.e, true, true))), vec2<bool>(true, false))).a, reverseBits(arg_3.c.x), ~vec2<u32>(~_wgslsmith_add_u32(arg_3.c.x, 1u), ~59740u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 480f) + _wgslsmith_f_op_f32(-1130f + var_0.a.b)), arg_0.x)), !any(vec4<bool>(true, true, true, true)) != ((_wgslsmith_f_op_f32(sign(var_0.a.b)) < _wgslsmith_f_op_f32(-arg_1.x)) && !(arg_0.x > 1659f)));
    return Struct_4(Struct_3(vec2<f32>(-515f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(floor(arg_0.x))))), vec3<f32>(174f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.x, var_0.d.x))), -1374f), vec3<i32>(func_4(Struct_5(193u), select(arg_2, u_input.b.x, global2[_wgslsmith_index_u32(var_0.c.x, 17u)]), Struct_4(Struct_3(arg_0.zx, vec3<f32>(916f, 1000f, -299f), vec3<i32>(-4025i, 1i, arg_3.a.a)), var_0.b, arg_3.a, var_2.wwz), vec2<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true)).a.a, ~_wgslsmith_mod_i32(-10154i, 2147483647i), 0i)), arg_3.c.x, arg_3.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_1.yww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -3191f, var_0.a.b)), arg_3.e, func_2(vec3<f32>(1369f, arg_0.x, -317f)))) - var_2.wzw))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> bool {
    var var_0 = vec3<i32>(arg_0.x << (69135u % 32u), 3230i, _wgslsmith_clamp_i32(global1.x, 1i, arg_0.x));
    global2 = array<bool, 17>();
    var var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(max(-1538f, arg_3.x)), -160f, _wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, !(arg_3.x == 299f))), -1090f), arg_3, arg_2.x, func_4(Struct_5(u_input.a.x), 1i, Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(arg_3.zw + vec2<f32>(arg_3.x, arg_3.x)), _wgslsmith_div_vec3_f32(arg_3.zxz, vec3<f32>(1000f, arg_3.x, arg_3.x)), firstTrailingBit(vec3<i32>(u_input.b.x, var_0.x, 0i))), ~reverseBits(arg_1.x), Struct_1(_wgslsmith_mod_i32(1i, 3997i), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, arg_3.x, -212f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec3<f32>(arg_3.x, arg_3.x, arg_3.x))), true, func_2(arg_3.xyx)))), vec2<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(77901u, 17u)])), func_2(_wgslsmith_f_op_vec3_f32(-arg_3.zzx)).x)));
    var_1 = Struct_4(var_1.a, arg_1.x, func_4(Struct_5(_wgslsmith_clamp_u32(~u_input.a.x, var_1.b, 4294967295u)), min(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -1i), firstLeadingBit(vec2<i32>(global1.x, -25503i))), var_1.a.c.x << (14106u % 32u)), Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, -2259f)), var_1.d, _wgslsmith_clamp_vec3_i32(global1.zwz, var_1.a.c, global1.zwy)), u_input.a.x, Struct_1(func_4(Struct_5(var_1.b), 51158i, Struct_4(var_1.a, 4294967295u, Struct_1(-27391i, var_1.a.a.x), arg_3.xwy), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 17u)], false)).a.a, arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(818f - arg_3.x))), vec2<bool>(true, true)).a, arg_3.zwy);
    var var_2 = var_1.a;
    return !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, var_1.a.a.x, arg_3.x))) - arg_3.yww))).x;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(func_5(_wgslsmith_div_vec4_f32(vec4<f32>(336f, arg_0, -1000f, arg_0), vec4<f32>(731f, -247f, arg_0, -323f)), vec4<f32>(-749f, arg_0, arg_0, -814f), -2147483647i, func_4(Struct_5(u_input.a.x), 0i, Struct_4(Struct_3(vec2<f32>(arg_0, arg_0), vec3<f32>(-849f, arg_0, arg_0), vec3<i32>(18081i, -1i, global1.x)), u_input.a.x, Struct_1(u_input.b.x, arg_0), vec3<f32>(arg_0, arg_0, 957f)), arg_1.xw)).d.x, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-771f, 278f, -1150f) + vec3<f32>(arg_0, arg_0, arg_0)), vec3<f32>(arg_0, arg_0, arg_0), any(arg_1), vec3<bool>(arg_1.x, true, true))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-607f)) - arg_0)));
    let var_1 = countOneBits(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 13208u))), u_input.a.x, max(~57943u, _wgslsmith_div_u32(4294967295u, 1u)))));
    var var_2 = 14740i;
    var var_3 = func_1(vec4<i32>(2147483647i, (u_input.b.x << (49233u % 32u)) & u_input.b.x, 23116i, u_input.b.x), select(abs(_wgslsmith_mult_vec2_u32(u_input.a.zx, var_1.zx)), u_input.a.zy, func_2(var_0).yx), -global1.yxy | _wgslsmith_mult_vec3_i32(global1.wyw & global1.xwx, global1.xzy), vec4<f32>(arg_0, 279f, var_0.x, func_4(Struct_5(1u), func_5(vec4<f32>(671f, arg_0, var_0.x, var_0.x), vec4<f32>(arg_0, var_0.x, arg_0, 517f), -1i, Struct_2(Struct_1(u_input.b.x, -226f), 31461u, vec2<u32>(30683u, 1u), vec4<f32>(-1000f, 409f, arg_0, var_0.x), false)).a.c.x, func_5(vec4<f32>(-1097f, arg_0, 744f, 434f), vec4<f32>(653f, 1490f, 159f, arg_0), 0i, Struct_2(Struct_1(0i, 1752f), u_input.a.x, u_input.a.yx, vec4<f32>(arg_0, 304f, arg_0, -253f), true)), func_2(vec3<f32>(-642f, var_0.x, -170f)).yz).a.b)) & false;
    var var_4 = global1.x;
    return vec2<bool>(arg_1.x, arg_0 == var_0.x);
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_4 {
    global2 = array<bool, 17>();
    global0 = array<vec4<u32>, 1>();
    var var_0 = arg_1.a.b;
    global2 = array<bool, 17>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(max(arg_1.c.x, u_input.a.x), 1u), ~arg_1.b, func_5(_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(arg_1.a.b, -1620f, arg_1.a.b, arg_1.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -1095f, -1649f, arg_1.d.x)), abs(global1.x), Struct_2(Struct_1(2147483647i, arg_1.a.b), u_input.a.x, max(u_input.a.wx, vec2<u32>(1u, 63739u)), vec4<f32>(arg_1.a.b, arg_1.d.x, -1000f, arg_1.a.b), true)).b, ~50521u), select(global0[_wgslsmith_index_u32(1u, 1u)] ^ vec4<u32>(arg_1.b, ~arg_1.c.x, 0u, _wgslsmith_add_u32(arg_1.b, 83634u)), vec4<u32>(4294967295u, ~u_input.a.x, 69460u ^ func_5(arg_1.d, arg_1.d, arg_1.a.a, arg_1).b, ~(~37696u)), arg_1.e)), 1u)];
    return func_5(arg_1.d, _wgslsmith_f_op_vec4_f32(abs(arg_1.d)), arg_1.a.a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1372f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -400f))))), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], false, 167854u < u_input.a.x, false), !vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(17042u, 17u)]), func_1(select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 10693i), vec4<i32>(-1i, 6605i, -20597i, global1.x), true), u_input.a.yx & vec2<u32>(u_input.a.x, u_input.a.x), ~vec3<i32>(-2147483647i, global1.x, -2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-117f, 1244f, 635f, 395f), vec4<f32>(2485f, 1090f, 113f, -350f), false))))), func_4(Struct_5(0u), ~firstTrailingBit(max(-54513i, u_input.b.x)), Struct_4(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1348f, 675f, 428f, 1509f) + vec4<f32>(-228f, 1979f, -677f, 205f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(403f, -494f, -1155f, 1000f), vec4<f32>(691f, -597f, 233f, 1934f), false)), u_input.b.x, func_4(Struct_5(u_input.a.x), global1.x, Struct_4(Struct_3(vec2<f32>(-396f, -538f), vec3<f32>(-489f, -1000f, 1112f), global1.yzw), u_input.a.x, Struct_1(5649i, -361f), vec3<f32>(-434f, -1008f, -445f)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]))).a, _wgslsmith_add_u32(56558u, 0u) & u_input.a.x, func_5(_wgslsmith_div_vec4_f32(vec4<f32>(1089f, -895f, 515f, -841f), vec4<f32>(1116f, 652f, -1146f, 741f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, 1292f, -1323f, -794f) - vec4<f32>(312f, -461f, -106f, -1000f)), u_input.b.x, func_4(Struct_5(u_input.a.x), 0i, Struct_4(Struct_3(vec2<f32>(184f, -692f), vec3<f32>(217f, -917f, -802f), vec3<i32>(u_input.b.x, -1i, -23603i)), 40329u, Struct_1(1i, -225f), vec3<f32>(1000f, 2396f, 1098f)), vec2<bool>(true, global2[_wgslsmith_index_u32(33568u, 17u)]))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, -323f, -456f)))), func_6(223f, !(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)])))));
    global0 = array<vec4<u32>, 1>();
    let var_1 = Struct_2(Struct_1(-30260i, var_0.d.x), ~1u, vec2<u32>(u_input.a.x, ~0u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, var_0.c.b, -289f, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, -615f, 636f, -1066f))))))), global2[_wgslsmith_index_u32(func_7(vec2<bool>(u_input.a.x >= u_input.a.x, any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], false))), Struct_2(var_0.c, var_0.b ^ _wgslsmith_mult_u32(u_input.a.x, 1u), vec2<u32>(var_0.b, var_0.b), vec4<f32>(func_5(vec4<f32>(var_0.a.b.x, var_0.d.x, var_0.d.x, 183f), vec4<f32>(138f, -255f, var_0.c.b, 518f), u_input.b.x, Struct_2(var_0.c, 4294967295u, u_input.a.yx, vec4<f32>(-439f, 1000f, var_0.d.x, var_0.d.x), false)).d.x, _wgslsmith_f_op_f32(trunc(var_0.c.b)), -1228f, var_0.d.x), false)).b, 17u)]);
    var var_2 = Struct_5(var_0.b);
    let var_3 = var_0;
    global0 = array<vec4<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a ^ u_input.a)), ~u_input.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_0.b, 42062u, 59712u), u_input.a), 1u, ~0u, ~4294967295u), ~global0[_wgslsmith_index_u32(~var_2.a, 1u)]) % vec4<u32>(32u)), ~u_input.a, ~1i);
}

