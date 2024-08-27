struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_1, 32>;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<f32>(501f, -1000f), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, 19836i)), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(-29799i, 10985i, i32(-2147483648)))), Struct_2(vec2<f32>(1185f, 593f), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-2538i, 927i, i32(-2147483648)))), Struct_2(vec2<f32>(340f, 753f), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-36553i, -5371i, -67293i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-14342i, 1i, 2147483647i))), Struct_2(vec2<f32>(339f, 1235f), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(23428i, -14796i, 2147483647i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(1i, 15823i, 43566i))), Struct_2(vec2<f32>(-1050f, -702f), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(2147483647i, i32(-2147483648), -34078i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), -23927i, 1i))), Struct_2(vec2<f32>(-706f, 737f), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(43224i, -1i, -24098i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-21623i, 1i, 18185i))), Struct_2(vec2<f32>(-1000f, -1479f), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(374i, 7272i, 0i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(58017i, 7209i, 23411i))), Struct_2(vec2<f32>(-213f, -277f), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-43054i, 0i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(1i, 30103i, 2147483647i))), Struct_2(vec2<f32>(1000f, -238f), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-4349i, 1895i, -23462i)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-6825i, i32(-2147483648), 7270i))), Struct_2(vec2<f32>(688f, -179f), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(-998i, 91873i, -2370i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, 31000i, -27079i))), Struct_2(vec2<f32>(-103f, -1427f), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(93933i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), -53574i, -1i))), Struct_2(vec2<f32>(1247f, 127f), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(24821i, 0i, -16321i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-1i, i32(-2147483648), 7299i))), Struct_2(vec2<f32>(1333f, -516f), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-1i, -63557i, -39747i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 59630i))), Struct_2(vec2<f32>(394f, 2274f), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(26543i, -35890i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, -15239i, 0i))), Struct_2(vec2<f32>(-692f, -1662f), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(1i, -1i, 4570i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(0i, -1i, i32(-2147483648)))), Struct_2(vec2<f32>(1662f, 1348f), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-1i, 44981i, 15233i)), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-20957i, -22102i, -10459i))), Struct_2(vec2<f32>(-1491f, 1057f), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(5711i, 2147483647i, -1i)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(2147483647i, 2147483647i, 1i))), Struct_2(vec2<f32>(-1095f, -1550f), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(44548i, -1i, 0i)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(i32(-2147483648), 31588i, 20908i))), Struct_2(vec2<f32>(-463f, 102f), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-34269i, 24653i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(1i, -2756i, -9698i))), Struct_2(vec2<f32>(943f, -709f), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-27663i, i32(-2147483648), 5709i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-20986i, -44892i, -1i))), Struct_2(vec2<f32>(-1400f, 1845f), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-72482i, 1i, 22861i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-1i, -1i, -1i))), Struct_2(vec2<f32>(1108f, -1000f), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), 18722i, 2147483647i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-1i, -18298i, 0i))), Struct_2(vec2<f32>(732f, 1000f), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-16810i, -8110i, 0i))), Struct_2(vec2<f32>(-766f, -1391f), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(31293i, -16840i, 19997i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(0i, 21938i, -61423i))), Struct_2(vec2<f32>(1248f, 1188f), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(-10677i, -25958i, 35448i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(19251i, 14754i, -49444i))), Struct_2(vec2<f32>(-2167f, 2028f), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(44684i, -13550i, -50171i)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(7941i, 21866i, -27860i))), Struct_2(vec2<f32>(-1186f, -373f), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, 30080i)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(310i, i32(-2147483648), i32(-2147483648)))), Struct_2(vec2<f32>(-173f, -186f), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(8994i, 6005i, -36954i)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(23625i, -14818i, i32(-2147483648)))));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec2<f32> {
    global3 = array<Struct_2, 28>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1f) * arg_1.a))), global1[_wgslsmith_index_u32(~abs(~(~u_input.b)), 32u)], Struct_1(vec4<bool>(arg_1.b.a.x, any(arg_1.c.a.wx) & !arg_1.b.a.x, arg_1.b.a.x, any(vec4<bool>(arg_1.b.a.x, true, false, true)) | true), u_input.a));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -429f))), Struct_1(!vec4<bool>(all(var_0.b.a.www), all(vec4<bool>(true, true, false, false)), true, true), arg_1.c.b), arg_1.c);
    var var_2 = ~reverseBits(-u_input.c);
    global2 = _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, global2.x)), arg_1.a));
    return _wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1444f)), -1355f) - vec2<f32>(-954f, _wgslsmith_f_op_f32(-arg_1.a.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + arg_1.a) * var_0.a), var_1.a, false))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_1(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true), true), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(1000f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + 1284f))), var_0.a.x)));
    let var_2 = Struct_3(global2.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x))), global3[_wgslsmith_index_u32(~arg_0, 28u)], var_0, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-56036i, Struct_2(vec2<f32>(global2.x, -1428f), Struct_1(vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec3<i32>(var_0.b.x, -1256i, -106242i)), Struct_1(var_0.a, u_input.a))))), Struct_1(select(var_0.a, vec4<bool>(var_1, var_1, var_1, false), select(var_0.a, vec4<bool>(var_0.a.x, var_1, true, true), vec4<bool>(var_0.a.x, var_0.a.x, true, false))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d, 2147483647i, 2147483647i), var_0.b)), Struct_1(select(var_0.a, !var_0.a, vec4<bool>(var_0.a.x, true, false, true)), firstLeadingBit(u_input.a | u_input.a))));
    global3 = array<Struct_2, 28>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d.a + _wgslsmith_f_op_vec2_f32(sign(var_2.b.a))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.a + var_2.b.a))))), var_2.d.c, Struct_1(vec4<bool>(u_input.e.x == _wgslsmith_div_u32(u_input.b, arg_0), 9962u <= ~arg_0, true, false), _wgslsmith_mod_vec3_i32(var_0.b, u_input.a)));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = countOneBits(abs(~(-vec4<i32>(u_input.c, 39093i, 4138i, 1i))));
    global1 = array<Struct_1, 32>();
    var var_1 = _wgslsmith_mult_u32(24561u, 1u);
    global2 = vec2<f32>(global2.x, 1348f);
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~firstLeadingBit(var_0), ~var_0, vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(arg_0.d.b.b, var_0.zyy), ~u_input.a.x, ~var_0.x)) << (u_input.e % vec4<u32>(32u)), var_0);
    return vec2<bool>(arg_0.c.a.x, func_2(~5802u).a);
}

