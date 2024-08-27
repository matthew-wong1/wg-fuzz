struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(128f, -288f, -188f, 658f), vec4<f32>(-779f, -453f, -1890f, 289f), vec4<f32>(1000f, -460f, -2628f, -162f), vec4<f32>(1673f, 490f, -2002f, 194f), vec4<f32>(-197f, 1685f, -1000f, 419f), vec4<f32>(1171f, 496f, -873f, -811f), vec4<f32>(305f, 2026f, 753f, 1000f), vec4<f32>(-469f, 692f, -548f, -606f), vec4<f32>(-581f, -994f, -1235f, 1000f), vec4<f32>(-303f, 343f, -1029f, 1742f), vec4<f32>(-1000f, -1707f, 459f, 788f), vec4<f32>(-402f, -476f, 539f, -1000f), vec4<f32>(1242f, 1338f, -830f, 861f), vec4<f32>(1000f, 1735f, 856f, -476f), vec4<f32>(-1000f, 835f, -817f, -194f), vec4<f32>(386f, -1413f, -933f, -765f), vec4<f32>(734f, 332f, 445f, 1295f), vec4<f32>(222f, 1975f, 812f, 424f), vec4<f32>(384f, 1896f, 357f, 354f), vec4<f32>(1287f, -1495f, 415f, 1044f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 20>();
    return -743f;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(542f * -321f), -1284f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1759f * -1000f))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, -559f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-446f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !all(vec3<bool>(true, true, true))));
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)) - -419f) + var_0.x);
    global0 = array<vec4<f32>, 20>();
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    var var_0 = false;
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(max(-1448f, _wgslsmith_f_op_f32(func_2())))), vec3<u32>(~(~34624u), ~(~arg_0.b.x), arg_0.b.x));
    global0 = array<vec4<f32>, 20>();
    let var_2 = var_1.a;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(func_2());
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_5) -> Struct_1 {
    return Struct_1(-555f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(Struct_1(-1118f), Struct_3(Struct_1(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(-831f), vec4<u32>(8469u, 36681u, 1u, u_input.e.x), -669f, vec2<f32>(-716f, -2512f), Struct_1(-680f)), vec3<f32>(1000f, 374f, -819f)))), u_input.e, 813f, vec2<f32>(_wgslsmith_f_op_f32(918f + -293f), _wgslsmith_f_op_f32(abs(2140f))), Struct_1(_wgslsmith_div_f32(-570f, 1923f))), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, false), Struct_5(reverseBits(vec3<i32>(u_input.b, -1i, -1i)) ^ min(vec3<i32>(u_input.b, u_input.d.x, -1i), vec3<i32>(u_input.a.x, 29142i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, 1311f, -352f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1763f, -468f))))), _wgslsmith_sub_vec4_u32(max(abs(vec4<u32>(u_input.e.x, u_input.e.x, 4705u, 0u)), ~select(vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.e.x), vec4<u32>(27865u, 70410u, 1u, 1u), false)), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.c.x), u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) - -248f), 172f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-224f, _wgslsmith_f_op_f32(round(1345f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-470f, -363f)))))), Struct_1(_wgslsmith_f_op_f32(round(232f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * 1589f) + 1000f), _wgslsmith_f_op_f32(-var_0.e.a)) * vec2<f32>(_wgslsmith_div_f32(1134f, 1683f), 1291f)));
    var var_2 = Struct_4(Struct_1(1000f), vec3<u32>(4294967295u, 25300u, _wgslsmith_sub_u32(var_0.b.x, _wgslsmith_sub_u32(1u >> (var_0.b.x % 32u), var_0.b.x))));
    var_0 = Struct_3(func_4(func_4(func_4(Struct_1(var_2.a.a), Struct_3(Struct_1(var_1.x), vec4<u32>(43620u, 0u, 1u, 1u), var_2.a.a, var_0.d, var_2.a), vec4<bool>(false, false, false, false), Struct_5(vec3<i32>(1i, 19373i, -1i), vec3<f32>(var_2.a.a, 1000f, -1219f), vec2<f32>(1000f, var_2.a.a))), Struct_3(Struct_1(-303f), var_0.b ^ vec4<u32>(u_input.e.x, 14138u, 8885u, var_2.b.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(-var_0.d), func_4(Struct_1(762f), Struct_3(var_2.a, var_0.b, var_1.x, var_0.d, Struct_1(var_2.a.a)), vec4<bool>(false, false, true, false), Struct_5(u_input.d.wyz, vec3<f32>(103f, var_1.x, 1000f), var_0.d))), vec4<bool>(true, true, true, true), Struct_5(min(u_input.d.yww, u_input.a), vec3<f32>(var_0.c, var_2.a.a, -442f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-869f, var_0.d.x))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-459f - var_0.d.x)), var_0.b, var_0.c, vec2<f32>(-1818f, -1046f), var_2.a), vec4<bool>(true, true, true, true), Struct_5(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, var_0.a.a, -489f)), _wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(-var_0.d)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(68864u, 48991u, var_0.b.x), ~vec3<u32>(u_input.e.x, u_input.c.x, 4294967295u)), abs(vec3<u32>(var_0.b.x, 48874u, var_2.b.x))), ~(~_wgslsmith_div_u32(36763u, 49750u)), _wgslsmith_mod_u32(var_2.b.x, var_2.b.x), ~u_input.e.x & ~u_input.c.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1535f, var_0.e.a)), vec2<f32>(_wgslsmith_f_op_f32(func_3()), -160f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.d, vec2<f32>(var_2.a.a, var_2.a.a)))) * var_0.d)), func_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -108f)))), Struct_3(var_2.a, vec4<u32>(var_0.b.x, 12855u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 95874u), u_input.c.zy), 861u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + 1000f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.a)), var_0.c), func_4(Struct_1(var_2.a.a), Struct_3(var_2.a, u_input.e, var_0.c, var_0.d, Struct_1(-1231f)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), Struct_5(vec3<i32>(u_input.d.x, 57850i, u_input.b), vec3<f32>(-1235f, 165f, -211f), vec2<f32>(458f, 522f)))), vec4<bool>(!(u_input.b == 5170i), true, all(vec2<bool>(true, true)), (var_2.b.x <= 15288u) || any(vec3<bool>(true, true, true))), Struct_5(countOneBits(min(vec3<i32>(u_input.d.x, u_input.b, -10371i), vec3<i32>(u_input.a.x, u_input.a.x, 28399i))), vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1000f, var_2.a.a), var_0.d)));
    var_1 = var_0.d;
    var var_3 = vec2<i32>(-13449i, _wgslsmith_div_i32(u_input.d.x, 2147483647i));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0.e.a)))), var_2.a.a));
    var var_5 = vec2<i32>(24686i, 1i);
    var_1 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, max(var_0.b.xxy, reverseBits(u_input.e.xxw)) << (_wgslsmith_mod_vec3_u32(min(var_0.b.yxw, var_2.b), firstTrailingBit(firstTrailingBit(vec3<u32>(20002u, u_input.c.x, 0u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-798f * _wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))), ~(~(~var_0.b.x)));
}

