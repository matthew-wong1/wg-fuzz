struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = -947f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f * -559f) - -204f)) - _wgslsmith_f_op_f32(max(-1835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1373f + 2406f))))));
    let var_1 = Struct_1(884f);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2232f);
    var_0 = _wgslsmith_f_op_f32(step(var_1.a, var_1.a));
    return var_1;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_3(!select(true, _wgslsmith_div_f32(arg_0, arg_0) == -842f, arg_2.d.c.x), Struct_1(arg_2.a.c.a), arg_2.a, vec2<i32>(reverseBits(_wgslsmith_div_i32(min(arg_2.c, -1i), _wgslsmith_sub_i32(arg_2.c, u_input.d))), -2307i), false);
    var_0 = Struct_3(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(abs(arg_1.x))))), Struct_2(all(arg_2.a.e.yzz), arg_2.a.b, arg_2.a.b, Struct_1(1608f), vec4<bool>(true, arg_2.a.e.x, false, select(any(var_0.c.e.ww), var_0.c.a, arg_2.c != -7006i))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-16184i, 58120i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, arg_2.c, -23134i), vec4<i32>(29210i, 2147483647i, arg_2.c, -5548i)), _wgslsmith_mult_i32(36538i, var_0.d.x)))), any(!arg_2.a.e.xwx));
    var var_1 = countOneBits(select(_wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(u_input.d, 29902i, u_input.d, arg_2.c), vec4<i32>(u_input.d, -1416i, arg_2.c, arg_2.c))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.d.x, var_0.d.x, arg_2.c), vec4<i32>(arg_2.c, 33919i, -8641i, 0i)), ~vec4<i32>(-34705i, 7182i, 14190i, 2147483647i))), -24025i, arg_2.d.c.x));
    let var_2 = -2497f;
    return arg_2.a.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_5(arg_0, ~select(~(~38094u), u_input.b, arg_1.e.x), u_input.d, Struct_4(u_input.b, ~u_input.c | _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b, 0u, u_input.b), select(vec4<u32>(39894u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(20071u, 13539u, 126941u, 38699u), arg_0.e)), select(vec4<bool>(true, !arg_1.a, arg_0.e.x, arg_0.a && arg_1.e.x), !(!vec4<bool>(false, arg_0.a, false, false)), true)));
    let var_1 = arg_1.c.a;
    let var_2 = Struct_4(abs(~reverseBits(78247u)), var_0.d.b, vec4<bool>(any(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true))), arg_1.e.x, true, arg_0.e.x));
    var var_3 = Struct_3(true, Struct_1(arg_1.d.a), Struct_2(var_0.d.c.x, func_3(799f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-837f, arg_1.c.a, var_1, var_1), vec4<f32>(-274f, var_1, arg_0.c.a, arg_1.c.a))))), Struct_5(Struct_2(false, arg_0.c, arg_0.c, Struct_1(var_0.a.b.a), vec4<bool>(var_2.c.x, true, true, arg_0.a)), ~30518u, -19502i, var_0.d)), func_2(var_2), func_2(var_2), arg_1.e), _wgslsmith_add_vec2_i32(vec2<i32>(-20824i, 32179i), firstLeadingBit(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-16428i, -1i), vec2<i32>(-18515i, 0i))))), arg_0.e.x);
    var var_4 = _wgslsmith_mult_u32(40717u, var_0.d.b.x);
    return var_3.c.e;
}

