struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-1i, 0i, 11947i, 1i), vec3<bool>(true, false, true), 507f, vec2<f32>(-354f, 1251f), 0u);

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: array<u32, 1>;

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<i32>(-3211i, -30436i, 5245i, -1i), vec3<bool>(true, false, true), 508f, vec2<f32>(-1000f, -271f), 48253u), Struct_1(vec4<i32>(-1i, 21395i, 45033i, 1i), vec3<bool>(true, false, true), -1000f, vec2<f32>(1437f, -478f), 30747u), Struct_1(vec4<i32>(i32(-2147483648), 28705i, -3355i, 2147483647i), vec3<bool>(false, true, true), 604f, vec2<f32>(702f, -108f), 0u), Struct_1(vec4<i32>(16475i, -30851i, 36727i, 2147483647i), vec3<bool>(false, false, false), -1682f, vec2<f32>(398f, 1326f), 1u), Struct_1(vec4<i32>(2147483647i, 0i, 0i, -18026i), vec3<bool>(true, false, true), 576f, vec2<f32>(101f, -109f), 1u), Struct_1(vec4<i32>(-3929i, 55244i, -1i, 1i), vec3<bool>(true, false, true), -1249f, vec2<f32>(-1042f, -673f), 21365u), Struct_1(vec4<i32>(39515i, 47106i, 0i, 1i), vec3<bool>(false, false, false), -1000f, vec2<f32>(-814f, -364f), 4294967295u), Struct_1(vec4<i32>(0i, 0i, -19942i, -70449i), vec3<bool>(false, true, true), 325f, vec2<f32>(-449f, 1000f), 0u), Struct_1(vec4<i32>(-1i, -42398i, 0i, -1i), vec3<bool>(false, false, true), 399f, vec2<f32>(-285f, 1109f), 4294967295u), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -22953i), vec3<bool>(false, true, false), -555f, vec2<f32>(921f, 753f), 46971u), Struct_1(vec4<i32>(1i, 30129i, 0i, 2147483647i), vec3<bool>(false, false, false), 1631f, vec2<f32>(-1288f, 1000f), 28155u), Struct_1(vec4<i32>(8792i, -1i, -23509i, 0i), vec3<bool>(false, false, false), 432f, vec2<f32>(-835f, -2415f), 1u), Struct_1(vec4<i32>(1i, 1i, 0i, -38645i), vec3<bool>(false, true, false), -740f, vec2<f32>(-696f, 2492f), 2744u), Struct_1(vec4<i32>(-19868i, -1i, 3097i, 0i), vec3<bool>(false, false, true), 1494f, vec2<f32>(1444f, 1765f), 3013u), Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, true), 657f, vec2<f32>(212f, 1083f), 53525u), Struct_1(vec4<i32>(-1i, 0i, -32850i, -34104i), vec3<bool>(true, true, true), -1877f, vec2<f32>(1000f, 1153f), 1u), Struct_1(vec4<i32>(-26705i, -27700i, -24884i, 2147483647i), vec3<bool>(true, false, false), 1506f, vec2<f32>(-1260f, -1528f), 15761u), Struct_1(vec4<i32>(31202i, 1i, -34275i, 0i), vec3<bool>(false, false, false), -210f, vec2<f32>(-1237f, -925f), 60375u), Struct_1(vec4<i32>(-13690i, -11268i, 26263i, 2147483647i), vec3<bool>(true, true, false), -1844f, vec2<f32>(2168f, 495f), 38180u), Struct_1(vec4<i32>(11233i, 1i, -84863i, -15104i), vec3<bool>(false, true, false), -1000f, vec2<f32>(655f, 347f), 4294967295u), Struct_1(vec4<i32>(2147483647i, -1i, -31606i, 55411i), vec3<bool>(true, true, false), -1408f, vec2<f32>(-744f, -2244f), 1u), Struct_1(vec4<i32>(50293i, 22012i, -1i, -1i), vec3<bool>(false, false, false), -1701f, vec2<f32>(-426f, 1154f), 55235u), Struct_1(vec4<i32>(-1i, 1i, 0i, -1i), vec3<bool>(false, false, true), 1184f, vec2<f32>(-417f, -435f), 53699u), Struct_1(vec4<i32>(-15246i, 1i, -7721i, 56627i), vec3<bool>(true, true, true), -473f, vec2<f32>(919f, 1000f), 27209u), Struct_1(vec4<i32>(-5424i, i32(-2147483648), 41719i, -73988i), vec3<bool>(false, true, false), 1235f, vec2<f32>(-528f, -373f), 4294967295u), Struct_1(vec4<i32>(26743i, -47538i, 1i, -1i), vec3<bool>(true, false, false), 1912f, vec2<f32>(1767f, 250f), 10520u), Struct_1(vec4<i32>(15843i, -1i, 2039i, 62512i), vec3<bool>(true, false, true), -1000f, vec2<f32>(-1000f, -1000f), 30231u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -74019i, -1i), vec3<bool>(false, true, true), -907f, vec2<f32>(-1293f, 396f), 0u), Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 2147483647i), vec3<bool>(false, false, false), -1358f, vec2<f32>(315f, -1042f), 45290u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 31077i), vec3<bool>(false, true, false), -1320f, vec2<f32>(-770f, -1083f), 67451u), Struct_1(vec4<i32>(-7854i, 54207i, 0i, -55404i), vec3<bool>(false, false, true), 998f, vec2<f32>(-1094f, -800f), 25331u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<u32> {
    global4 = array<Struct_1, 31>();
    var var_0 = Struct_5(Struct_3(vec4<u32>(select(0u, _wgslsmith_div_u32(global0.e, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(26631u, global0.e, 19919u, 82877u), vec4<u32>(global3[_wgslsmith_index_u32(global0.e, 1u)], 4937u, 1u, 68983u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.e, 41726u, 43368u, 0u), vec4<u32>(1u, 0u, 23435u, 32895u))), 40199u, arg_0.a.e), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))), ~(~vec2<i32>(firstTrailingBit(global0.a.x), min(global0.a.x, 134354i))), arg_0.b.e, ~2147483647i, global0.b.x);
    var var_1 = select(select(global2[_wgslsmith_index_u32(18346u, 8u)], !global2[_wgslsmith_index_u32(~(~15657u), 8u)], arg_0.a.b.x), select(var_0.a.b.b, select(vec3<bool>(arg_0.b.b.x, any(arg_0.a.b.yz), false), vec3<bool>(!var_0.e, global0.b.x, arg_1.x <= arg_2.x), any(vec2<bool>(global0.b.x, true))), select(!arg_3, select(!vec3<bool>(true, false, global0.b.x), !var_0.a.b.b, global0.b.x), !(!vec3<bool>(false, true, arg_0.a.b.x)))), select(select(!vec3<bool>(global0.b.x, true, true), arg_3, global2[_wgslsmith_index_u32(countOneBits(33260u) & abs(var_0.c), 8u)]), var_0.a.b.b, select(select(vec3<bool>(false, true, var_0.a.b.b.x), vec3<bool>(arg_3.x, arg_0.a.b.x, true), global2[_wgslsmith_index_u32(arg_0.b.e, 8u)]), select(!vec3<bool>(false, true, arg_0.b.b.x), select(vec3<bool>(false, true, false), vec3<bool>(global0.b.x, false, true), var_0.a.b.b), all(var_0.a.b.b.xy)), true)));
    global4 = array<Struct_1, 31>();
    var_0 = Struct_5(var_0.a, reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(abs(arg_0.b.a.zz), global0.a.zw), abs(arg_0.b.a.yx))), var_0.c, _wgslsmith_div_i32(_wgslsmith_mult_i32(-47480i, var_0.d), ~abs(var_0.b.x)), all(vec2<bool>(all(!vec4<bool>(var_0.e, false, arg_0.b.b.x, false)), select(var_1.x, false, any(arg_0.a.b.zx)))));
    return vec4<u32>(var_0.c, max(select(415u, 1u, all(!global2[_wgslsmith_index_u32(var_0.c, 8u)])), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_0.a.a, vec4<u32>(arg_0.a.e, u_input.a.x, global3[_wgslsmith_index_u32(var_0.a.a.x, 1u)], global0.e)) >> (~global0.e % 32u), max(abs(4294967295u), global0.e))), _wgslsmith_mod_u32(countOneBits(432u) << ((arg_0.b.e & 4294967295u) % 32u), global3[_wgslsmith_index_u32(~4745u, 1u)]) | global3[_wgslsmith_index_u32(2183u, 1u)], 46097u);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(34061i, 1i), -1i);
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(24932u, u_input.a.x), 31u)];
    let var_1 = Struct_5(Struct_3(_wgslsmith_add_vec4_u32(func_3(Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], global4[_wgslsmith_index_u32(0u, 31u)]), global0.d, vec2<f32>(-301f, 235f), global2[_wgslsmith_index_u32(28201u, 8u)]), firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 43686u, 41268u)) << (max(vec4<u32>(global3[_wgslsmith_index_u32(0u, 1u)], 75095u, 32930u, u_input.a.x), vec4<u32>(global3[_wgslsmith_index_u32(50695u, 1u)], global0.e, global0.e, global0.e)) % vec4<u32>(32u))), Struct_1(~vec4<i32>(2147483647i, -2147483647i, global0.a.x, global0.a.x), vec3<bool>(global0.b.x, true, any(global0.b.xz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-2631f * global0.c), arg_0), abs(global3[_wgslsmith_index_u32(4294967295u ^ global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1205f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(global0.c)), false))))), global0.a.zw >> (vec2<u32>(global3[_wgslsmith_index_u32(0u, 1u)], 1u) % vec2<u32>(32u)), global3[_wgslsmith_index_u32(~10828u, 1u)], -883i, true);
    var_0 = -1i;
    global1 = global0.e;
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0.c, global0.d.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2137f, arg_0.x, -1741f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 537f, 1000f) * vec3<f32>(global0.c, arg_0.x, -1237f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(663f, -119f, -916f))))))));
    global2 = array<vec3<bool>, 8>();
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(global0.a.x, global0.a.x), global0.a.x, global0.a.x << (_wgslsmith_mult_u32(~16582u & ~u_input.a.x, u_input.a.x & arg_2) % 32u), global0.a.x);
    global4 = array<Struct_1, 31>();
    global2 = array<vec3<bool>, 8>();
    return Struct_4(_wgslsmith_add_u32(~max(firstTrailingBit(46428u), 0u ^ arg_2), abs(_wgslsmith_add_u32(u_input.a.x, ~arg_2))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(32479u, 1u)], 4294967295u, 29049u, u_input.a.x)), ~(vec4<u32>(1u, 0u, u_input.a.x, global0.e) ^ vec4<u32>(u_input.a.x, 4294967295u, global3[_wgslsmith_index_u32(0u, 1u)], u_input.a.x))) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a, u_input.a.x, arg_3.a, 4294967295u), vec4<u32>(global0.e, u_input.a.x, global3[_wgslsmith_index_u32(0u, 1u)], 42344u)), Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-26344i, -7343i, global0.a.x, 2147483647i), _wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(-10442i, global0.a.x, global0.a.x, 25404i)), vec4<i32>(global0.a.x, 12381i, -20903i, global0.a.x)), -vec4<i32>(global0.a.x, -2147483647i, global0.a.x, -1i)), vec3<bool>(all(select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(false, global0.b.x, arg_2, false), false)), all(global0.b.xy), !(arg_1.x != -537f)), _wgslsmith_f_op_f32(max(589f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.x)), -209f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1462f, arg_1.x))))), firstTrailingBit(~func_4(arg_1.yz, vec3<bool>(true, true, true), global0.e).a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -240f))), 158f)));
    global0 = Struct_1(abs(countOneBits(var_0.b.a)), global2[_wgslsmith_index_u32(18367u, 8u)], var_0.c, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(global0.d.x - global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, arg_0)))))), ~(~0u));
    var var_1 = -22537i;
    let var_2 = ~(-2147483647i);
    global4 = array<Struct_1, 31>();
    return Struct_4(~1u);
}

