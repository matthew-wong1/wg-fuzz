struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(1i, u_input.c.x, 2147483647i) << (min(43371u, u_input.d.x) % 32u), ~(~(-57926i))) & vec3<i32>(0i, ~0i, i32(-1i) * -2147483647i), vec3<i32>(select(-countOneBits(2147483647i), u_input.c.x, !any(vec2<bool>(false, true))), _wgslsmith_div_i32(_wgslsmith_mod_i32(18900i, 0i << (u_input.b.x % 32u)), -2147483647i), firstLeadingBit(-2147483647i)));
    let var_1 = ~(~countOneBits(select(~vec4<i32>(u_input.c.x, u_input.c.x, var_0.x, u_input.c.x), abs(vec4<i32>(arg_0, u_input.c.x, arg_0, -28225i)), false)));
    let var_2 = var_1.zyz;
    let var_3 = Struct_5(Struct_1(~max(63281u, 0u), min(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1077i, u_input.c.x), vec3<i32>(-73955i, var_2.x, var_2.x))), -vec3<i32>(var_1.x, u_input.c.x, var_2.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), true, !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), Struct_1(u_input.a.x, max(vec3<i32>(var_2.x, reverseBits(arg_0), firstTrailingBit(var_2.x)), vec3<i32>(var_1.x, 29448i, 46383i) & select(vec3<i32>(1i, var_1.x, arg_0), var_0, vec3<bool>(false, true, true))), false, true, select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), !any(vec3<bool>(true, true, false)))), Struct_3(_wgslsmith_clamp_vec4_i32(-(var_1 | vec4<i32>(var_1.x, var_2.x, -2147483647i, u_input.c.x)), vec4<i32>(~var_0.x, abs(-31412i), _wgslsmith_sub_i32(var_1.x, -10621i), ~var_0.x), var_1), countOneBits(vec4<u32>(u_input.b.x | u_input.b.x, 1u, 4294967295u, u_input.b.x))), vec2<bool>((_wgslsmith_div_i32(u_input.c.x, var_1.x) & _wgslsmith_mod_i32(var_1.x, arg_0)) < _wgslsmith_dot_vec2_i32(var_1.yw, vec2<i32>(u_input.c.x, var_1.x) << (vec2<u32>(5524u, u_input.b.x) % vec2<u32>(32u))), true));
    var var_4 = Struct_1(~_wgslsmith_clamp_u32(1u, countOneBits(~1u), abs(u_input.d.x) ^ 0u), var_2, true, false, !(!(!(!vec2<bool>(var_3.d.x, false)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, 321f, -1126f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1291f, -1911f, -162f) * vec3<f32>(-793f, 1222f, -244f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2180f, -704f) * vec3<f32>(-1468f, -821f, -205f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(-1596f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1054f, -1624f) - _wgslsmith_f_op_f32(f32(-1f) * -1233f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-911f, 1000f, 1000f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(486f, 197f, -268f), vec3<f32>(1320f, -1649f, -580f))))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(828f, 663f, -498f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.c.x)) + vec3<f32>(156f, 125f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1993f, 508f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1516f - 2274f), _wgslsmith_f_op_f32(max(365f, 1914f))), _wgslsmith_f_op_vec3_f32(func_3(-arg_1.b.x)).x))));
    let var_1 = true;
    return _wgslsmith_dot_vec3_u32(abs(~u_input.b.yxx), u_input.d.ywz);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = select(select(select(vec2<bool>(!arg_0, !arg_0), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), vec2<bool>(true, false)), true), true), vec2<bool>(true, arg_0), vec2<bool>(reverseBits(u_input.b.x) <= 1u, all(!vec3<bool>(arg_0, false, arg_0)))), vec2<bool>(false, arg_0), select(vec2<bool>(false, true == (38442i < u_input.c.x)), select(vec2<bool>(arg_0 && false, arg_0 & true), !vec2<bool>(arg_0, arg_0), all(!vec3<bool>(arg_0, arg_0, arg_0))), select(vec2<bool>(arg_0, false && arg_0), vec2<bool>(arg_0, u_input.c.x < -10072i), true)));
    let var_1 = Struct_5(Struct_1(u_input.d.x, _wgslsmith_mod_vec3_i32(~(-u_input.c), -u_input.c >> ((vec3<u32>(u_input.a.x, u_input.a.x, 35245u) & u_input.b.zwx) % vec3<u32>(32u))), true, arg_0 && (arg_0 || true), var_0), Struct_1(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), u_input.c, all(!vec3<bool>(false, false, var_0.x)) == var_0.x, false, var_0), Struct_3(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -13480i), vec4<i32>(-15429i, u_input.c.x, u_input.c.x, u_input.c.x)) & ~(vec4<i32>(7133i, u_input.c.x, 0i, 206i) | vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i)), ~(~(~vec4<u32>(u_input.a.x, u_input.d.x, 1u, u_input.d.x)))), var_0);
    var var_2 = var_1.c;
    let var_3 = Struct_4(~(~var_2.b.x));
    var var_4 = 100f;
    return vec4<bool>(any(select(!vec3<bool>(arg_0, var_0.x, var_1.a.c), !vec3<bool>(var_0.x, true, true), !var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + arg_1.x) + arg_1.x) < arg_1.x, var_1.d.x, !arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(u_input.d.x > ~(func_2(vec3<bool>(true, true, true), Struct_1(u_input.b.x, u_input.c, true, false, vec2<bool>(false, true))) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1072f * _wgslsmith_f_op_f32(f32(-1f) * -1566f)), _wgslsmith_f_op_f32(round(1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f - 460f)), _wgslsmith_f_op_vec3_f32(func_3(10477i)).x), vec4<f32>(1000f, _wgslsmith_f_op_f32(-1799f - _wgslsmith_f_op_f32(-488f - 2029f)), -810f, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(707f, -526f))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))));
    let var_1 = ~0u;
    var_0 = vec4<bool>(any(func_4(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, 372f, 1310f, 1000f) + vec4<f32>(217f, 2175f, 2292f, -281f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, 410f, 940f, 1000f)))).zzz), all(!var_0.xw), var_0.x & (-abs(0i) != (_wgslsmith_div_i32(11248i, u_input.c.x) ^ ~u_input.c.x)), var_0.x);
    let var_2 = !var_0.zxw;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1248f * -142f), _wgslsmith_f_op_f32(abs(1115f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, -580f) - vec2<f32>(2465f, -686f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-560f, 101f) + vec2<f32>(510f, 233f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + -112f), _wgslsmith_f_op_f32(step(1621f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(718f, -277f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(769f, 119f)))))), var_2);
    return Struct_1(var_1, u_input.c, any(select(!select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_2.x), var_0.x), vec2<bool>(false, true), false)), true & any(vec4<bool>(any(var_0.ywx), var_0.x, var_2.x, true)), !(!(!vec2<bool>(false, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(~abs(u_input.c.x), ~(-2147483647i)), 39943i);
    var_0 = u_input.c.yx;
    var_0 = ~_wgslsmith_div_vec2_i32(~(~abs(vec2<i32>(u_input.c.x, u_input.c.x))), -_wgslsmith_mult_vec2_i32(u_input.c.yx << (vec2<u32>(1u, 35009u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.c.zx, u_input.c.zy)));
    let var_1 = func_1();
    let var_2 = vec3<bool>(var_1.e.x, all(!var_1.e), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zyx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(561f, -407f) * vec2<f32>(506f, -980f))) - vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-28994i, 2147483647i, u_input.c.x, 1i), vec4<i32>(-34209i, u_input.c.x, var_0.x, u_input.c.x)))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(960f - 1119f))))), 991f);
}

