struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-13949i, 0i), vec4<f32>(-167f, -624f, 1214f, -2637f), vec2<u32>(4291u, 0u)), Struct_1(vec2<i32>(10556i, -29830i), vec4<f32>(-3123f, -788f, -1171f, 919f), vec2<u32>(70765u, 1u)), Struct_1(vec2<i32>(6531i, 14242i), vec4<f32>(-2105f, -834f, 503f, -1000f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<i32>(-3185i, 24447i), vec4<f32>(-479f, 1000f, 259f, 332f), vec2<u32>(66087u, 1u)), Struct_1(vec2<i32>(10860i, 27462i), vec4<f32>(-1000f, -1000f, 1090f, 1058f), vec2<u32>(4294967295u, 82922u)), Struct_1(vec2<i32>(610i, 26920i), vec4<f32>(-1000f, -458f, 1574f, 1000f), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(-12799i, 11933i), vec4<f32>(1186f, 1636f, -608f, 1223f), vec2<u32>(0u, 62350u)), Struct_1(vec2<i32>(46878i, -34796i), vec4<f32>(-253f, -1029f, 746f, -381f), vec2<u32>(4294967295u, 10914u)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<f32>(-1000f, -1887f, 802f, -1000f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<i32>(i32(-2147483648), -56781i), vec4<f32>(-981f, 365f, 623f, -910f), vec2<u32>(1u, 20840u)), Struct_1(vec2<i32>(0i, -1i), vec4<f32>(930f, -886f, 288f, 1000f), vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(-1174f, 227f, 575f, 1587f), vec2<u32>(1u, 1u)), Struct_1(vec2<i32>(25367i, 46764i), vec4<f32>(-1022f, 560f, 1456f, 789f), vec2<u32>(13844u, 0u)), Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(568f, -671f, 239f, 682f), vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(-15447i, i32(-2147483648)), vec4<f32>(-1000f, -2138f, 1000f, -696f), vec2<u32>(15921u, 13006u)), Struct_1(vec2<i32>(-13709i, 2330i), vec4<f32>(-1000f, -396f, 990f, 206f), vec2<u32>(13773u, 15072u)), Struct_1(vec2<i32>(17675i, 1746i), vec4<f32>(-833f, 1114f, -434f, 447f), vec2<u32>(46998u, 0u)), Struct_1(vec2<i32>(i32(-2147483648), 43188i), vec4<f32>(-1073f, -254f, 1849f, -686f), vec2<u32>(36083u, 89276u)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-2701f, 1126f, -349f, -1000f), vec2<u32>(29999u, 10247u)), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<f32>(387f, -198f, -1000f, -3065f), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(2147483647i, -63374i), vec4<f32>(-863f, 2014f, 1277f, -217f), vec2<u32>(3112u, 0u)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(1678f, -1212f, -617f, 129f), vec2<u32>(37208u, 1u)), Struct_1(vec2<i32>(-1i, -36043i), vec4<f32>(762f, 1569f, 397f, -161f), vec2<u32>(12593u, 86862u)), Struct_1(vec2<i32>(15864i, 3611i), vec4<f32>(-138f, 404f, 532f, 1352f), vec2<u32>(1u, 35363u)), Struct_1(vec2<i32>(1i, -6067i), vec4<f32>(1422f, 276f, 122f, 696f), vec2<u32>(1u, 1u)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(1353f, -1000f, -1156f, -561f), vec2<u32>(40372u, 48984u)), Struct_1(vec2<i32>(-47854i, -1629i), vec4<f32>(790f, -1757f, 941f, 891f), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<i32>(1i, 10326i), vec4<f32>(1082f, -1492f, 519f, -174f), vec2<u32>(0u, 21283u)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-1193f, 198f, -804f, -128f), vec2<u32>(0u, 60146u)), Struct_1(vec2<i32>(1i, -42812i), vec4<f32>(768f, -186f, 1408f, -1320f), vec2<u32>(0u, 48874u)), Struct_1(vec2<i32>(i32(-2147483648), -10306i), vec4<f32>(-806f, 436f, -633f, 563f), vec2<u32>(39511u, 4294967295u)), Struct_1(vec2<i32>(-75049i, 1i), vec4<f32>(-889f, 554f, 1118f, 391f), vec2<u32>(141192u, 7003u)));

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<u32, 25>;

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> vec2<u32> {
    global3 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(arg_0.c.x, 0u, 47043u)), u_input.b & u_input.b), ~(~global1.c.x)), _wgslsmith_sub_u32(global1.c.x ^ global3[_wgslsmith_index_u32(1u, 25u)], 122208u)), 32u)];
    global0 = array<Struct_1, 32>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1613f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.x * var_1.b.x)))) - -1827f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1692f * 1080f)), 832f));
    return vec2<u32>(_wgslsmith_mult_u32(global1.c.x & ~3245u, _wgslsmith_mult_u32(1u, global1.c.x) | 1u), ~global3[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32(u_input.b.x, 25u)])), 25u)]);
}

