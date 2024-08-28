struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-1i, -27304i, 0i, 22900i), vec4<i32>(20905i, -697i, i32(-2147483648), -14473i), vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), vec4<i32>(-56130i, 63319i, 11257i, -551i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = 1u >= _wgslsmith_sub_u32(min(~1u, _wgslsmith_mod_u32(~38347u, ~83092u)), select(1u, 25251u << (1u % 32u), true) ^ 27982u);
    global0 = array<vec4<i32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(1905f + _wgslsmith_f_op_f32(-307f + 546f))) - _wgslsmith_f_op_f32(f32(-1f) * -1584f)) - -248f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1528f, 552f, -1860f, -467f))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 300f, -335f, 118f), vec4<f32>(645f, -1116f, 271f, -815f))), vec4<f32>(-936f, -941f, _wgslsmith_f_op_f32(f32(-1f) * -196f), -164f), select(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, true), true), select(vec4<bool>(var_0, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(var_0, var_0, var_0, true)), !vec4<bool>(var_0, var_0, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2752f, 2645f, -595f, -388f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-618f, -1606f, -330f, 970f), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 844f, -1041f, -527f)))))));
    let var_3 = select(!vec4<bool>(true, all(vec2<bool>(var_0, false)) && var_0, _wgslsmith_sub_i32(u_input.a.x, u_input.b) == _wgslsmith_mod_i32(2147483647i, -7764i), var_0), select(select(!(!vec4<bool>(true, var_0, true, false)), !vec4<bool>(true, var_0, false, var_0), true), !select(select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, false, var_0, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0, var_0, var_0), false), true), vec4<bool>(1589f >= var_2.x, false, any(!vec3<bool>(var_0, false, false)), select(false, false, var_2.x > -1143f))), all(!(!select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, false, var_0), true))));
    return 0u;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_2(vec4<u32>(~(~(4294967295u << (0u % 32u))), ~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(49920u, 0u), vec2<u32>(1041u, 2677u)) >> ((func_3() >> (~91438u % 32u)) % 32u), 0u), global0[_wgslsmith_index_u32(~1u, 4u)], Struct_1(true, select(vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), select(vec4<i32>(-1400i, reverseBits(0i), u_input.b, -u_input.a.x), ~(global0[_wgslsmith_index_u32(4294967295u, 4u)] << (vec4<u32>(4294967295u, 17216u, 4294967295u, 0u) % vec4<u32>(32u))), vec4<bool>(true, true, any(vec2<bool>(true, true)), true))), firstLeadingBit(firstTrailingBit(~vec3<u32>(1u, 1u, 1u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-941f, arg_0, 965f, -415f), vec4<f32>(-652f, arg_0, arg_0, 521f))))));
    var var_2 = abs(u_input.a);
    var_0 = Struct_2(var_0.a, ~_wgslsmith_mod_vec4_i32(var_0.b, var_0.b), Struct_1(false, vec4<bool>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_0.d.x, 4u)], global0[_wgslsmith_index_u32(177292u, 4u)]) >= u_input.a.x, false, var_0.c.b.x, !any(var_0.c.b.ywx)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2.x, 2147483647i, var_0.b.x), vec4<i32>(u_input.a.x, firstTrailingBit(var_2.x), ~var_0.b.x, -31026i))), vec3<u32>(~var_0.d.x, 0u, ~16992u));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2116f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -633f)))) + arg_0), Struct_3(var_0.c), vec2<bool>(!all(select(vec2<bool>(false, var_0.c.b.x), var_0.c.b.yz, true)), var_0.c.a), Struct_2(countOneBits(~(~var_0.a)), min(~_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(-2147483647i, u_input.b, 2147483647i, -12659i)), -global0[_wgslsmith_index_u32(min(var_0.d.x, var_0.d.x), 4u)]), Struct_1(false, var_0.c.b, _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(33454u, 4u)], select(global0[_wgslsmith_index_u32(24550u, 4u)], var_0.b, vec4<bool>(var_0.c.a, true, var_0.c.b.x, true)))), vec3<u32>(~(var_0.d.x << (var_0.a.x % 32u)), ~var_0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-607f + _wgslsmith_div_f32(_wgslsmith_div_f32(-841f, arg_0), arg_0))));
    return _wgslsmith_dot_vec3_i32(var_0.b.wxw, _wgslsmith_mod_vec3_i32(var_0.c.c.zzz, _wgslsmith_clamp_vec3_i32(vec3<i32>(-4187i, 20538i, 4335i), -vec3<i32>(var_3.d.c.c.x, var_2.x, 31314i), var_3.b.a.c.wyx)) | _wgslsmith_div_vec3_i32(-abs(var_3.d.b.xxz), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, -1i, var_0.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, var_0.b.x, -9424i), vec3<i32>(var_2.x, u_input.a.x, 1i)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(-vec3<i32>(reverseBits(0i), ~(~52165i), ~arg_3.c.x), max(arg_3.c.zzy, ~_wgslsmith_mod_vec3_i32(~arg_3.c.xzw, arg_3.c.wzz)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-1194f * 257f), Struct_3(arg_2.c), vec2<bool>(arg_1.x, true), arg_2, _wgslsmith_div_f32(722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -840f))) + 337f)));
    var var_2 = var_1.b.a.c.wy;
    var_2 = -vec2<i32>(_wgslsmith_div_i32(var_1.b.a.c.x, -54225i), abs(reverseBits(firstTrailingBit(2147483647i))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, -1122f))))))));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4((_wgslsmith_mod_i32(func_2(-963f), -u_input.a.x) < (u_input.b ^ _wgslsmith_mult_i32(u_input.b, u_input.b))) | !all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec4<bool>(true, true, false, arg_0 >= arg_0), Struct_2(~vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0 | arg_0), ~_wgslsmith_mod_vec4_i32(vec4<i32>(26861i, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.b, u_input.b, u_input.a.x)), Struct_1(!(34640u > arg_0), vec4<bool>(true, true, true, true), -reverseBits(vec4<i32>(u_input.b, 0i, -50190i, -18974i))), reverseBits(~(vec3<u32>(arg_0, 10716u, 0u) >> (vec3<u32>(28783u, arg_0, arg_0) % vec3<u32>(32u))))), Struct_1(any(vec3<bool>(1u >= arg_0, all(vec2<bool>(true, false)), true)), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true, true && all(vec4<bool>(true, false, true, true))), vec4<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(-2147483647i, u_input.b)), 57142i, u_input.a.x, _wgslsmith_mult_i32(~u_input.b, u_input.b)))));
    var var_1 = all(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true, true, !all(vec4<bool>(true, false, true, true)))) || any(vec3<bool>(_wgslsmith_div_u32(arg_0, arg_0) <= 10353u, true, true));
    let var_2 = Struct_1(-abs(-18501i) <= ~u_input.b, !vec4<bool>(true, !all(vec3<bool>(true, false, false)), select(true, all(vec3<bool>(false, false, true)), var_0.x >= 195f), false), vec4<i32>(i32(-1i) * -1i, max(u_input.b, countOneBits(u_input.b)), ~0i, ~u_input.a.x));
    var var_3 = -1i;
    var var_4 = Struct_3(var_2);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(733f, -1406f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1245f, 2012f))))), !(!var_4.a.b.wy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, 514f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, -583f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > -991f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 213f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f * var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(false, vec4<bool>(true, true, var_2.a, var_4.a.b.x), Struct_2(vec4<u32>(45976u, 1u, arg_0, arg_0), var_4.a.c, Struct_1(false, vec4<bool>(true, false, false, var_2.a), vec4<i32>(-1i, var_2.c.x, u_input.b, -1i)), vec3<u32>(1u, 70292u, 39892u)), Struct_1(false, var_2.b, vec4<i32>(-1i, 51510i, 1i, var_4.a.c.x)))).x, -1941f))))), false));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_4) -> vec2<bool> {
    global0 = array<vec4<i32>, 4>();
    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(select(firstTrailingBit(arg_3.d.a.xy), vec2<u32>(4294967295u, arg_3.d.a.x), select(vec2<bool>(true, false), arg_3.b.a.b.xz, false)), vec2<u32>(_wgslsmith_mod_u32(arg_3.d.a.x, 17607u), _wgslsmith_add_u32(44366u, arg_3.d.a.x))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_3.d.d.x, arg_3.d.d.x) ^ firstLeadingBit(arg_3.d.d.x), 1u, arg_3.d.d.x), 31950u, arg_3.d.a.x);
    var_0 = vec4<u32>(abs(~43763u), var_0.x & (reverseBits(arg_3.d.d.x) | (arg_3.d.a.x & 7898u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_3.d.a.zw | vec2<u32>(arg_3.d.a.x, 1u), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(20237u, 1u), false)) << (min(12505u, var_0.x) % 32u), 4294967295u), arg_3.d.d.x);
    let var_1 = Struct_3(arg_3.b.a);
    var_0 = arg_3.d.a;
    return arg_3.d.c.b.wz;
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<bool>) -> bool {
    global0 = array<vec4<i32>, 4>();
    let var_0 = Struct_2(~vec4<u32>(_wgslsmith_add_u32(select(28953u, 0u, true), 1u), ~9519u, _wgslsmith_dot_vec4_u32(~vec4<u32>(34378u, 0u, 32174u, 1u), ~vec4<u32>(102495u, 0u, 18775u, 4294967295u)), ~(~62436u)), -vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), Struct_1(false, arg_1, max(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29445u, 110773u, 8243u), vec3<u32>(14933u, 40434u, 17800u)), 4u)], countOneBits(vec4<i32>(0i, arg_2, 16329i, 0i))), vec4<i32>(func_2(106f), -2147483647i, reverseBits(u_input.b), u_input.a.x))), vec3<u32>(39200u, min(0u, ~1u), ~(~(4294967295u >> (0u % 32u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(177f, -969f, true))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(506f, 507f) - -1760f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1184f + -471f), _wgslsmith_div_f32(-892f, -1000f)))))), _wgslsmith_f_op_f32(step(459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1534f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1618f + 745f), -235f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-182f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f - -538f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f))))));
    let var_2 = select(vec3<bool>(any(vec3<bool>(false, arg_0, arg_0)), var_0.c.b.x, any(var_0.c.b.xx)), vec3<bool>(arg_0, func_5(vec2<f32>(_wgslsmith_div_f32(-107f, -154f), _wgslsmith_f_op_vec2_f32(func_1(1u)).x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.yxw, var_1.xyz), var_1.wyz, any(vec2<bool>(false, var_0.c.b.x)))), var_0.c, Struct_4(_wgslsmith_f_op_f32(sign(699f)), Struct_3(Struct_1(var_0.c.a, arg_1, vec4<i32>(var_0.c.c.x, u_input.a.x, u_input.a.x, arg_2))), !var_0.c.b.yy, var_0, _wgslsmith_div_f32(var_1.x, -1000f))).x, all(!vec3<bool>(arg_3.x, true, arg_1.x)) || !arg_0), func_5(_wgslsmith_f_op_vec2_f32(-var_1.zx), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + var_1.x)), Struct_1(all(vec4<bool>(var_0.c.b.x, true, true, arg_1.x)), vec4<bool>(func_5(var_1.ww, vec3<f32>(var_1.x, 2449f, var_1.x), var_0.c, Struct_4(var_1.x, Struct_3(Struct_1(arg_1.x, var_0.c.b, vec4<i32>(0i, arg_2, u_input.b, u_input.b))), vec2<bool>(arg_1.x, arg_1.x), var_0, var_1.x)).x, arg_1.x, true, all(vec3<bool>(arg_3.x, false, true))), vec4<i32>(_wgslsmith_sub_i32(u_input.b, arg_2), -2147483647i, ~u_input.a.x, -2147483647i)), Struct_4(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(var_1.x, -249f, true))), Struct_3(var_0.c), select(vec2<bool>(arg_0, false), arg_3.wz, select(arg_1.zy, vec2<bool>(false, false), vec2<bool>(arg_3.x, true))), Struct_2(~vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.a.x), _wgslsmith_div_vec4_i32(var_0.c.c, global0[_wgslsmith_index_u32(21666u, 4u)]), var_0.c, abs(vec3<u32>(1u, var_0.d.x, var_0.d.x))), _wgslsmith_f_op_f32(-var_1.x))).x);
    var var_3 = ~(~var_0.a.wwy);
    return all(!var_0.c.b.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 4>();
    var var_0 = Struct_1(func_6(any(func_5(_wgslsmith_f_op_vec2_f32(func_1(8194u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(121f, -1000f, -675f))), Struct_1(false, vec4<bool>(true, true, true, false), vec4<i32>(u_input.b, -2147483647i, -24868i, u_input.a.x)), Struct_4(148f, Struct_3(Struct_1(true, vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(1u, 4u)])), vec2<bool>(false, true), Struct_2(vec4<u32>(38743u, 4294967295u, 39833u, 0u), vec4<i32>(-1i, 2147483647i, u_input.a.x, -14703i), Struct_1(true, vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<u32>(1u, 0u, 0u)), -1695f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(u_input.b, -13931i), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, func_5(vec2<f32>(-1000f, 1000f), vec3<f32>(-662f, -380f, -363f), Struct_1(true, vec4<bool>(false, false, false, false), vec4<i32>(u_input.a.x, -36136i, u_input.b, 0i)), Struct_4(454f, Struct_3(Struct_1(true, vec4<bool>(true, false, false, false), vec4<i32>(1i, u_input.b, -1i, u_input.b))), vec2<bool>(true, true), Struct_2(vec4<u32>(39700u, 0u, 4294967295u, 0u), vec4<i32>(1i, -3369i, u_input.a.x, 0i), Struct_1(true, vec4<bool>(false, true, true, false), vec4<i32>(1i, -1i, -29166i, u_input.b)), vec3<u32>(1u, 0u, 29400u)), 709f)).x, all(vec3<bool>(false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, false, any(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true)), any(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)), true))), -global0[_wgslsmith_index_u32(~(~2202u), 4u)]);
    var var_1 = abs(36206u);
    var var_2 = true;
    var var_3 = Struct_2(~abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 54953u, 4294967295u, 1u), vec4<u32>(28057u, 79757u, 53131u, 27097u)), firstLeadingBit(vec4<u32>(26356u, 1u, 4294967295u, 1u)), ~vec4<u32>(67607u, 40420u, 4294967295u, 0u))), ~vec4<i32>(_wgslsmith_sub_i32(-1i, -32606i), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, -24910i), vec4<i32>(-24863i, var_0.c.x, -17982i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, 0i), vec2<i32>(var_0.c.x, 0i)), _wgslsmith_sub_i32(var_0.c.x, 2147483647i) >> (~4294967295u % 32u)), Struct_1(1224f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(min(412f, -2174f)))), !var_0.b, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(34952u, 1u, 4294967295u));
    var_2 = !var_3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

