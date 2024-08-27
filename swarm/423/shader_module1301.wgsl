struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.b.c.x >= _wgslsmith_f_op_f32(arg_0.b.c.x - -1325f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.c.yy + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c.x - arg_0.b.c.x)), arg_0.b.c.x)));
    let var_2 = arg_0.b.c.x;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, 596f)), vec2<f32>(arg_0.b.e, var_2))) * arg_0.b.c.yz) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.b.c.zx)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, arg_0.b.c.x)))))));
    let var_3 = arg_0;
    return var_3;
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a, i32(-1i) * -6952i, u_input.a)), firstLeadingBit(-(vec3<i32>(u_input.a, 1422i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, 6696i)) ^ -(vec3<i32>(-11754i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -1i))));
    let var_1 = _wgslsmith_add_u32(~arg_0.d, ~arg_0.a);
    return func_2(Struct_2(vec3<u32>(var_1, var_1, ~(1u & var_1)), arg_0, !func_2(func_2(Struct_2(vec3<u32>(1u, var_1, arg_0.b), Struct_1(var_1, arg_0.a, arg_0.c, arg_0.b, -751f), vec4<bool>(true, false, true, true)))).c));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = !(!vec4<bool>(!all(arg_0.c.xy), true, any(arg_2.c.zyw) | false, arg_2.c.x));
    var var_1 = vec4<u32>(abs(1u) << (max(~_wgslsmith_mod_u32(0u, arg_1.x), ~arg_0.b.b) % 32u), arg_1.x, arg_0.a.x, arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(ceil(1045f)) >= arg_2.b.e;
    var_0 = arg_2.c;
    var_0 = vec4<bool>(all(vec4<bool>(true, ~arg_1.x > 0u, true, !arg_0.c.x)), ~arg_2.a.x < _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(var_1.x), 42365u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, var_1.x), ~arg_1)), arg_2.c.x, var_2);
    return false;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(36627u, 25533u, 0u, 1u), max(vec4<u32>(1u, 0u, 1u, 34333u), vec4<u32>(66941u, 1u, 41452u, 1u))))) >> (~(~countOneBits(20966u)) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(502f, arg_0.x, arg_0.x, -945f))))), vec4<f32>(-240f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -103f), true)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(sign(1676f)), _wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, var_1.x, 153f, -157f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1090f, 129f, 217f, var_1.x) + vec4<f32>(-504f, -1656f, var_1.x, var_1.x)), vec4<f32>(-934f, arg_0.x, 608f, -469f))) * vec4<f32>(_wgslsmith_div_f32(var_1.x, arg_0.x), _wgslsmith_f_op_f32(-2157f + -814f), _wgslsmith_f_op_f32(1212f * -115f), var_1.x))));
    var_0 = ~(~min(~1u, ~(~1u)));
    var_0 = ~(~(~_wgslsmith_mod_u32(1u, ~1u)));
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * -1095f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-391f + arg_0.x), func_2(Struct_2(vec3<u32>(1u, 105307u, 56520u), Struct_1(4294967295u, 4294967295u, arg_0, 63106u, 602f), arg_2)).b.e))), arg_1, !arg_1, true);
}