fn func_1() -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, ~2147483647i >= _wgslsmith_sub_i32(0i, u_input.d), select(4294967295u, u_input.b, false) >= 4294967295u, 1u > firstTrailingBit(u_input.c.x)), vec4<bool>(select(true, true, true), -u_input.d < select(u_input.d, -1i, true), true, any(vec3<bool>(true, true, true))), func_4(Struct_2(true, func_2(Struct_4(1u, u_input.c, vec4<bool>(false, false, true, false))), func_3(1424f, vec4<f32>(-433f, 1063f, 1487f, 359f), Struct_5(Struct_2(true, Struct_1(625f), Struct_1(457f), Struct_1(-1042f), vec4<bool>(true, false, false, false)), u_input.b, 1i, Struct_4(u_input.b, u_input.c, vec4<bool>(true, false, true, true)))), Struct_1(414f), vec4<bool>(true, true, true, true)), Struct_2(select(true, false, true), func_3(-1116f, vec4<f32>(238f, -1000f, 1287f, 1940f), Struct_5(Struct_2(true, Struct_1(-597f), Struct_1(781f), Struct_1(-1840f), vec4<bool>(true, true, false, false)), u_input.c.x, 13496i, Struct_4(35758u, vec4<u32>(4294967295u, u_input.b, u_input.b, 1u), vec4<bool>(false, true, false, true)))), func_2(Struct_4(u_input.a, vec4<u32>(u_input.a, 8168u, 51013u, 64043u), vec4<bool>(true, false, true, true))), func_3(546f, vec4<f32>(-661f, -1676f, 768f, 1553f), Struct_5(Struct_2(true, Struct_1(-511f), Struct_1(364f), Struct_1(-1529f), vec4<bool>(false, true, false, false)), 1u, 9148i, Struct_4(19862u, vec4<u32>(41544u, 32189u, 0u, u_input.a), vec4<bool>(false, true, false, false)))), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1173f)))), func_3(487f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -749f), _wgslsmith_div_f32(-629f, -318f)), _wgslsmith_f_op_f32(f32(-1f) * -1731f), -1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f))), Struct_5(Struct_2(true, Struct_1(-1047f), Struct_1(-963f), func_3(1149f, vec4<f32>(-1126f, 689f, 789f, -1557f), Struct_5(Struct_2(false, Struct_1(522f), Struct_1(-568f), Struct_1(-1478f), var_0), u_input.a, -50911i, Struct_4(u_input.b, vec4<u32>(u_input.a, 806u, u_input.b, 55047u), var_0))), !var_0), u_input.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.d, -23309i), ~(-2147483647i)), Struct_4(~u_input.b, u_input.c, vec4<bool>(false, true, var_0.x, false)))), Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(661f, 821f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, -1561f, 1000f, 205f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-125f, -327f, 1501f, 194f)))), Struct_5(Struct_2(var_0.x, Struct_1(930f), Struct_1(1000f), Struct_1(-807f), vec4<bool>(false, var_0.x, true, var_0.x)), ~38097u, 17668i, Struct_4(1u, vec4<u32>(u_input.a, u_input.c.x, 0u, u_input.b), vec4<bool>(false, false, true, var_0.x)))).a), vec4<bool>(all(!select(var_0.zy, var_0.xw, vec2<bool>(var_0.x, true))), false, var_0.x, !var_0.x));
    var var_2 = _wgslsmith_div_vec3_u32(~(~u_input.c.yzx ^ select(vec3<u32>(1u, u_input.c.x, 34990u), vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<bool>(false, var_0.x, var_1.a))) << (~countOneBits(vec3<u32>(u_input.a, u_input.b, 52663u)) % vec3<u32>(32u)), ~u_input.c.xyw);
    var var_3 = u_input.d;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.a, -299f, var_1.d.a, var_1.b.a), vec4<f32>(var_1.c.a, var_1.d.a, -514f, var_1.c.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_1.b.a, 193f, var_1.b.a)))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-712f)), _wgslsmith_f_op_f32(var_1.d.a + var_1.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.a, -346f)) - _wgslsmith_f_op_f32(round(var_1.d.a))), 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(325f, var_1.b.a, -1088f, 1288f))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(var_1.c.a, 886f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, Struct_1(1f), func_1(), func_3(-748f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(332f, -370f, 588f, -1309f) - vec4<f32>(-353f, -1000f, 736f, 1508f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(trunc(290f)), _wgslsmith_f_op_f32(-1000f * -1701f))), Struct_5(Struct_2(true, func_3(216f, vec4<f32>(1000f, -111f, 362f, 311f), Struct_5(Struct_2(false, Struct_1(-834f), Struct_1(-674f), Struct_1(1000f), vec4<bool>(false, true, false, false)), u_input.a, u_input.d, Struct_4(u_input.c.x, vec4<u32>(0u, 0u, 0u, 0u), vec4<bool>(true, true, true, true)))), func_2(Struct_4(u_input.b, vec4<u32>(0u, u_input.a, u_input.c.x, 99756u), vec4<bool>(true, true, true, true))), func_1(), vec4<bool>(false, false, false, false)), min(abs(25851u), u_input.c.x), u_input.d, Struct_4(~5752u, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c), vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, false, all(vec3<bool>(false, true, false)), reverseBits(u_input.b) > 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_4(Struct_2(false, Struct_1(-1105f), Struct_1(246f), Struct_1(-2997f), vec4<bool>(false, false, true, true)), Struct_2(false, Struct_1(654f), Struct_1(-1279f), Struct_1(-1859f), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true)))), all(vec3<bool>(true, true, true))));
    var var_1 = -4688i;
    let var_2 = 1i;
    var var_3 = !(!(!var_0.e.xzy));
    var var_4 = !vec2<bool>(var_2 < _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2, u_input.d), select(vec2<i32>(0i, 59398i), vec2<i32>(u_input.d, 2147483647i), var_0.e.xw)), false);
    var_1 = countOneBits(abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(u_input.d | u_input.d, ~var_2, u_input.d)) << (vec3<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(~0u, firstTrailingBit(u_input.a))) % vec3<u32>(32u)), u_input.d, -min(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(37616i, var_2, 32888i)), -vec3<i32>(2147483647i, 23970i, var_2), firstTrailingBit(vec3<i32>(u_input.d, 2147483647i, 16533i))), vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(u_input.d, u_input.d)), 73691i)), u_input.c.xwz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(f32(-1f) * -680f)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1428f, var_0.b.a), vec2<f32>(var_0.b.a, var_0.b.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, var_0.d.a) * vec2<f32>(254f, 738f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(175f, -512f), _wgslsmith_f_op_f32(f32(-1f) * -958f), true)))));
}

