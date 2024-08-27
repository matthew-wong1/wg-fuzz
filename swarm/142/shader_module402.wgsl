struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(arg_3.b.c & min(~vec4<i32>(-32020i, u_input.b.x, -1i, arg_3.b.d), _wgslsmith_div_vec4_i32(arg_3.c.c, vec4<i32>(-32446i, 5970i, -75698i, 1i))), arg_3.c.c), Struct_1(_wgslsmith_mult_vec4_u32(select(arg_3.c.a, _wgslsmith_div_vec4_u32(arg_3.d, vec4<u32>(4294967295u, u_input.a, 56612u, arg_3.b.a.x)), vec4<bool>(false, true, true, true)), arg_3.d), arg_3.c.a, -arg_3.e.c, -19264i), arg_3.b, vec4<u32>(_wgslsmith_div_u32(countOneBits(arg_3.b.b.x), ~(~arg_3.d.x)), ~(arg_3.b.a.x << (36135u % 32u)) ^ u_input.a, 43540u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(33580u, arg_3.c.b.x)), reverseBits(min(vec2<u32>(4294967295u, arg_3.d.x), vec2<u32>(36168u, arg_3.e.b.x))))), Struct_1(arg_3.b.a, _wgslsmith_sub_vec4_u32(arg_3.d, ~arg_3.c.b), arg_3.c.c & arg_3.b.c, u_input.b.x));
    let var_1 = u_input.b.x;
    var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~(~arg_3.a), abs(max(var_1, u_input.b.x))), -2147483647i), arg_3.c, Struct_1(~(~(~vec4<u32>(u_input.a, arg_3.e.b.x, u_input.a, arg_3.c.a.x))), arg_3.c.b, ~vec4<i32>(-1i, var_1, select(22496i, var_0.b.d, true), var_0.a), -var_1), ~max(~_wgslsmith_clamp_vec4_u32(arg_3.d, var_0.d, vec4<u32>(0u, 57087u, 4294967295u, arg_3.e.b.x)), ~(~var_0.b.a)), arg_3.c);
    var var_2 = vec4<bool>(!(!all(vec2<bool>(false, false))), (select(min(-1i, var_1), ~(-1i), true) | _wgslsmith_clamp_i32(var_0.c.d, firstLeadingBit(var_0.a), select(3846i, arg_3.e.d, false))) >= 1i, min(~7688i, reverseBits(_wgslsmith_mod_i32(1i, 1i))) < arg_3.c.c.x, true);
    let var_3 = vec3<u32>(~4294967295u, 20586u, var_0.c.a.x);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xy + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1588f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(min(arg_0.xy, vec2<f32>(347f, arg_1.x))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -535f) * arg_2);
    var var_1 = Struct_1(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_3, arg_3, u_input.a), vec4<u32>(4294967295u, 0u, arg_3, 4294967295u)), 9392u, ~37674u, 1u)), vec4<u32>(u_input.a, reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 41966u, arg_3), vec3<u32>(arg_3, arg_3, 48572u)), 41503u)), _wgslsmith_add_u32(countOneBits(arg_3), 0u), (arg_3 | firstTrailingBit(7215u)) << (~(~arg_3) % 32u)), -vec4<i32>(7587i, arg_1.x << (abs(u_input.a) % 32u), _wgslsmith_mod_i32(2147483647i, -101279i) & select(6757i, 23650i, false), -16313i), firstLeadingBit(select(u_input.b.x, _wgslsmith_add_i32(countOneBits(-13411i), i32(-1i) * -29846i), any(vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0.x, arg_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2.x)))))), arg_2.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1589f)), arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(-396f - arg_2.x), 628f), vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), true)))));
    var var_3 = Struct_1(vec4<u32>(arg_3, u_input.a, _wgslsmith_dot_vec4_u32(~(~var_1.a), abs(vec4<u32>(1u, var_1.b.x, arg_3, 0u))), ~(~0u)), ~vec4<u32>(var_1.a.x, _wgslsmith_sub_u32(~79922u, _wgslsmith_dot_vec2_u32(var_1.a.xy, var_1.a.zx)), abs(~arg_3), _wgslsmith_add_u32(abs(var_1.a.x), max(arg_3, 4830u))), ~(~vec4<i32>(var_1.c.x, 18678i, 57248i, 0i) & ~vec4<i32>(var_1.d, arg_1.x, -42131i, var_1.c.x)), _wgslsmith_dot_vec4_i32(reverseBits(var_1.c) | vec4<i32>(countOneBits(19717i), countOneBits(u_input.b.x), u_input.b.x, abs(2147483647i)), abs(var_1.c)));
    var var_4 = select(select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(true, true, true), true)), vec4<bool>(true, !any(vec3<bool>(true, true, true)), !(!any(vec2<bool>(false, true))), any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, false)))), select(!vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))));
    return -vec2<i32>(firstTrailingBit(countOneBits(0i >> (var_3.a.x % 32u))), u_input.b.x);
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.b.x;
    let var_1 = -(_wgslsmith_add_vec2_i32(u_input.b, firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 76152i), u_input.b))) | ~func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(453f, -1286f, -967f))), firstLeadingBit(vec3<i32>(19459i, 0i, 20737i)), _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(817f, 411f, -539f), vec3<f32>(-1851f, 595f, 305f), 1041f, Struct_3(-1i, Struct_1(vec4<u32>(67621u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 46978u), vec4<i32>(u_input.b.x, u_input.b.x, 308i, -1i), u_input.b.x), Struct_1(vec4<u32>(4294967295u, 8700u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 8112u, u_input.a), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -16430i), u_input.b.x), vec4<u32>(u_input.a, 69618u, u_input.a, u_input.a), Struct_1(vec4<u32>(89061u, u_input.a, u_input.a, 1255u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<i32>(77207i, 0i, -2147483647i, u_input.b.x), u_input.b.x)))), firstTrailingBit(47571u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(487f, -1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f * 1290f))))) <= -1812f;
    var var_3 = max(u_input.a, firstTrailingBit(0u >> (~u_input.a % 32u)));
    var_3 = 79243u;
    return Struct_4((-_wgslsmith_clamp_vec4_i32(vec4<i32>(55530i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(1i, 0i, 18438i, var_1.x), vec4<i32>(-1i, u_input.b.x, 0i, 49979i)) ^ abs(abs(vec4<i32>(var_1.x, u_input.b.x, var_1.x, u_input.b.x)))) ^ vec4<i32>(4707i, _wgslsmith_div_i32(var_1.x ^ u_input.b.x, var_1.x | 23232i), 11698i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, u_input.b.x) ^ vec4<i32>(var_1.x, -1i, 42070i, var_1.x), vec4<i32>(19273i, var_1.x, 10844i, var_1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, func_4(vec3<f32>(1f, 1f, 1f), vec3<i32>(1i, var_1.x, var_1.x), vec2<f32>(1000f, 1047f), 4294967295u).x, ~(~30665i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(14883i, u_input.b.x, var_1.x, u_input.b.x))), _wgslsmith_mult_vec4_i32(min(max(vec4<i32>(-1i, u_input.b.x, var_1.x, u_input.b.x), vec4<i32>(0i, var_1.x, var_1.x, 1i)), vec4<i32>(u_input.b.x, 23318i, u_input.b.x, -2147483647i)), firstLeadingBit(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, -18928i))))), Struct_3(min(abs(i32(-1i) * -1i), ~(-var_1.x)), Struct_1(~(~vec4<u32>(u_input.a, 2113u, 11346u, u_input.a)), vec4<u32>(685u, u_input.a, ~31796u, 15026u), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 3730i, var_1.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, -10158i, 2147483647i), vec4<i32>(var_1.x, u_input.b.x, u_input.b.x, 24856i))), -10598i), Struct_1(min(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(4294967295u, 0u, 1u, u_input.a)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(20020u, 4294967295u, u_input.a, 22100u)), ~vec4<u32>(u_input.a, u_input.a, 2483u, u_input.a), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, -19146i, u_input.b.x, var_1.x), vec4<i32>(-6152i, 1i, u_input.b.x, u_input.b.x)), 2147483647i), abs(max(vec4<u32>(1u, u_input.a, 10232u, 4294967295u) >> (vec4<u32>(u_input.a, 18213u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(42585u, 46800u, 4294967295u, 24219u))), Struct_1(vec4<u32>(~1785u, min(1u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 20438u), vec4<u32>(54974u, 4294967295u, u_input.a, 4294967295u)), u_input.a), vec4<u32>(74522u, 44596u, u_input.a, abs(u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 1i, 2147483647i, 2147483647i), vec4<i32>(-1i, 1i, u_input.b.x, -2147483647i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), min(vec4<i32>(u_input.b.x, -2147483647i, 51906i, u_input.b.x), vec4<i32>(-1546i, var_1.x, 0i, -44296i))), u_input.b.x)), vec3<bool>(false | (-var_1.x <= (i32(-1i) * -27451i)), false, !any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1416f, 390f) * vec2<f32>(-188f, 1218f))), vec2<f32>(_wgslsmith_f_op_f32(round(-811f)), _wgslsmith_f_op_f32(-2154f * -675f)))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = arg_0 >= (4294967295u & firstTrailingBit(var_0.c.c.b.x ^ arg_0));
    var var_2 = Struct_4(vec4<i32>(arg_3, -14329i, _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(var_0.b.zy, vec2<i32>(1i, arg_3)), var_0.a.wx), -2147483647i), var_0.c.e.c, func_2().c, !(!(!var_0.d)), _wgslsmith_f_op_vec2_f32(-var_0.e));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.e.x, var_2.e.x, 928f, var_2.e.x))), vec4<f32>(551f, var_0.e.x, 1203f, -653f), select(vec4<bool>(true, true, false, var_2.d.x), vec4<bool>(true, arg_1.x, false, false), var_0.d.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_2.e.x, var_0.e.x, -1468f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, 1000f, var_2.e.x, var_2.e.x) - vec4<f32>(var_0.e.x, -1340f, var_0.e.x, 697f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 591f, 641f, var_0.e.x) * vec4<f32>(-654f, var_2.e.x, 875f, var_0.e.x))))), vec4<f32>(-260f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e.x * var_2.e.x))))), _wgslsmith_f_op_f32(-var_2.e.x), var_2.e.x));
    let var_4 = var_0.e.x;
    return Struct_2(var_2.c.b, var_2.d, vec4<f32>(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(select(713f, _wgslsmith_f_op_f32(-var_0.e.x), any(vec3<bool>(true, true, arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) - -440f) + _wgslsmith_f_op_f32(344f - -655f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1244f))), -1516f), min(var_0.b.wzw, var_0.a.yxz), var_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1066f, -649f, 661f), _wgslsmith_f_op_vec3_f32(vec3<f32>(430f, -661f, -1000f) * vec3<f32>(114f, -682f, 1647f)), all(vec2<bool>(false, true)))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1285f * -221f), _wgslsmith_f_op_f32(737f * -369f), _wgslsmith_f_op_f32(-175f * 2644f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -642f, 636f) + vec3<f32>(-1398f, -663f, -641f)) * vec3<f32>(205f, 795f, 213f)))));
    var var_1 = func_1(~(~u_input.a << (~(~u_input.a) % 32u)), vec2<bool>(!(!all(vec4<bool>(true, false, true, true))), ~abs(u_input.a) == u_input.a), any(vec2<bool>(true, false)), _wgslsmith_mod_i32(max(_wgslsmith_add_i32(-u_input.b.x, u_input.b.x), ~(-u_input.b.x)), -u_input.b.x << ((38618u | ~u_input.a) % 32u)));
    var_1 = func_1(firstTrailingBit(~84029u), select(var_1.b.xy, !(!select(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.zz, var_1.b.x)), select(!func_2().d.zy, func_2().d.zz, _wgslsmith_sub_i32(u_input.b.x, -1i) == 0i)), _wgslsmith_div_u32(~u_input.a, ~var_1.a.b.x) > _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.e.b.x, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(~var_1.a.a.x, abs(var_1.e.a.x))), var_1.d.x);
    var var_2 = u_input.b.x;
    var var_3 = !func_1(u_input.a, vec2<bool>(!var_1.b.x, !var_1.b.x), !var_1.b.x, ~30618i).b;
    let var_4 = select(select(vec4<bool>(var_3.x, var_1.b.x, all(vec3<bool>(var_1.b.x, var_1.b.x, var_3.x)), var_1.b.x), vec4<bool>(var_1.a.a.x <= 1u, !(var_1.d.x < 2147483647i), false, false), vec4<bool>(false, true && !var_1.b.x, ~u_input.a == _wgslsmith_mod_u32(19021u, u_input.a), var_3.x)), !select(vec4<bool>(any(vec3<bool>(true, var_3.x, false)), false, true, true), !(!vec4<bool>(var_1.b.x, var_1.b.x, false, var_3.x)), var_1.b.x), !(max(~u_input.a, u_input.a) != _wgslsmith_sub_u32(18343u, u_input.a)));
    var var_5 = func_2().c;
    let var_6 = func_2().c;
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.d, func_2().c.e.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, var_1.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_5.e.a.x, ~var_6.b.a.x, u_input.a), _wgslsmith_div_vec3_u32(min(var_6.e.a.yxz, var_6.c.b.xzx), var_5.e.a.xww)), vec4<u32>(0u, _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_6.d.x, var_5.b.a.x), var_1.a.a.zz)), u_input.a, var_1.e.b.x));
}

