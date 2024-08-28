struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-484f, Struct_1(vec4<u32>(89349u, 70034u, 40588u, 1u), 76666u)), Struct_2(-1068f, Struct_1(vec4<u32>(1472u, 1u, 0u, 12737u), 22248u)), Struct_2(743f, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u), 1u)), Struct_2(957f, Struct_1(vec4<u32>(1u, 89260u, 0u, 19222u), 56885u)), Struct_2(754f, Struct_1(vec4<u32>(4294967295u, 37854u, 8963u, 84130u), 2324u)), Struct_2(-735f, Struct_1(vec4<u32>(4294967295u, 0u, 35152u, 64698u), 1u)), Struct_2(-1253f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 1661u, 36876u), 4294967295u)), Struct_2(-321f, Struct_1(vec4<u32>(46177u, 89826u, 49310u, 4294967295u), 20655u)), Struct_2(1000f, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 15881u), 4294967295u)), Struct_2(-1000f, Struct_1(vec4<u32>(0u, 4152u, 1u, 1u), 4294967295u)), Struct_2(-2126f, Struct_1(vec4<u32>(4294967295u, 73421u, 0u, 1u), 58254u)), Struct_2(113f, Struct_1(vec4<u32>(0u, 1u, 10542u, 4294967295u), 0u)), Struct_2(-657f, Struct_1(vec4<u32>(1u, 1u, 13474u, 4294967295u), 30014u)), Struct_2(-1272f, Struct_1(vec4<u32>(4294967295u, 0u, 10729u, 4294967295u), 25932u)), Struct_2(-548f, Struct_1(vec4<u32>(0u, 14443u, 4294967295u, 150u), 4294967295u)), Struct_2(-758f, Struct_1(vec4<u32>(17686u, 4294967295u, 32561u, 57616u), 0u)), Struct_2(393f, Struct_1(vec4<u32>(80671u, 1462u, 1u, 4294967295u), 119565u)), Struct_2(-364f, Struct_1(vec4<u32>(25636u, 39097u, 35702u, 35133u), 0u)), Struct_2(1552f, Struct_1(vec4<u32>(16369u, 1u, 0u, 40956u), 26175u)), Struct_2(367f, Struct_1(vec4<u32>(42119u, 4294967295u, 49249u, 32374u), 1490u)), Struct_2(776f, Struct_1(vec4<u32>(114774u, 0u, 0u, 19405u), 0u)), Struct_2(-351f, Struct_1(vec4<u32>(4294967295u, 43760u, 4294967295u, 10452u), 90873u)), Struct_2(210f, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 59940u), 29400u)), Struct_2(-490f, Struct_1(vec4<u32>(42026u, 4294967295u, 34405u, 1u), 4294967295u)));

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<i32>(-55515i, i32(-2147483648))), Struct_3(vec2<i32>(5964i, -59859i)), Struct_3(vec2<i32>(-10340i, -19393i)), Struct_3(vec2<i32>(-31885i, i32(-2147483648))), Struct_3(vec2<i32>(0i, i32(-2147483648))), Struct_3(vec2<i32>(-22391i, -74439i)), Struct_3(vec2<i32>(-51148i, i32(-2147483648))), Struct_3(vec2<i32>(0i, -24773i)), Struct_3(vec2<i32>(-79193i, 0i)), Struct_3(vec2<i32>(-1i, -27927i)), Struct_3(vec2<i32>(-24814i, 2147483647i)), Struct_3(vec2<i32>(-22603i, -13665i)), Struct_3(vec2<i32>(-45120i, -1973i)), Struct_3(vec2<i32>(-50616i, 30916i)), Struct_3(vec2<i32>(9676i, 0i)), Struct_3(vec2<i32>(-21612i, i32(-2147483648))));

var<private> global3: array<vec4<i32>, 3>;

