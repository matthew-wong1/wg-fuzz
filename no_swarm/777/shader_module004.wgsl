struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(15491i, -1i);

var<private> global1: array<f32, 23> = array<f32, 23>(-602f, -1292f, -1411f, 1000f, -369f, 206f, 1198f, 358f, 750f, 1000f, 477f, 1000f, 522f, -1654f, 786f, -146f, -910f, 1006f, 1191f, 1004f, -182f, 990f, 893f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = Struct_4(vec3<i32>(u_input.d << (1u % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-33018i, arg_2.x), vec2<i32>(65909i, -35737i), false), -arg_2.zy), -2147483647i), ~(-2782i)), Struct_2(~vec3<u32>(arg_1, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(16500u, 4294967295u, 4294967295u), vec3<u32>(u_input.c, 64605u, 1u)))), ~max((vec4<i32>(18973i, -28015i, 99283i, -1i) ^ vec4<i32>(8401i, u_input.d, 70785i, -20794i)) | -vec4<i32>(1i, global0.x, u_input.d, -27882i), firstLeadingBit(select(vec4<i32>(0i, arg_2.x, arg_2.x, 2147483647i), vec4<i32>(-55218i, 2147483647i, 51973i, u_input.d), vec4<bool>(false, true, true, true)))), ~(~4294967295u & _wgslsmith_mult_u32(u_input.c, u_input.b.x)) >> (reverseBits(~(u_input.a.x ^ u_input.b.x)) % 32u), global1[_wgslsmith_index_u32(0u, 23u)]);
    let var_1 = var_0;
    let var_2 = var_1.b;
    global1 = array<f32, 23>();
    global0 = _wgslsmith_sub_vec2_i32(-(~var_0.c.zz), -var_0.c.yz);
    return max(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~firstLeadingBit(vec2<i32>(var_0.a.x, global0.x)), vec2<i32>(-2147483647i, var_1.a.x)), ~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.zy, arg_2.xx), var_1.c.yx)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.x, -1i) >> (firstTrailingBit(var_2.a.yx) % vec2<u32>(32u)), vec2<i32>(-global0.x, global0.x))));
}

