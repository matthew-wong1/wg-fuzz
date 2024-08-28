struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), -815f, arg_1.a, arg_2.c.a)) - vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(step(-241f, arg_1.a)), -1675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - arg_1.a) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - arg_2.c.a)))), 1173f) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)), var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.a)), -262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-157f, arg_2.c.a)))) + 144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + var_0.x) - _wgslsmith_f_op_f32(round(var_0.x))))));
    return !select(select(arg_1.c, !(!vec4<bool>(arg_0.d.x, arg_2.b, true, true)), false), arg_0.b.c.c, arg_1.d.x || all(arg_2.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool, arg_3: vec4<f32>) -> vec2<bool> {
    global0 = array<vec2<u32>, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 402f)) * -344f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(2926f - arg_0.x))));
    let var_1 = Struct_2(!vec2<bool>(arg_1.a, !arg_2), false, Struct_1(1371f, true, select(vec4<bool>(any(vec3<bool>(true, true, true)), !arg_1.a, u_input.a.x < u_input.a.x, arg_2 | arg_2), !(!vec4<bool>(arg_2, true, false, false)), func_3(Struct_4(Struct_1(-806f, arg_1.a, vec4<bool>(false, arg_2, true, arg_1.a), vec4<bool>(false, false, arg_1.a, false), vec3<i32>(-63714i, u_input.b.x, -2277i)), Struct_2(vec2<bool>(arg_1.a, false), false, Struct_1(var_0.x, true, vec4<bool>(arg_1.a, arg_2, true, true), vec4<bool>(arg_1.a, arg_1.a, false, arg_2), u_input.b.wwy)), Struct_3(arg_3.x, arg_3.x), vec4<bool>(arg_1.a, true, true, arg_1.a)), Struct_1(var_0.x, arg_2, vec4<bool>(arg_1.a, arg_1.a, false, arg_2), vec4<bool>(arg_1.a, arg_1.a, arg_2, true), u_input.b.yzw), Struct_2(vec2<bool>(false, arg_1.a), arg_2, Struct_1(arg_0.x, true, vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(true, arg_2, arg_1.a, arg_1.a), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))))), func_3(Struct_4(Struct_1(arg_3.x, arg_1.a, vec4<bool>(false, true, arg_1.a, arg_1.a), vec4<bool>(false, arg_2, arg_1.a, arg_1.a), vec3<i32>(u_input.b.x, -22104i, u_input.b.x)), Struct_2(vec2<bool>(arg_2, false), arg_1.a, Struct_1(var_0.x, false, vec4<bool>(false, arg_1.a, true, false), vec4<bool>(true, arg_1.a, arg_2, false), u_input.b.zyz)), Struct_3(-680f, -251f), vec4<bool>(arg_1.a, true, arg_1.a, arg_2)), Struct_1(1013f, true, func_3(Struct_4(Struct_1(arg_0.x, false, vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_1.a, arg_1.a, false, true), vec3<i32>(u_input.b.x, 90793i, u_input.b.x)), Struct_2(vec2<bool>(arg_2, false), arg_2, Struct_1(arg_0.x, arg_1.a, vec4<bool>(arg_2, true, true, arg_1.a), vec4<bool>(arg_1.a, true, arg_2, true), vec3<i32>(u_input.b.x, 47668i, -15190i))), Struct_3(776f, 499f), vec4<bool>(true, arg_1.a, false, true)), Struct_1(222f, false, vec4<bool>(true, arg_2, true, false), vec4<bool>(arg_2, true, true, arg_1.a), u_input.b.wwz), Struct_2(vec2<bool>(arg_1.a, arg_1.a), true, Struct_1(arg_0.x, true, vec4<bool>(arg_1.a, true, true, arg_2), vec4<bool>(false, false, true, false), u_input.b.zwy))), vec4<bool>(arg_2, arg_2, arg_1.a, false), -u_input.b.yyy), Struct_2(select(vec2<bool>(arg_1.a, false), vec2<bool>(false, true), false), arg_2, Struct_1(arg_3.x, arg_2, vec4<bool>(arg_1.a, false, arg_1.a, true), vec4<bool>(arg_1.a, false, arg_1.a, true), vec3<i32>(15387i, u_input.b.x, 0i)))), vec3<i32>(firstTrailingBit(17143i), -1i, u_input.b.x)));
    return vec2<bool>(func_3(Struct_4(var_1.c, Struct_2(!var_1.c.c.yw, var_1.c.c.x & arg_2, var_1.c), Struct_3(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(389f - -1326f)), select(vec4<bool>(arg_1.a, true, true, arg_2), var_1.c.d, func_3(Struct_4(var_1.c, Struct_2(vec2<bool>(var_1.b, true), false, var_1.c), Struct_3(968f, var_1.c.a), vec4<bool>(var_1.a.x, arg_2, false, arg_2)), var_1.c, var_1))), Struct_1(arg_0.x, var_1.c.c.x, !var_1.c.c, vec4<bool>(false, any(var_1.c.d), false, all(var_1.c.c)), _wgslsmith_mult_vec3_i32(~vec3<i32>(17638i, var_1.c.e.x, var_1.c.e.x), vec3<i32>(var_1.c.e.x, -1i, u_input.b.x))), Struct_2(var_1.a, all(select(vec2<bool>(arg_2, arg_1.a), var_1.c.c.yz, vec2<bool>(arg_1.a, arg_2))), var_1.c)).x, select(arg_1.a, true, any(func_3(Struct_4(Struct_1(var_0.x, true, var_1.c.d, var_1.c.d, vec3<i32>(u_input.b.x, var_1.c.e.x, -1i)), var_1, Struct_3(var_0.x, var_1.c.a), var_1.c.d), Struct_1(arg_3.x, false, vec4<bool>(arg_2, true, arg_1.a, true), var_1.c.d, var_1.c.e), var_1))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    var var_0 = -1000f;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1166f, -706f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, -1219f)), select(true, false, false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(180f, -1154f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, 1872f)))), vec2<f32>(-496f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1263f - 732f), 1f)), true)), Struct_5(false), all(!func_3(Struct_4(Struct_1(-388f, true, vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec3<i32>(1i, u_input.b.x, u_input.b.x)), Struct_2(vec2<bool>(true, false), true, Struct_1(-1133f, false, vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec3<i32>(-45158i, u_input.b.x, 10715i))), Struct_3(2547f, 957f), vec4<bool>(true, true, true, false)), Struct_1(-1000f, true, vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), u_input.b.xzz), Struct_2(vec2<bool>(true, false), false, Struct_1(-252f, true, vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec3<i32>(u_input.b.x, -16128i, u_input.b.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-560f, 447f)), 1249f, _wgslsmith_f_op_f32(751f + -289f), _wgslsmith_div_f32(-342f, -777f))))));
    return Struct_2(select(var_1, vec2<bool>(!func_4(vec2<f32>(651f, -1538f), Struct_5(true), var_1.x, vec4<f32>(1345f, -1566f, 1424f, -1471f)).x, all(!vec3<bool>(var_1.x, var_1.x, true))), var_1.x), true, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), var_1.x, !func_3(Struct_4(Struct_1(210f, true, vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), u_input.b.wzy), Struct_2(var_1, var_1.x, Struct_1(697f, true, vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, false, false, var_1.x), u_input.b.zwz)), Struct_3(-687f, 755f), vec4<bool>(var_1.x, var_1.x, false, true)), Struct_1(445f, var_1.x, vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, true, true), u_input.b.yyz), Struct_2(var_1, false, Struct_1(1224f, var_1.x, vec4<bool>(false, false, false, true), vec4<bool>(false, var_1.x, var_1.x, true), u_input.b.ywx))), !vec4<bool>(func_4(vec2<f32>(-272f, 496f), Struct_5(var_1.x), false, vec4<f32>(630f, 403f, 849f, -1227f)).x, var_1.x && true, !var_1.x, false), u_input.b.zzy));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = Struct_4(var_0.c, func_2(), Struct_3(_wgslsmith_f_op_f32(round(var_0.c.a)), _wgslsmith_f_op_f32(max(-884f, var_0.c.a))), var_0.c.d);
    var var_2 = Struct_1(var_1.a.a, var_0.c.b, var_0.c.d, vec4<bool>(func_3(var_1, Struct_1(1336f, any(var_0.c.c), select(vec4<bool>(true, true, false, var_0.a.x), vec4<bool>(var_1.a.c.x, false, var_0.a.x, false), var_1.d), var_1.a.c, select(vec3<i32>(var_0.c.e.x, 1i, var_1.b.c.e.x), var_0.c.e, var_0.a.x)), func_2()).x, true, false, true), var_1.b.c.e);
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-128f + -692f))))), true, vec4<bool>(any(vec2<bool>(true, true)) | (_wgslsmith_f_op_f32(-var_0.c.a) < -537f), func_3(Struct_4(var_0.c, Struct_2(var_0.c.d.xw, true, Struct_1(var_1.b.c.a, var_0.c.c.x, vec4<bool>(true, false, var_0.a.x, var_1.a.d.x), var_1.b.c.d, vec3<i32>(var_0.c.e.x, -1i, 13082i))), Struct_3(var_0.c.a, var_2.a), func_2().c.c), var_1.a, var_0).x, var_1.b.a.x, var_0.a.x), vec4<bool>(var_2.b, var_1.b.c.e.x <= _wgslsmith_dot_vec2_i32(-u_input.b.yy, -var_0.c.e.xy), !(reverseBits(u_input.a.x) >= 0u), var_1.a.d.x), _wgslsmith_mult_vec3_i32(var_0.c.e, -u_input.b.xww));
    let var_3 = select(min(u_input.a.x, select(24741u, ~firstTrailingBit(u_input.a.x), func_3(var_1, var_0.c, Struct_2(var_0.c.d.zx, var_0.b, Struct_1(-584f, false, vec4<bool>(true, false, false, var_2.b), vec4<bool>(var_1.a.c.x, var_1.a.d.x, true, var_0.a.x), var_2.e))).x | (30905u > u_input.a.x))), u_input.a.x, func_2().b);
    return func_3(var_1, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f * -1606f) + 942f), var_1.c.b), true, !var_2.c, vec4<bool>(false & select(false, var_2.b, true), true, var_0.c.c.x, all(!var_2.c.zx)), var_0.c.e >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, u_input.a.x, u_input.a.x), vec3<u32>(38067u, u_input.a.x, 43653u)), 29868u, 17566u) % vec3<u32>(32u))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, var_1.b.c.a))), Struct_5(var_2.c.x), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1589f, 976f, -674f, var_1.b.c.a)))), true, func_2().c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-441f))) != 1278f);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1761f))), true, select(!func_1(), select(vec4<bool>(true, true, false, var_0.a), func_3(Struct_4(Struct_1(415f, true, vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, false, false, false), u_input.b.xyx), Struct_2(vec2<bool>(var_0.a, true), var_0.a, Struct_1(1627f, false, vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec3<i32>(1i, 1i, 2147483647i))), Struct_3(-1000f, -1320f), vec4<bool>(false, false, var_0.a, false)), Struct_1(-380f, var_0.a, vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, true, var_0.a, false), vec3<i32>(u_input.b.x, u_input.b.x, 12232i)), Struct_2(vec2<bool>(true, false), false, Struct_1(-504f, var_0.a, vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, true, true), vec3<i32>(u_input.b.x, -1145i, 9631i)))), var_0.a), vec4<bool>(var_0.a, all(vec2<bool>(var_0.a, var_0.a)), true, var_0.a)), vec4<bool>(func_3(Struct_4(Struct_1(-158f, var_0.a, vec4<bool>(false, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), u_input.b.wxx), Struct_2(vec2<bool>(true, var_0.a), false, Struct_1(-450f, var_0.a, vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), u_input.b.yyw)), Struct_3(1241f, 1000f), vec4<bool>(false, false, var_0.a, false)), Struct_1(449f, var_0.a, vec4<bool>(true, false, false, true), vec4<bool>(true, true, var_0.a, var_0.a), u_input.b.yxz), Struct_2(vec2<bool>(false, true), var_0.a, Struct_1(-1195f, var_0.a, vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, false, false), u_input.b.xzz))).x, any(func_4(vec2<f32>(1275f, 2026f), Struct_5(var_0.a), var_0.a, vec4<f32>(-455f, 1118f, -1000f, -546f))), var_0.a, func_2().c.d.x), ~(u_input.b.zxz ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), func_2(), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1023f, 1017f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(451f))))), 301f), vec4<bool>(true, var_0.a && false, true, var_0.a));
    var var_2 = 21791i << (u_input.a.x % 32u);
    global0 = array<vec2<u32>, 1>();
    var var_3 = var_1.b.c;
    var var_4 = !var_1.a.d;
    var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, 0u, 1u, 34436u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8311u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(14418u, 32856u, u_input.a.x, 1u))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(996u, 6997u, u_input.a.x, 4294967295u), vec4<u32>(109805u, 4294967295u, 75808u, 49059u)))), u_input.b.x);
}