var<private> global4: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(1i, 28257i, 20997i, -31431i), vec4<i32>(112782i, 2147483647i, -36905i, -61447i), vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i), vec4<i32>(1i, 1i, 2147483647i, 1i), vec4<i32>(2147483647i, 0i, 0i, 59600i), vec4<i32>(0i, 72633i, 26629i, -13427i), vec4<i32>(0i, 69701i, -30754i, -39912i), vec4<i32>(27760i, 0i, i32(-2147483648), 50750i), vec4<i32>(2147483647i, 2147483647i, -8277i, 2147483647i), vec4<i32>(2147483647i, 54819i, 844i, 16454i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    global2 = array<Struct_3, 16>();
    global0 = array<Struct_2, 24>();
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) - arg_0.x), var_0)));
    let var_2 = arg_1;
    return arg_1.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(172f, Struct_1(func_3(vec2<f32>(arg_3, 635f), Struct_1(~vec4<u32>(arg_2.x, 11210u, 1u, 19961u), 15100u)), ~(~arg_2.x) << ((arg_2.x | u_input.a.x) % 32u)));
    let var_1 = vec2<bool>(false, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false))));
    global3 = array<vec4<i32>, 3>();
    var var_2 = var_0.b.a;
    let var_3 = vec3<u32>(~1u | (u_input.a.x & min(u_input.a.x, var_2.x)), var_2.x, ~(var_2.x & 4294967295u));
    return Struct_1(vec4<u32>(4294967295u, var_0.b.a.x, ~arg_2.x, 13450u), ~0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(1f)), func_2((vec2<i32>(-1286i, 0i) << (reverseBits(arg_0.a.yy) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(vec2<i32>(0i, 4327i), vec2<i32>(-9683i, u_input.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1157f)) + _wgslsmith_f_op_f32(sign(2471f))))), ~(vec2<u32>(arg_1.b, arg_1.a.x) << (vec2<u32>(u_input.a.x, arg_1.b) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(38405u, 1u), vec2<u32>(15411u, 1u), arg_1.a.xw), _wgslsmith_mod_vec2_u32(vec2<u32>(12349u, arg_1.a.x), vec2<u32>(u_input.a.x, arg_0.a.x)), ~vec2<u32>(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1329f))) + _wgslsmith_f_op_f32(-820f * _wgslsmith_f_op_f32(abs(-3111f))))));
    global4 = array<vec4<i32>, 10>();
    global2 = array<Struct_3, 16>();
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_mult_vec3_i32(~(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_2.a.x, 0i, arg_2.a.x)), min(u_input.b.wxx, u_input.c)) ^ (-u_input.c << (u_input.a % vec3<u32>(32u)))), firstTrailingBit(abs(vec3<i32>(~(-17758i), _wgslsmith_mult_i32(u_input.b.x, 514i), u_input.c.x))));
    return 0u;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = ~firstLeadingBit(vec4<i32>(u_input.b.x, select(2147483647i, 1i | u_input.b.x, select(false, true, false)), _wgslsmith_div_i32(41660i, 2147483647i) | min(u_input.c.x, u_input.b.x), u_input.b.x));
    return vec4<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1308f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(step(1972f, 1000f)))), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))), _wgslsmith_f_op_f32(round(-359f)));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    global0 = array<Struct_2, 24>();
    global3 = array<vec4<i32>, 3>();
    let var_0 = global2[_wgslsmith_index_u32(abs(min(~0u, firstTrailingBit(select(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 10269u), true)))), 16u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(func_4(Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), u_input.a.x), func_2(vec2<i32>(arg_0.a.x, u_input.b.x), 427f, vec2<u32>(405u, u_input.a.x), 482f), global2[_wgslsmith_index_u32(~4294967295u, 16u)]), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 243f, 589f, 860f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-302f, 976f, -1733f, 1140f)))))))));
    let var_2 = _wgslsmith_add_u32((_wgslsmith_clamp_u32(4294967295u, 49989u, 8686u) << (_wgslsmith_div_u32(abs(u_input.a.x), 1u) % 32u)) ^ ((~u_input.a.x >> (u_input.a.x % 32u)) & reverseBits(4294967295u)), ~(~u_input.a.x));
    return _wgslsmith_f_op_vec3_f32(-var_1.wxz);
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_3 {
    global1 = true;
    global3 = array<vec4<i32>, 3>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_5(countOneBits(arg_0.zx), vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), -1915f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) * _wgslsmith_f_op_f32(-arg_2.x))))).x, func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, 0i), arg_3.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(arg_2.x - 1000f), all(vec2<bool>(false, false))))), vec2<u32>(~min(arg_0.x, 32021u), firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, 67707u))), arg_2.x));
    global2 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2)));
    return global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec2_f32(var_1.yx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.zz))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.xz))))), Struct_1(~var_0.b.a, _wgslsmith_dot_vec3_u32(~u_input.a, arg_0) & 0u)).x, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(abs(~select(select(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a, vec3<bool>(true, false, true)), u_input.a | u_input.a, true)), -2147483647i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1(global2[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_div_vec3_f32(vec3<f32>(473f, _wgslsmith_f_op_f32(f32(-1f) * -1844f), 258f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(782f, 1169f, 191f), vec3<f32>(1294f, -1000f, 1125f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, 2038f, 848f)))))), u_input.b);
    global4 = array<vec4<i32>, 10>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global1 = true;
    let var_1 = Struct_1(vec4<u32>(u_input.a.x, 1u, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(15850u, u_input.a.x, u_input.a.x, 70256u), vec4<u32>(71820u, u_input.a.x, 0u, 0u))), firstLeadingBit(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a >> (u_input.a % vec3<u32>(32u))))), 0u << (max(~min(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(37382u, u_input.a.x), 4294967295u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(max(~max(~(-1i), countOneBits(var_0.a.x)), ~(-var_0.a.x)), ~vec4<i32>(u_input.c.x, -7760i, 14781i >> (_wgslsmith_div_u32(1u, var_1.a.x) % 32u), var_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(943f))))))), ~_wgslsmith_add_vec2_i32(-vec2<i32>(-51475i, var_0.a.x) << (vec2<u32>(var_1.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, var_0.a.x), vec3<i32>(u_input.c.x, u_input.c.x, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-571f)) - _wgslsmith_f_op_f32(-583f - 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(var_0.a))).x, _wgslsmith_f_op_f32(f32(-1f) * -205f)))));
}

