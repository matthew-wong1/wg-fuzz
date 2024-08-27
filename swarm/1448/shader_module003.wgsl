struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(103509u, 12166u, 30989u, 27785u)), Struct_1(vec4<u32>(4294967295u, 0u, 80956u, 0u)), Struct_1(vec4<u32>(24636u, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(73858u, 1u, 14920u, 1u)), Struct_1(vec4<u32>(46479u, 56180u, 4294967295u, 80486u)), Struct_1(vec4<u32>(1u, 4294967295u, 54857u, 55246u)), Struct_1(vec4<u32>(52523u, 18925u, 4294967295u, 4294967295u)));

var<private> global2: array<u32, 18>;

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(-1i, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 45903u)), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_4(23636i, Struct_1(vec4<u32>(16654u, 4294967295u, 26968u, 4294967295u)), vec3<u32>(6220u, 0u, 4294967295u)), Struct_4(16372i, Struct_1(vec4<u32>(1u, 1u, 93837u, 4294967295u)), vec3<u32>(83738u, 20637u, 4294967295u)), Struct_4(-1i, Struct_1(vec4<u32>(4294967295u, 49749u, 33098u, 0u)), vec3<u32>(64570u, 0u, 13570u)), Struct_4(2147483647i, Struct_1(vec4<u32>(35185u, 33647u, 29323u, 1u)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(3175i, Struct_1(vec4<u32>(29397u, 37152u, 87404u, 42351u)), vec3<u32>(16732u, 50244u, 0u)), Struct_4(2147483647i, Struct_1(vec4<u32>(1u, 1u, 58366u, 18146u)), vec3<u32>(0u, 4294967295u, 0u)), Struct_4(1i, Struct_1(vec4<u32>(0u, 26213u, 38059u, 1u)), vec3<u32>(124284u, 45548u, 4294967295u)), Struct_4(0i, Struct_1(vec4<u32>(32043u, 1u, 85359u, 4294967295u)), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_4(2147483647i, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 39877u)), vec3<u32>(4294967295u, 20999u, 65556u)), Struct_4(-38688i, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1u)), vec3<u32>(1u, 1u, 11481u)), Struct_4(-10958i, Struct_1(vec4<u32>(4294967295u, 1u, 25756u, 4294967295u)), vec3<u32>(76976u, 4294967295u, 59573u)), Struct_4(53699i, Struct_1(vec4<u32>(1u, 0u, 75869u, 33956u)), vec3<u32>(4294967295u, 42664u, 27582u)), Struct_4(2147483647i, Struct_1(vec4<u32>(68217u, 1u, 20666u, 19925u)), vec3<u32>(15536u, 1u, 51698u)), Struct_4(1i, Struct_1(vec4<u32>(0u, 65085u, 1u, 104121u)), vec3<u32>(1u, 4294967295u, 27415u)), Struct_4(i32(-2147483648), Struct_1(vec4<u32>(25384u, 42854u, 732u, 4294967295u)), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_4(2504i, Struct_1(vec4<u32>(55531u, 273u, 6507u, 27214u)), vec3<u32>(9491u, 1u, 50126u)), Struct_4(2147483647i, Struct_1(vec4<u32>(0u, 40467u, 1u, 71698u)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(2147483647i, Struct_1(vec4<u32>(4294967295u, 7019u, 32778u, 43322u)), vec3<u32>(17736u, 0u, 79687u)), Struct_4(-18339i, Struct_1(vec4<u32>(1u, 1u, 0u, 2099u)), vec3<u32>(29486u, 6663u, 0u)), Struct_4(3058i, Struct_1(vec4<u32>(0u, 28682u, 44296u, 23155u)), vec3<u32>(1u, 86171u, 4294967295u)), Struct_4(69904i, Struct_1(vec4<u32>(4294967295u, 42387u, 8934u, 0u)), vec3<u32>(35988u, 4294967295u, 143780u)), Struct_4(25478i, Struct_1(vec4<u32>(85711u, 37508u, 1u, 4294967295u)), vec3<u32>(50328u, 4294967295u, 0u)), Struct_4(0i, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 6797u)), vec3<u32>(5414u, 4294967295u, 33304u)));

