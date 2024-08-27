struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(172f, 476f, 704f);

var<private> global1: array<i32, 19> = array<i32, 19>(-12898i, i32(-2147483648), -4090i, -27333i, -39317i, -1i, i32(-2147483648), i32(-2147483648), -4385i, i32(-2147483648), -19671i, 52719i, i32(-2147483648), -1i, 2147483647i, 40695i, -37487i, 0i, 67339i);

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(17750u, 4294967295u));

var<private> global3: array<u32, 22> = array<u32, 22>(0u, 0u, 1u, 9806u, 33633u, 74006u, 30714u, 55102u, 77203u, 4294967295u, 0u, 1u, 12891u, 1u, 21734u, 4294967295u, 17442u, 119039u, 4514u, 16243u, 4294967295u, 4294967295u);

var<private> global4: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(2147483647i, Struct_2(Struct_1(5813u, vec3<i32>(-9287i, -49569i, 3153i))), Struct_2(Struct_1(1u, vec3<i32>(-1124i, i32(-2147483648), 0i)))), Struct_3(-46945i, Struct_2(Struct_1(8445u, vec3<i32>(4253i, 15789i, 35546i))), Struct_2(Struct_1(1u, vec3<i32>(-2029i, 2147483647i, -53010i)))), Struct_3(15980i, Struct_2(Struct_1(4294967295u, vec3<i32>(-18471i, 1i, -1i))), Struct_2(Struct_1(13583u, vec3<i32>(1i, 2147483647i, -1i)))), Struct_3(-33504i, Struct_2(Struct_1(0u, vec3<i32>(-51032i, -30306i, 2147483647i))), Struct_2(Struct_1(22153u, vec3<i32>(-1i, 16306i, 8206i)))), Struct_3(-13688i, Struct_2(Struct_1(5411u, vec3<i32>(1i, 19773i, 2147483647i))), Struct_2(Struct_1(25900u, vec3<i32>(45860i, i32(-2147483648), 46239i)))), Struct_3(i32(-2147483648), Struct_2(Struct_1(73764u, vec3<i32>(65954i, -6324i, -9142i))), Struct_2(Struct_1(0u, vec3<i32>(i32(-2147483648), 32141i, 0i)))), Struct_3(458i, Struct_2(Struct_1(63853u, vec3<i32>(835i, 7983i, -1i))), Struct_2(Struct_1(0u, vec3<i32>(14697i, 18004i, 46126i)))), Struct_3(-5638i, Struct_2(Struct_1(53457u, vec3<i32>(16731i, i32(-2147483648), 0i))), Struct_2(Struct_1(33196u, vec3<i32>(-32085i, 1i, 0i)))), Struct_3(1843i, Struct_2(Struct_1(10175u, vec3<i32>(-46930i, 7823i, 25387i))), Struct_2(Struct_1(35613u, vec3<i32>(2147483647i, 1i, 2147483647i)))), Struct_3(1i, Struct_2(Struct_1(1u, vec3<i32>(-15799i, -25311i, -1i))), Struct_2(Struct_1(4294967295u, vec3<i32>(34379i, -34442i, -1i)))), Struct_3(i32(-2147483648), Struct_2(Struct_1(0u, vec3<i32>(-9626i, 26976i, -27428i))), Struct_2(Struct_1(14447u, vec3<i32>(0i, -15480i, 1i)))), Struct_3(i32(-2147483648), Struct_2(Struct_1(22577u, vec3<i32>(1i, 175i, 24139i))), Struct_2(Struct_1(24397u, vec3<i32>(-15263i, 35820i, 42499i)))), Struct_3(-36209i, Struct_2(Struct_1(0u, vec3<i32>(-1i, 32912i, 7648i))), Struct_2(Struct_1(63548u, vec3<i32>(0i, -4972i, 0i)))), Struct_3(-45628i, Struct_2(Struct_1(1u, vec3<i32>(32737i, -342i, 25526i))), Struct_2(Struct_1(15120u, vec3<i32>(0i, -1i, i32(-2147483648))))), Struct_3(28200i, Struct_2(Struct_1(49549u, vec3<i32>(15327i, -10333i, 1i))), Struct_2(Struct_1(14763u, vec3<i32>(1i, i32(-2147483648), 2147483647i)))), Struct_3(22737i, Struct_2(Struct_1(60847u, vec3<i32>(2147483647i, 1i, 0i))), Struct_2(Struct_1(4294967295u, vec3<i32>(2147483647i, 22763i, 1i)))), Struct_3(-12796i, Struct_2(Struct_1(2325u, vec3<i32>(-32201i, 2147483647i, 0i))), Struct_2(Struct_1(1u, vec3<i32>(i32(-2147483648), -1i, 1i)))), Struct_3(490i, Struct_2(Struct_1(1u, vec3<i32>(58293i, i32(-2147483648), 27868i))), Struct_2(Struct_1(20043u, vec3<i32>(-21832i, 7318i, 18861i)))), Struct_3(1i, Struct_2(Struct_1(0u, vec3<i32>(3400i, -52734i, 0i))), Struct_2(Struct_1(26274u, vec3<i32>(1i, -1i, 50878i)))), Struct_3(30137i, Struct_2(Struct_1(30919u, vec3<i32>(1i, -23967i, -15454i))), Struct_2(Struct_1(0u, vec3<i32>(64201i, -51450i, 50644i)))), Struct_3(-24072i, Struct_2(Struct_1(4294967295u, vec3<i32>(15143i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(27106u, vec3<i32>(i32(-2147483648), i32(-2147483648), -31845i)))), Struct_3(2147483647i, Struct_2(Struct_1(77042u, vec3<i32>(-1i, -1i, -4463i))), Struct_2(Struct_1(1u, vec3<i32>(i32(-2147483648), -14806i, -18411i)))), Struct_3(33188i, Struct_2(Struct_1(1u, vec3<i32>(-1i, 4219i, 29271i))), Struct_2(Struct_1(63282u, vec3<i32>(-1i, -51561i, -1i)))), Struct_3(0i, Struct_2(Struct_1(15538u, vec3<i32>(-1i, 67044i, 0i))), Struct_2(Struct_1(89845u, vec3<i32>(i32(-2147483648), 38550i, 0i)))), Struct_3(2147483647i, Struct_2(Struct_1(37511u, vec3<i32>(20099i, 1i, -36325i))), Struct_2(Struct_1(1u, vec3<i32>(0i, -5842i, -1i)))), Struct_3(49271i, Struct_2(Struct_1(0u, vec3<i32>(0i, -1i, -5806i))), Struct_2(Struct_1(114035u, vec3<i32>(-1i, i32(-2147483648), 0i)))), Struct_3(-22222i, Struct_2(Struct_1(85754u, vec3<i32>(3729i, 18761i, 1i))), Struct_2(Struct_1(51627u, vec3<i32>(i32(-2147483648), 0i, -1i)))), Struct_3(i32(-2147483648), Struct_2(Struct_1(3305u, vec3<i32>(0i, -50652i, -44370i))), Struct_2(Struct_1(63706u, vec3<i32>(-38990i, -28820i, 935i)))), Struct_3(12132i, Struct_2(Struct_1(0u, vec3<i32>(2147483647i, -30608i, -52456i))), Struct_2(Struct_1(4294967295u, vec3<i32>(0i, 6949i, 1310i)))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(true, false, false)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), global0.x > _wgslsmith_f_op_f32(-687f + global0.x));
    var_1 = vec2<bool>(var_1.x, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, _wgslsmith_f_op_f32(min(-1703f, _wgslsmith_f_op_f32(max(global0.x, 538f)))))));
    var var_3 = Struct_4(Struct_3(u_input.a.x, Struct_2(Struct_1(~0u, u_input.a >> (vec3<u32>(4294967295u, 43043u, var_0) % vec3<u32>(32u)))), Struct_2(Struct_1(0u, -u_input.a))), Struct_1(u_input.b, u_input.a));
    return _wgslsmith_dot_vec4_i32(~(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -41306i, u_input.a.x, 0i), ~vec4<i32>(-1i, arg_0, 1i, 0i)) ^ vec4<i32>(-1i, _wgslsmith_div_i32(-38697i, arg_0), 1i, ~arg_0)), vec4<i32>(~(-2147483647i | var_3.a.b.a.b.x), ~(~2147483647i) >> (firstTrailingBit(4294967295u) % 32u), 1i, ~arg_0));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(firstLeadingBit(select(func_3(-42440i, vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 22u)], 6659u)), 0i, any(vec4<bool>(false, true, true, false)))), Struct_2(Struct_1(33271u, _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 19u)], -2147483647i)))), Struct_2(Struct_1(75084u, u_input.a))), Struct_1(4358u, vec3<i32>(0i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(23862u, 22u)], u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], 22u)]), vec4<u32>(0u, 4294967295u, 36024u, global3[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_div_vec4_u32(vec4<u32>(63254u, u_input.b, global3[_wgslsmith_index_u32(14892u, 22u)], u_input.b), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1295u, 22u)], 22u)], 24308u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16425u, 22u)], 22u)], u_input.b))), 19u)], ~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(global0.yy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.yx, vec2<f32>(global0.x, 1352f)))) - global0.yy));
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(56u, 41087u, 1u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 1u, var_0.a.b.a.a, 1u))), 4294967295u)), 29u)];
    var var_3 = var_2.b;
    global1 = array<i32, 19>();
    return Struct_1(firstTrailingBit(~(~global3[_wgslsmith_index_u32(var_2.c.a.a, 22u)])), vec3<i32>(reverseBits(i32(-1i) * -2147483647i), var_3.a.b.x, min(arg_0, global1[_wgslsmith_index_u32(1u, 19u)])));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(func_2(-1i ^ u_input.a.x)), Struct_2(Struct_1(abs(39069u), u_input.a))), func_2(_wgslsmith_mult_i32(~1i, u_input.a.x)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(-393f, global0.x)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -376f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 773f, global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2001f, global0.x, global0.x) * vec3<f32>(global0.x, 1902f, 2377f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(2528f, 347f, -1028f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, 810f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -567f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(988f, 589f, global0.x))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), 0i <= max(arg_0, arg_0)))));
    let var_1 = vec3<i32>(reverseBits(-2147483647i), 20478i, arg_0);
    let var_2 = 305f;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-133f, 802f, 529f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-515f, var_2, var_2), vec3<f32>(-344f, -649f, global0.x), true))))))));
    return abs(~(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.b.a.a, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)], var_0.b.a))) | vec3<u32>(min(func_2(i32(-1i) * -2847i).a, 103560u), u_input.b, _wgslsmith_add_u32(var_0.b.a, var_0.a.b.a.a << (~8722u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1044f);
    var var_1 = -1289f;
    var_1 = global0.x;
    let var_2 = 1u | u_input.b;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((max(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(var_2, 22u)], 40575u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2, 2511u, global3[_wgslsmith_index_u32(10762u, 22u)]), vec3<u32>(8621u, u_input.b, 0u))) ^ vec3<u32>(~u_input.b, ~0u, ~31596u)) >> (func_1(u_input.a.x) % vec3<u32>(32u)), max(~(~(vec3<u32>(var_2, 42436u, 1221u) ^ vec3<u32>(u_input.b, var_2, 22253u))), vec3<u32>(select(var_2, ~38409u, true), 1u, 0u))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(var_2, 1u)], vec2<u32>(global3[_wgslsmith_index_u32(var_2, 22u)], 54019u)), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_2, global3[_wgslsmith_index_u32(var_2, 22u)], var_2), 1u)]), ~24450u), -2327i);
}