fn func_1() -> Struct_3 {
    var var_0 = ~u_input.d;
    let var_1 = Struct_3(any(func_4(func_2(4294967295u))), global3[_wgslsmith_index_u32(u_input.e.x, 28u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(1u), 0u, u_input.e.x ^ u_input.e.x) >> (3044u % 32u), ~firstTrailingBit(u_input.b)), 32u)], func_2(~_wgslsmith_sub_u32(1u, 1u)).b);
    var var_2 = ~_wgslsmith_mod_u32(20240u, u_input.b);
    var var_3 = Struct_3(all(!var_1.b.c.a.yxx), func_2(u_input.b).b, Struct_1(var_1.c.a, abs(vec3<i32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_div_i32(-1i, -15397i), 30811i))), func_2(countOneBits(_wgslsmith_add_u32(~u_input.e.x, 1u))).d);
    let var_4 = _wgslsmith_f_op_f32(-func_2(u_input.e.x).b.a.x);
    return func_2(abs(~u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(~4294967295u, u_input.e.x));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1078f))))));
    let var_1 = i32(-1i) * -1i;
    var var_2 = func_1();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))) * var_2.b.a.x)), _wgslsmith_div_f32(-1450f, -1463f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(~1i, ~(-46871i & u_input.d))), ~(~vec4<u32>(u_input.b, var_0, 21940u, u_input.b) << (vec4<u32>(u_input.e.x, u_input.b << (u_input.b % 32u), abs(u_input.e.x), var_0 << (u_input.e.x % 32u)) % vec4<u32>(32u))), 1000f, vec2<u32>(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e.xwx, countOneBits(u_input.e.yyw))), ~62525u));
}

