struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = ~max(_wgslsmith_mult_vec2_i32(abs(-vec2<i32>(u_input.c.x, u_input.b.x)), u_input.b.zx), vec2<i32>(~(~u_input.c.x), -2147483647i));
    let var_1 = arg_0;
    let var_2 = vec4<bool>(false, _wgslsmith_f_op_f32(457f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, -994f, true))))) >= -793f, arg_0.a, var_1.a);
    var_0 = _wgslsmith_add_vec2_i32(-firstLeadingBit(vec2<i32>(abs(u_input.c.x), 39016i)), -vec2<i32>(reverseBits(1i), _wgslsmith_sub_i32(u_input.c.x, var_0.x) ^ var_0.x));
    let var_3 = var_1;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.b, reverseBits(~u_input.b)), -1i) | -(~(~(~u_input.c.x)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_mod_u32(min(firstLeadingBit(u_input.a), 38722u), u_input.a), vec2<bool>(!any(vec2<bool>(false, true)), !any(vec2<bool>(false, true))), vec2<i32>(max(u_input.b.x, u_input.c.x), -1i) << ((vec2<u32>(42741u, 1u) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), all(vec4<bool>(select(false, false, false), true, true, true)), 34525u), vec3<i32>(1i, 0i, func_3(Struct_2(-2354i > u_input.b.x), Struct_2(true))), Struct_1(~(u_input.a >> (u_input.a % 32u)), vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), !(u_input.a <= 4294967295u)), u_input.c, _wgslsmith_f_op_f32(max(-417f, _wgslsmith_f_op_f32(round(-1000f)))) < _wgslsmith_f_op_f32(ceil(1069f)), firstTrailingBit(u_input.a)), ~(-abs(vec4<i32>(-4567i, u_input.b.x, 0i, -2147483647i))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(48121u, 4294967295u, u_input.a, 17689u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 59041u, u_input.a, u_input.a), vec4<u32>(4278u, 1u, u_input.a, u_input.a)), vec4<u32>(4294967295u, 4577u, 4294967295u, u_input.a)) % vec4<u32>(32u)), 75144u >> (~(~(u_input.a >> (1u % 32u))) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-754f * -265f), -1481f))))));
    var_0 = Struct_5(Struct_1(4294967295u, vec2<bool>((var_0.b.x < 0i) || true, any(vec2<bool>(true, var_0.a.b.x))), u_input.b.zx, var_0.c.b.x, 4294967295u), ~select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c.x, 21909i, var_0.c.c.x), u_input.b, vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.a.b.x)), -u_input.b), _wgslsmith_clamp_vec3_i32(var_0.d.wzx << (vec3<u32>(u_input.a, 50122u, 4294967295u) % vec3<u32>(32u)), ~u_input.b, vec3<i32>(1i, var_0.d.x, var_0.c.c.x)), vec3<bool>(any(vec4<bool>(var_0.c.d, var_0.c.d, false, true)), any(vec4<bool>(var_0.a.d, true, true, var_0.a.d)), any(vec4<bool>(true, var_0.c.b.x, var_0.c.b.x, true)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.a), var_0.a.a, abs(15902u), u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.a.a, 0u, 0u), vec4<u32>(u_input.a, 8215u, 48231u, 4294967295u)))), !var_0.a.b, vec2<i32>(~min(var_0.c.c.x, var_0.b.x), max(0i, ~13636i)), true, ~(~0u)), max((vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.b.x, -26982i, 0i)) << (_wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, 63637u, var_0.c.e, 15157u), vec4<u32>(19034u, 39674u, u_input.a, 40358u)), ~vec4<u32>(0u, var_0.a.a, 4294967295u, 1u)) % vec4<u32>(32u)), var_0.d), 0u);
    let var_2 = ~_wgslsmith_div_u32(4294967295u, ~(u_input.a | 1u)) != u_input.a;
    let var_3 = Struct_4(Struct_3(max(vec3<i32>(u_input.c.x, 0i, 1454i ^ var_0.c.c.x), var_0.b), vec3<bool>(all(vec3<bool>(var_0.a.b.x, var_0.c.d, false)) | true, var_0.c.d, any(!vec3<bool>(false, var_0.a.b.x, false)))));
    return var_3;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 991f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(748f, 1060f) * vec2<f32>(677f, 714f)), vec2<f32>(-1760f, 327f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-552f - -873f), _wgslsmith_f_op_f32(f32(-1f) * -1299f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1554f, -1033f) - vec2<f32>(-812f, -1444f)) * _wgslsmith_div_vec2_f32(vec2<f32>(117f, 644f), vec2<f32>(-1000f, -977f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, 919f) - vec2<f32>(-524f, -1493f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1139f, -985f), vec2<f32>(728f, 535f)))), vec2<f32>(_wgslsmith_div_f32(581f, 2134f), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, 384f)), vec2<f32>(594f, -183f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, -309f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-416f, 292f), vec2<f32>(745f, -1000f))))))));
    let var_2 = 8144i;
    var var_3 = Struct_4(Struct_3(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, var_0.a.a.x, 28252i) ^ vec3<i32>(var_0.a.a.x, -34997i, var_2), abs(vec3<i32>(var_2, var_0.a.a.x, u_input.c.x)), all(vec4<bool>(true, true, false, arg_3.a))), max(vec3<i32>(u_input.c.x, -34088i, u_input.b.x) ^ vec3<i32>(-2147483647i, 62446i, -1i), vec3<i32>(-21546i, -2147483647i, -20585i))), func_2().a.b));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), 271f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-2475f * var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(abs(var_1))), _wgslsmith_f_op_f32(step(var_1.x, -401f)) > -158f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2005f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 325f))));
    return Struct_1(max(_wgslsmith_div_u32(u_input.a, 0u), abs(18776u)), !select(vec2<bool>(true, select(var_3.a.b.x, var_0.a.b.x, false)), var_0.a.b.yy, !var_3.a.b.xx), var_0.a.a.yx, arg_0, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a ^ u_input.a, _wgslsmith_mult_u32(abs(0u), ~1u)), 12085u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    let var_0 = countOneBits(u_input.b);
    var var_1 = arg_0.e;
    var var_2 = arg_0;
    var var_3 = var_2.e;
    let var_4 = Struct_5(Struct_1(arg_1.x, vec2<bool>(!all(vec4<bool>(true, arg_0.d, arg_0.b.x, false)), true), vec2<i32>(-_wgslsmith_mult_i32(arg_2, -33117i), 1i), all(func_2().a.b), select(~(~arg_0.e), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(47579u, 18356u, var_2.e), vec3<u32>(1u, 7375u, arg_1.x)), _wgslsmith_add_vec3_u32(arg_1.wxw, arg_1.xwx)), false)), select(-(~vec3<i32>(var_0.x, 1i, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, _wgslsmith_div_i32(arg_0.c.x, var_0.x)), ~var_0), arg_0.d), func_1(false, -(1i | _wgslsmith_clamp_i32(-1i, 30856i, var_0.x)), vec3<bool>(true, var_2.b.x, true), Struct_2(-arg_2 > _wgslsmith_div_i32(arg_0.c.x, 1i))), -(~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.c.x, 2147483647i, 2147483647i, 0i), vec4<i32>(2147483647i, -4353i, var_0.x, -1i))), arg_1.x);
    return Struct_2(1f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(324f)), _wgslsmith_div_f32(-373f, 1549f))));
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = !vec3<bool>(any(select(vec3<bool>(arg_0.a, false, true), !vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), !func_4(Struct_1(38415u, vec2<bool>(true, true), vec2<i32>(u_input.c.x, u_input.c.x), false, u_input.a), abs(vec4<u32>(19168u, 3977u, 4294967295u, 63886u)), -2147483647i).a, any(vec2<bool>(!arg_0.a, any(vec3<bool>(false, arg_0.a, arg_0.a)))));
    var var_1 = ~vec4<u32>(38653u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(22088u, 39579u, 0u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 40294u)), ~vec4<u32>(u_input.a, 6022u, 60067u, 42280u))), 3145u, func_1(true, 31968i, func_2().a.b, func_4(func_1(var_0.x, u_input.c.x, vec3<bool>(false, var_0.x, var_0.x), arg_0), vec4<u32>(u_input.a, u_input.a, 1931u, u_input.a), u_input.b.x << (u_input.a % 32u))).a);
    var var_2 = vec4<f32>(-2309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(766f, _wgslsmith_f_op_f32(round(-1803f)))) - _wgslsmith_f_op_f32(481f - -913f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(150f)) * _wgslsmith_f_op_f32(min(-1380f, 1639f)))))), -1476f);
    var var_3 = _wgslsmith_f_op_f32(trunc(771f));
    let var_4 = firstTrailingBit(select(~(~u_input.c.x), -firstTrailingBit(~(-32697i)), !(!any(var_0.xy))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(937f, var_2.x, -1045f, _wgslsmith_f_op_f32(f32(-1f) * -1179f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_2.x, var_2.x, -1000f), vec4<f32>(212f, var_2.x, 128f, var_2.x)))), all(vec3<bool>(arg_0.a, false, true)) & false)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1000f, var_2.x) * vec4<f32>(var_2.x, -152f, -1085f, -2165f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -1000f, 431f, var_2.x), vec4<f32>(var_2.x, var_2.x, 942f, -382f), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(-984f, var_2.x, -2011f, -380f))))))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = func_1(arg_3.c.d, -31018i, !vec3<bool>(_wgslsmith_div_i32(var_0.b.x, 8475i) < -u_input.b.x, min(u_input.a, arg_2.a) >= arg_3.a.e, true), func_4(func_1(arg_2.d, arg_2.c.x, vec3<bool>(arg_3.c.b.x || arg_2.d, arg_0.x >= arg_0.x, true), Struct_2(!arg_3.a.b.x)), vec4<u32>(~14185u, _wgslsmith_dot_vec2_u32(vec2<u32>(46552u, u_input.a), abs(vec2<u32>(1u, arg_2.e))), 898u, var_0.e), -_wgslsmith_dot_vec4_i32(var_0.d ^ var_0.d, reverseBits(vec4<i32>(u_input.b.x, 8350i, -1i, 10570i)))));
    var var_2 = Struct_5(func_1(true & any(select(vec4<bool>(var_1.d, arg_2.b.x, var_1.b.x, arg_3.c.b.x), vec4<bool>(false, arg_3.a.d, false, arg_3.a.b.x), true)), func_3(func_4(Struct_1(u_input.a, vec2<bool>(false, var_0.c.d), vec2<i32>(arg_1, -5054i), false, 41521u), vec4<u32>(u_input.a, 52606u, 1u, arg_2.a), ~44825i), func_4(Struct_1(var_0.a.e, var_1.b, vec2<i32>(2147483647i, -2147483647i), arg_2.d, 0u), ~vec4<u32>(1u, var_1.e, 0u, 0u), -1i)), !select(func_2().a.b, vec3<bool>(arg_3.a.b.x, var_0.c.d, true), func_4(Struct_1(4294967295u, vec2<bool>(false, true), vec2<i32>(u_input.b.x, 2636i), false, 1u), vec4<u32>(arg_3.e, 1u, 74086u, arg_2.e), u_input.c.x).a), Struct_2(var_1.d)), reverseBits(~var_0.b), var_0.a, vec4<i32>(~func_1(arg_2.d, -15565i, vec3<bool>(arg_3.c.b.x, true, true), Struct_2(true)).c.x, ~(~(-39935i)), _wgslsmith_mod_i32(arg_2.c.x, _wgslsmith_add_i32(var_0.b.x, -39836i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.d.zzz), var_0.d.yxy)) >> (abs(vec4<u32>(~arg_3.e, abs(var_0.a.a), 0u, 18211u | var_1.e)) % vec4<u32>(32u)), (49080u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32970u, 0u, 4294967295u), vec3<u32>(arg_3.c.e, 1u, arg_3.a.a)), arg_2.e) % 32u)) >> (abs(abs(4294967295u) ^ ~arg_2.e) % 32u));
    let var_3 = arg_3.c.e;
    var var_4 = arg_0.x;
    return Struct_1(2749u, func_2().a.b.zx, arg_3.c.c, var_2.c.d, _wgslsmith_sub_u32(~103948u, _wgslsmith_sub_u32(~(~37547u), ~var_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(false, u_input.b.x, vec3<bool>(false, false, false), Struct_2(false)), countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 13489u)), _wgslsmith_sub_i32(u_input.b.x, -2147483647i)))))), ~(-8248i), Struct_1(~(~u_input.a), func_1(false, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 10914i, -1i), u_input.b), u_input.b), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), func_4(func_1(false, u_input.b.x, vec3<bool>(true, true, false), Struct_2(true)), ~vec4<u32>(u_input.a, 0u, u_input.a, 100569u), u_input.b.x)).b, u_input.c, true, u_input.a), Struct_5(func_1(true, 1i, vec3<bool>(true, true, true), Struct_2(all(vec3<bool>(true, false, true)))), select(u_input.b, func_2().a.a, !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), Struct_1(~(~u_input.a), func_1(false, u_input.b.x & u_input.b.x, vec3<bool>(false, true, false), Struct_2(true)).b, vec2<i32>(1i, u_input.c.x >> (u_input.a % 32u)), any(vec2<bool>(false, false)), ~(~u_input.a)), ~vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.b.x) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 40776u, 9237u, 6061u), vec4<u32>(u_input.a, 49498u, 1u, u_input.a), vec4<u32>(4294967295u, 0u, 5441u, u_input.a)) | firstLeadingBit(vec4<u32>(52359u, u_input.a, u_input.a, 1u))) % vec4<u32>(32u)), ~u_input.a));
    var_0 = Struct_1(_wgslsmith_sub_u32(7186u, 1u), vec2<bool>(true, func_1(var_0.b.x, func_3(Struct_2(var_0.b.x), Struct_2(true)), vec3<bool>(var_0.d, var_0.d, false), func_4(Struct_1(40200u, vec2<bool>(true, var_0.b.x), var_0.c, var_0.d, 38160u), vec4<u32>(u_input.a, var_0.e, var_0.a, 89435u), 16580i)).d || true), vec2<i32>(-22014i, -var_0.c.x & _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), select(vec3<i32>(var_0.c.x, 1i, var_0.c.x), vec3<i32>(u_input.b.x, u_input.c.x, 0i), vec3<bool>(true, true, true)))), func_6(vec4<f32>(-374f, _wgslsmith_f_op_f32(-261f - -1424f), -1499f, _wgslsmith_f_op_f32(abs(-405f))), var_0.c.x | (_wgslsmith_add_i32(var_0.c.x, 0i) & u_input.b.x), func_1(false, -(~(-14918i)), func_2().a.b, Struct_2(true)), Struct_5(Struct_1(~19918u, func_1(false, u_input.c.x, vec3<bool>(true, true, var_0.b.x), Struct_2(false)).b, vec2<i32>(var_0.c.x, var_0.c.x) & vec2<i32>(u_input.c.x, 11805i), true, 22483u), u_input.b, Struct_1(1u, var_0.b, abs(vec2<i32>(-2147483647i, 2147483647i)), var_0.d, min(var_0.a, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-23279i, var_0.c.x, u_input.c.x)), _wgslsmith_add_i32(-43223i, var_0.c.x), 0i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, u_input.c.x, u_input.b.x))), _wgslsmith_div_u32(var_0.e, ~4294967295u))).b.x, ~select(var_0.e, (var_0.a | var_0.e) ^ ~39201u, var_0.b.x));
    var_0 = func_1(all(!(!var_0.b)) & !any(select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.d, false), var_0.b.x)), var_0.c.x, vec3<bool>(true, (1i & var_0.c.x) >= max(64400i, abs(var_0.c.x)), var_0.b.x), Struct_2(true));
    let var_1 = func_2();
    var var_2 = vec4<i32>(var_0.c.x, var_1.a.a.x, _wgslsmith_sub_i32(var_1.a.a.x, var_0.c.x), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(57871u);
}

