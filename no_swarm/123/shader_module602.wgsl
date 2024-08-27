struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_3.b.b;
    var var_1 = arg_0.b.c;
    var_0 = arg_3.b.b;
    var_0 = Struct_1(var_1.d, vec4<i32>(arg_2.b.c.c, _wgslsmith_mult_i32(-var_0.b.x, arg_3.b.c.b.x) ^ ~(-arg_2.b.b.c), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.b.c.b.x, 25787i), arg_2.b.c.b.xw), -vec2<i32>(arg_1.b.a.x, -45733i))), 9837i), ~arg_3.b.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-674f, 1000f))), arg_0.b.c.d.x)), _wgslsmith_f_op_f32(abs(arg_0.b.c.a.x)), arg_3.b.b.a.x), !(false & !select(false, var_0.e, arg_3.b.c.e)));
    var var_2 = arg_0;
    return !vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1141f * 1000f) + 646f) >= var_0.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_2(-((firstLeadingBit(vec3<i32>(-67713i, 26933i, -2147483647i)) | countOneBits(u_input.a)) & u_input.b.xwy), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(select(-927f, -2606f, true)), _wgslsmith_f_op_f32(f32(-1f) * -202f), -1060f), _wgslsmith_div_vec4_f32(vec4<f32>(-311f, arg_1.x, -318f, 1132f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1242f, arg_1.x, arg_1.x))))), select(select(u_input.b, vec4<i32>(-1i, 1i, arg_2, arg_2), 1u <= u_input.d.x), u_input.b, vec4<bool>(true, true, true, true)), u_input.a.x & 7297i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.x, -367f, -1053f) + vec4<f32>(-246f, 1606f, arg_1.x, 467f)))), vec4<f32>(-1684f, _wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(-arg_0.x), -233f)), 6199i <= ~_wgslsmith_add_i32(arg_2, 0i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, -1221f, -845f, -1444f)))), u_input.b, 1i, vec4<f32>(_wgslsmith_f_op_f32(1564f * _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(sign(-1701f)), _wgslsmith_f_op_f32(-arg_1.x)), !(!any(vec4<bool>(true, false, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = vec2<bool>(true || (true && !all(vec3<bool>(var_0.b.e, true, false))), 1000f <= arg_0.x);
    var_1 = 657f;
    let var_3 = u_input.d;
    return !func_3(Struct_3(vec3<bool>(all(vec4<bool>(true, false, var_2.x, false)), true, !var_0.c.e), var_0), Struct_3(vec3<bool>(u_input.b.x != u_input.b.x, all(vec3<bool>(var_2.x, var_2.x, true)), any(vec4<bool>(true, var_0.b.e, true, true))), var_0), Struct_3(!vec3<bool>(var_0.b.e, var_0.c.e, var_0.c.e), Struct_2(var_0.a, Struct_1(vec4<f32>(arg_1.x, -504f, 1000f, 2283f), var_0.b.b, u_input.a.x, vec4<f32>(var_0.c.d.x, 617f, arg_1.x, arg_1.x), var_0.b.e), var_0.b)), Struct_3(!(!vec3<bool>(var_0.b.e, var_2.x, true)), Struct_2(countOneBits(vec3<i32>(var_0.c.b.x, -1i, u_input.c)), var_0.b, var_0.b)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = select(select(arg_1.a, arg_1.a, select(!(!arg_1.a), vec3<bool>(arg_2 & arg_1.b.b.e, all(vec2<bool>(arg_1.b.b.e, true)), arg_1.b.c.e), true)), !(!arg_1.a), true && all(!func_2(vec3<f32>(arg_3.c.a.x, arg_3.b.d.x, -762f), arg_3.b.d.wz, 1i)));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) | u_input.d.x, u_input.d.x), u_input.d.x);
    let var_2 = arg_1.a.xy;
    var var_3 = -851f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_1.b.b.d.x) + -496f);
    return _wgslsmith_clamp_i32(2147483647i >> (~u_input.d.x % 32u), _wgslsmith_dot_vec3_i32(-u_input.b.yxz, vec3<i32>(u_input.c >> (var_1.x % 32u), reverseBits(_wgslsmith_mod_i32(arg_1.b.a.x, arg_1.b.c.b.x)), _wgslsmith_mult_i32(firstLeadingBit(-30198i), arg_1.b.b.b.x))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = select(u_input.a, vec3<i32>(var_0.x << (~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) % 32u), -(func_1(-1484f, Struct_3(vec3<bool>(false, true, true), Struct_2(u_input.b.wxy, Struct_1(vec4<f32>(-358f, 760f, 973f, 900f), vec4<i32>(2147483647i, -964i, var_0.x, var_0.x), u_input.a.x, vec4<f32>(113f, -404f, -744f, -473f), true), Struct_1(vec4<f32>(634f, -515f, -1000f, -1426f), u_input.b, var_0.x, vec4<f32>(1000f, 641f, -282f, 1526f), false))), true, Struct_2(u_input.a, Struct_1(vec4<f32>(-266f, 440f, -1430f, 854f), vec4<i32>(u_input.c, -22934i, -45030i, 0i), var_0.x, vec4<f32>(-1633f, 748f, -690f, 738f), true), Struct_1(vec4<f32>(-472f, 2148f, -297f, -1851f), vec4<i32>(24637i, u_input.c, var_0.x, u_input.a.x), u_input.c, vec4<f32>(-1000f, -1000f, 118f, -408f), false))) >> (firstLeadingBit(50132u) % 32u)), var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(!any(vec3<bool>(true, true, false)), true, firstTrailingBit(u_input.d.x) == 4294967295u), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(401f, 580f)) * _wgslsmith_f_op_f32(-744f - 519f)), 226f)))));
    var_0 = select(vec3<i32>(u_input.b.x, u_input.c, _wgslsmith_mod_i32(61468i, ~_wgslsmith_add_i32(39776i, u_input.b.x))), -vec3<i32>(0i, var_0.x, -77627i), select(vec3<bool>(true, true, true), select(vec3<bool>(true, u_input.d.x <= 68156u, true), vec3<bool>(select(false, false, false), all(vec2<bool>(true, false)), false), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true == any(vec3<bool>(true, true, true)), select(true, u_input.d.x <= 81037u, true), true)));
    var var_2 = max(abs(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, 16295u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.d.x, 35629u, 1u), reverseBits(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x)), reverseBits(vec4<u32>(0u, u_input.d.x, 4294967295u, 21725u))), vec4<u32>(0u, 51986u, u_input.d.x, 28645u) & abs(vec4<u32>(1u, 1192u, u_input.d.x, 142128u)), !(-27871i < u_input.b.x))), ~(~(~vec4<u32>(u_input.d.x, 0u, 1u, 4294967295u))));
    let var_3 = Struct_2((vec3<i32>(1i, firstTrailingBit(2147483647i), _wgslsmith_div_i32(var_0.x, u_input.b.x)) >> ((u_input.d >> (~u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<i32>(1i, 0i, u_input.a.x ^ (-1i >> (1u % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-877f, var_1, var_1, var_1)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-950f, -507f, -1000f, 547f))), u_input.b, -2147483647i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-457f, var_1, var_1, var_1))))), vec4<f32>(_wgslsmith_div_f32(var_1, -1027f), 178f, _wgslsmith_f_op_f32(step(1948f, -654f)), _wgslsmith_f_op_f32(-844f * 1360f)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), 108f, _wgslsmith_f_op_f32(f32(-1f) * -1532f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(540f, var_1)))), -u_input.b, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, var_0.x), countOneBits(u_input.c)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 172f, var_1, var_1)) + vec4<f32>(2020f, -1874f, var_1, var_1)))), ((4294967295u != var_2.x) != true) & true));
    let var_4 = var_0.x;
    var var_5 = ~1i;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(var_3.c.a.x + -611f), -228f, var_1, -1457f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, -1i, var_2.yz, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -1000f) - -347f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_6.x)))))), var_3.b.a);
}