fn func_1() -> u32 {
    var var_0 = select(select(!vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, false), func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1288f, 517f, 491f), vec3<f32>(-500f, 1000f, 1595f))))), func_4(func_2(Struct_2(vec3<u32>(24007u, 25114u, 34003u), Struct_1(0u, 1u, vec3<f32>(683f, 738f, -556f), 40874u, -1000f), vec4<bool>(false, true, true, false))), vec2<u32>(0u, 73074u), func_3(Struct_1(1u, 42104u, vec3<f32>(530f, 159f, 217f), 0u, 134f))), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, false, !(all(vec2<bool>(true, false)) & true), false), ~func_2(Struct_2(vec3<u32>(0u, 41437u, 15217u), Struct_1(23230u, 0u, vec3<f32>(-883f, 505f, 1000f), 0u, -735f), vec4<bool>(false, false, false, false))).a.x >= firstLeadingBit(~(0u << (0u % 32u))));
    let var_1 = !(!var_0.x) | var_0.x;
    let var_2 = Struct_2(min(vec3<u32>(47530u, _wgslsmith_div_u32(1u, ~46621u), ~31945u), vec3<u32>(82939u, ~abs(0u), ~(~33141u))), Struct_1(1u, func_3(Struct_1(_wgslsmith_mult_u32(1u, 21604u), 1u, vec3<f32>(-1798f, -1000f, -279f), 1u, 754f)).a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-802f, 1000f, 665f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-678f, -2746f, -1158f))))), 1u, 931f), vec4<bool>(func_2(Struct_2(vec3<u32>(0u, 63916u, 1u), Struct_1(64438u, 4294967295u, vec3<f32>(-1655f, 1318f, -299f), 8132u, 1000f), vec4<bool>(var_1, true, var_1, var_0.x))).c.x, true, var_0.x, any(func_3(func_3(Struct_1(1u, 49544u, vec3<f32>(-1230f, 1000f, 1576f), 1u, 321f)).b).c.yw)));
    var var_3 = func_2(Struct_2(vec3<u32>(1u, var_2.b.b, 2899u), var_2.b, var_2.c));
    let var_4 = abs(~_wgslsmith_mult_u32(~4140u, var_2.a.x)) > ~27575u;
    return ~(1u & select(~42972u, var_3.a.x, func_2(func_3(Struct_1(var_2.a.x, 27125u, vec3<f32>(var_2.b.c.x, var_3.b.c.x, 902f), var_2.b.d, 427f))).c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(1370i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, 35848i, 18337i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 25612i), vec4<i32>(-2147483647i, u_input.a, -2147483647i, 0i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, false, false, true)), -vec4<i32>(-47074i, u_input.a, u_input.a, u_input.a)), ~(i32(-1i) * -u_input.a), u_input.a);
    var var_1 = 4294967295u;
    var_1 = min(0u, func_1());
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1174f, 554f, 185f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(602f, -158f, 1375f) - vec3<f32>(-1202f, 198f, -830f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(117f, -425f, 180f), vec3<f32>(623f, 734f, -1000f)))))))), all(vec4<bool>(true, true, false, true)), vec4<bool>(!all(vec2<bool>(false, true)) & true, false, !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true)), func_5(vec3<f32>(1f, -610f, -1000f), all(vec4<bool>(true, true, true, true)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1118f, 2396f, -1114f)), true, func_2(Struct_2(vec3<u32>(60627u, 36927u, 46554u), Struct_1(51655u, 3921u, vec3<f32>(1592f, 1000f, 479f), 0u, 1256f), vec4<bool>(false, true, false, true))).c)).x)).xxy;
    var_2 = select(vec3<bool>(func_4(func_3(Struct_1(4294967295u, 4294967295u, vec3<f32>(-1048f, -519f, 1568f), 1u, 1570f)), ~vec2<u32>(0u, 16043u), func_3(func_3(Struct_1(0u, 4294967295u, vec3<f32>(-478f, -229f, 758f), 4294967295u, 1000f)).b)), true, true), vec3<bool>(all(var_2.zz), false, true), any(vec3<bool>(var_2.x, var_2.x || all(vec4<bool>(true, true, false, false)), u_input.a < var_0.x)));
    var_1 = func_1();
    let var_3 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 9267u), 28676u >> (0u % 32u), 1u, ~15291u), vec4<u32>(1u, ~1u, max(1u, 71846u), 1u)), 9098u ^ func_1(), reverseBits(countOneBits(0u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 65557u, 13696u), 1u, _wgslsmith_div_u32(39049u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(23275u, 4294967295u, 87056u), vec3<u32>(1u, 22495u, 26302u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(30999u, 0u, 0u, 4294967295u)), ~vec4<u32>(1u, 4294967295u, 1u, 51419u))), 4294967295u, vec3<f32>(func_2(func_2(Struct_2(vec3<u32>(0u, 100416u, 30412u), Struct_1(40493u, 1u, vec3<f32>(1000f, 213f, 125f), 10765u, -1000f), vec4<bool>(true, var_2.x, true, var_2.x)))).b.c.x, -990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f + 496f))), ~(~_wgslsmith_sub_u32(52886u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-534f, 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1465f - 499f) * -306f))), !vec4<bool>(!(!var_2.x), !select(false, var_2.x, true), select(true, true, func_5(vec3<f32>(-794f, 1174f, -1463f), false, vec4<bool>(var_2.x, var_2.x, true, var_2.x)).x), true || !var_2.x));
    let var_4 = var_3;
    var var_5 = func_2(func_3(var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.c.x, var_4.b.e, 378f, var_4.b.e), vec4<f32>(var_3.b.c.x, var_3.b.c.x, 1000f, 495f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.c.x, var_3.b.e, 1321f, -139f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.c.x, var_5.b.c.x, var_5.b.c.x, -360f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.b.e, var_4.b.e, var_5.b.c.x, 454f), vec4<f32>(var_5.b.c.x, -1000f, var_4.b.e, -747f))), !vec4<bool>(var_4.c.x, var_3.c.x, var_3.c.x, var_5.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.c.x, var_5.b.e, -800f, -968f))))), ~1u, vec3<i32>(u_input.a, -(~_wgslsmith_add_i32(2147483647i, u_input.a)), ~_wgslsmith_mod_i32(~u_input.a, ~(-34736i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, _wgslsmith_div_f32(var_5.b.c.x, var_3.b.c.x), _wgslsmith_f_op_f32(ceil(-2182f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(559f, var_3.b.e, var_3.b.c.x, 1668f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, -250f, -386f, var_4.b.e) - vec4<f32>(var_4.b.e, var_3.b.e, -137f, var_5.b.c.x)) + vec4<f32>(var_5.b.e, 713f, var_4.b.c.x, 204f)))));
}

