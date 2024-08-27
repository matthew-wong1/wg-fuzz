struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var var_1 = ~firstTrailingBit(firstLeadingBit(~vec4<u32>(1u, 0u, arg_1, u_input.a)) << (_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 2934u, u_input.a, 4294967295u)), abs(vec4<u32>(u_input.a, u_input.a, 1u, arg_1))) % vec4<u32>(32u)));
    var_1 = vec4<u32>(u_input.a, _wgslsmith_add_u32(select(78116u, var_1.x, false), 19343u), select(_wgslsmith_dot_vec2_u32((vec2<u32>(var_1.x, u_input.a) ^ vec2<u32>(arg_1, 61230u)) ^ _wgslsmith_add_vec2_u32(var_1.yx, var_1.ww), ~(~var_1.zz)), ~53436u, _wgslsmith_mult_u32(u_input.a ^ u_input.a, arg_1) < select(~19743u, arg_1 >> (u_input.a % 32u), false)), _wgslsmith_mult_u32(min(1u, 0u), 0u));
    let var_2 = _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 1000f)) - var_0.b))));
    var var_3 = !arg_2.a && !(arg_2.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    return -u_input.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_0 = abs(-vec4<i32>(arg_1, abs(-arg_1), func_3(!vec4<bool>(true, false, false, arg_3.a), 0u | arg_2.x, arg_3), 0i ^ (-26070i & arg_1)));
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = select(select(!arg_3, vec4<bool>(!arg_2.a, arg_0.a, arg_0.a, true), !arg_3), arg_3, !(!vec4<bool>(!arg_3.x, true, true, true)));
    var var_1 = !arg_3.x;
    let var_2 = min(~vec2<u32>(4294967295u, ~18174u), _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(69109u, 84938u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a))), ~(~(~vec2<u32>(4294967295u, u_input.a))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(0u, 30664u), ~u_input.a))));
    var var_3 = arg_0;
    var var_4 = func_2(abs(vec2<i32>(reverseBits(-49351i) >> (_wgslsmith_mod_u32(7436u, u_input.a) % 32u), -u_input.c)), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zyz, u_input.b.xyy), u_input.b.zzz)), select(vec3<u32>(~var_2.x, _wgslsmith_mod_u32(u_input.a, 9868u), _wgslsmith_add_u32(0u, u_input.a)), ~(vec3<u32>(47098u, 20153u, 0u) ^ vec3<u32>(u_input.a, 15152u, 7396u)), !var_0.x) >> (((vec3<u32>(var_2.x, 4294967295u, u_input.a) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 17473u, var_2.x), vec3<u32>(16804u, 33156u, 0u))) ^ reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_2.x), vec3<u32>(12619u, 15635u, 0u)))) % vec3<u32>(32u)), func_2(vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(arg_1, -31945i, u_input.e)), -29384i, vec3<u32>(u_input.a, u_input.a, ~1u), func_2(vec2<i32>(-22209i, 23994i) << (select(var_2, var_2, arg_3.zz) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, 0i, u_input.d), vec4<i32>(arg_1, 2147483647i, -1i, arg_1)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a, 4294967295u, 1u)), ~vec3<u32>(26622u, 0u, 1u), vec3<u32>(u_input.a, 9305u, var_2.x) & vec3<u32>(1u, u_input.a, 3945u)), arg_0)));
    return countOneBits(_wgslsmith_sub_vec2_u32(firstTrailingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_2.x), vec2<u32>(44971u, 82407u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_2.x, var_2.x)), vec2<bool>(true, var_3.a))), vec2<u32>(_wgslsmith_add_u32(var_2.x, ~var_2.x), var_2.x)));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_div_f32(-367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 891f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1184f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1789f)))))));
    var var_1 = _wgslsmith_add_vec2_u32(~(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(43056u, 1u), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(u_input.a, 52635u)) << (firstTrailingBit(abs(vec2<u32>(u_input.a, 84984u))) % vec2<u32>(32u))), func_4(func_2(u_input.b.zw, 1i >> (~u_input.a % 32u), ~vec3<u32>(48179u, u_input.a, u_input.a), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -672f))), -11043i, Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(496f * 279f)))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false))));
    global0 = array<vec4<i32>, 14>();
    var var_2 = firstLeadingBit(vec2<i32>(max(-45811i, 2147483647i), -(~(-u_input.e))));
    var_2 = _wgslsmith_sub_vec2_i32(u_input.b.yz, max(firstTrailingBit(select(abs(vec2<i32>(u_input.d, var_2.x)), u_input.b.wz, true)), _wgslsmith_sub_vec2_i32(min(vec2<i32>(var_2.x, -2978i) << (vec2<u32>(58801u, u_input.a) % vec2<u32>(32u)), u_input.b.zz), vec2<i32>(-12391i, countOneBits(u_input.c)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f + 153f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(112f, 113f))), _wgslsmith_f_op_f32(exp2(1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1346f;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, var_0, 447f) - vec3<f32>(417f, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1060f, var_0)))), vec3<bool>(~u_input.d == 41098i, true | any(vec2<bool>(false, true)), false | (37772i == u_input.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -2859f, 1053f))), vec3<f32>(var_0, _wgslsmith_div_f32(1244f, var_0), 730f)))), select(select(vec3<bool>(false, false, any(vec2<bool>(true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), false), vec3<bool>(true, true, true), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))));
    var var_2 = abs(func_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), 13572u, func_2(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-15074i, 0i), u_input.b.yx), ~u_input.b.zx), ~37016i, ~(~vec3<u32>(4294967295u, 12980u, u_input.a)), func_2(vec2<i32>(-36252i, u_input.b.x), -2147483647i, vec3<u32>(u_input.a, u_input.a, 96736u), Struct_1(false, -1891f)))));
    let var_3 = true == any(vec2<bool>(~u_input.a == u_input.a, select(all(vec3<bool>(false, false, true)), select(false, true, false), var_1.x != -2002f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-343f, var_0), var_1.yy))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.zy, vec2<f32>(var_1.x, var_1.x), false))))))) - var_1.xx);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a, 2865u, u_input.a)), ~abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(~0u, 4294967295u, ~_wgslsmith_mod_u32(u_input.a, u_input.a))));
}

