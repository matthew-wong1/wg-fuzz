struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<f32, 30>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<u32>(4294967295u, 0u, 24782u), vec2<bool>(false, true), true, vec2<f32>(552f, -1306f), Struct_1(-1000f, vec2<u32>(70579u, 90249u))), Struct_2(vec3<u32>(0u, 66151u, 23026u), vec2<bool>(true, true), true, vec2<f32>(1491f, -757f), Struct_1(1000f, vec2<u32>(0u, 0u))), Struct_2(vec3<u32>(73794u, 96049u, 72983u), vec2<bool>(false, false), true, vec2<f32>(-880f, -566f), Struct_1(-123f, vec2<u32>(3404u, 32989u))), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(true, true), true, vec2<f32>(430f, -266f), Struct_1(1291f, vec2<u32>(1u, 1u))), Struct_2(vec3<u32>(285u, 4294967295u, 4294967295u), vec2<bool>(false, false), false, vec2<f32>(-567f, -1814f), Struct_1(-807f, vec2<u32>(554u, 1u))), Struct_2(vec3<u32>(25215u, 26313u, 43464u), vec2<bool>(true, true), true, vec2<f32>(1000f, -135f), Struct_1(-833f, vec2<u32>(14378u, 44271u))), Struct_2(vec3<u32>(46800u, 1u, 34935u), vec2<bool>(true, true), false, vec2<f32>(547f, -925f), Struct_1(123f, vec2<u32>(92180u, 4294967295u))), Struct_2(vec3<u32>(4294967295u, 39856u, 4294967295u), vec2<bool>(true, true), true, vec2<f32>(-284f, -200f), Struct_1(-314f, vec2<u32>(12071u, 28005u))), Struct_2(vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(false, false), true, vec2<f32>(-452f, 1482f), Struct_1(1179f, vec2<u32>(79409u, 4294967295u))), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec2<bool>(true, false), false, vec2<f32>(-1000f, 1221f), Struct_1(-197f, vec2<u32>(11447u, 29410u))), Struct_2(vec3<u32>(54629u, 11048u, 4294967295u), vec2<bool>(true, true), true, vec2<f32>(229f, 515f), Struct_1(-1949f, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(false, false), true, vec2<f32>(914f, -217f), Struct_1(173f, vec2<u32>(60706u, 593u))));

var<private> global3: Struct_1 = Struct_1(-1371f, vec2<u32>(8023u, 4294967295u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    global1 = array<f32, 30>();
    let var_0 = Struct_1(-221f, firstTrailingBit(vec2<u32>(0u, ~countOneBits(arg_0.e.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-331f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(abs(9698u), 30u)], _wgslsmith_div_f32(global3.a, arg_0.d.x))))))));
    let var_2 = _wgslsmith_f_op_f32(floor(-330f));
    var var_3 = arg_0.e;
    return ~min(~9910u, 53307u);
}

