struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = select(abs(arg_0.b.xxx), -select(u_input.a, vec3<i32>(arg_0.b.x, 2147483647i, 0i), !any(arg_0.d.xwz)), !all(vec3<bool>(all(arg_0.d.wyz), !arg_0.a.c, arg_0.e.c | arg_1.c)));
    let var_1 = vec3<u32>(u_input.b, 15833u, arg_0.c.d);
    var var_2 = _wgslsmith_f_op_f32(arg_1.b - arg_0.a.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.yy - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.zy * arg_1.a.zy) * arg_0.a.a.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.zz, vec2<f32>(1288f, arg_0.a.b)))))));
    let var_4 = -1478f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -692f)) - 153f) * var_3.x);
    return ~49685u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2.c.d;
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.e.a), arg_0.c.a.x, true, max(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.e.d, arg_0.e.d) << (~121536u % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.c.d, 0u), ~1u)), func_3(arg_2, arg_1.c) & _wgslsmith_div_u32(~arg_0.a.d, ~1u)));
    var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(783f, -558f, arg_2.a.b), vec3<f32>(arg_2.a.a.x, -448f, arg_1.a.a.x)), _wgslsmith_f_op_vec3_f32(-var_2.a))), _wgslsmith_f_op_vec3_f32(-arg_2.a.a)), -931f, false, ~58876u), var_1.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1.e.a.x), 346f, var_2.a.x), var_2.b, arg_1.a.c, min(var_0, 4294967295u)), vec4<bool>(arg_0.a.c, !arg_2.e.c, true, true), arg_1.e);
    let var_3 = arg_2;
    return ~abs(arg_0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.c;
    var var_1 = _wgslsmith_div_vec2_f32(arg_2.a.xx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)), arg_2.a.yz) - arg_0.c.a.zx))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.a.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1177f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -885f) * vec2<f32>(var_1.x, 1000f))))));
    var var_2 = true;
    var var_3 = _wgslsmith_add_i32(arg_0.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.x, u_input.a.x, 25433i, u_input.a.x), vec4<i32>(reverseBits(-19713i), min(-111812i, 0i), -1i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x))) | _wgslsmith_mod_i32(reverseBits(countOneBits(-1i)), _wgslsmith_clamp_i32(func_2(arg_0, arg_0, Struct_2(Struct_1(arg_0.a.a, -515f, false, 94278u), arg_1, arg_0.c, vec4<bool>(var_0, var_0, arg_0.c.c, false), Struct_1(vec3<f32>(arg_0.e.b, arg_2.b, 1354f), arg_2.a.x, false, 1u))), -4076i, -2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.b, -1424f, 1593f))) + arg_2.a))), arg_2.b, arg_0.c.b < arg_0.a.b, 49306u);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1908f, 582f, -521f)), _wgslsmith_f_op_f32(step(477f, -2246f)), false, arg_0.x), vec4<i32>(func_2(Struct_2(Struct_1(vec3<f32>(419f, -1138f, -101f), -865f, true, arg_0.x), vec4<i32>(u_input.a.x, -1521i, u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(-683f, -832f, -758f), -370f, false, arg_0.x), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-105f, -730f, 428f), -1705f, true, 26695u)), Struct_2(Struct_1(vec3<f32>(-784f, 166f, 2283f), -1639f, false, 0u), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -2147483647i), Struct_1(vec3<f32>(739f, -1013f, -781f), -1188f, false, 4171u), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(505f, 1060f, 992f), 1000f, true, 0u)), Struct_2(Struct_1(vec3<f32>(-1066f, 802f, -850f), 1000f, false, 8256u), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), Struct_1(vec3<f32>(1602f, -766f, 779f), 1921f, true, 1u), vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(959f, 2360f, -1640f), -614f, false, u_input.b))), u_input.a.x, -2147483647i, 10705i), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, 846f, -335f) * vec3<f32>(-533f, 154f, -808f)), _wgslsmith_f_op_f32(373f - 406f), true, arg_0.x >> (1u % 32u)), vec4<bool>(true, true, 9410u == u_input.b, true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -290f, 477f)), 1f, true, reverseBits(arg_0.x))), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-40110i, -2147483647i, -1i, -2147483647i), vec4<i32>(u_input.a.x, 40694i, u_input.a.x, 44421i))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-443f, 299f, -742f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(select(-470f, 1031f, true)))), any(vec4<bool>(true, true, false, true)), _wgslsmith_mod_u32(~u_input.b, 119486u))), max(vec4<i32>(u_input.a.x, -u_input.a.x, 2147483647i, u_input.a.x), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -17679i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 15534i, -31155i, u_input.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-129f + 193f), 834f, _wgslsmith_f_op_f32(max(344f, -166f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1086f, _wgslsmith_f_op_f32(sign(1275f)))), 1147f)), any(vec2<bool>(30735u < arg_0.x, false)), arg_0.x), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), true), vec4<bool>(false, false, select(true, false, false), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, true, u_input.a.x <= u_input.a.x), vec4<bool>(_wgslsmith_mod_i32(1789i, u_input.a.x) > _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), true)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(Struct_2(Struct_1(vec3<f32>(-113f, 1000f, -868f), -1138f, true, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), Struct_1(vec3<f32>(-809f, 693f, -273f), -1362f, false, arg_0.x), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(-1091f, 901f, 1424f), -762f, true, 4294967295u)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 3473i), Struct_1(vec3<f32>(936f, -421f, -391f), 203f, false, arg_0.x)).a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, -1057f, -186f))))), -1000f, false & all(vec3<bool>(true, true, true)), ~(~28944u)));
    var_0 = Struct_2(func_4(Struct_2(var_0.c, var_0.b, Struct_1(vec3<f32>(var_0.a.a.x, 397f, var_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -466f), all(var_0.d.yx), 1u), var_0.d, Struct_1(var_0.a.a, _wgslsmith_f_op_f32(var_0.e.b - var_0.e.b), var_0.e.c, _wgslsmith_div_u32(u_input.b, u_input.b))), var_0.b, var_0.a), vec4<i32>(var_0.b.x, ~select(countOneBits(u_input.a.x), u_input.a.x, true), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 35698i, 17515i) >> (arg_0.yxx % vec3<u32>(32u))), u_input.a)), func_4(Struct_2(var_0.e, ~(~var_0.b), var_0.a, vec4<bool>(any(vec4<bool>(var_0.d.x, var_0.c.c, var_0.e.c, false)), var_0.e.c, false, var_0.a.c), var_0.e), vec4<i32>(func_2(Struct_2(var_0.c, var_0.b, var_0.c, var_0.d, Struct_1(vec3<f32>(var_0.e.b, -2276f, -150f), var_0.e.a.x, var_0.d.x, 0u)), Struct_2(var_0.a, vec4<i32>(-8098i, 2147483647i, u_input.a.x, -2147483647i), Struct_1(var_0.c.a, 1336f, true, 0u), var_0.d, Struct_1(var_0.a.a, var_0.c.b, var_0.c.c, 0u)), Struct_2(var_0.a, var_0.b, var_0.a, vec4<bool>(false, var_0.a.c, false, false), var_0.e)), var_0.b.x, -2147483647i, u_input.a.x), func_4(Struct_2(Struct_1(vec3<f32>(var_0.a.b, var_0.c.a.x, var_0.e.a.x), -142f, false, 40923u), ~vec4<i32>(var_0.b.x, 44612i, 37337i, u_input.a.x), func_4(Struct_2(var_0.e, var_0.b, var_0.e, var_0.d, var_0.c), var_0.b, var_0.c), vec4<bool>(true, var_0.a.c, var_0.d.x, false), func_4(Struct_2(var_0.c, var_0.b, var_0.e, vec4<bool>(false, var_0.c.c, var_0.c.c, true), Struct_1(var_0.e.a, var_0.c.b, var_0.c.c, 52616u)), vec4<i32>(u_input.a.x, var_0.b.x, u_input.a.x, u_input.a.x), var_0.c)), min(-vec4<i32>(-1i, u_input.a.x, u_input.a.x, 84211i), firstTrailingBit(var_0.b)), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(var_0.e.b - -734f), any(var_0.d.zyz), u_input.b))), vec4<bool>(select(var_0.e.c, var_0.d.x, true), true, true, any(var_0.d)), var_0.a);
    let var_1 = var_0.c;
    var_0 = Struct_2(var_0.a, vec4<i32>(~(~reverseBits(0i)), var_0.b.x ^ ~u_input.a.x, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(11564i, 0i, var_0.b.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -1i, -11379i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_0.b.x, var_0.b.x, -32553i), var_0.b), vec4<i32>(0i, var_0.b.x, -29243i, var_0.b.x)), min(var_0.b, -var_0.b))), var_0.a, vec4<bool>(!(var_0.a.c | true), var_1.c, true && !(var_0.a.a.x >= var_1.b), false), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a.a), _wgslsmith_f_op_f32(-var_1.b), func_4(Struct_2(Struct_1(vec3<f32>(-1345f, -198f, -172f), var_1.b, var_1.c, 0u), var_0.b & vec4<i32>(var_0.b.x, u_input.a.x, u_input.a.x, 0i), Struct_1(var_0.a.a, 968f, true, u_input.b), select(vec4<bool>(var_0.d.x, var_0.e.c, false, var_1.c), vec4<bool>(false, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(true, false, var_0.e.c, true)), Struct_1(var_1.a, var_1.a.x, var_0.a.c, 33157u)), var_0.b, func_4(Struct_2(Struct_1(vec3<f32>(var_0.c.b, -997f, var_0.e.a.x), var_0.e.a.x, var_1.c, 0u), vec4<i32>(var_0.b.x, var_0.b.x, 0i, 0i), Struct_1(vec3<f32>(var_0.a.b, var_0.c.b, var_1.b), 1409f, var_0.d.x, 4294967295u), var_0.d, var_0.e), -var_0.b, func_4(Struct_2(var_0.c, vec4<i32>(-1i, -2147483647i, var_0.b.x, 40725i), var_0.c, var_0.d, var_0.e), var_0.b, var_0.c))).c, var_1.d));
    var_0 = Struct_2(var_0.a, abs(_wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(-20428i, u_input.a.x, var_0.b.x, var_0.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 689i, 43727i, var_0.b.x), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, -33117i, var_0.b.x))))), func_4(Struct_2(var_0.c, vec4<i32>(-2147483647i, ~31159i, u_input.a.x, -var_0.b.x), var_0.c, vec4<bool>(any(vec4<bool>(false, var_1.c, false, false)), false, false, var_0.e.c | var_0.e.c), func_4(Struct_2(Struct_1(var_0.e.a, -1074f, var_1.c, 0u), var_0.b, var_0.e, var_0.d, var_0.c), vec4<i32>(2147483647i, 14334i, 2147483647i, 26087i) >> (vec4<u32>(1u, var_0.e.d, u_input.b, 86983u) % vec4<u32>(32u)), func_4(Struct_2(Struct_1(var_1.a, -408f, var_0.d.x, 1u), vec4<i32>(var_0.b.x, u_input.a.x, var_0.b.x, 8806i), var_0.a, vec4<bool>(var_1.c, false, var_1.c, var_0.a.c), Struct_1(vec3<f32>(-1000f, 534f, 1041f), 812f, false, 40907u)), vec4<i32>(-11250i, u_input.a.x, 0i, u_input.a.x), var_0.a))), var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1168f, 1044f, var_0.a.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -503f), all(var_0.d.yw) == true, 4294967295u)), var_0.d, func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.e.a + var_0.c.a), var_0.e.b, true & var_1.c, var_0.a.d ^ 27590u), _wgslsmith_clamp_vec4_i32(var_0.b, reverseBits(var_0.b), vec4<i32>(0i, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.c, var_0.d, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(312f, var_1.a.x, var_1.b)), -1083f, var_0.e.c, ~var_1.d)), -vec4<i32>(_wgslsmith_sub_i32(11796i, 1i), -14380i, 8727i, -1884i), func_4(Struct_2(func_4(Struct_2(Struct_1(vec3<f32>(1567f, var_0.e.b, var_1.a.x), var_1.b, var_1.c, 0u), vec4<i32>(u_input.a.x, 0i, 6774i, -32269i), var_0.c, var_0.d, Struct_1(var_0.e.a, 378f, true, 17855u)), var_0.b, Struct_1(var_0.c.a, var_1.b, false, var_1.d)), -vec4<i32>(0i, -2147483647i, var_0.b.x, var_0.b.x), var_0.a, var_0.d, Struct_1(var_1.a, var_0.e.a.x, var_1.c, 27143u)), vec4<i32>(-1i, firstLeadingBit(u_input.a.x), 26177i, _wgslsmith_mod_i32(-1i, -39446i)), Struct_1(vec3<f32>(var_0.c.a.x, var_1.a.x, -396f), _wgslsmith_f_op_f32(ceil(925f)), false, var_0.c.d << (var_1.d % 32u)))));
    return func_4(Struct_2(func_4(Struct_2(var_0.a, ~var_0.b, var_0.c, vec4<bool>(false, false, true, var_1.c), Struct_1(vec3<f32>(var_0.a.b, 1155f, 1722f), var_0.c.b, var_1.c, var_1.d)), countOneBits(vec4<i32>(var_0.b.x, -58169i, 19419i, -1159i)), var_0.c), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(~var_0.b.x, var_0.b.x ^ u_input.a.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, u_input.a.x), var_0.b.yx)), -17198i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-897f, var_1.b, -1481f), var_1.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1308f, var_1.a.x, 756f) * vec3<f32>(var_0.c.a.x, var_0.e.b, var_0.c.a.x))), var_0.e.a.x, var_1.c, ~u_input.b), !vec4<bool>(false, var_1.c, !var_0.d.x, true), var_0.c), vec4<i32>(-u_input.a.x, countOneBits(func_2(Struct_2(Struct_1(var_1.a, var_1.b, false, arg_0.x), var_0.b, var_0.e, var_0.d, var_0.a), Struct_2(Struct_1(var_1.a, 595f, false, 11283u), var_0.b, var_0.e, var_0.d, var_0.c), Struct_2(Struct_1(var_1.a, -741f, var_1.c, var_1.d), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), var_0.e, vec4<bool>(false, var_0.a.c, true, true), var_0.a))), ~u_input.a.x, _wgslsmith_mod_i32(-26431i, _wgslsmith_div_i32(func_2(Struct_2(Struct_1(vec3<f32>(1633f, 494f, var_0.c.b), 920f, var_1.c, 0u), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 60724i), var_0.a, var_0.d, var_0.e), Struct_2(var_0.c, vec4<i32>(var_0.b.x, -8898i, -36746i, var_0.b.x), Struct_1(vec3<f32>(var_1.a.x, var_0.c.a.x, 805f), 224f, true, 0u), var_0.d, Struct_1(vec3<f32>(var_1.a.x, var_1.b, var_0.a.a.x), var_0.c.b, var_0.e.c, 71695u)), Struct_2(Struct_1(vec3<f32>(var_0.a.b, -254f, 537f), var_1.b, true, 3041u), var_0.b, var_0.a, vec4<bool>(var_1.c, true, false, var_1.c), Struct_1(var_1.a, var_1.a.x, false, arg_0.x))), u_input.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, var_1.a.x, -1042f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.e.b, var_0.a.a.x)))), !(!any(var_0.d)), select(98137u, 1u, true)));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> vec3<f32> {
    let var_0 = u_input.a.x;
    let var_1 = arg_0.e.a;
    let var_2 = (abs(~vec3<u32>(29546u, 0u, 1272u)) & (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c.d, arg_1, u_input.b), vec3<u32>(u_input.b, 0u, arg_0.e.d), vec3<u32>(u_input.b, arg_0.e.d, 4294967295u)) ^ (~vec3<u32>(39158u, arg_0.c.d, 20296u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 26481u), vec3<u32>(arg_1, 63503u, 4294967295u), vec3<u32>(u_input.b, 6956u, u_input.b)) % vec3<u32>(32u))))) | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~(~arg_1), ~abs(15044u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a.d, arg_1), 0u), arg_1, 0u));
    let var_3 = -arg_0.b;
    let var_4 = arg_0.d.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(Struct_1(vec3<f32>(-1459f, 828f, -666f), 779f, false, u_input.b), -vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(158f, -1105f, 845f), 642f, false, 3625u), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), func_1(vec4<u32>(58725u, u_input.b, 1u, u_input.b))), ~982u)), _wgslsmith_f_op_vec3_f32(func_5(Struct_2(func_4(Struct_2(Struct_1(vec3<f32>(434f, -1097f, -1398f), -166f, false, 0u), vec4<i32>(u_input.a.x, u_input.a.x, -8665i, 0i), Struct_1(vec3<f32>(-584f, 352f, 1000f), -495f, false, 25886u), vec4<bool>(true, true, false, true), Struct_1(vec3<f32>(-1257f, 2365f, -932f), 1664f, false, 0u)), vec4<i32>(-2147483647i, -11125i, u_input.a.x, 25453i), Struct_1(vec3<f32>(548f, -523f, 592f), 1490f, true, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-46750i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(-1i, 2147483647i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(vec3<f32>(-615f, -1137f, 375f), -273f, false, 39201u), vec4<bool>(false, false, true, false), func_1(vec4<u32>(u_input.b, 90831u, u_input.b, 0u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(53939u, 401u, u_input.b), max(vec3<u32>(77215u, 1u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 91858u))))).x, false, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, _wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -2147483647i >> (~u_input.b % 32u))), Struct_1(vec3<f32>(130f, -379f, _wgslsmith_f_op_f32(abs(774f))), -232f, firstTrailingBit(_wgslsmith_mod_i32(-11074i, 2147483647i)) <= -u_input.a.x, func_1(~firstTrailingBit(vec4<u32>(60546u, u_input.b, u_input.b, u_input.b))).d), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(max(vec4<u32>(u_input.b, 44373u, u_input.b, u_input.b), vec4<u32>(0u, 2999u, 4294967295u, u_input.b))).c), !vec4<bool>(true, false, all(vec2<bool>(false, false)), all(vec2<bool>(true, false))), !(!(u_input.b <= 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1665f, -2589f, 191f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f * 269f)), true, _wgslsmith_mult_u32(~(18452u ^ u_input.b), u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(291f, var_0.c.b, 680f, var_0.e.b))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(-var_0.e.a.x), -1043f, 316f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(836f, var_0.e.b, var_0.a.a.x, var_0.e.a.x), vec4<f32>(var_0.e.a.x, var_0.e.a.x, 1754f, var_0.e.b)))))));
    let var_2 = vec2<bool>(func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(16979u, 4294967295u, 4294967295u, 38322u)), ~vec4<u32>(1u, 4294967295u, u_input.b, 4777u)), ~(vec4<u32>(0u, 0u, 19222u, u_input.b) >> (vec4<u32>(15503u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))).c, var_0.a.c);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_1(vec4<u32>(1u, var_0.e.d, 4294967295u, 48063u)).a.x, _wgslsmith_f_op_f32(var_1.x * var_1.x), -114f))), _wgslsmith_f_op_f32(-var_0.c.b), var_0.a.c, 62708u), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a.zx), vec2<i32>(firstTrailingBit(u_input.a.x), -u_input.a.x)), abs(u_input.a.x) ^ firstTrailingBit(-2147483647i | var_0.b.x), var_0.b.x, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(var_0.b.x, 43981i, var_0.b.x, -16235i), var_2.x), max(vec4<i32>(50223i, 1327i, var_0.b.x, var_0.b.x), var_0.b))), var_0.e, !(!(!var_0.d)), var_0.c);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b, -1784f, 618f, var_0.e.b)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b, -381f, -229f, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-454f, 847f), _wgslsmith_f_op_f32(1097f - -329f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -822f))), _wgslsmith_f_op_vec3_f32(func_5(Struct_2(Struct_1(vec3<f32>(782f, var_1.x, -1151f), var_1.x, true, var_3.a.d), countOneBits(vec4<i32>(2147483647i, -54i, var_0.b.x, var_0.b.x)), Struct_1(var_1.wzx, var_3.a.b, false, 103901u), var_0.d, var_3.a), _wgslsmith_clamp_u32(0u, ~var_3.c.d, var_3.c.d))).x, -440f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(firstTrailingBit(vec4<u32>(4294967295u, 24582u, u_input.b, 0u))).b, _wgslsmith_f_op_f32(max(-147f, _wgslsmith_f_op_f32(step(494f, var_3.c.b)))), _wgslsmith_f_op_f32(-var_1.x), -2472f)));
}

