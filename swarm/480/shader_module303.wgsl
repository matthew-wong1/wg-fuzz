struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: f32;

var<private> global2: array<vec4<i32>, 5>;

var<private> global3: i32 = -9124i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    global3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-26672i, 9102i), 1i);
    let var_0 = 155f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-618f, _wgslsmith_f_op_f32(-var_0))))) - var_0);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * 1000f), var_0)) + _wgslsmith_f_op_f32(-256f - _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = vec3<bool>(true, !(!select(true, true, select(true, true, true))), !any(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(floor(var_1));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-647f)), 1078f, -192f, 372f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1408f, -2518f, 761f, -285f) + vec4<f32>(425f, 244f, -797f, 868f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) * _wgslsmith_f_op_f32(f32(-1f) * -1269f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(max(-1000f, -1381f))), arg_0.c.c.x <= 23394u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-723f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1449f)), -936f, _wgslsmith_f_op_f32(f32(-1f) * -950f)))));
    let var_1 = ~arg_2.b;
    global2 = array<vec4<i32>, 5>();
    let var_2 = arg_0.e.c.x;
    var var_3 = arg_0.c;
    return vec4<bool>(arg_0.e.b.x, arg_0.a.b.x, arg_2.a.b.x, arg_0.d);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), arg_0, 743f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-1000f, arg_0, arg_0), false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-714f, arg_0, -196f))), true)))));
    let var_1 = Struct_2(Struct_1(reverseBits(u_input.c), select(vec4<bool>(all(vec3<bool>(false, false, true)), var_0.x != -1399f, any(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)), func_3(Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, true, false, true), vec2<u32>(1u, 31368u)), vec3<i32>(20894i, 40072i, -11516i), Struct_1(u_input.c, vec4<bool>(false, false, false, false), u_input.d), true, Struct_1(8844i, vec4<bool>(true, true, true, true), arg_1.yx)), ~u_input.d.x, Struct_2(Struct_1(-17009i, vec4<bool>(true, true, true, false), u_input.d), u_input.a.zwx, Struct_1(-30546i, vec4<bool>(true, false, false, true), vec2<u32>(73117u, 17901u)), true, Struct_1(u_input.a.x, vec4<bool>(true, true, true, false), vec2<u32>(43022u, u_input.d.x))))), ~reverseBits(arg_1.xz)), abs(-vec3<i32>(-66486i, u_input.b.x, -1i)), Struct_1(~_wgslsmith_mult_i32(i32(-1i) * -28074i, u_input.c), func_3(Struct_2(Struct_1(-1i, vec4<bool>(true, false, false, true), u_input.d), vec3<i32>(-1i, 3411i, u_input.c) | u_input.a.wyw, Struct_1(-2147483647i, vec4<bool>(false, false, true, true), vec2<u32>(54106u, u_input.d.x)), true, Struct_1(u_input.b.x, vec4<bool>(false, true, true, true), u_input.d)), _wgslsmith_mult_u32(30234u, arg_1.x), Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, true, true, true), vec2<u32>(127497u, 1u)), u_input.a.zwy, Struct_1(u_input.c, vec4<bool>(true, true, false, false), vec2<u32>(10954u, arg_1.x)), true, Struct_1(19303i, vec4<bool>(true, false, false, true), vec2<u32>(36488u, arg_1.x)))), vec2<u32>(_wgslsmith_mod_u32(~arg_1.x, u_input.d.x), arg_1.x >> ((10362u >> (u_input.d.x % 32u)) % 32u))), any(vec2<bool>(true, true)), Struct_1(abs(countOneBits(u_input.c)), func_3(Struct_2(Struct_1(u_input.b.x, vec4<bool>(true, false, false, true), u_input.d), abs(u_input.a.xzw), Struct_1(-1i, vec4<bool>(false, true, false, false), vec2<u32>(arg_1.x, arg_1.x)), true, Struct_1(-5126i, vec4<bool>(true, false, false, true), vec2<u32>(u_input.d.x, arg_1.x))), arg_1.x, Struct_2(Struct_1(u_input.c, vec4<bool>(false, true, true, false), vec2<u32>(17518u, u_input.d.x)), _wgslsmith_clamp_vec3_i32(u_input.a.xyw, vec3<i32>(-1i, u_input.a.x, u_input.c), vec3<i32>(u_input.c, u_input.b.x, 34935i)), Struct_1(-4835i, vec4<bool>(true, true, false, true), arg_1.zz), true, Struct_1(1i, vec4<bool>(false, false, true, true), vec2<u32>(u_input.d.x, 1u)))), (vec2<u32>(arg_1.x, 23101u) & u_input.d) >> (arg_1.xz % vec2<u32>(32u))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(firstTrailingBit(-u_input.b.x), 1i)), 0i);
    let var_3 = vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 1u), 1u, 29212u, ~(~(arg_1.x ^ u_input.d.x)) | ~0u);
    var var_4 = var_1.a;
    return Struct_1(-_wgslsmith_sub_i32(1i, abs(~30782i)), select(!vec4<bool>(var_1.e.b.x & true, any(var_1.a.b.ww), true, true && var_4.b.x), func_3(var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_3, vec4<u32>(var_4.c.x, u_input.d.x, 4294967295u, var_4.c.x)), var_3 ^ var_3), Struct_2(var_1.a, -vec3<i32>(6074i, u_input.b.x, var_4.a), Struct_1(u_input.a.x, var_4.b, var_1.c.c), true, var_1.c)), vec4<bool>(all(var_4.b.xy), !var_4.b.x, any(global0[_wgslsmith_index_u32(1u, 20u)]), any(func_3(var_1, 1u, Struct_2(Struct_1(-2147483647i, vec4<bool>(var_4.b.x, false, var_1.e.b.x, false), vec2<u32>(var_3.x, arg_1.x)), var_1.b, var_1.a, true, Struct_1(-21853i, var_4.b, var_3.wx)))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, u_input.d.x), ~29262u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, arg_1.x), arg_1.zx) | abs(var_3.xw)), 4294967295u));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-757f, -818f)) * arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1, 682f))), _wgslsmith_f_op_f32(ceil(-486f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - -972f)))));
    var var_2 = func_1(1000f, ~arg_2).a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * arg_1));
    return 10170i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~func_4(vec4<i32>(-1i) * -(~vec4<i32>(32903i, u_input.c, -1i, u_input.c)), 264f, firstLeadingBit(vec3<u32>(0u, abs(0u), u_input.d.x)), Struct_2(func_1(_wgslsmith_div_f32(1588f, 1645f), vec3<u32>(1u, u_input.d.x, 1u) & vec3<u32>(u_input.d.x, 56919u, 1u)), abs(u_input.a.xww) | vec3<i32>(u_input.a.x, u_input.b.x, 26598i), Struct_1(~u_input.a.x, func_3(Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, true, true, false), vec2<u32>(u_input.d.x, u_input.d.x)), vec3<i32>(-1i, 0i, -36567i), Struct_1(u_input.c, vec4<bool>(true, true, false, true), vec2<u32>(u_input.d.x, 10238u)), true, Struct_1(u_input.a.x, vec4<bool>(false, false, false, false), vec2<u32>(17475u, 4294967295u))), 4294967295u, Struct_2(Struct_1(-25126i, vec4<bool>(true, true, false, true), u_input.d), u_input.a.yxz, Struct_1(u_input.b.x, vec4<bool>(true, false, false, false), vec2<u32>(u_input.d.x, 89498u)), true, Struct_1(-3990i, vec4<bool>(false, true, true, true), u_input.d))), vec2<u32>(0u, 25893u)), all(!global0[_wgslsmith_index_u32(8733u, 20u)]), func_1(-190f, ~vec3<u32>(u_input.d.x, 4294967295u, 26112u))));
    global3 = u_input.a.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1111f, 477f), _wgslsmith_f_op_f32(702f * 263f))))) * _wgslsmith_f_op_f32(-610f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f))));
    var var_0 = func_1(1f, ~firstLeadingBit(vec3<u32>(10624u, u_input.d.x, u_input.d.x)));
    var_0 = Struct_1(firstLeadingBit(54752i), !(!func_3(Struct_2(Struct_1(24470i, var_0.b, vec2<u32>(var_0.c.x, 0u)), u_input.a.xwx, Struct_1(1i, vec4<bool>(true, var_0.b.x, true, true), vec2<u32>(0u, 1u)), var_0.b.x, Struct_1(u_input.a.x, var_0.b, vec2<u32>(21031u, var_0.c.x))), ~99016u, Struct_2(Struct_1(2147483647i, var_0.b, var_0.c), u_input.a.ywx, Struct_1(u_input.b.x, var_0.b, var_0.c), var_0.b.x, Struct_1(40425i, vec4<bool>(true, true, true, true), vec2<u32>(24915u, u_input.d.x))))), ~vec2<u32>(0u, ~(~4294967295u)));
    let var_1 = Struct_1(u_input.a.x, var_0.b, countOneBits(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(997f, 353f)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, 0u, 40837u), vec3<u32>(u_input.d.x, 49582u, var_0.c.x)), max(vec3<u32>(1u, 34067u, u_input.d.x), vec3<u32>(4294967295u, var_0.c.x, 94111u)))).c));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-239f, 1f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(143f - 1422f), _wgslsmith_f_op_f32(-213f + 404f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-957f, _wgslsmith_f_op_f32(ceil(2329f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, -1586f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, 2230f))))));
    global3 = _wgslsmith_clamp_i32(countOneBits(u_input.c), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.a, u_input.b.x, -53543i), vec3<i32>(var_0.a, var_1.a, -2147483647i)) | vec3<i32>(var_1.a, 0i, -18170i), u_input.a.zyx), -49051i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(4294967295u, var_1.c.x)), abs(var_0.c.x << (var_0.c.x % 32u))), vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, 0i), -21641i & u_input.b.x)), var_1.a, 0i, u_input.c), _wgslsmith_clamp_vec2_u32(u_input.d, _wgslsmith_mult_vec2_u32(~var_0.c >> (min(vec2<u32>(4294967295u, 1u), var_0.c) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, firstTrailingBit(0u))), reverseBits(~u_input.d)));
}