fn func_2() -> Struct_2 {
    var var_0 = firstTrailingBit(func_3(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, -1i), -vec2<i32>(global1.a.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2162f, 422f, global1.b.x, global1.b.x))), _wgslsmith_div_vec2_u32(~u_input.a.ww, vec2<u32>(global1.c.x, 41104u))), _wgslsmith_f_op_f32(-global1.b.x), vec2<bool>((global1.a.x <= 71980i) || true, false), all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), true))));
    let var_1 = ~((vec3<i32>(firstTrailingBit(global1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.a.x, global1.a.x), vec3<i32>(global1.a.x, 0i, global1.a.x)), global1.a.x) & ~abs(vec3<i32>(global1.a.x, global1.a.x, -5741i))) << (~u_input.b % vec3<u32>(32u)));
    global4 = array<vec3<bool>, 15>();
    var var_2 = _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(11801u, global1.c.x, global1.c.x) & u_input.a.xyx) ^ u_input.a.zwz, u_input.b);
    var_2 = ~vec3<u32>(~((global1.c.x & 33899u) << (var_0.x % 32u)), ~var_0.x, _wgslsmith_sub_u32(global1.c.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33314u), var_2.yz))));
    return Struct_2(~var_0.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global3 = array<u32, 25>();
    var var_0 = ~(~4294967295u);
    var var_1 = func_2();
    let var_2 = reverseBits(~abs(37786u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 783f, _wgslsmith_f_op_f32(ceil(arg_2.b.x)), _wgslsmith_div_f32(1000f, arg_2.b.x)) * _wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_0.x, -384f, arg_2.b.x) - vec4<f32>(-772f, -584f, arg_2.b.x, arg_2.b.x))))));
    return func_3(Struct_1(vec2<i32>(arg_2.a.x << (global3[_wgslsmith_index_u32(arg_2.c.x, 25u)] % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(36314i, 1i, 0i, 0i), vec4<i32>(37483i, global1.a.x, arg_2.a.x, arg_2.a.x))), arg_2.b, ~(~arg_2.c)), 166f, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(global1.a.x >= global1.a.x, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(sign(var_3.x)) <= _wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(max(1000f, 789f)))).x ^ func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(max(-1227f, 1241f)) != global1.b.x, true)), vec2<bool>(true & !(global3[_wgslsmith_index_u32(33801u, 25u)] <= global1.c.x), true));
    global4 = array<vec3<bool>, 15>();
    var var_1 = _wgslsmith_f_op_f32(sign(1070f));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~26047u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.b.x << (4294967295u % 32u), 25u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(vec4<f32>(457f, -1068f, global1.b.x, -324f), global1.a.x, global0[_wgslsmith_index_u32(global1.c.x, 32u)]), countOneBits(global3[_wgslsmith_index_u32(36566u, 25u)])), 25u)]), 25u)] & ~(~u_input.a.x), 25u)]), 32u)];
    var var_3 = Struct_1(vec2<i32>(~0i, -52233i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.b.x, var_2.b.x, global1.b.x, -530f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - var_2.b)))), ~(~vec2<u32>(var_2.c.x, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.c, _wgslsmith_f_op_f32(abs(444f)), _wgslsmith_f_op_f32(select(-724f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(var_3.b.x * var_2.b.x))), var_0.x)), u_input.a.wxz, ~(-(~(~global1.a))));
}

