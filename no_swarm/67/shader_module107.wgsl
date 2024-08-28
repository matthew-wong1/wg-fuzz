struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_2(vec2<f32>(1594f, -1468f), -15387i), vec4<u32>(46362u, 27447u, 9892u, 0u), vec3<u32>(6706u, 8663u, 53348u), vec4<u32>(59627u, 1u, 0u, 82928u)), true);

var<private> global1: bool = false;

var<private> global2: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_3(Struct_2(vec2<f32>(-981f, -869f), 0i), vec4<u32>(37508u, 1u, 5386u, 0u), vec3<u32>(9662u, 92854u, 4294967295u), vec4<u32>(1u, 4294967295u, 62954u, 4294967295u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(1554f, 1042f), 1i), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<u32>(79268u, 4294967295u, 4294967295u), vec4<u32>(52864u, 57782u, 1u, 1u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(-1569f, -960f), -1i), vec4<u32>(59432u, 4294967295u, 0u, 1u), vec3<u32>(17433u, 44255u, 1u), vec4<u32>(4294967295u, 4294967295u, 33048u, 56784u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(1107f, -710f), 61255i), vec4<u32>(464u, 23057u, 21078u, 0u), vec3<u32>(71710u, 1u, 1u), vec4<u32>(16608u, 0u, 21133u, 1u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(918f, -804f), i32(-2147483648)), vec4<u32>(124067u, 55542u, 1u, 39769u), vec3<u32>(1u, 10777u, 22316u), vec4<u32>(7046u, 31058u, 4294967295u, 2712u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(-1050f, -376f), 0i), vec4<u32>(3503u, 104349u, 37208u, 34105u), vec3<u32>(4294967295u, 4294967295u, 61298u), vec4<u32>(0u, 57246u, 4294967295u, 5585u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(-620f, -652f), 0i), vec4<u32>(46067u, 4294967295u, 4294967295u, 31646u), vec3<u32>(11767u, 91577u, 1u), vec4<u32>(16102u, 124163u, 4294967295u, 0u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(-387f, 988f), -18804i), vec4<u32>(1u, 813u, 4294967295u, 4294967295u), vec3<u32>(32925u, 38264u, 4294967295u), vec4<u32>(90391u, 11478u, 1u, 0u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(669f, 1000f), 17364i), vec4<u32>(64988u, 41519u, 4294967295u, 0u), vec3<u32>(4294967295u, 66645u, 136453u), vec4<u32>(29204u, 28550u, 58166u, 0u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(-1000f, 951f), 0i), vec4<u32>(1u, 17405u, 1u, 44059u), vec3<u32>(52421u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 37805u, 23209u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(684f, -1243f), 1i), vec4<u32>(77883u, 4135u, 29213u, 4294967295u), vec3<u32>(23498u, 0u, 43189u), vec4<u32>(23414u, 142077u, 1u, 63476u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(-470f, 1562f), -10093i), vec4<u32>(1u, 15841u, 0u, 0u), vec3<u32>(0u, 11992u, 71068u), vec4<u32>(48602u, 0u, 34771u, 1u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(-577f, 412f), -45051i), vec4<u32>(1u, 4294967295u, 49479u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<u32>(41010u, 51281u, 105605u, 43805u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(-1000f, -1426f), -47i), vec4<u32>(56809u, 0u, 4294967295u, 0u), vec3<u32>(65907u, 0u, 46878u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(1078f, 626f), -14322i), vec4<u32>(1u, 53134u, 4294967295u, 4294967295u), vec3<u32>(54362u, 62048u, 2681u), vec4<u32>(32930u, 73685u, 40763u, 8601u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(353f, 818f), 2147483647i), vec4<u32>(0u, 38156u, 29063u, 25452u), vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(1u, 1u, 16010u, 11170u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(1179f, 1057f), 14009i), vec4<u32>(36174u, 5462u, 41638u, 14074u), vec3<u32>(19776u, 16458u, 0u), vec4<u32>(54124u, 31684u, 9695u, 39524u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(1524f, 1000f), 2147483647i), vec4<u32>(73534u, 116636u, 46823u, 0u), vec3<u32>(53057u, 0u, 27990u), vec4<u32>(7637u, 7503u, 1u, 3576u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(844f, 787f), 1i), vec4<u32>(79527u, 1u, 52903u, 6711u), vec3<u32>(0u, 4294967295u, 0u), vec4<u32>(65487u, 20434u, 4294967295u, 0u)), true), Struct_4(Struct_3(Struct_2(vec2<f32>(-1685f, -393f), 49006i), vec4<u32>(18629u, 4294967295u, 91102u, 29148u), vec3<u32>(1u, 1u, 57034u), vec4<u32>(4294967295u, 45959u, 20211u, 0u)), false), Struct_4(Struct_3(Struct_2(vec2<f32>(404f, -176f), i32(-2147483648)), vec4<u32>(597u, 0u, 4294967295u, 32304u), vec3<u32>(1u, 4294967295u, 1u), vec4<u32>(4294967295u, 3607u, 4294967295u, 9059u)), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    global0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1785f)), _wgslsmith_f_op_vec2_f32(exp2(arg_3.a.a)), all(vec2<bool>(global0.b, true)))), max(firstTrailingBit(global0.a.a.b), 60120i)), ~vec4<u32>(_wgslsmith_mult_u32(global0.a.c.x, 4294967295u), firstTrailingBit(4294967295u), 88781u ^ arg_3.b.x, abs(arg_3.d.x)), arg_3.c, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.x, _wgslsmith_clamp_u32(arg_3.c.x, global0.a.b.x, arg_3.c.x), 4294967295u, abs(59044u)), ~vec4<u32>(135840u, global0.a.c.x, global0.a.b.x, 4294967295u))), false);
    global0 = Struct_4(Struct_3(global0.a.a, arg_3.b, ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.b.x, arg_3.d.x, 16122u), global0.a.b.zyx), _wgslsmith_add_vec3_u32(arg_3.b.ywx, vec3<u32>(global0.a.c.x, global0.a.b.x, 6949u))), vec4<u32>(global0.a.c.x, ~global0.a.d.x, 26163u, global0.a.b.x)), !global0.b);
    global1 = true;
    let var_0 = arg_3.c.x;
    let var_1 = global0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_3.a.a.x, _wgslsmith_div_f32(arg_3.a.a.x, -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.a.a.x - arg_3.a.a.x), arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, arg_3.a.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1637f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, -2085f, _wgslsmith_div_f32(869f, arg_3.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -130f))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global0.a.a.a.x, -377f, _wgslsmith_f_op_f32(trunc(global0.a.a.a.x)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2115f)))), _wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-385f)) - _wgslsmith_f_op_f32(round(-897f))) + -216f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -897f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1173f, 1087f, -421f, 832f) * vec4<f32>(844f, global0.a.a.a.x, var_1, -1000f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.yz, vec3<i32>(-2147483647i, u_input.b, 0i), 12726i, global0.a))))));
    let var_2 = vec4<i32>(42152i, global0.a.a.b, u_input.b, -global0.a.a.b);
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i & reverseBits(u_input.b), _wgslsmith_clamp_i32(reverseBits(u_input.b), 31935i, max(global0.a.a.b, 1i)), countOneBits(2147483647i ^ global0.a.a.b), -2147483647i), (min(var_2, vec4<i32>(var_2.x, -37340i, -11209i, 2147483647i)) << (~global0.a.d % vec4<u32>(32u))) | var_2), reverseBits(min(~countOneBits(vec4<i32>(2147483647i, -1i, u_input.b, u_input.a)), ~vec4<i32>(48741i, 1i, 2683i, -1i))));
    return global0.a.b & ~vec4<u32>(select(_wgslsmith_mod_u32(global0.a.d.x, global0.a.d.x), ~18857u, !global0.b), global0.a.d.x, ~1u, 28409u);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.a.a.a.x)), global0.a.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a.a.x))))));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(), global0.a.b), 21u)];
    let var_1 = global0.a;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.a.a.a, vec3<i32>(-46010i, -34270i, u_input.b) | ~vec3<i32>(u_input.a, -2147483647i, 0i), -2147483647i, Struct_3(var_1.a, global0.a.b, abs(global0.a.c), vec4<u32>(1u, 9173u, global0.a.d.x, global0.a.b.x)))).x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_0.a, 264f, false)));
    return 176f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    global2 = array<Struct_4, 21>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1196f, 181f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(2355f, global0.a.a.a.x)), -1151f))), vec4<f32>(_wgslsmith_f_op_f32(111f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1620f, global0.a.a.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1046f, global0.a.a.a.x))), firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.b)), -1i, global0.a)).x)), -721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.a.x - _wgslsmith_f_op_f32(f32(-1f) * -263f)))));
    global2 = array<Struct_4, 21>();
    global0 = global2[_wgslsmith_index_u32(firstLeadingBit(global0.a.b.x), 21u)];
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(global0.a.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.c.x, global0.a.b.x, _wgslsmith_add_u32(global0.a.c.x, 40695u), 39236u), firstTrailingBit(func_2()), ~(global0.a.d >> (global0.a.d % vec4<u32>(32u))))), ~global0.a.d.x);
    global2 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1345f)) * _wgslsmith_f_op_f32(f32(-1f) * -2617f)), ~_wgslsmith_dot_vec2_u32(func_2().xx, _wgslsmith_clamp_vec2_u32(var_2, ~global0.a.b.yz, var_2)), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, -firstLeadingBit(24248i)), _wgslsmith_div_i32(min(global0.a.a.b, abs(29878i)), -1i)));
}

