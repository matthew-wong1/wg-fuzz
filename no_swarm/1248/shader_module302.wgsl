struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

var<private> global1: array<i32, 1>;

var<private> global2: array<vec4<i32>, 29>;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(true, vec2<f32>(884f, 484f), vec3<u32>(4294967295u, 29829u, 1u), true, vec2<u32>(10644u, 6985u)), Struct_1(false, vec2<f32>(115f, 1645f), vec3<u32>(0u, 50634u, 16125u), false, vec2<u32>(4294967295u, 71553u))), Struct_2(Struct_1(false, vec2<f32>(1676f, 839f), vec3<u32>(4294967295u, 13824u, 1u), true, vec2<u32>(15330u, 23946u)), Struct_1(true, vec2<f32>(-565f, 2824f), vec3<u32>(4294967295u, 41471u, 44043u), true, vec2<u32>(66378u, 0u))), Struct_2(Struct_1(false, vec2<f32>(1000f, 419f), vec3<u32>(0u, 4294967295u, 1u), false, vec2<u32>(1u, 25136u)), Struct_1(true, vec2<f32>(-844f, 429f), vec3<u32>(0u, 4294967295u, 8224u), false, vec2<u32>(5551u, 23270u))), Struct_2(Struct_1(false, vec2<f32>(-350f, 102f), vec3<u32>(16078u, 4294967295u, 4294967295u), false, vec2<u32>(0u, 34192u)), Struct_1(false, vec2<f32>(-807f, -289f), vec3<u32>(4294967295u, 3805u, 0u), false, vec2<u32>(73741u, 0u))), Struct_2(Struct_1(true, vec2<f32>(-1660f, 1000f), vec3<u32>(2637u, 4294967295u, 68955u), false, vec2<u32>(15364u, 4294967295u)), Struct_1(false, vec2<f32>(-1219f, 410f), vec3<u32>(1u, 4294967295u, 0u), true, vec2<u32>(72981u, 37031u))), Struct_2(Struct_1(true, vec2<f32>(231f, 1506f), vec3<u32>(54594u, 4294967295u, 39727u), false, vec2<u32>(0u, 0u)), Struct_1(true, vec2<f32>(-455f, 1000f), vec3<u32>(81746u, 11115u, 0u), false, vec2<u32>(0u, 1u))), Struct_2(Struct_1(false, vec2<f32>(-456f, -204f), vec3<u32>(4294967295u, 0u, 23404u), false, vec2<u32>(0u, 18407u)), Struct_1(false, vec2<f32>(472f, 1000f), vec3<u32>(1u, 32703u, 0u), true, vec2<u32>(54276u, 17902u))), Struct_2(Struct_1(true, vec2<f32>(695f, -345f), vec3<u32>(0u, 0u, 4268u), false, vec2<u32>(79566u, 41191u)), Struct_1(false, vec2<f32>(-209f, -894f), vec3<u32>(9546u, 63151u, 0u), true, vec2<u32>(80992u, 0u))), Struct_2(Struct_1(false, vec2<f32>(-314f, -837f), vec3<u32>(85366u, 1u, 0u), false, vec2<u32>(0u, 0u)), Struct_1(false, vec2<f32>(-383f, 1216f), vec3<u32>(2726u, 0u, 4294967295u), true, vec2<u32>(0u, 38672u))), Struct_2(Struct_1(true, vec2<f32>(1224f, 872f), vec3<u32>(7776u, 0u, 2895u), true, vec2<u32>(1u, 4982u)), Struct_1(false, vec2<f32>(1610f, 1000f), vec3<u32>(1u, 0u, 78574u), true, vec2<u32>(1u, 0u))), Struct_2(Struct_1(false, vec2<f32>(319f, 102f), vec3<u32>(0u, 907u, 31721u), false, vec2<u32>(1u, 4294967295u)), Struct_1(false, vec2<f32>(965f, 1763f), vec3<u32>(10249u, 0u, 0u), false, vec2<u32>(9295u, 5251u))), Struct_2(Struct_1(true, vec2<f32>(456f, 148f), vec3<u32>(1u, 0u, 1u), true, vec2<u32>(0u, 30985u)), Struct_1(true, vec2<f32>(-965f, 823f), vec3<u32>(60228u, 39239u, 1u), false, vec2<u32>(17336u, 1u))), Struct_2(Struct_1(false, vec2<f32>(932f, 988f), vec3<u32>(4294967295u, 7797u, 65647u), false, vec2<u32>(67602u, 0u)), Struct_1(true, vec2<f32>(1000f, 1775f), vec3<u32>(0u, 0u, 75117u), false, vec2<u32>(4294967295u, 46354u))), Struct_2(Struct_1(true, vec2<f32>(-1475f, -419f), vec3<u32>(93006u, 4294967295u, 104281u), false, vec2<u32>(35656u, 0u)), Struct_1(true, vec2<f32>(561f, -1821f), vec3<u32>(4294967295u, 1u, 0u), true, vec2<u32>(42964u, 18442u))), Struct_2(Struct_1(true, vec2<f32>(-973f, -898f), vec3<u32>(0u, 0u, 25052u), true, vec2<u32>(20773u, 1u)), Struct_1(false, vec2<f32>(-1000f, -820f), vec3<u32>(49788u, 0u, 24997u), true, vec2<u32>(1u, 39083u))), Struct_2(Struct_1(true, vec2<f32>(-726f, 858f), vec3<u32>(77588u, 16230u, 1u), false, vec2<u32>(4294967295u, 50275u)), Struct_1(true, vec2<f32>(1256f, -614f), vec3<u32>(4294967295u, 65264u, 69768u), true, vec2<u32>(4294967295u, 7782u))), Struct_2(Struct_1(false, vec2<f32>(1139f, -668f), vec3<u32>(0u, 4294967295u, 4294967295u), true, vec2<u32>(82394u, 33547u)), Struct_1(true, vec2<f32>(-528f, 1599f), vec3<u32>(4294967295u, 1u, 1u), false, vec2<u32>(8463u, 4294967295u))), Struct_2(Struct_1(false, vec2<f32>(-897f, -1601f), vec3<u32>(1u, 112916u, 4294967295u), false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(false, vec2<f32>(180f, -513f), vec3<u32>(522u, 9445u, 3297u), true, vec2<u32>(0u, 32142u))), Struct_2(Struct_1(true, vec2<f32>(260f, -710f), vec3<u32>(45241u, 59601u, 0u), false, vec2<u32>(63421u, 4294967295u)), Struct_1(true, vec2<f32>(336f, 429f), vec3<u32>(6587u, 0u, 0u), true, vec2<u32>(9192u, 0u))), Struct_2(Struct_1(true, vec2<f32>(-893f, -122f), vec3<u32>(0u, 4294967295u, 13171u), true, vec2<u32>(50272u, 0u)), Struct_1(true, vec2<f32>(793f, -530f), vec3<u32>(39664u, 486u, 0u), true, vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(true, vec2<f32>(527f, -569f), vec3<u32>(5936u, 26331u, 0u), true, vec2<u32>(0u, 16814u)), Struct_1(true, vec2<f32>(420f, -390f), vec3<u32>(24751u, 27125u, 24907u), false, vec2<u32>(57588u, 0u))));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f * -197f)), _wgslsmith_f_op_f32(abs(-704f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, 1028f) + vec2<f32>(543f, 2141f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), -1000f))));
    let var_1 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, _wgslsmith_f_op_f32(step(var_0.x, 1906f)) == var_0.x, true), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-199f, 1000f, true)))), _wgslsmith_f_op_f32(floor(var_0.x)))) * _wgslsmith_f_op_f32(exp2(var_0.x))));
    var var_3 = Struct_1(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0, var_0, vec2<bool>(var_1, true)))), var_0)), vec3<u32>(_wgslsmith_mod_u32(139536u, u_input.a << ((1u | u_input.b) % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(40121u, u_input.a, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.a, 34567u, u_input.b)) ^ ~(0u << (u_input.b % 32u)), ~(~(u_input.a & u_input.a))), var_1 || select(true, false, false), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)), select(85019u, ~55154u, true)) & ~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a, 0u)), vec2<u32>(77570u, 47050u)));
    return ~(~_wgslsmith_sub_u32(u_input.a, 42050u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = ~func_3();
    var var_1 = Struct_2(arg_2.b, arg_2.b);
    let var_2 = Struct_2(arg_2.b, arg_2.b);
    return Struct_3(any(global0[_wgslsmith_index_u32(arg_1.x, 28u)]), Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(-arg_3), var_1.b.c, _wgslsmith_mod_u32(~var_2.a.c.x, abs(var_1.a.c.x)) <= u_input.a, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.e.x, var_1.a.e.x, var_1.a.c.x, var_1.a.e.x), arg_1), 0u), 0u)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = arg_1;
    global2 = array<vec4<i32>, 29>();
    global3 = array<Struct_2, 21>();
    global0 = array<vec4<bool>, 28>();
    global2 = array<vec4<i32>, 29>();
    return -max(~_wgslsmith_add_i32(select(11829i, -37227i, false), -1i << (u_input.b % 32u)), 36975i);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(sign(1425f));
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, ~(~arg_2) << (arg_2 % 32u)), 21u)];
    let var_2 = abs(-(i32(-1i) * -_wgslsmith_add_i32(arg_1, arg_1)));
    global1 = array<i32, 1>();
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.b.x))) - _wgslsmith_f_op_f32(ceil(-394f)))));
    return Struct_3(var_1.b.d, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.b.x, var_1.b.b.x, -2168f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a.b.x, -990f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, 624f, var_1.a.b.x)))), countOneBits(~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.b))), func_2(vec3<f32>(func_2(vec3<f32>(-227f, 418f, -137f), vec4<u32>(arg_2, 1u, 1u, 0u), Struct_3(arg_0, var_1.a), var_1.a.b).b.b.x, var_1.a.b.x, -1763f), vec4<u32>(var_1.a.e.x, arg_2, 4777u, 23864u) | vec4<u32>(27860u, 50157u, 18338u, 3694u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2280f, 729f, 1759f)), vec4<u32>(1u, 55464u, 1u, 62821u), Struct_3(false, var_1.b), _wgslsmith_f_op_vec2_f32(var_1.b.b - var_1.b.b)), vec2<f32>(_wgslsmith_f_op_f32(abs(-101f)), _wgslsmith_f_op_f32(f32(-1f) * -177f))), vec2<f32>(1208f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(247f, var_1.b.b.x, false)))))).b);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = reverseBits(arg_1.x);
    var var_1 = vec2<bool>(false, (0i == _wgslsmith_dot_vec3_i32(-arg_1.yyx, ~arg_1.xyw)) | true);
    let var_2 = -854f;
    global0 = array<vec4<bool>, 28>();
    var var_3 = vec3<u32>(2451u, ~49945u, 0u) & vec3<u32>(u_input.b & ~_wgslsmith_add_u32(u_input.a, 29840u), 0u, ~u_input.b);
    return func_5(!(func_4(~(-15799i), func_2(vec3<f32>(var_2, 800f, var_2), vec4<u32>(u_input.a, var_3.x, 91131u, 4294967295u), Struct_3(var_1.x, Struct_1(var_1.x, vec2<f32>(var_2, 527f), vec3<u32>(33653u, u_input.a, u_input.a), true, vec2<u32>(78756u, u_input.b))), vec2<f32>(482f, 753f)), abs(vec4<u32>(u_input.b, 1u, 1u, 35803u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2, var_2, 376f))) < var_0), arg_1.x, u_input.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = true;
    let var_1 = -814f;
    var var_2 = vec4<f32>(420f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) * _wgslsmith_div_f32(940f, 822f))))), 1532f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.b.b.x)))) - _wgslsmith_div_f32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(870f, var_1, arg_1.b.b.x), vec3<f32>(var_1, arg_0.b.b.x, 114f)), vec4<u32>(1u, 12289u, 14975u, arg_0.b.c.x), func_5(var_0, 2147483647i, arg_1.b.e.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, -125f)))).b.b.x, _wgslsmith_f_op_f32(-525f - -107f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.b.x, -577f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f + -1223f) - var_2.x))));
    global3 = array<Struct_2, 21>();
    return arg_0.b;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global0 = array<vec4<bool>, 28>();
    let var_0 = arg_0;
    global2 = array<vec4<i32>, 29>();
    var var_1 = Struct_3(true, Struct_1(func_1(1i, ~(vec4<i32>(0i, 21715i, -17704i, -41166i) ^ global2[_wgslsmith_index_u32(4294967295u, 29u)])).a, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(max(-2044f, _wgslsmith_f_op_f32(-arg_1.b.x)))), arg_1.c, arg_1.a, arg_1.c.zy));
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -20611i, -2147483647i), vec3<i32>(var_0, arg_0, var_0)), max(vec3<i32>(arg_0, var_0, 20302i), vec3<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 1u)], 2147483647i))) ^ (min(vec3<i32>(arg_0, arg_0, 28511i), vec3<i32>(var_0, arg_0, -1i)) | ~vec3<i32>(arg_0, arg_0, 3690i))), vec3<i32>(var_0, _wgslsmith_add_i32(9355i << (abs(arg_2) % 32u), -(~2147483647i)), _wgslsmith_clamp_i32(8021i, 23154i, _wgslsmith_add_i32(arg_0, 2147483647i) ^ (arg_0 >> (var_1.b.c.x % 32u)))));
    return global3[_wgslsmith_index_u32(4294967295u, 21u)];
}