fn func_2() -> vec2<bool> {
    global1 = array<f32, 23>();
    global0 = -func_3(338f, ~0u, firstLeadingBit(~(~vec3<i32>(u_input.d, -1i, global0.x))));
    var var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.d, _wgslsmith_clamp_i32(u_input.d, u_input.d, -2147483647i), min(1i, 2147483647i)), vec3<i32>(~28652i, i32(-1i) * -31966i, global0.x)), _wgslsmith_sub_i32(u_input.d, -2147483647i), 1271i & _wgslsmith_mod_i32(1i, global0.x)), Struct_2(countOneBits(vec3<u32>(u_input.b.x, ~u_input.c, ~4294967295u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f));
    var var_2 = Struct_1(~abs(firstLeadingBit(vec3<i32>(u_input.d, -22850i, 37303i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1141f)) - var_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 23u)] + 727f)) + var_1)), _wgslsmith_sub_i32(global0.x, -1i) < ((i32(-1i) * -6175i) | _wgslsmith_add_i32(-19013i >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, 31040i, -40033i)))));
    return vec2<bool>(false, false && any(vec3<bool>(true, false, var_2.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec2<u32> {
    global0 = vec2<i32>(-1i) * -(~vec2<i32>(arg_1, global0.x));
    var var_0 = Struct_1(min(select(abs(~vec3<i32>(arg_1, arg_1, 0i)), vec3<i32>(func_3(global1[_wgslsmith_index_u32(0u, 23u)], 0u, vec3<i32>(u_input.d, arg_1, global0.x)).x, 0i, -12613i), vec3<bool>(arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, true)), false)), vec3<i32>(-35542i, 0i, _wgslsmith_clamp_i32(arg_1 ^ 0i, u_input.d, global0.x))), -1705f, true);
    var var_1 = _wgslsmith_mod_vec3_u32(firstTrailingBit(max(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 22601u, u_input.b.x), vec3<u32>(23630u, 1u, u_input.c)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), vec3<u32>(_wgslsmith_sub_u32(84340u, u_input.c), min(4294967295u, 4294967295u), max(u_input.c, u_input.a.x)))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, 1u)), select(vec3<u32>(u_input.c, 47264u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<bool>(arg_0.x, arg_0.x, var_0.c))), countOneBits(vec3<u32>(8081u, 30401u, 1u) >> (vec3<u32>(1u, u_input.b.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = Struct_2(~(max(vec3<u32>(var_1.x, 13313u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.x, 1u), vec3<u32>(7391u, 0u, 7858u))) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(16755u, var_1.x, 117110u), firstTrailingBit(vec3<u32>(846u, var_1.x, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 31899u, 0u), vec3<u32>(u_input.b.x, 4294967295u, var_1.x), vec3<u32>(u_input.c, 18122u, u_input.a.x)))));
    var var_3 = 1029f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1753f))) - global1[_wgslsmith_index_u32(var_1.x, 23u)]);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(39159u, u_input.b.x & u_input.a.x, u_input.b.x, 1u << (var_2.a.x % 32u)), vec4<u32>(var_1.x, 1u, _wgslsmith_mod_u32(var_2.a.x, 56879u), var_1.x)), var_2.a.x), ~vec2<u32>(var_1.x, var_2.a.x) & abs(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 16380u, 18769u), firstTrailingBit(var_2.a.x))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    let var_0 = true;
    global0 = ~vec2<i32>(1i, u_input.d);
    let var_1 = vec2<i32>(-1i, 1i);
    global0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(select(-37293i << (arg_1 % 32u), func_3(-832f, 90140u, vec3<i32>(38299i, u_input.d, -2147483647i)).x, true), min(abs(14146i), _wgslsmith_div_i32(-28559i, global0.x))), var_1.x), 1083i);
    var var_2 = u_input.b;
    return Struct_3(abs(abs(-vec3<i32>(var_1.x, -39944i, 0i)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(79284u, 10859u, arg_1), ~vec3<u32>(8986u, var_2.x, 4294967295u)) % vec3<u32>(32u))), Struct_2(vec3<u32>(31491u, 0u, var_2.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_5, arg_3: bool) -> vec3<f32> {
    let var_0 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 38463u), vec2<u32>(1u, 1u), vec2<bool>(true, false)), ~vec2<u32>(arg_2.b.x, 31663u)) & arg_1.a.x), 23u)], 58603u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c * 614f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_2.c)))), Struct_5(vec3<bool>(true, all(!arg_2.a.zy), arg_2.a.x), func_4(select(vec2<bool>(false, arg_2.a.x), func_2(), select(vec2<bool>(arg_2.a.x, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, -1i), firstTrailingBit(u_input.d))), 1347f));
    let var_1 = Struct_1(var_0.a << ((reverseBits(vec3<u32>(arg_0.a.x, arg_2.b.x, u_input.a.x)) ^ arg_1.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-arg_2.c), !arg_3);
    var var_2 = ~_wgslsmith_mod_u32(func_4(arg_2.a.yz, u_input.d >> (arg_2.b.x % 32u)).x, reverseBits(0u));
    var_2 = u_input.b.x;
    global1 = array<f32, 23>();
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(step(var_1.b, var_1.b))) * _wgslsmith_f_op_f32(sign(-556f))))), _wgslsmith_f_op_f32(round(var_1.b)), 1166f);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec3_i32(select(arg_3.a, arg_3.a, arg_3.c), vec3<i32>(39648i, _wgslsmith_mod_i32(-u_input.d, -global0.x), 0i)), Struct_2(vec3<u32>(u_input.a.x, countOneBits(_wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x)), 3045u)), vec4<i32>(-2147483647i, arg_3.a.x, global0.x, _wgslsmith_mult_i32(u_input.d, (-1i | arg_3.a.x) ^ -2147483647i)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.b, u_input.a), select(vec2<u32>(0u, u_input.c), u_input.b, true)), vec2<u32>(arg_1.a.x, 26112u) & ~u_input.a), _wgslsmith_f_op_f32(abs(-820f)));
    global1 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -429f);
    global0 = -vec2<i32>(firstTrailingBit(u_input.d), ~57022i) << (vec2<u32>(func_4(vec2<bool>(!arg_3.c, any(vec4<bool>(true, false, true, true))), var_0.c.x).x, 1u) % vec2<u32>(32u));
    let var_2 = _wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(0i, firstLeadingBit(-15439i) | ~(-arg_3.a.x), var_0.c.x >> (u_input.a.x % 32u), -(~(~2147483647i))));
    return 1u >> (min(~(~(arg_1.a.x >> (arg_1.a.x % 32u))), 12985u) % 32u);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<i32>(39048i, 1i, global0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 24963i, 23145i) >> (arg_1.a % vec3<u32>(32u)), ~vec3<i32>(-1i, global0.x, global0.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 27128i, u_input.d), vec3<i32>(u_input.d, 2147483647i, 11033i))), ~(_wgslsmith_clamp_i32(-1i, -1i, 11226i) << (~4294967295u % 32u))));
    global1 = array<f32, 23>();
    var var_1 = Struct_3((vec3<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), global0.x, u_input.d) | _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, global0.x, u_input.d)), var_0.xxx << (vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u)))) << ((abs(~arg_1.a) | ~vec3<u32>(arg_1.a.x, u_input.b.x, arg_1.a.x)) % vec3<u32>(32u)), Struct_2(~arg_1.a));
    global1 = array<f32, 23>();
    var var_2 = Struct_5(arg_3, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, select(vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(arg_1.a.x, arg_1.a.x), arg_3.x)) >> (u_input.b % vec2<u32>(32u)), ~(~var_1.b.a.yy)), 1f);
    return Struct_1(_wgslsmith_add_vec3_i32(-(-vec3<i32>(14675i, var_0.x, 2147483647i) >> (vec3<u32>(u_input.b.x, var_1.b.a.x, 238u) % vec3<u32>(32u))), var_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(func_5(var_2.c, var_1.b.a.x, 248f, Struct_5(vec3<bool>(false, true, arg_3.x), vec2<u32>(arg_1.a.x, arg_1.a.x), arg_0)).b, var_1.b, Struct_5(vec3<bool>(true, arg_3.x, false), vec2<u32>(u_input.a.x, 4294967295u), 896f), var_0.x != var_1.a.x)).x))), arg_3.x);
}