fn func_2(arg_0: i32) -> vec3<u32> {
    global1 = array<f32, 30>();
    return _wgslsmith_mult_vec3_u32(vec3<u32>(20343u, u_input.d, u_input.d), select(~vec3<u32>(68993u, global3.b.x, global3.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(64255u, u_input.d, global3.b.x), vec3<u32>(40920u, u_input.d, global3.b.x)), vec3<bool>(true, true, true)) << (max(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(0u, 3692u, 4294967295u)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global3.b.x, u_input.b, u_input.d), ~(~vec3<u32>(0u, u_input.b, 68274u))), vec3<u32>(u_input.b, _wgslsmith_div_u32(func_3(global2[_wgslsmith_index_u32(global3.b.x, 12u)], -43743i), _wgslsmith_mod_u32(4294967295u, 32955u)), _wgslsmith_dot_vec2_u32(global3.b >> (global3.b % vec2<u32>(32u)), reverseBits(vec2<u32>(62453u, global3.b.x))))) % vec3<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(arg_1 | arg_1, vec3<u32>(arg_1.x, 23892u, global3.b.x))), arg_1.x);
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(exp2(arg_0))))), ~(~arg_1.xz));
    var_0 = countOneBits(0u);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-164f)), arg_0), global3.b | _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, global3.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, global3.b.x)), true), vec2<u32>(~79760u, 1u)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1833f))), func_2(_wgslsmith_add_i32(33826i, reverseBits(u_input.c.x))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 30u)] * 166f) * _wgslsmith_f_op_f32(567f * global1[_wgslsmith_index_u32(u_input.b, 30u)])), u_input.a <= _wgslsmith_mult_i32(u_input.a, -20432i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(~38976u), 30u)])));
    let var_1 = reverseBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, 48518u) & vec3<u32>(global3.b.x, u_input.b, 0u), vec3<u32>(41926u, global3.b.x, 0u) & vec3<u32>(u_input.d, 1158u, var_0.b.x)))) ^ ~(~vec3<u32>(var_0.b.x, 4294967295u, 27386u) & vec3<u32>(~var_0.b.x, global3.b.x, 1u));
    global3 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a, global3.a, !(0i <= arg_0)))), vec3<u32>(4294967295u, func_2(arg_0 | arg_0).x >> (u_input.d % 32u), 57743u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(func_3(Struct_2(vec3<u32>(var_0.b.x, u_input.d, 1u), vec2<bool>(false, true), true, vec2<f32>(-1000f, -914f), Struct_1(global3.a, global3.b)), u_input.c.x) >> (firstTrailingBit(9097u) % 32u), 30u)], -600f, 1f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1365f)), global3.a, -1155f <= global1[_wgslsmith_index_u32(0u, 30u)])))))));
    let var_3 = global2[_wgslsmith_index_u32(1u, 12u)];
    return var_3.e;
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u) << (vec3<u32>(arg_0.b.x, u_input.b, arg_0.b.x) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.d, arg_0.b.x))), vec3<u32>(_wgslsmith_sub_u32(38921u, global3.b.x << (~4294967295u % 32u)), ~4294967295u, min(_wgslsmith_mult_u32(firstLeadingBit(arg_0.b.x), _wgslsmith_div_u32(4294967295u, arg_0.b.x)), ~(~31789u)))), 12u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, global1[_wgslsmith_index_u32(var_0.a.x, 30u)], -834f), vec3<f32>(-1000f, 2202f, 1255f), vec3<bool>(var_0.c, true, false))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(121f, 979f, -504f)))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + -674f), _wgslsmith_f_op_f32(step(-632f, -317f)), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1000f, 1198f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(19452u, 30u)], -1000f, global1[_wgslsmith_index_u32(0u, 30u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, var_0.d.x, 895f)), var_0.b.x)), !vec3<bool>(var_0.b.x | true, false, var_0.b.x)))));
    var var_2 = func_4(_wgslsmith_f_op_f32(-356f - -1862f), vec3<u32>(~_wgslsmith_clamp_u32(arg_0.b.x, 47045u, 1u) ^ _wgslsmith_add_u32(109373u, u_input.d), arg_0.b.x, 27322u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-369f, -994f), _wgslsmith_f_op_f32(sign(1091f)), _wgslsmith_f_op_f32(-var_0.d.x)))))));
    var var_3 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), reverseBits(0i), i32(-1i) * -2147483647i, u_input.a & (u_input.c.x >> (arg_0.b.x % 32u))), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 0i, 5218i), vec4<i32>(5146i, u_input.c.x, 54641i, u_input.c.x), vec4<i32>(u_input.a, u_input.c.x, 0i, -1i)), vec4<i32>(u_input.a, select(u_input.a, -2147483647i, var_0.c), _wgslsmith_mult_i32(67576i, u_input.a), u_input.c.x)), (vec4<i32>(u_input.a, u_input.c.x, 0i, 4040i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 0i, -1i, u_input.c.x), vec4<i32>(-29166i, 1i, -1822i, -1i))) >> (vec4<u32>(arg_0.b.x, ~4294967295u, ~var_2.b.x, _wgslsmith_mult_u32(u_input.d, 12775u)) % vec4<u32>(32u))), ~firstTrailingBit(-(vec4<i32>(0i, u_input.a, -2147483647i, -44412i) | vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, -1i))), select(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global3.b, var_2.b), _wgslsmith_add_u32(39290u, 113064u)), 7u)], select(select(vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(var_0.b.x, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.b.x, true, false, true)), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.c), var_0.c), global0[_wgslsmith_index_u32(4294967295u, 7u)]), global0[_wgslsmith_index_u32(~(~var_0.e.b.x), 7u)], true && var_0.b.x));
    return 709f;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2031f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.b.x, 30u)]), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))));
    global1 = array<f32, 30>();
    global3 = Struct_1(-1009f, vec2<u32>(u_input.b, 4294967295u));
    var var_1 = vec3<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(u_input.c >> ((vec3<u32>(4294967295u, arg_3.x, 1u) & arg_3.zzy) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-14532i, u_input.c.x, arg_2.x)), u_input.c >> (vec3<u32>(global3.b.x, 44903u, 4294967295u) % vec3<u32>(32u))) | vec3<i32>(-4679i, -2147483647i, arg_2.x)), countOneBits(~(~_wgslsmith_mod_i32(u_input.c.x, -1i))));
    global1 = array<f32, 30>();
    return Struct_1(-1000f, ~_wgslsmith_div_vec2_u32(select(arg_3.yx, vec2<u32>(66706u, 79419u), true), ~arg_3.wz) << (~(~global3.b >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, u_input.d)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1173f * _wgslsmith_f_op_f32(-global3.a)))), _wgslsmith_f_op_f32(func_5(func_1(u_input.c.x))), all(vec3<bool>(true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a, _wgslsmith_f_op_f32(1151f * -171f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.a, global3.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global1[_wgslsmith_index_u32(0u, 30u)]) + vec2<f32>(global3.a, -1356f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, -784f) + vec2<f32>(global3.a, global1[_wgslsmith_index_u32(global3.b.x, 30u)]))))), vec2<i32>(0i, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_div_i32(i32(-1i) * -3408i, -32577i | u_input.c.x))), ~(vec4<u32>(~global3.b.x, func_1(u_input.c.x).b.x, 4399u, 11674u) ^ (~vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, global3.b.x, global3.b.x), vec4<u32>(1u, 4294967295u, u_input.d, global3.b.x), vec4<u32>(u_input.d, global3.b.x, global3.b.x, global3.b.x)))));
    let var_1 = global2[_wgslsmith_index_u32(75433u, 12u)];
    let var_2 = select(!(!var_1.c), any(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(11912u, var_0.b.x)), ~0u), 7u)], select(!vec4<bool>(var_1.c, var_1.b.x, true, var_1.c), global0[_wgslsmith_index_u32(global3.b.x, 7u)], false), true)), (4294967295u != _wgslsmith_mult_u32(2832u, func_6(949f, var_1.d, u_input.c.yy, vec4<u32>(1u, global3.b.x, u_input.d, 0u)).b.x)) || true);
    var var_3 = _wgslsmith_f_op_f32(-458f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(238f, 642f, false)) + _wgslsmith_f_op_f32(ceil(var_1.d.x))))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.e.a, _wgslsmith_f_op_f32(-global3.a))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -915f))))), -918f, var_0.a);
    var var_5 = !vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_4.x)))) != global3.a, !(!any(vec3<bool>(true, false, var_2))), any(vec2<bool>(true, false)), false);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~5962u);
}

