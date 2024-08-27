struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<f32, 25> = array<f32, 25>(-126f, 131f, -1380f, -440f, -1152f, 1222f, -174f, -611f, -1111f, -1684f, 423f, -1111f, 522f, 160f, 1336f, 387f, -325f, -760f, -1000f, -2140f, -1317f, -116f, 376f, 1808f, -489f);

var<private> global2: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(521f, -569f), vec2<f32>(-1132f, -331f), vec2<f32>(-147f, 1439f), vec2<f32>(-551f, 890f), vec2<f32>(1000f, -1023f), vec2<f32>(1307f, -1983f), vec2<f32>(-938f, -1000f), vec2<f32>(-1000f, -416f), vec2<f32>(1359f, 189f), vec2<f32>(-481f, -274f));

var<private> global3: array<Struct_4, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> u32 {
    global1 = array<f32, 25>();
    let var_0 = Struct_5(Struct_1(!vec4<bool>(any(vec4<bool>(false, false, false, true)), u_input.c.x <= 1u, false, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-839f, 939f, 610f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -2121f, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 342f, -2335f), vec3<f32>(arg_0.x, arg_0.x, 1900f), true)))), !vec2<bool>(u_input.c.x >= 51873u, u_input.b > 2147483647i), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x >> (~39094u % 32u)), ~(~(u_input.c.x << (26081u % 32u)))), 23u)], select(select(vec2<bool>(arg_1.x <= u_input.b, true), vec2<bool>(false, any(vec4<bool>(true, false, false, false))), select(u_input.c.x == u_input.c.x, false, select(false, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, false, false))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1950f) + vec2<f32>(-2752f, global1[_wgslsmith_index_u32(37809u, 25u)]))), arg_0, select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), u_input.c.x < u_input.c.x)))));
    var var_1 = Struct_3(!var_0.a.a, Struct_2(abs(_wgslsmith_div_vec2_u32(u_input.c, u_input.c)), abs(firstTrailingBit(_wgslsmith_mult_i32(u_input.a, u_input.a))), 16373u >> (firstTrailingBit(min(var_0.b.b.x, 168599u)) % 32u), Struct_1(!var_0.a.a, !var_0.a.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a.c - vec3<f32>(arg_0.x, -354f, arg_0.x)))), var_0.a.a.zz, !vec3<bool>(false, var_0.a.b.x, var_0.b.d.x))), _wgslsmith_f_op_vec3_f32(abs(var_0.b.a.xww)), arg_1.x != _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_1.x, u_input.a, 32037i), -arg_1.zyx), vec3<i32>(countOneBits(arg_1.x), ~u_input.b, _wgslsmith_dot_vec3_i32(arg_1.yxw, vec3<i32>(11513i, -1i, arg_1.x)))), _wgslsmith_sub_vec3_u32(var_0.b.b, vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(1u, u_input.c.x)), var_0.b.b.x, firstLeadingBit(u_input.c.x) << (~9889u % 32u))));
    var var_2 = var_1.b.d.e.xz;
    return min(min(~1u, abs(0u) | var_0.b.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(var_0.b.b ^ vec3<u32>(u_input.c.x, var_0.b.b.x, 10196u)), vec3<u32>(_wgslsmith_add_u32(1648u, u_input.c.x), ~var_0.b.b.x, ~4294967295u)), var_1.e.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> vec3<u32> {
    global0 = array<vec4<i32>, 26>();
    var var_0 = ~(~(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, u_input.a), vec2<i32>(u_input.b, -1i))) << (arg_0.a % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 26>();
    var var_1 = !arg_0.d.a.wzw;
    var var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(42634u, arg_2), arg_2, arg_2), max(max(vec3<u32>(99320u, 4294967295u, arg_2), vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x)), reverseBits(vec3<u32>(u_input.c.x, arg_2, 76012u)))), vec3<u32>(~(~arg_0.a.x), ~(1u << (0u % 32u)), ~(~arg_0.a.x)));
    return reverseBits(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 101622u, arg_0.a.x), vec3<u32>(u_input.c.x, var_2.x, u_input.c.x)), var_2.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, 0u, 86169u), max(vec3<u32>(arg_0.c, var_2.x, 12867u), vec3<u32>(u_input.c.x, u_input.c.x, 1u))))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f)))));
    let var_1 = func_4(Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), 1i, func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(772f, global1[_wgslsmith_index_u32(36415u, 25u)])))), ~(global0[_wgslsmith_index_u32(u_input.c.x, 26u)] ^ vec4<i32>(u_input.b, 0i, 23398i, 7547i))), Struct_1(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], -833f, 669f)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec3<bool>(true, true, true))), vec4<f32>(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 25u)]) + _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(abs(23149u), 25u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(76341u, 25u)] * global1[_wgslsmith_index_u32(u_input.c.x, 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 25u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 25u)] * 862f))))), u_input.c.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 25u)]))) + global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~u_input.c.x, 1u)), 25u)]);
    var var_2 = !vec2<bool>(!(!any(vec2<bool>(true, false))), true);
    var_0 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~5306u, 25u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 25u)] * _wgslsmith_f_op_f32(-1948f - global1[_wgslsmith_index_u32(~var_1.x, 25u)]))));
    return Struct_5(Struct_1(!select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), !vec4<bool>(true, var_2.x, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, var_2.x), var_2.x)), vec3<bool>(true, all(!vec2<bool>(var_2.x, false)), _wgslsmith_f_op_f32(169f + global1[_wgslsmith_index_u32(37533u, 25u)]) == _wgslsmith_f_op_f32(-1604f - global1[_wgslsmith_index_u32(u_input.c.x, 25u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1.x, 25u)], 646f, -3245f), vec3<f32>(-156f, global1[_wgslsmith_index_u32(var_1.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]))))), vec2<bool>(true, var_2.x), vec3<bool>(any(vec3<bool>(var_2.x, var_2.x, false)), select(false, true, var_2.x), true)), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21076u, 25u)]) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 25u)] - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c.x, 25u)]))), -1000f), var_1, _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(73553u, u_input.c.x, 2599u, 0u), vec4<u32>(4294967295u, var_1.x, 1u, 69855u)) << (reverseBits(u_input.c.x) % 32u), 10u)]), vec2<bool>(true, true), vec3<bool>(!any(vec2<bool>(var_2.x, var_2.x)), true, !select(true, var_2.x, true))), vec2<bool>(var_2.x, false), global2[_wgslsmith_index_u32(10939u, 10u)]);
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_3 {
    global1 = array<f32, 25>();
    var var_0 = countOneBits(firstLeadingBit(vec4<u32>(u_input.c.x, ~(16857u & arg_1.b.b.x), _wgslsmith_dot_vec3_u32(select(arg_1.b.b, vec3<u32>(2597u, 40640u, arg_1.b.b.x), true), vec3<u32>(4294967295u, 15065u, u_input.c.x)), _wgslsmith_mod_u32(4943u, _wgslsmith_clamp_u32(arg_1.b.b.x, 4294967295u, 1u)))));
    return Struct_3(arg_1.a.a, Struct_2(u_input.c, 2147483647i, ~arg_1.b.b.x, arg_1.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c.x, 25u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c.x, 25u)])), _wgslsmith_f_op_f32(abs(arg_1.b.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1086f * 212f), _wgslsmith_f_op_f32(trunc(arg_1.d.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(69240u, 25u)], arg_1.d.x, global1[_wgslsmith_index_u32(4294967295u, 25u)]) - _wgslsmith_f_op_vec3_f32(sign(arg_1.b.a.yxy)))))), select(~(~16960u) <= var_0.x, true, arg_0), min(vec3<u32>(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u, min(~u_input.c.x, 108275u)), var_0.yyw));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = !(!any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    var var_1 = func_5(!(~_wgslsmith_add_i32(arg_0, -6498i) >= -arg_0), func_2());
    var var_2 = vec4<bool>(var_1.d, func_5(false, Struct_5(Struct_1(vec4<bool>(var_1.b.d.b.x, true, false, var_1.d), var_1.a.zyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 2383f, global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<bool>(false, true), vec3<bool>(var_1.d, true, false)), func_2().b, !(!vec2<bool>(true, var_1.b.d.e.x)), vec2<f32>(var_1.b.d.c.x, -1000f))).b.d.b.x, var_1.a.x, !(!(!(4294967295u <= var_1.b.a.x))));
    global1 = array<f32, 25>();
    let var_3 = Struct_1(vec4<bool>(true, (any(vec3<bool>(var_1.d, true, true)) && true) | true, true, false), var_1.b.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(401f * 543f), global1[_wgslsmith_index_u32(~4294967295u, 25u)], var_1.b.d.c.x))), func_5(var_2.x, func_2()).a.wy, !(!(!(!vec3<bool>(var_2.x, var_2.x, false)))));
    return func_5(var_2.x, func_2());
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1831f), _wgslsmith_f_op_f32(sign(-431f)), global1[_wgslsmith_index_u32(1u, 25u)], 1022f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 25u)] - -2193f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(54640u, 25u)], -1416f), _wgslsmith_f_op_f32(f32(-1f) * -1172f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, -658f, global1[_wgslsmith_index_u32(51453u, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)]))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), _wgslsmith_f_op_f32(max(-416f, 1301f)), 420f, -683f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(80245u, 25u)])), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], 635f, -1091f, -497f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4615u, 25u)], -1035f, -1289f, -885f))))));
    var var_1 = 1325f;
    global3 = array<Struct_4, 23>();
    let var_2 = func_6(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], func_1(abs(-1i)), Struct_2(~min(abs(vec2<u32>(u_input.c.x, 6651u)), u_input.c ^ vec2<u32>(1u, 0u)), 21977i, reverseBits(4294967295u), func_2().a), firstTrailingBit(vec3<u32>(~(u_input.c.x ^ u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c), min(u_input.c.x, func_1(2147483647i).b.a.x))));
    var var_3 = Struct_2(vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), ~0u)), u_input.a, firstLeadingBit(4294967295u), func_6(vec2<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, 19815u), 25u)], _wgslsmith_f_op_f32(-var_0.x)), func_5(false && func_5(true, Struct_5(var_2, Struct_4(var_0, vec3<u32>(41290u, u_input.c.x, u_input.c.x), vec2<f32>(var_0.x, -218f), vec2<bool>(var_2.a.x, false), vec3<bool>(true, true, var_2.b.x)), var_2.b.yx, global2[_wgslsmith_index_u32(9185u, 10u)])).b.d.b.x, Struct_5(func_6(vec2<f32>(global1[_wgslsmith_index_u32(11138u, 25u)], var_0.x), Struct_3(vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.e.x), Struct_2(vec2<u32>(u_input.c.x, 17104u), 1i, 79093u, var_2), vec3<f32>(var_2.c.x, -796f, 2704f), true, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), Struct_2(u_input.c, -11310i, u_input.c.x, var_2), vec3<u32>(u_input.c.x, 56509u, u_input.c.x)), func_2().b, var_2.b.xy, _wgslsmith_div_vec2_f32(vec2<f32>(1143f, -105f), vec2<f32>(940f, 995f)))), func_1(max(u_input.a, 2147483647i) >> (~u_input.c.x % 32u)).b, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.c.x), u_input.c.x, ~u_input.c.x))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

