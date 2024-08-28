struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, false, true, true, false, false, true, false, false, true, false);

var<private> global1: array<vec2<i32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.c.b;
    global1 = array<vec2<i32>, 21>();
    global0 = array<bool, 13>();
    var var_1 = Struct_1(!any(select(select(vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, true), vec4<bool>(true, arg_0.c.a.x, true, arg_0.c.a.x), true), select(vec4<bool>(arg_0.c.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], arg_0.c.a.x, global0[_wgslsmith_index_u32(u_input.c, 13u)]), arg_0.c.a, false), true)));
    var var_2 = max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(4294967295u, 4294967295u, arg_0.a.x, arg_0.a.x)), vec4<u32>(22333u, arg_0.c.d, ~arg_0.a.x, u_input.c), any(vec2<bool>(arg_0.c.a.x, var_1.a)) || all(vec2<bool>(false, true))), select(vec4<u32>(arg_0.a.x, ~u_input.c, u_input.c, arg_0.a.x & 4294967295u), abs(vec4<u32>(u_input.c, 4294967295u, 34419u, arg_0.a.x)), vec4<bool>(any(vec4<bool>(var_1.a, true, global0[_wgslsmith_index_u32(67470u, 13u)], true)), -2147483647i >= var_0.x, true, !var_1.a))) & vec4<u32>(_wgslsmith_clamp_u32(arg_0.c.d, arg_0.a.x, 0u), arg_0.a.x, 0u, abs(u_input.c));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.zx, ~var_0.zx), _wgslsmith_sub_vec2_i32(u_input.d.xy, -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11224i, 2293i), vec2<i32>(24017i, arg_0.c.b.x), vec2<i32>(var_0.x, arg_0.b.x)), ~vec2<i32>(72966i, arg_0.b.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 13u)], true, !all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 13u)], false)), ~u_input.c < 42044u), _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, -2147483647i, u_input.b, 35576i), -vec4<i32>(2147483647i, -2147483647i, arg_2.x, arg_0.x), vec4<i32>(-6620i, arg_2.x, 0i, -10822i)), ~(select(vec4<i32>(u_input.a, 1i, 10038i, 1i), vec4<i32>(0i, arg_3, arg_2.x, 2147483647i), vec4<bool>(true, false, global0[_wgslsmith_index_u32(64220u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)])) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 0u, u_input.c)) % vec4<u32>(32u)))), vec4<i32>(reverseBits(~arg_0.x) >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(global1[_wgslsmith_index_u32(33916u, 21u)], vec2<i32>(arg_1, -2147483647i), false), vec2<i32>(-1i, 37125i) | global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 21u)]), firstTrailingBit(~vec2<i32>(8976i, u_input.b))), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(5504i, arg_0.x)), ~(arg_2.zy | arg_2.yy)), 1i), abs(u_input.c), ~abs(firstTrailingBit(min(vec3<u32>(u_input.c, 54775u, u_input.c), vec3<u32>(u_input.c, u_input.c, 12075u)))));
    var var_1 = vec3<u32>(var_0.d, ~(u_input.c & u_input.c), ~_wgslsmith_mult_u32(~var_0.d, u_input.c));
    var var_2 = -1592f;
    var var_3 = Struct_3(vec3<u32>(0u, (u_input.c | var_0.e.x) | max(4294967295u | u_input.c, u_input.c), abs(29968u)), firstTrailingBit((global1[_wgslsmith_index_u32(~27941u, 21u)] | abs(global1[_wgslsmith_index_u32(4294967295u, 21u)])) >> (abs(var_0.e.zz) % vec2<u32>(32u))), Struct_2(select(var_0.a, var_0.a, true), _wgslsmith_sub_vec4_i32(select(var_0.b, vec4<i32>(-140i, arg_1, arg_3, 1i), var_0.a.x), -vec4<i32>(1i, arg_3, 14939i, -1i)) ^ vec4<i32>(arg_2.x, i32(-1i) * -1i, arg_3, _wgslsmith_sub_i32(-22746i, 0i)), var_0.c ^ ~(var_0.c ^ vec4<i32>(-2094i, arg_1, 11623i, arg_0.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 3951u, var_1.x), ~vec4<u32>(var_1.x, u_input.c, u_input.c, 4294967295u))), firstTrailingBit(var_0.e)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, _wgslsmith_f_op_f32(-301f * 1000f), -1000f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1566f, -264f) - -367f), 1000f, _wgslsmith_f_op_f32(-2060f - _wgslsmith_f_op_f32(floor(1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2294f + -2928f), _wgslsmith_div_f32(527f, -289f))))), -339f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(417f, var_3.e.x)))))) - _wgslsmith_f_op_f32(ceil(-2604f))));
    return ~_wgslsmith_div_u32(var_0.e.x, abs(firstLeadingBit(4294967295u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - arg_0.e.x)) - arg_0.e.x))));
    var var_1 = arg_1.yz;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(599f + _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.x)))), _wgslsmith_f_op_vec2_f32(arg_1.zz * vec2<f32>(-481f, _wgslsmith_div_f32(-1602f, var_1.x)))));
    global0 = array<bool, 13>();
    var var_2 = Struct_2(vec4<bool>(arg_0.c.a.x, any(!(!arg_0.c.a)), false, false), vec4<i32>(abs(38460i), _wgslsmith_dot_vec3_i32(arg_0.c.c.xxx, vec3<i32>(u_input.b, u_input.b, arg_0.b.x ^ 2147483647i)), arg_0.b.x, _wgslsmith_mult_i32(-9462i, -2429i)), arg_0.c.c, firstLeadingBit(u_input.c), vec3<u32>(u_input.c, 1u, _wgslsmith_mult_u32(func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, arg_0.c.c.x, 2147483647i), u_input.d, u_input.d), func_3(Struct_3(arg_0.c.e, arg_0.c.c.xy, arg_0.c, arg_0.d, vec2<f32>(var_1.x, arg_0.e.x))), vec3<i32>(0i, -2147483647i, u_input.a), -49464i), arg_0.c.e.x)));
    return 13390u;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.c, 4294967295u, 57439u, u_input.c)), vec4<u32>(~94980u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 16728u), vec3<u32>(u_input.c, 1u, 30091u)), ~43129u, _wgslsmith_dot_vec4_u32(vec4<u32>(23784u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 21634u))), ~(~vec4<u32>(44765u, 4294967295u, u_input.c, 11569u))) >> (vec4<u32>(select(firstLeadingBit(u_input.c), firstLeadingBit(4294967295u), 33802u > u_input.c), u_input.c, u_input.c, 30344u) % vec4<u32>(32u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, select(u_input.c, 35313u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_mod_u32(u_input.c, 0u), func_2(Struct_3(vec3<u32>(u_input.c, u_input.c, 4294967295u), global1[_wgslsmith_index_u32(u_input.c, 21u)], Struct_2(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], true), vec4<i32>(-4013i, u_input.d.x, 14059i, 12910i), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, 0i), u_input.c, vec3<u32>(10433u, 25855u, u_input.c)), vec3<f32>(-1000f, 1811f, 420f), vec2<f32>(-518f, 1029f)), vec3<f32>(1000f, 1523f, -456f), Struct_1(true))), abs(countOneBits(vec4<u32>(77827u, u_input.c, 60247u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, 0u)) | ~vec4<u32>(u_input.c, 1u, 1u, 1u))));
    global1 = array<vec2<i32>, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, _wgslsmith_f_op_f32(max(753f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1129f)), -119f)))), _wgslsmith_f_op_f32(f32(-1f) * -318f), -991f));
    var_0 = vec4<u32>(~20429u, min(0u, ~(u_input.c >> (~u_input.c % 32u))), _wgslsmith_sub_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, u_input.c) >> (var_0.zyw % vec3<u32>(32u)), var_0.zwy) & (u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(var_0.x, 30658u, var_0.x, 1843u)))), _wgslsmith_clamp_u32(1u, ~(~0u), var_0.x));
    var var_2 = Struct_2(vec4<bool>(!any(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(73513u, 13u)])), global0[_wgslsmith_index_u32(u_input.c >> (firstLeadingBit(var_0.x) % 32u), 13u)], global0[_wgslsmith_index_u32(~7357u, 13u)], true), ~(-vec4<i32>(-8964i, _wgslsmith_clamp_i32(-1i, u_input.a, u_input.b), firstTrailingBit(12432i), ~(-2147483647i))), countOneBits(~max(vec4<i32>(2147483647i, 23993i, u_input.d.x, 2147483647i) | vec4<i32>(u_input.d.x, u_input.a, u_input.a, -11655i), -vec4<i32>(1i, u_input.a, -12159i, -14906i))), min(111902u, 0u), max(min(_wgslsmith_add_vec3_u32(var_0.xww, var_0.yyx), vec3<u32>(u_input.c, var_0.x, u_input.c) | vec3<u32>(u_input.c, var_0.x, 1u)) ^ vec3<u32>(1u, u_input.c, var_0.x ^ 21208u), reverseBits(vec3<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), u_input.c, u_input.c))));
    return ~(~var_0.x) > ~(var_0.x & ~_wgslsmith_div_u32(3969u, 94388u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global1 = array<vec2<i32>, 21>();
    let var_0 = Struct_1(false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(1u, 13u)];
    let var_3 = func_5(Struct_2(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], false, global0[_wgslsmith_index_u32(var_0, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 13u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 13u)], true, global0[_wgslsmith_index_u32(var_0, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 13u)], false, true, global0[_wgslsmith_index_u32(var_0, 13u)])), vec4<bool>(false, true, true, false), func_1()), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 13u)], false, global0[_wgslsmith_index_u32(20158u, 13u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 13u)], false, true), vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(20273u, 13u)]), !global0[_wgslsmith_index_u32(0u, 13u)])), -(vec4<i32>(-11193i, u_input.d.x, u_input.d.x, u_input.a) | vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x)) | vec4<i32>(_wgslsmith_mod_i32(-35808i, u_input.d.x), u_input.a, abs(13157i), u_input.d.x), vec4<i32>(-1i) * -abs(vec4<i32>(0i, u_input.d.x, u_input.a, -36948i)), 0u, _wgslsmith_sub_vec3_u32(reverseBits(max(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(1u, 26410u, var_0))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 23030u, 1u), min(vec3<u32>(67867u, var_0, 1u), vec3<u32>(var_0, u_input.c, 1u)), ~vec3<u32>(0u, u_input.c, 48494u)))), Struct_3(_wgslsmith_add_vec3_u32(firstTrailingBit(min(vec3<u32>(var_0, 1u, 85904u), vec3<u32>(1u, u_input.c, 4294967295u))), reverseBits(vec3<u32>(u_input.c, 0u, var_0)) & ~vec3<u32>(var_0, 7796u, var_0)), u_input.d.xx, Struct_2(select(!vec4<bool>(global0[_wgslsmith_index_u32(50068u, 13u)], false, false, global0[_wgslsmith_index_u32(31448u, 13u)]), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(59671u, 13u)]), !vec4<bool>(global0[_wgslsmith_index_u32(var_0, 13u)], false, global0[_wgslsmith_index_u32(1287u, 13u)], true)), min(-vec4<i32>(u_input.d.x, 0i, u_input.a, u_input.d.x), vec4<i32>(0i, -49120i, u_input.b, u_input.b)), min(vec4<i32>(-69167i, u_input.b, 22362i, 1i), ~vec4<i32>(u_input.b, u_input.b, -2147483647i, 36473i)), u_input.c << (u_input.c % 32u), abs(vec3<u32>(var_0, 1u, var_0)) ^ firstLeadingBit(vec3<u32>(u_input.c, 12340u, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(611f * -162f), -974f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(429f + -910f) + 1638f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(231f, 116f) + vec2<f32>(2302f, 1000f)))))));
    let var_4 = true | global0[_wgslsmith_index_u32(56611u | ~var_0, 13u)];
    var var_5 = u_input.d.x;
    var var_6 = Struct_3(vec3<u32>(~0u, ~max(~u_input.c, ~var_0), _wgslsmith_dot_vec2_u32(var_3.e.yz, _wgslsmith_sub_vec2_u32(firstTrailingBit(var_3.e.zy), firstLeadingBit(vec2<u32>(4294967295u, 12663u))))), _wgslsmith_clamp_vec2_i32(max(~global1[_wgslsmith_index_u32(~var_3.e.x, 21u)], func_5(func_5(Struct_2(var_3.a, vec4<i32>(var_3.c.x, 13013i, 12061i, u_input.d.x), vec4<i32>(-1i, 2147483647i, 0i, var_3.c.x), 1u, var_3.e), Struct_3(vec3<u32>(35478u, u_input.c, var_0), vec2<i32>(var_3.b.x, -1542i), Struct_2(vec4<bool>(true, false, true, true), var_3.c, vec4<i32>(var_3.c.x, var_3.b.x, var_3.c.x, var_3.c.x), 55676u, vec3<u32>(64872u, u_input.c, var_3.e.x)), vec3<f32>(133f, -629f, -318f), vec2<f32>(-249f, 1000f))), Struct_3(var_3.e, vec2<i32>(var_3.b.x, u_input.d.x), var_3, vec3<f32>(1000f, 942f, 691f), vec2<f32>(643f, -573f))).c.wz), global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(~var_0, 21u)]), var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(827f, -848f, 266f))), vec3<f32>(-702f, 295f, 433f), select(vec3<bool>(var_3.a.x, global0[_wgslsmith_index_u32(var_0, 13u)], global0[_wgslsmith_index_u32(43186u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(74796u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true), var_3.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2256f, 140f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1418f, -127f, 863f)))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(467f, -446f), vec2<f32>(444f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2626f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, -371f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-727f, 107f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, 288f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1214f, 112f)))))));
    global1 = array<vec2<i32>, 21>();
    var var_7 = 17673u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_6.e.x)));
}