fn func_8(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_3 {
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    var var_0 = Struct_5(!(!(!arg_2.zww)), arg_1, arg_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-292f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, 16153u, arg_1.x)), 23u)] - -1400f)), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 23u)]))) + arg_0.b)), false));
    return Struct_3(arg_0.a, Struct_2(~(~select(vec3<u32>(u_input.c, 24002u, var_0.b.x), vec3<u32>(87189u, u_input.b.x, var_0.b.x), vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    global1 = array<f32, 23>();
    var var_0 = firstTrailingBit(max(~vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(44896i, u_input.d, -2147483647i)), global0.x, 1i))) >> (vec3<u32>(~((4294967295u << (u_input.c % 32u)) ^ (u_input.c & u_input.a.x)), countOneBits(u_input.c) << (4294967295u % 32u), u_input.a.x) % vec3<u32>(32u));
    global1 = array<f32, 23>();
    let var_1 = func_8(func_7(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_6(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec3<u32>(44887u, 64663u, 4578u)), Struct_2(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)), Struct_5(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(u_input.c, 23u)]), false)), Struct_2(vec3<u32>(37003u, u_input.b.x, u_input.a.x)), vec3<f32>(246f, 995f, global1[_wgslsmith_index_u32(8152u, 23u)]), Struct_1(vec3<i32>(u_input.d, 2147483647i, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), 23u)] * 162f), func_5(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(16899u, 23u)])), ~(~u_input.c), global1[_wgslsmith_index_u32(~func_4(vec2<bool>(false, false), 1i).x, 23u)], Struct_5(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), max(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.c, u_input.a.x)), -269f)).b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(21992u, 23u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 195f) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -988f)), false)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), func_2().x)), vec2<u32>(firstLeadingBit(~(~u_input.b.x)), u_input.b.x), !vec4<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, global0.x), vec3<i32>(var_0.x, -61972i, 2147483647i)) >= _wgslsmith_div_i32(8966i, -1i), -var_0.x >= _wgslsmith_sub_i32(var_0.x, global0.x), all(vec3<bool>(true, true, true))));
    let var_2 = vec4<i32>(abs(_wgslsmith_clamp_i32(-(~u_input.d), ~(-8303i & var_0.x), reverseBits(max(6889i, u_input.d)))), 17722i, _wgslsmith_mod_i32(~abs(var_0.x), global0.x), 1i);
    let var_3 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -(-(var_1.a & var_2.ywx) & countOneBits(var_2.xzy)), var_0.x, u_input.d);
}

