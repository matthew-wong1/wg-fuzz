struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2083f, -351f);

var<private> global1: bool = false;

var<private> global2: vec4<f32> = vec4<f32>(1308f, 1258f, -574f, -496f);

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 2> = array<i32, 2>(1i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 2147483647i)), (vec4<i32>(-1i, u_input.b.x, u_input.a, u_input.c) ^ vec4<i32>(-2147483647i, 23827i, global4[_wgslsmith_index_u32(4294967295u, 2u)], -2147483647i)) | firstLeadingBit(vec4<i32>(-17069i, -33276i, 0i, -55556i)))), u_input.b, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-697f, -470f)))))));
    let var_1 = Struct_4(vec4<u32>(abs(~reverseBits(4294967295u)), _wgslsmith_mult_u32(select(abs(4294967295u), 0u, true), 1u), reverseBits(abs(~0u)), ~(~0u | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3697u, 1944u), vec3<u32>(74644u, 53011u, 917u)))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(322f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -2120f)), _wgslsmith_dot_vec4_i32(var_0.a.c, vec4<i32>(~(-29130i), var_0.b.x, ~global4[_wgslsmith_index_u32(7760u, 2u)], i32(-1i) * -2147483647i)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(9115u)), 2u)] >> (2856u % 32u)));
    var var_2 = vec3<i32>(var_1.b.b, i32(-1i) * -1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(min(-var_1.b.c, 1i), _wgslsmith_add_i32(min(-1i, var_0.a.c.x), -54724i)), var_1.b.c));
    global4 = array<i32, 2>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(select(559f, _wgslsmith_f_op_f32(-global2.x), false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.x, global2.x, false)))), _wgslsmith_f_op_f32(round(var_1.b.a.x)), global3.x);
    return global2.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(1823f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(abs(arg_0.a.x), 2u)], 8757i)), 1i, -u_input.c, ~(-2147483647i)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - 210f)), 281f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, 579f)), vec4<i32>(-1i) * -(vec4<i32>(11610i, var_0.c.x, global4[_wgslsmith_index_u32(arg_0.a.x, 2u)], 6893i) | var_0.c)), var_0.c.zz, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var_0 = var_1.a;
    let var_2 = vec4<bool>(all(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 42354u, arg_0.a.x, 1u), firstTrailingBit(vec4<u32>(27769u, arg_0.a.x, arg_0.a.x, 0u))), _wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x)) >= ~_wgslsmith_mult_u32(max(arg_0.a.x, 1u), 4294967295u), false, any(vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), true)));
    let var_3 = var_1.a;
    return -1320f;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1801f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_4(vec4<u32>(arg_0.x, 0u, 1u, 0u), Struct_3(vec2<f32>(global2.x, 453f), 12821i, 2147483647i)), vec2<i32>(0i, -22649i))))))), _wgslsmith_f_op_f32(trunc(-1738f))));
    var var_0 = false;
    let var_1 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1396f, 571f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1002f, -1000f) + global3.zy))) - _wgslsmith_f_op_vec2_f32(-global2.zy));
    global4 = array<i32, 2>();
    return Struct_4(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(14229u, 1u, arg_0.x, 42265u)), firstTrailingBit(~(~vec4<u32>(arg_0.x, 1u, arg_0.x, 0u)))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c * global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c)))), global4[_wgslsmith_index_u32(~abs(countOneBits(4294967295u)), 2u)], u_input.c));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.b;
    let var_1 = arg_1.b;
    var var_2 = vec2<bool>(false, any(vec4<bool>(true, true, !select(false, true, false), true)));
    let var_3 = vec3<i32>(_wgslsmith_clamp_i32(min(~_wgslsmith_div_i32(var_0.c, -2147483647i), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(arg_1.a.x, 0u)), Struct_2(Struct_1(498f, 925f, vec4<i32>(-29707i, var_1.b, 19049i, 10053i)), u_input.b, global0.x, var_0.a.x), 1i).b.b), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(firstTrailingBit(arg_1.a.x), 2u)], _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, var_0.b), var_0.c)), -func_1(~arg_1.a.wz, Struct_2(Struct_1(-343f, global3.x, vec4<i32>(u_input.c, var_0.c, global4[_wgslsmith_index_u32(arg_0, 2u)], var_1.c)), vec2<i32>(var_0.b, -1i), -552f, 1265f), -global4[_wgslsmith_index_u32(0u, 2u)]).b.c), ~arg_1.b.c, -1i);
    global1 = -225f != _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-global3.x));
    return Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1101f)) * _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f * 1316f) - 1672f))), ~vec4<i32>(2147483647i, -33595i, -2147483647i, var_0.b));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<f32> {
    var var_0 = ~max(vec2<u32>(8755u << (arg_2 % 32u), firstTrailingBit(arg_2)), countOneBits(vec2<u32>(0u, arg_2 ^ 53864u)));
    let var_1 = _wgslsmith_sub_vec3_i32(-countOneBits(~_wgslsmith_div_vec3_i32(arg_0.c.xyx, arg_0.c.xyz)), -_wgslsmith_add_vec3_i32(abs(-arg_0.c.yzz), select(vec3<i32>(u_input.c, 1i, -25092i) >> (vec3<u32>(arg_2, arg_2, 4294967295u) % vec3<u32>(32u)), arg_0.c.zxx, any(vec2<bool>(true, false)))));
    let var_2 = all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), arg_2 < 96155u), any(vec3<bool>(true, true, false))), true));
    let var_3 = Struct_4(_wgslsmith_div_vec4_u32(~vec4<u32>(67157u, 63341u, var_0.x, arg_2) ^ (~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, arg_2), vec4<u32>(arg_2, var_0.x, 41647u, 1u))), firstLeadingBit(~vec4<u32>(37900u, arg_2, var_0.x, arg_2)) & max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 38821u, arg_2, 4294967295u), vec4<u32>(arg_2, 38594u, arg_2, arg_2)), ~vec4<u32>(0u, arg_2, 8170u, arg_2))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-852f, global3.x) * global3.yx))), ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, -9158i, var_1.x), var_1), arg_0.c.xwx), -(~1i)));
    var var_4 = func_1(~_wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 40908u), vec2<u32>(1u, 38966u)), ~(~var_3.a.zw)), Struct_2(arg_0, vec2<i32>(u_input.a, func_1(vec2<u32>(var_3.a.x, var_0.x), Struct_2(Struct_1(-187f, 577f, vec4<i32>(-25028i, 6364i, u_input.c, u_input.a)), u_input.b, 2659f, 2120f), var_1.x).b.c) << (vec2<u32>(arg_2, ~43218u) % vec2<u32>(32u)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global0.x + -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 1114f)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0.c, -vec4<i32>(global4[_wgslsmith_index_u32(var_3.a.x, 2u)], -2147483647i, 0i, -1i)), -arg_0.c.x) & _wgslsmith_add_i32(~var_1.x << (var_3.a.x % 32u), -1i)).b;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(var_3.a.x, Struct_4(vec4<u32>(32482u, 17571u, 54712u, var_0.x), Struct_3(var_3.b.a, var_4.c, u_input.a))).a, arg_0.a, _wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_vec3_f32(exp2(global2.yzy))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global2.xyy, vec3<f32>(-181f, global3.x, -863f), false)))), _wgslsmith_f_op_vec3_f32(func_5(func_4(4294967295u, func_1(vec2<u32>(0u, 63063u), Struct_2(Struct_1(global0.x, global2.x, vec4<i32>(-9273i, 2147483647i, 4828i, -2147483647i)), vec2<i32>(-69268i, u_input.b.x), -669f, 485f), -2147483647i)), _wgslsmith_f_op_f32(min(-1000f, global3.x)), 4294967295u)), true)));
    global4 = array<i32, 2>();
    global1 = false;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2052f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(142f, 740f, !all(vec4<bool>(true, false, false, true))))));
    global3 = global2.zyw;
    var var_0 = Struct_4(~(~vec4<u32>(1u, 1u, 1u, 1u)), func_1(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), Struct_2(func_4(11235u, func_1(vec2<u32>(44085u, 25435u), Struct_2(Struct_1(234f, -213f, vec4<i32>(2147483647i, 2147483647i, -23317i, u_input.c)), u_input.b, -634f, global3.x), -32799i)), vec2<i32>(23071i, -59333i), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)))), u_input.c).b);
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(max(global4[_wgslsmith_index_u32(var_0.a.x, 2u)], var_0.b.b), 0i), _wgslsmith_mod_i32(func_1(var_0.a.xy ^ vec2<u32>(var_0.a.x, var_0.a.x), Struct_2(Struct_1(750f, var_0.b.a.x, vec4<i32>(var_0.b.c, global4[_wgslsmith_index_u32(var_0.a.x, 2u)], -1i, 5676i)), ~vec2<i32>(2147483647i, 1i), var_0.b.a.x, _wgslsmith_f_op_f32(step(global2.x, 302f))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a.x, var_0.a.x), 1u), 2u)]).b.c, -(~0i)));
    let var_2 = ~(~(u_input.b | _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-18205i, var_0.b.b))) | _wgslsmith_sub_vec2_i32(u_input.b, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_0.b.b, abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_2.x, -2147483647i, var_1.x), var_1.x))), vec4<i32>(var_1.x, 1i >> (min(13047u, var_0.a.x) % 32u), func_4(var_0.a.x & ~20113u, func_1(vec2<u32>(21188u, 79962u) & vec2<u32>(var_0.a.x, var_0.a.x), Struct_2(Struct_1(1000f, var_0.b.a.x, vec4<i32>(var_0.b.c, 1i, -1i, 2147483647i)), u_input.b, -627f, global0.x), ~global4[_wgslsmith_index_u32(59016u, 2u)])).c.x, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(u_input.b.x, 0i)), u_input.a)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, var_0.a.x), var_0.a.x) | var_0.a.x, ~(var_0.a.x & (22705u | var_0.a.x))));
}

