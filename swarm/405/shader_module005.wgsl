struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(21428u, vec3<i32>(26236i, 13293i, 43846i), i32(-2147483648), vec3<u32>(47934u, 0u, 63091u), vec4<u32>(33147u, 1u, 545u, 22981u));

var<private> global1: array<u32, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(313f, _wgslsmith_f_op_f32(893f - arg_1), arg_3) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3, arg_1, arg_0))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1252f, arg_3, arg_3), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -314f, -1001f))))))));
    var var_1 = global0.c;
    var_1 = _wgslsmith_sub_i32(u_input.b, abs(-28946i));
    let var_2 = arg_2.x;
    global1 = array<u32, 26>();
    return 16166i;
}

fn func_2() -> vec2<f32> {
    let var_0 = (global0.b.x << (global0.e.x % 32u)) & ~_wgslsmith_add_i32(global0.b.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -368f), 1857f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(min(-766f, 891f))));
    var var_1 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(~firstTrailingBit(global0.d.x), 26u)], vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, var_0), 1i), 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, -31192i, -2571i), vec4<i32>(1i, u_input.a, -10210i, 6309i))), ~(-13196i), vec3<u32>(global0.e.x, 1u, 48832u), vec4<u32>(min(~0u, global0.e.x), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82394u, 26u)], 26u)] ^ global0.a), global0.e.x, min(~356u, 1u))), Struct_1(31531u, _wgslsmith_div_vec3_i32(-global0.b, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_0, global0.b.x), vec3<i32>(-1i, global0.b.x, -76978i))) << (vec3<u32>(~8595u, 88375u, global1[_wgslsmith_index_u32(1u, 26u)]) % vec3<u32>(32u)), (~(-55146i) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92849u, 26u)], 26u)] % 32u)) ^ 38168i, global0.e.yxx, _wgslsmith_mod_vec4_u32(global0.e, global0.e >> ((vec4<u32>(global0.d.x, 4294967295u, 0u, 28767u) >> (vec4<u32>(global0.d.x, global1[_wgslsmith_index_u32(global0.e.x, 26u)], global0.d.x, global1[_wgslsmith_index_u32(1192u, 26u)]) % vec4<u32>(32u))) % vec4<u32>(32u)))), !vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), any(vec4<bool>(true, false, true, true))));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -709f)))), 267f, _wgslsmith_f_op_f32(-327f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(575f, 876f)))), -597f), vec4<f32>(817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(778f, 1326f), _wgslsmith_f_op_f32(abs(-2525f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(1376f - 544f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) * 1288f))), Struct_3(var_1.a, var_1.b, select(vec2<bool>(any(vec3<bool>(var_1.c.x, var_1.c.x, false)), var_1.c.x), var_1.c, !select(vec2<bool>(false, var_1.c.x), var_1.c, vec2<bool>(var_1.c.x, false)))), 1465f);
    global0 = Struct_1(~(~abs(countOneBits(var_1.b.a))), max(vec3<i32>(var_1.a.c, 77152i, global0.b.x), vec3<i32>(1i, global0.b.x, _wgslsmith_add_i32(var_0, -9753i))), max(2147483647i, ~(~_wgslsmith_mod_i32(var_1.a.c, var_0))), ~vec3<u32>(~min(var_2.c.b.e.x, 7990u), global0.e.x & global0.a, ~1u), _wgslsmith_mult_vec4_u32(~reverseBits(~var_2.c.a.e), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 14905u, var_2.c.b.e.x, 1u), vec4<u32>(35737u, 1u, global0.d.x, global0.e.x)), global0.e) & (vec4<u32>(19582u, 99300u, 1437u, 1u) << (vec4<u32>(var_1.b.e.x, global1[_wgslsmith_index_u32(global0.d.x, 26u)], 8883u, var_2.c.a.a) % vec4<u32>(32u)))));
    var var_3 = 706f;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(var_2.b.yy, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.b.yz, var_2.b.wy)), _wgslsmith_div_vec2_f32(var_2.a.xy, vec2<f32>(var_2.d, 1391f))))))), var_2.a.xz));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global1 = array<u32, 26>();
    let var_0 = vec4<bool>(false, true != !(true | any(vec3<bool>(true, arg_0.c.x, arg_0.c.x))), !arg_0.c.x, any(vec3<bool>(false, arg_0.c.x, arg_0.c.x)));
    global0 = arg_0.a;
    var var_1 = ~(_wgslsmith_sub_i32(u_input.a, min(0i, _wgslsmith_div_i32(global0.c, 2147483647i))) ^ -10838i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -185f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1447f, 1000f), vec2<f32>(-305f, 1497f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1172f, 544f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-149f, 266f) * vec2<f32>(182f, 193f)), vec2<f32>(234f, -1433f), arg_0.b.b.x != arg_0.b.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1429f, -384f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(525f, 995f) * vec2<f32>(128f, 307f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-833f, 1856f))))));
    return !select(!var_0.zxx, vec3<bool>(all(vec4<bool>(false, arg_0.c.x, var_0.x, var_0.x)) || !var_0.x, false, true), vec3<bool>(true, _wgslsmith_f_op_f32(round(var_2.x)) > var_2.x, false & (u_input.a > 26322i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(~(select(1u, 1u, false) << (4294967295u % 32u)), 35529u, global1[_wgslsmith_index_u32(~select(3168u, global1[_wgslsmith_index_u32(1u, 26u)], arg_0.x) & ~_wgslsmith_div_u32(2658u, global0.a), 26u)]), ~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.c.b.a, 26u)], 26u)], 26u)]), vec2<u32>(0u, global0.d.x)), 26u)]), _wgslsmith_mod_u32(~_wgslsmith_add_u32(global0.d.x, 0u >> (arg_1.c.a.e.x % 32u)), ~(4294967295u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.d.x, 26u)], 26u)]) & countOneBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(45886u, 26u)], arg_1.c.a.d.x))));
    var var_1 = min(arg_1.c.b.a, 1u);
    global0 = arg_1.c.a;
    let var_2 = abs(firstTrailingBit(~global1[_wgslsmith_index_u32(127422u, 26u)]));
    let var_3 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(global0.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, 1i), firstTrailingBit(u_input.b))), firstLeadingBit(~(-23153i)), u_input.b);
    return max(1i, -_wgslsmith_div_i32(global0.b.x, 1i)) >> (34907u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(select(vec3<u32>(global0.e.x, 0u, global1[_wgslsmith_index_u32(18167u, 26u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(21769u, 26u)], global0.e.x), global0.d), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))) << (vec3<u32>(0u | global0.e.x, global1[_wgslsmith_index_u32(global0.d.x, 26u)] >> (global0.a % 32u), global0.e.x) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1153f + -1032f))), -1163f, -569f)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f) - _wgslsmith_f_op_f32(-959f - 1701f))), _wgslsmith_f_op_f32(-1837f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(860f)), 1846f) - _wgslsmith_f_op_f32(abs(1099f)))));
    var var_2 = _wgslsmith_sub_i32(func_4(select(vec3<bool>(true, any(vec2<bool>(true, false)), select(false, false, false)), select(func_1(Struct_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(-2147483647i, u_input.b, -1i), global0.c, vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], 66485u, 23383u), global0.e), Struct_1(var_0.x, vec3<i32>(-3411i, u_input.b, 1i), global0.b.x, global0.d, vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 4294967295u, 0u)), vec2<bool>(true, true))), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), any(vec4<bool>(true, true, false, false)) && all(vec2<bool>(true, false))), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1551f, var_1.x, var_1.x))), vec4<f32>(-139f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -507f), var_1.x), Struct_3(Struct_1(4294967295u, global0.b, 1i, global0.e.wwx, vec4<u32>(65760u, 385u, global0.a, 30534u)), Struct_1(50281u, global0.b, global0.c, vec3<u32>(global0.e.x, global1[_wgslsmith_index_u32(40853u, 26u)], var_0.x), global0.e), vec2<bool>(true, true)), 326f)), abs(select(20302i, global0.b.x >> (var_0.x % 32u), func_1(Struct_3(Struct_1(25752u, vec3<i32>(8399i, global0.c, global0.c), global0.b.x, global0.d, vec4<u32>(10223u, global0.d.x, var_0.x, global0.a)), Struct_1(global1[_wgslsmith_index_u32(15158u, 26u)], global0.b, global0.b.x, global0.d, global0.e), vec2<bool>(true, true))).x)) | _wgslsmith_dot_vec2_i32(global0.b.yx, global0.b.yz));
    global1 = array<u32, 26>();
    var var_3 = i32(-1i) * -1i;
    var var_4 = all(func_1(Struct_3(Struct_1(_wgslsmith_sub_u32(var_0.x, 4294967295u), global0.b | vec3<i32>(global0.c, u_input.a, global0.b.x), global0.c << (46089u % 32u), firstTrailingBit(vec3<u32>(19150u, 1u, global1[_wgslsmith_index_u32(var_0.x, 26u)])), global0.e), Struct_1(4294967295u, ~global0.b, min(13097i, 4287i), vec3<u32>(global1[_wgslsmith_index_u32(57352u, 26u)], 0u, 85379u), vec4<u32>(var_0.x, global0.e.x, global0.e.x, 107281u)), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstLeadingBit(global0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(0i, -2147483647i), u_input.b), vec2<i32>(select(-1i, u_input.a, true), _wgslsmith_clamp_i32(u_input.b, 39832i, u_input.b)))), _wgslsmith_clamp_vec2_i32(global0.b.zy, vec2<i32>(global0.b.x, global0.b.x), -global0.b.zy), var_1.xz);
}