var<private> global4: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a)))));
    let var_1 = var_0.a;
    global3 = array<Struct_4, 24>();
    let var_2 = vec3<bool>(all(vec2<bool>(true, true)), !(u_input.a < (i32(-1i) * -1i)), !(_wgslsmith_f_op_f32(ceil(-245f)) <= _wgslsmith_f_op_f32(trunc(var_1))));
    global1 = array<Struct_1, 7>();
    return _wgslsmith_clamp_i32(0i, ~abs(u_input.a & 0i) >> (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(22520u, 18u)], 4294967295u, 1u, 1u) ^ vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(15537u, 18u)], 46882u, 7320u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u, 1u, 1u)), 18u)] % 32u), u_input.a);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> vec2<bool> {
    global0 = array<Struct_3, 2>();
    let var_0 = Struct_4(~(-func_3(Struct_2(arg_3))), global1[_wgslsmith_index_u32(~arg_1, 7u)], ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 30549u), vec3<u32>(4294967295u, 22422u, arg_0)) ^ max(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], 2379u, 113531u), vec3<u32>(global2[_wgslsmith_index_u32(66416u, 18u)], 1u, arg_0)), ~vec3<u32>(4294967295u, arg_0, arg_0), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_1, global2[_wgslsmith_index_u32(arg_1, 18u)]), vec3<u32>(4294967295u, arg_0, global2[_wgslsmith_index_u32(0u, 18u)])), ~vec3<u32>(arg_1, global2[_wgslsmith_index_u32(arg_0, 18u)], 37843u), select(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(arg_1, arg_0, 46972u), arg_2))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_3));
    let var_2 = _wgslsmith_mult_vec2_u32(~var_0.b.a.yy, countOneBits(~firstLeadingBit(vec2<u32>(24190u, global2[_wgslsmith_index_u32(arg_0, 18u)]))));
    let var_3 = select(select(vec3<bool>(false, select(all(arg_2.xy), false, arg_2.x || true), _wgslsmith_f_op_f32(-1256f - -124f) <= _wgslsmith_f_op_f32(abs(var_1.a))), select(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(false, arg_2.x, arg_2.x), arg_2, vec3<bool>(false, arg_2.x, false)), vec3<bool>(arg_2.x, true, false)), vec3<bool>(true, all(vec3<bool>(arg_2.x, arg_2.x, false)), arg_2.x), vec3<bool>(true, any(vec2<bool>(true, true)), true)), arg_2.x), arg_2, arg_2);
    return select(!vec2<bool>(!var_3.x, false), vec2<bool>(all(select(!vec2<bool>(false, var_3.x), !arg_2.yx, arg_2.xy)), arg_2.x), arg_2.x);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec4<u32>) -> vec2<bool> {
    global2 = array<u32, 18>();
    return func_2(~arg_3.x, 76768u, vec3<bool>(u_input.a >= _wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(1i, u_input.a)), false, arg_2.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-489f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-arg_2.b.x))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), any(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(false, true, true)), func_1(true, global0[_wgslsmith_index_u32(1u, 2u)], Struct_5(vec2<bool>(false, true), vec2<f32>(-409f, 172f), global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43547u, 18u)], 18u)], 7u)], vec2<bool>(true, true)), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], global2[_wgslsmith_index_u32(7914u, 18u)], 58585u))), func_1(true, Struct_3(global1[_wgslsmith_index_u32(13210u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 80413u, 135576u), 18u)], 18u)], 7u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(14020u, 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)]), vec2<u32>(25988u, 69957u)), 4294967295u), 7u)], vec3<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, true)), select(true, true, false))), Struct_5(vec2<bool>(false, all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1176f, -1198f), vec2<f32>(-358f, 151f), false)) + _wgslsmith_div_vec2_f32(vec2<f32>(-581f, -1076f), vec2<f32>(-760f, -1742f))), global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(62966u, 51453u)), 7u)], Struct_1(select(vec4<u32>(65771u, 1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30323u, 18u)], 18u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38325u, 18u)], 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], 55760u, 47165u), vec4<bool>(false, false, false, false))), vec2<bool>(false, false)), ~(~(vec4<u32>(1u, 0u, 75211u, 1u) & vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global2[_wgslsmith_index_u32(11839u, 18u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 18u)])))), vec2<bool>(all(vec4<bool>(false, true, false, true)) & (_wgslsmith_f_op_f32(floor(-1000f)) >= _wgslsmith_f_op_f32(sign(-1042f))), !all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~1u, 18u)], 18u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62209u, 18u)], 18u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)]), max(min(vec2<u32>(global2[_wgslsmith_index_u32(37797u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<u32>(4294967295u, 18320u)), vec2<u32>(1u, 4294967295u) ^ vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 25054u))));
    var var_2 = global0[_wgslsmith_index_u32(64617u, 2u)];
    let var_3 = firstTrailingBit(var_2.b.a.xww);
    var var_4 = Struct_4(_wgslsmith_clamp_i32(u_input.a, ~_wgslsmith_div_i32(min(u_input.a, 2147483647i), 13294i << (0u % 32u)), u_input.a), global1[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(countOneBits(var_2.a.a), vec4<u32>(var_2.b.a.x, 4294967295u, 1u, 23120u)) & ~abs(20497u)) << (~1u % 32u), 7u)], vec3<u32>(6781u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_3.x ^ var_2.b.a.x, 4294967295u), 2018u), global2[_wgslsmith_index_u32(49324u, 18u)]));
    var var_5 = _wgslsmith_f_op_f32(abs(1f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, var_3, firstLeadingBit(var_4.c.zy), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(824f + -768f))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(577f, 838f)), _wgslsmith_f_op_f32(684f - -1884f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-124f, 271f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, 712f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(281f)), _wgslsmith_f_op_f32(f32(-1f) * -1298f))))));
}