fn func_1(arg_0: Struct_5) -> f32 {
    var var_0 = func_5(global0.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1845f, 1787f, -727f, global0.d.x) + vec4<f32>(750f, 183f, -408f, global0.d.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.d.x, global0.c, arg_0.a.c), vec4<f32>(1081f, arg_0.a.b.c, -2423f, 1898f), vec4<bool>(true, global0.b.x, false, false))))))), global0.a.x >= -5332i, func_4(arg_0.a.b.d, vec3<bool>(func_2(_wgslsmith_f_op_f32(-global0.d.x)), true, true), ~1u));
    global0 = arg_0.a.b;
    global2 = array<vec3<bool>, 8>();
    var var_1 = Struct_1(vec4<i32>(min(_wgslsmith_dot_vec3_i32(-global0.a.xxy, ~global0.a.xzz), -28571i), i32(-1i) * -2147483647i, i32(-1i) * -arg_0.d, ~_wgslsmith_div_i32(min(arg_0.b.x, -1i), _wgslsmith_clamp_i32(arg_0.b.x, global0.a.x, global0.a.x))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(40500u, _wgslsmith_mod_u32(4294967295u, 20149u)), ~(~abs(global3[_wgslsmith_index_u32(4294967295u, 1u)]))), 1u)], 8u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.x * arg_0.a.b.d.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.c, -939f)) * _wgslsmith_div_f32(930f, global0.d.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.b.c - global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.d.x * 1070f))), false != all(select(vec3<bool>(true, global0.b.x, false), arg_0.a.b.b, arg_0.a.b.b)))), arg_0.a.b.e);
    var var_2 = all(select(vec4<bool>(true, var_1.b.x, !arg_0.a.b.b.x, var_1.b.x && !arg_0.e), !(!vec4<bool>(global0.b.x, var_1.b.x, global0.b.x, arg_0.a.b.b.x)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.a.b.b.x, global0.b.x, arg_0.e), arg_0.e))));
    return var_1.d.x;
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_5) -> Struct_4 {
    var var_0 = 8181i;
    var var_1 = vec2<u32>(1u & arg_3.a.b.e, min(1u, select(global0.e & arg_3.c, arg_0.a.b.e, !arg_3.a.b.b.x) >> (1u % 32u)));
    var var_2 = Struct_5(arg_3.a, _wgslsmith_div_vec2_i32(-arg_3.a.b.a.xx, ~global0.a.zw), global3[_wgslsmith_index_u32(55687u, 1u)], _wgslsmith_add_i32(arg_0.a.b.a.x, firstLeadingBit(-_wgslsmith_mod_i32(arg_3.d, 45136i))), all(!global0.b.yx));
    var var_3 = _wgslsmith_mod_u32(reverseBits(~42308u >> (_wgslsmith_dot_vec3_u32(~arg_3.a.a.xwz, arg_3.a.a.yzw) % 32u)), abs(global0.e) >> (~1u % 32u));
    var var_4 = abs(6913i ^ max(global0.a.x, -(~var_2.b.x)));
    return func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1324f)), _wgslsmith_f_op_f32(round(228f)), any(!select(vec4<bool>(arg_0.e, false, false, true), vec4<bool>(global0.b.x, true, true, var_2.e), arg_3.a.b.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-321f, 852f, 1030f, 411f), arg_2)))), _wgslsmith_f_op_vec4_f32(-arg_2)), true, Struct_4(_wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(func_3(Struct_2(global4[_wgslsmith_index_u32(var_1.x, 31u)], global4[_wgslsmith_index_u32(8144u, 31u)]), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(442f, -2576f))), arg_3.a.b.d, !vec3<bool>(true, false, arg_0.a.b.b.x)).x, 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_5(Struct_3(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)], u_input.a.x), Struct_1(~global0.a, select(global2[_wgslsmith_index_u32(61660u, 8u)], global0.b, vec3<bool>(global0.b.x, true, global0.b.x)), _wgslsmith_f_op_f32(func_1(Struct_5(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(63528u, 1u)], global0.e, u_input.a.x, 59894u), Struct_1(vec4<i32>(global0.a.x, 18480i, global0.a.x, global0.a.x), global0.b, -306f, vec2<f32>(-339f, global0.c), 1u), -517f), vec2<i32>(1i, global0.a.x), global3[_wgslsmith_index_u32(4294967295u, 1u)], global0.a.x, false))), global0.d, 11939u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.d.x))), vec2<i32>(global0.a.x | global0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -1i), ~vec2<i32>(global0.a.x, global0.a.x))), ~global0.e << (~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(5685u, 1u)], u_input.a.x) % 32u), global0.a.x, 4294967295u > _wgslsmith_mult_u32(4294967295u, 1u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e, 1u)], 1u)])), ~(-65202i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.d.x, -115f)), global0.d.x, _wgslsmith_f_op_f32(func_1(Struct_5(Struct_3(vec4<u32>(41908u, 4294967295u, global0.e, global3[_wgslsmith_index_u32(global0.e, 1u)]), Struct_1(global0.a, vec3<bool>(global0.b.x, global0.b.x, true), -760f, global0.d, 4294967295u), 558f), global0.a.wx, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], -10177i, global0.b.x))), _wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, -733f, 2974f, 346f) + vec4<f32>(-1055f, global0.d.x, 2973f, -1409f)), vec4<f32>(1096f, -504f, global0.d.x, -380f)) + vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(func_1(Struct_5(Struct_3(vec4<u32>(global0.e, 4294967295u, 1u, 1u), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e, 1u)], 31u)], 307f), vec2<i32>(1i, global0.a.x), 0u, global0.a.x, global0.b.x))), -170f, _wgslsmith_f_op_f32(-1000f - global0.d.x)))), Struct_5(Struct_3(~(vec4<u32>(global3[_wgslsmith_index_u32(global0.e, 1u)], global0.e, u_input.a.x, global3[_wgslsmith_index_u32(0u, 1u)]) >> (vec4<u32>(global0.e, global0.e, 25943u, global3[_wgslsmith_index_u32(global0.e, 1u)]) % vec4<u32>(32u))), Struct_1(global0.a, !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 8u)], _wgslsmith_f_op_f32(global0.c * -988f), global0.d, global3[_wgslsmith_index_u32(1u, 1u)]), global0.d.x), abs(global0.a.xx), 41604u, global0.a.x, !(u_input.a.x <= global0.e)));
    global2 = array<vec3<bool>, 8>();
    let var_1 = Struct_2(Struct_1(~vec4<i32>(global0.a.x >> (var_0.a % 32u), ~1i, abs(1i), global0.a.x), global0.b, global0.c, vec2<f32>(_wgslsmith_f_op_f32(1f - 264f), global0.d.x), _wgslsmith_div_u32(func_6(Struct_5(Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(1u, 1u)], 1u, global3[_wgslsmith_index_u32(51260u, 1u)], u_input.a.x), global4[_wgslsmith_index_u32(4294967295u, 31u)], 1000f), global0.a.yy, 1u, global0.a.x, true), -global0.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -1000f, global0.c, 1276f)), Struct_5(Struct_3(vec4<u32>(1u, var_0.a, 1u, 50255u), global4[_wgslsmith_index_u32(u_input.a.x, 31u)], -139f), global0.a.xw, 116112u, global0.a.x, global0.b.x)).a, 0u)), Struct_1(vec4<i32>(-36008i, 1i, abs(-2147483647i), _wgslsmith_div_i32(0i, global0.a.x)) >> ((~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a.x, 0u, 81349u) << ((vec4<u32>(var_0.a, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 4058u, 1u) << (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(40465u, 1u)], global0.e, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 1u)], 1u)], 1u)]) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), !vec3<bool>(global0.b.x, !global0.b.x, global0.b.x), _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.x, 1298f))), all(global0.b))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.c, -1660f, global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.d.x))), 0u));
    let var_2 = Struct_1(vec4<i32>(~global0.a.x, -11993i, 51984i, -min(2147483647i, 1490i)), vec3<bool>(!all(select(global0.b.yx, global0.b.zx, global0.b.xy)), var_1.a.b.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2663f) * 439f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c + 593f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d.x), -327f))) - _wgslsmith_f_op_vec2_f32(var_1.b.d + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c, -250f)))))), global3[_wgslsmith_index_u32(countOneBits(countOneBits(~global3[_wgslsmith_index_u32(global0.e | var_1.a.e, 1u)])), 1u)]);
    var var_3 = ~_wgslsmith_mod_i32(abs(global0.a.x) ^ -(var_2.a.x & 38567i), ~14088i);
    var var_4 = ~global0.a.yw;
    var_4 = abs(var_1.b.a.zy);
    var var_5 = vec3<u32>(firstLeadingBit(~1u), ~global0.e, u_input.a.x);
    var var_6 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(-abs(-51755i), abs(var_1.b.a.x)), ~((30535i & var_1.a.a.x) >> (~56491u % 32u)), firstTrailingBit(var_1.a.a.x)), global0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(862f, var_2.d.x, 182f, var_2.c) + vec4<f32>(-1000f, var_1.b.d.x, -258f, -682f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, -492f, global0.d.x, var_1.b.d.x)))) + vec4<f32>(global0.d.x, -1071f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(sign(247f))))));
}

