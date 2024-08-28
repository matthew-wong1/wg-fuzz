struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<i32>(1i, 0i, 1i), i32(-2147483648), vec4<u32>(0u, 7836u, 0u, 0u)), Struct_1(vec3<i32>(-28364i, -1i, -22254i), -35924i, vec4<u32>(1u, 0u, 47291u, 17820u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 7510i), 15500i, vec4<u32>(24667u, 69274u, 0u, 12087u)), Struct_1(vec3<i32>(-1i, 8397i, 0i), 14628i, vec4<u32>(22641u, 4294967295u, 4294967295u, 42801u)), Struct_1(vec3<i32>(-13026i, 0i, -41552i), 2147483647i, vec4<u32>(4294967295u, 17264u, 46727u, 39947u)), Struct_1(vec3<i32>(1i, -27232i, 7121i), -1i, vec4<u32>(0u, 4294967295u, 4294967295u, 21317u)), Struct_1(vec3<i32>(2147483647i, -32170i, 46908i), 1i, vec4<u32>(50414u, 0u, 0u, 1u)), Struct_1(vec3<i32>(0i, 0i, 1i), i32(-2147483648), vec4<u32>(63920u, 0u, 15981u, 1u)), Struct_1(vec3<i32>(-40064i, -54630i, 2147483647i), 2147483647i, vec4<u32>(4294967295u, 4294967295u, 0u, 58545u)), Struct_1(vec3<i32>(0i, -10995i, -1i), 22648i, vec4<u32>(75100u, 0u, 20174u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 51447i), -74588i, vec4<u32>(47278u, 39250u, 0u, 4294967295u)), Struct_1(vec3<i32>(7999i, -63806i, 1i), 0i, vec4<u32>(4294967295u, 968u, 0u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -5169i), 2147483647i, vec4<u32>(4294967295u, 0u, 31116u, 4294967295u)), Struct_1(vec3<i32>(28917i, 12046i, 2147483647i), 2147483647i, vec4<u32>(0u, 0u, 1u, 52752u)), Struct_1(vec3<i32>(i32(-2147483648), 15621i, 1i), 5508i, vec4<u32>(48406u, 0u, 1u, 0u)), Struct_1(vec3<i32>(0i, -19257i, -24486i), 3347i, vec4<u32>(1u, 24054u, 1u, 4294967295u)), Struct_1(vec3<i32>(22717i, 0i, 0i), 2147483647i, vec4<u32>(4294967295u, 52264u, 1u, 19132u)), Struct_1(vec3<i32>(17962i, 44542i, -9053i), 0i, vec4<u32>(4294967295u, 1u, 42707u, 4294967295u)), Struct_1(vec3<i32>(34568i, -1i, -20634i), -4783i, vec4<u32>(9823u, 16047u, 51847u, 29620u)), Struct_1(vec3<i32>(8788i, 43150i, 18196i), 1i, vec4<u32>(35929u, 48743u, 14246u, 35418u)), Struct_1(vec3<i32>(54765i, 37164i, 22440i), 20729i, vec4<u32>(5588u, 23520u, 1u, 50210u)), Struct_1(vec3<i32>(2147483647i, 0i, 4920i), -53544i, vec4<u32>(0u, 34114u, 40751u, 6924u)), Struct_1(vec3<i32>(48173i, 0i, 1i), -1i, vec4<u32>(0u, 88150u, 4708u, 11523u)), Struct_1(vec3<i32>(63167i, -15083i, 24154i), -34450i, vec4<u32>(11741u, 43125u, 57062u, 132514u)), Struct_1(vec3<i32>(0i, 17739i, 0i), -1i, vec4<u32>(8846u, 4294967295u, 89913u, 34645u)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i), 2147483647i, vec4<u32>(0u, 0u, 54984u, 5941u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = vec3<bool>(all(vec4<bool>(false, false, false, true)), true, !select(select(true, true, select(true, false, false)), false, select(true, true, true)));
    global0 = vec2<u32>(u_input.b.x ^ global0.x, ~abs(u_input.b.x));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_2 = vec2<u32>(firstLeadingBit(global0.x), max(~(_wgslsmith_sub_u32(41349u, global0.x) & ~8096u), u_input.a.x));
    global0 = vec2<u32>(0u, 5793u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_0.x)));
}

fn func_2() -> u32 {
    global0 = vec2<u32>(u_input.b.x, u_input.a.x);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(750f, -1484f, -2249f, -779f) + vec4<f32>(-792f, -1263f, -161f, 2188f)))) - -1185f), 1660f)), 25930i, 1u >> (global0.x % 32u));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(round(var_0.a))))), abs(~var_0.b), 79557u);
    var var_1 = ~vec2<u32>(64983u, global0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), countOneBits(1i), reverseBits(firstTrailingBit(_wgslsmith_sub_u32(55409u, ~var_1.x))));
    return ~u_input.b.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = 40858i;
    let var_1 = -572f;
    let var_2 = ~vec2<u32>(1u << (arg_1.c.x % 32u), ~17150u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -472f, var_1)));
    var var_4 = global1[_wgslsmith_index_u32(func_2(), 26u)];
    return Struct_2(var_3.x, -1i, 0u);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    global1 = array<Struct_1, 26>();
    global0 = _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(abs(0u), ~global0.x) ^ select(u_input.a.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 3863u), u_input.b, u_input.a.wz), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<u32>(~(~2086u), countOneBits(global0.x) << (global0.x % 32u)), vec2<u32>(u_input.b.x, reverseBits(1239u)));
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0.b, ~(~(_wgslsmith_mult_u32(0u, 4294967295u) << ((4294967295u ^ arg_0.c) % 32u))));
    var_0 = func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, var_0.b | arg_0.b), var_0.b | 38803i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(24476i, var_0.b, 2147483647i, 1i), vec4<i32>(2147483647i, arg_1, arg_0.b, -1i))), -vec3<i32>(arg_1, 48623i, 1i)), global1[_wgslsmith_index_u32(abs(firstTrailingBit(4294967295u)), 26u)], select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), 4294967295u <= global0.x), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, 260f < arg_0.a), true), vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(476f)) - -689f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_1(i32(-1i) * -1i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 29323u), 26u)], vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), true)), i32(-1i) * -2147483647i));
    let var_1 = !all(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true)));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, 10881i, 1i), vec3<i32>(-1i, 2147483647i, -2147483647i), true), firstLeadingBit(vec3<i32>(28547i, 0i, 36709i)))) >> (~u_input.a.wxw % vec3<u32>(32u)), _wgslsmith_div_i32(-7064i, firstTrailingBit(_wgslsmith_div_i32(-30619i, _wgslsmith_dot_vec2_i32(vec2<i32>(28747i, -2147483647i), vec2<i32>(2676i, 27605i))))), reverseBits(_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, 4294967295u, u_input.a.x, global0.x) ^ vec4<u32>(global0.x, 0u, 4294967295u, global0.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 14314u, 61267u, 0u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, global0.x, global0.x)), vec4<u32>(global0.x, global0.x, 0u, 45838u)))));
    let var_3 = func_1(~(-26689i), var_2, vec2<bool>(true, !all(!vec2<bool>(true, var_1))));
    var var_4 = var_3;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~_wgslsmith_add_i32(var_4.b, var_2.b)), var_2.c.wxw, _wgslsmith_f_op_f32(abs(var_3.a)), countOneBits(~u_input.a.wzx), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1432f, -294f, var_4.a, var_4.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1217f, 1516f, var_4.a, -646f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a, 1000f, 319f, -1102f), vec4<f32>(var_4.a, var_3.a, var_3.a, -465f), false)))))));
}