fn func_8(arg_0: Struct_2) -> Struct_1 {
    global3 = array<Struct_2, 21>();
    let var_0 = ~max(30540i, global1[_wgslsmith_index_u32(4294967295u, 1u)]);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1138f);
    var var_2 = arg_0.a;
    let var_3 = ~vec3<u32>(4294967295u, ~u_input.b, _wgslsmith_add_u32(~arg_0.a.e.x, arg_0.b.c.x));
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(abs(var_2.b)), vec3<u32>(89043u, _wgslsmith_mod_u32(0u, ~62908u), 38764u), func_7(firstTrailingBit(_wgslsmith_sub_i32(var_0 ^ -2147483647i, func_4(-1i, Struct_3(var_2.d, arg_0.a), vec4<u32>(64065u, u_input.a, 0u, arg_0.b.e.x), vec4<f32>(var_1, var_2.b.x, 651f, 131f)))), arg_0.b, _wgslsmith_mod_u32(func_5(arg_0.b.b.x == arg_0.b.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(70069u, 1u)], -18602i, -45190i, var_0), global2[_wgslsmith_index_u32(1u, 29u)]), ~0u).b.c.x, 170u)).b.d, var_3.xz | ~(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 1u), var_2.e) >> (~var_3.xy % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 28>();
    var var_0 = !global0[_wgslsmith_index_u32(~u_input.b, 28u)];
    var_0 = select(select(select(!vec4<bool>(false, false, true, var_0.x), !vec4<bool>(var_0.x, false, true, var_0.x), global0[_wgslsmith_index_u32(4294967295u, 28u)]), select(!global0[_wgslsmith_index_u32(u_input.a, 28u)], select(global0[_wgslsmith_index_u32(u_input.a, 28u)], !vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(false, var_0.x, var_0.x, true))), true), u_input.a > max(u_input.b, _wgslsmith_sub_u32(22289u, 0u))), !select(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 28u)]), global0[_wgslsmith_index_u32(u_input.a, 28u)], var_0.x), global0[_wgslsmith_index_u32(u_input.b, 28u)], !(!vec4<bool>(var_0.x, false, var_0.x, true))), !(var_0.x & true));
    var var_1 = Struct_2(func_8(func_7(_wgslsmith_div_i32(_wgslsmith_clamp_i32(29088i, 66851i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), -12333i), func_6(func_1(global1[_wgslsmith_index_u32(8055u, 1u)], vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(22134u, 1u)], -2147483647i, global1[_wgslsmith_index_u32(0u, 1u)])), func_5(var_0.x, 1i, u_input.a)), ~u_input.b)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, 503f) + vec2<f32>(-1232f, 508f)))), abs(func_8(Struct_2(Struct_1(var_0.x, vec2<f32>(-412f, 2007f), vec3<u32>(u_input.b, u_input.b, 30354u), var_0.x, vec2<u32>(u_input.b, u_input.b)), Struct_1(false, vec2<f32>(-700f, 986f), vec3<u32>(u_input.b, 85058u, u_input.a), false, vec2<u32>(4294967295u, 35305u)))).c), false, _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(13115u, 28013u)), vec2<u32>(0u, u_input.b) ^ vec2<u32>(5672u, u_input.a)) | ~vec2<u32>(2501u, u_input.a)));
    global3 = array<Struct_2, 21>();
    var var_2 = 2478f;
    let var_3 = Struct_4(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) + -137f)), -147f, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c);
}

