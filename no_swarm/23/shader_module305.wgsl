struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 8186u, 0u);

var<private> global1: array<i32, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = all(select(vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false)), 27483u <= (22092u | global0.x), any(vec4<bool>(true, false, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), arg_0.b <= 1286f), vec3<bool>(true, true, true), !all(vec4<bool>(false, true, false, true))), true | (_wgslsmith_add_i32(27387i, arg_0.e.x) > 2147483647i)));
    global0 = ~(_wgslsmith_div_vec4_u32(u_input.b, ~_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(48081u, 0u, arg_0.a.x, arg_0.a.x))) << (vec4<u32>(8467u, 26056u, 1u, _wgslsmith_mod_u32(abs(u_input.b.x), 1u)) % vec4<u32>(32u)));
    var var_1 = arg_0;
    var var_2 = vec4<f32>(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1034f)) + 683f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1589f, -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.c.x))))))), 360f, arg_0.b);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(1095f, arg_0.b)) - _wgslsmith_f_op_vec2_f32(var_2.zz - vec2<f32>(var_2.x, 1443f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1086f, var_1.c.x) * _wgslsmith_f_op_vec2_f32(sign(arg_0.c)))), vec2<f32>(-558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, arg_0.b, true)))))), Struct_1(min(vec3<u32>(80015u, global0.x, 67198u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1113u, 4294967295u, arg_0.a.x), global0.yxz), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a, var_1.a), min(vec3<u32>(global0.x, var_1.a.x, var_1.a.x), vec3<u32>(arg_0.a.x, var_1.a.x, 1u)))), -216f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.c, arg_0.c))), vec2<f32>(arg_0.c.x, arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f + _wgslsmith_f_op_f32(abs(arg_0.b)))), -(~vec2<i32>(arg_0.e.x, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_0.c.x, var_2.x, var_2.x) - vec4<f32>(493f, 701f, -950f, var_2.x)) - vec4<f32>(1000f, var_2.x, -1620f, arg_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -348f, arg_0.b, var_2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 1042f, -923f, -293f) + vec4<f32>(var_2.x, -795f, var_2.x, 248f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(985f, -2006f, arg_0.c.x, var_1.c.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, var_2.x, var_1.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2051f, var_2.x, var_2.x, 2122f), vec4<f32>(-127f, var_2.x, arg_0.c.x, 1214f)))))), global0.x);
    return ~u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global0 = u_input.b;
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, ~firstLeadingBit(13936u) ^ ~_wgslsmith_mod_u32(u_input.c, 38633u), ~_wgslsmith_dot_vec2_u32(arg_2.a.xz, arg_0.a.yx) & (~1u << (global0.x % 32u)), 4294967295u), vec4<u32>(1u, global0.x, ~_wgslsmith_mod_u32(6865u, 31473u), 1u), select(_wgslsmith_sub_vec4_u32(func_3(Struct_1(u_input.b.wxw, 854f, vec2<f32>(908f, arg_0.c.x), -637f, arg_0.e)), ~arg_1), ~(vec4<u32>(17069u, global0.x, 15908u, arg_0.a.x) << (arg_1 % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), vec4<bool>(true, select(false, true, any(vec2<bool>(true, false))), !any(vec3<bool>(false, true, false)), any(vec2<bool>(false, true)))));
    global0 = u_input.b;
    let var_0 = ~abs(vec4<i32>(i32(-1i) * -29841i, 1i, 2147483647i, arg_2.e.x) >> (u_input.b % vec4<u32>(32u)));
    let var_1 = arg_2;
    return _wgslsmith_sub_u32(arg_2.a.x, global0.x);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = u_input.b.wxy;
    let var_1 = u_input.a.x;
    var_0 = vec3<u32>(5432u, _wgslsmith_div_u32(min(max(u_input.b.x, var_1), _wgslsmith_clamp_u32(36722u, _wgslsmith_add_u32(69433u, global0.x), 21132u)), firstTrailingBit(arg_0)), ~_wgslsmith_add_u32(func_2(Struct_1(vec3<u32>(u_input.b.x, global0.x, 46207u), 991f, vec2<f32>(-934f, -636f), 1000f, vec2<i32>(1365i, 38921i)), u_input.b, Struct_1(vec3<u32>(var_0.x, var_1, arg_0), 2042f, vec2<f32>(2136f, 1000f), 199f, vec2<i32>(-2147483647i, 24723i))), ~abs(var_1)));
    let var_2 = Struct_1(~firstLeadingBit(vec3<u32>(64918u, select(0u, 6744u, true), ~global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-274f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), -1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(448f, 600f) - vec2<f32>(-1440f, 224f)), vec2<f32>(1053f, 577f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, 414f))), vec2<bool>(true, true)))), -167f, vec2<i32>(~min(global1[_wgslsmith_index_u32(abs(var_1), 11u)], ~global1[_wgslsmith_index_u32(var_0.x, 11u)]), ~_wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(13107i, -115978i))));
    var var_3 = Struct_1(~vec3<u32>(11446u ^ _wgslsmith_mult_u32(13164u, arg_0), 23160u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c - var_2.c))), var_2.b, -(vec2<i32>(-1i) * -max(vec2<i32>(62131i, global1[_wgslsmith_index_u32(arg_0, 11u)]), vec2<i32>(-18200i, global1[_wgslsmith_index_u32(arg_0, 11u)]))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.c.x, 140f), var_3.c) * _wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, -441f), var_3.c)), vec2<f32>(-701f, _wgslsmith_f_op_f32(round(var_2.c.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.c.x, -2366f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.c)))), var_2, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-202f, 381f, var_3.b, -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.c.x, 169f, 1694f) * vec4<f32>(var_3.b, 649f, 1000f, 1059f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1157f, -1000f, var_3.d, var_2.b) * vec4<f32>(var_2.c.x, 264f, var_3.d, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, -284f, -553f, var_3.d) - vec4<f32>(-1403f, -1368f, 812f, -113f)) * vec4<f32>(var_2.c.x, 323f, -1130f, -268f)))))), max(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.x, var_1, 7026u), vec3<u32>(0u, global0.x, 14246u) >> (var_2.a % vec3<u32>(32u))), vec3<u32>(93694u, ~65551u, var_2.a.x & 64804u)), ~(~var_3.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    let var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = vec2<bool>(!var_0, var_0);
    var var_2 = arg_1;
    var var_3 = Struct_1(vec3<u32>(~0u, u_input.b.x, _wgslsmith_add_u32(firstLeadingBit(4294967295u), abs(0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 58586u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a.x, 7458u, u_input.b.x, 1u)) % 32u))), _wgslsmith_f_op_f32(sign(-1424f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 405f)))), -1049f, _wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_3.xz), func_1(54993u).b.e, arg_3.zy) & -(arg_0.b.e & -vec2<i32>(arg_0.b.e.x, 0i)));
    let var_4 = arg_0.b;
    return !all(vec3<bool>(var_0, true, any(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_4(func_1(21971u), 1000f, ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 11u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 11u)], -1i)), vec2<i32>(1i, -84953i)), -vec3<i32>(~global1[_wgslsmith_index_u32(4294967295u, 11u)], firstLeadingBit(1i), ~(-2147483647i))), -2147483647i < select(-(-27745i ^ global1[_wgslsmith_index_u32(global0.x, 11u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(50344u, 11u)], global1[_wgslsmith_index_u32(36323u, 11u)], 4362i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 11u)], -17753i, global1[_wgslsmith_index_u32(global0.x, 11u)])) | (-14524i << (u_input.b.x % 32u)), true), !(global1[_wgslsmith_index_u32(4294967295u, 11u)] == -23339i), !func_4(Struct_2(vec2<f32>(-149f, -2242f), Struct_1(u_input.b.xwz, -588f, vec2<f32>(1070f, -1092f), -1202f, vec2<i32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1020f, -704f, -358f, -1018f)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 11u)], 0i, 2147483647i), vec3<i32>(-2147483647i, 1i, 1i)), i32(-1i) * -7414i), abs(firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(63533u, 11u)], global1[_wgslsmith_index_u32(4737u, 11u)])))));
    let var_1 = ~(~(~vec2<u32>(2271u, u_input.c))) | vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.b.x, global0.x), 36398u), abs(_wgslsmith_div_u32(13503u << (u_input.b.x % 32u), _wgslsmith_mult_u32(27332u, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-26503i, global1[_wgslsmith_index_u32(0u, 11u)], -13155i)), -vec3<i32>(global1[_wgslsmith_index_u32(1u, 11u)], 0i, global1[_wgslsmith_index_u32(118u, 11u)]))), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~var_1.x, 11u)], _wgslsmith_clamp_i32(36493i, 0i, global1[_wgslsmith_index_u32(72885u, 11u)]), -43999i), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(3491u, 11u)], 40674i, -43136i), vec3<i32>(-16890i, 1i, 2147483647i))), _wgslsmith_f_op_f32(413f * _wgslsmith_f_op_f32(round(756f))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1866f, func_1(1u).c.x, -1688f), vec3<f32>(-1000f, 384f, _wgslsmith_f_op_f32(ceil(1191f)))))), 54070i, 4294967295u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(527f)))));
}

