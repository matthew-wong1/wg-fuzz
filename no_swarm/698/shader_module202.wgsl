struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(1050f, vec4<u32>(27402u, 0u, 57980u, 15390u), Struct_3(36635u, 339f), Struct_1(false, 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), -20859i), 4920u, 36036i), vec3<i32>(-14114i, i32(-2147483648), -19822i)), Struct_4(-1000f, vec4<u32>(19614u, 25619u, 40390u, 19305u), Struct_3(4294967295u, 513f), Struct_1(true, 22772i, vec3<i32>(54890i, 1i, 0i), 16687u, 1i), vec3<i32>(-1i, 28889i, -1i)), Struct_4(-732f, vec4<u32>(1u, 0u, 42266u, 4294967295u), Struct_3(1u, 1108f), Struct_1(false, -54981i, vec3<i32>(-1640i, 1i, 1i), 115040u, -72392i), vec3<i32>(37786i, 26434i, 1i)), Struct_4(-1210f, vec4<u32>(4294967295u, 1u, 4294967295u, 55154u), Struct_3(54678u, 1129f), Struct_1(false, -35200i, vec3<i32>(-48496i, -13141i, -31421i), 14703u, 2147483647i), vec3<i32>(-51099i, 13001i, 0i)), Struct_4(753f, vec4<u32>(0u, 4370u, 4294967295u, 116634u), Struct_3(1u, 1013f), Struct_1(false, 1i, vec3<i32>(-13037i, -1i, -1i), 4294967295u, 2147483647i), vec3<i32>(i32(-2147483648), -17327i, 0i)), Struct_4(-1000f, vec4<u32>(79366u, 73063u, 36765u, 0u), Struct_3(10114u, -832f), Struct_1(true, 13494i, vec3<i32>(0i, 1i, 26878i), 0u, -7987i), vec3<i32>(47134i, 0i, i32(-2147483648))), Struct_4(896f, vec4<u32>(4271u, 35516u, 1u, 0u), Struct_3(84343u, 263f), Struct_1(false, 18088i, vec3<i32>(6745i, 2147483647i, 29826i), 0u, 3674i), vec3<i32>(69860i, -1784i, -9710i)), Struct_4(1525f, vec4<u32>(35545u, 41464u, 13938u, 1u), Struct_3(0u, -1000f), Struct_1(false, -10842i, vec3<i32>(-38061i, 0i, 2147483647i), 15028u, -42027i), vec3<i32>(-1i, -79025i, -1i)), Struct_4(1320f, vec4<u32>(24642u, 58857u, 96939u, 71918u), Struct_3(1u, -1754f), Struct_1(false, 0i, vec3<i32>(2147483647i, 8994i, -42130i), 1u, 1i), vec3<i32>(-1i, 1i, 2147483647i)), Struct_4(-102f, vec4<u32>(4294967295u, 0u, 78520u, 19927u), Struct_3(4294967295u, -1180f), Struct_1(true, 2147483647i, vec3<i32>(-973i, -7674i, -35230i), 40170u, -40811i), vec3<i32>(73973i, 1i, 8264i)), Struct_4(198f, vec4<u32>(1u, 32805u, 31729u, 3519u), Struct_3(0u, -277f), Struct_1(false, i32(-2147483648), vec3<i32>(-8314i, -47222i, 2147483647i), 0u, 71349i), vec3<i32>(12992i, 13461i, -18263i)), Struct_4(1538f, vec4<u32>(0u, 0u, 1u, 1u), Struct_3(4294967295u, -2102f), Struct_1(false, i32(-2147483648), vec3<i32>(-25190i, i32(-2147483648), -20680i), 0u, -24112i), vec3<i32>(1i, -4136i, 1i)), Struct_4(-546f, vec4<u32>(18760u, 13128u, 27136u, 0u), Struct_3(54799u, 686f), Struct_1(true, 35086i, vec3<i32>(2147483647i, -36999i, 1i), 0u, 5174i), vec3<i32>(-24792i, 0i, 0i)), Struct_4(537f, vec4<u32>(52611u, 7152u, 3268u, 6286u), Struct_3(27085u, -454f), Struct_1(true, -1i, vec3<i32>(1i, 6312i, -1i), 16416u, 0i), vec3<i32>(-19806i, 2147483647i, 49231i)), Struct_4(-485f, vec4<u32>(4294967295u, 0u, 86439u, 1068u), Struct_3(1u, -404f), Struct_1(true, -54580i, vec3<i32>(i32(-2147483648), 43819i, 1i), 10885u, -1i), vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_4(1000f, vec4<u32>(0u, 36413u, 0u, 29898u), Struct_3(0u, -353f), Struct_1(false, -26463i, vec3<i32>(i32(-2147483648), 2162i, -50319i), 1u, 1i), vec3<i32>(2147483647i, -1i, -8926i)), Struct_4(-180f, vec4<u32>(0u, 18154u, 0u, 1u), Struct_3(4294967295u, 618f), Struct_1(false, 23583i, vec3<i32>(1i, i32(-2147483648), -1i), 0u, 74143i), vec3<i32>(33682i, 17465i, -1i)), Struct_4(318f, vec4<u32>(0u, 1u, 47618u, 80140u), Struct_3(64016u, -822f), Struct_1(true, 2147483647i, vec3<i32>(29816i, 1i, 31865i), 0u, -37933i), vec3<i32>(18861i, 0i, -1i)), Struct_4(789f, vec4<u32>(0u, 10531u, 1u, 4294967295u), Struct_3(12384u, 1325f), Struct_1(false, -30454i, vec3<i32>(1i, 3436i, 14125i), 4294967295u, -35761i), vec3<i32>(15898i, -4889i, 2147483647i)), Struct_4(-280f, vec4<u32>(10927u, 751u, 127526u, 0u), Struct_3(50594u, -618f), Struct_1(false, 47884i, vec3<i32>(-1i, 1i, 1i), 13640u, 2147483647i), vec3<i32>(26734i, -22757i, 0i)), Struct_4(-203f, vec4<u32>(28703u, 55380u, 0u, 1u), Struct_3(1u, -265f), Struct_1(true, 1i, vec3<i32>(-1i, 1i, -1i), 0u, 2147483647i), vec3<i32>(2147483647i, -41761i, -1i)), Struct_4(-340f, vec4<u32>(1u, 38637u, 95891u, 0u), Struct_3(0u, -531f), Struct_1(false, -43165i, vec3<i32>(0i, i32(-2147483648), 1i), 44757u, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), Struct_4(705f, vec4<u32>(16497u, 0u, 4294967295u, 33424u), Struct_3(57216u, -1000f), Struct_1(false, -9079i, vec3<i32>(11925i, 1i, 0i), 4294967295u, -1i), vec3<i32>(-9580i, 42423i, 2147483647i)), Struct_4(1163f, vec4<u32>(1u, 4294967295u, 0u, 50947u), Struct_3(1u, 742f), Struct_1(true, -76411i, vec3<i32>(0i, -55173i, -1i), 0u, i32(-2147483648)), vec3<i32>(39953i, 44046i, -7231i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = !select(vec3<bool>(select(true, arg_2.a, !arg_0.d.a), true, all(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(global0.c.d, 3u)], global0.d))), vec3<bool>(!global0.c.a, arg_2.a, 2612f <= _wgslsmith_f_op_f32(step(arg_0.c.b, 214f))), select(select(vec3<bool>(true, true, false), !vec3<bool>(false, arg_0.d.a, true), !arg_0.d.a), select(vec3<bool>(global0.c.a, false, true), select(vec3<bool>(false, arg_2.a, arg_0.d.a), vec3<bool>(true, arg_0.d.a, global0.a.a), true), all(global1[_wgslsmith_index_u32(0u, 3u)])), vec3<bool>(any(vec3<bool>(true, true, true)), global0.b.a && true, !arg_2.a)));
    let var_1 = ~arg_0.b;
    global0 = Struct_2(Struct_1(arg_0.d.a, ~1i, -vec3<i32>(40073i, 2147483647i, u_input.a), _wgslsmith_mult_u32(~arg_0.b.x, ~arg_0.c.a) << (arg_3.a % 32u), -2147483647i), arg_2, Struct_1(all(!select(vec4<bool>(var_0.x, true, false, global0.b.a), vec4<bool>(false, global0.b.a, false, var_0.x), arg_0.d.a)), arg_2.c.x, abs(vec3<i32>(0i, 35511i, -1i)) << (~vec3<u32>(18046u, 52558u, global0.c.d) % vec3<u32>(32u)), arg_0.d.d & 4294967295u, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_2.b), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -18718i, -2147483647i), global0.b.c)) | ~1i), 4294967295u >= ~var_1.x, arg_0.a);
    global0 = Struct_2(Struct_1(true, global0.c.b, ~min(arg_2.c, vec3<i32>(arg_1, 9814i, u_input.a)), firstTrailingBit(countOneBits(countOneBits(0u))), ~countOneBits(0i)), Struct_1(var_0.x, arg_1, arg_2.c, _wgslsmith_sub_u32(~60650u << (global0.b.d % 32u), max(17867u, ~var_1.x)), _wgslsmith_mod_i32(u_input.a, ~_wgslsmith_mult_i32(arg_0.e.x, -1i))), Struct_1(-_wgslsmith_div_i32(global0.b.c.x, 0i) < -_wgslsmith_sub_i32(-1680i, 1i), _wgslsmith_div_i32(~u_input.a, _wgslsmith_mod_i32(0i, 1i)), arg_2.c, global0.a.d, abs(30162i)), !arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * 752f)))));
    let var_2 = 5031i;
    return arg_3.a << (~_wgslsmith_dot_vec3_u32(select(arg_0.b.zyw, vec3<u32>(arg_0.d.d, 1u, arg_2.d) ^ vec3<u32>(arg_3.a, arg_0.b.x, 0u), true), max(max(vec3<u32>(1u, 1u, 9201u), arg_0.b.wyy), ~vec3<u32>(var_1.x, 0u, 4294967295u))) % 32u);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_4(-1000f, vec4<u32>(~74717u, global0.b.d, func_3(Struct_4(_wgslsmith_f_op_f32(-global0.e), countOneBits(vec4<u32>(4294967295u, 29356u, global0.c.d, global0.b.d)), Struct_3(125873u, -983f), Struct_1(arg_0.x, -1i, global0.c.c, global0.c.d, global0.b.c.x), vec3<i32>(10802i, -19323i, -53259i)), 27549i, global0.b, Struct_3(global0.b.d, global0.e)), 18428u), Struct_3(37015u, -113f), Struct_1(select(true, global0.d, arg_0.x != true), u_input.a, vec3<i32>(global0.b.e, -2395i, 30018i), 37273u, -23421i), global0.c.c);
    global1 = array<vec2<bool>, 3>();
    let var_1 = Struct_3(~(~min(~var_0.b.x, global0.c.d)), -370f);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) + _wgslsmith_f_op_f32(trunc(-674f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a | 43387u, var_1.a, ~(~0u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(12583u, var_1.a), var_0.b.xy), _wgslsmith_dot_vec3_u32(var_0.b.yzw, var_0.b.zzw))), var_0.b, ~(~var_0.b)), Struct_3(reverseBits(~1u) | max(min(global0.b.d, var_0.d.d), _wgslsmith_mod_u32(147298u, 59971u)), 159f), Struct_1(!(!all(arg_0.wwz)), u_input.a, var_0.e, 57271u | _wgslsmith_add_u32(var_1.a, ~var_0.c.a), global0.b.c.x), global0.a.c);
    let var_3 = global0.a.d;
    return Struct_3(~(~55756u), var_1.b);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) - _wgslsmith_f_op_f32(select(global0.e, global0.e, true)))) - global0.e), -2782f, _wgslsmith_f_op_f32(146f * -1549f), _wgslsmith_f_op_f32(global0.e * global0.e));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.e, global0.e, 1935f));
    let var_2 = func_2(arg_1);
    global2 = array<Struct_4, 24>();
    let var_3 = Struct_1(any(select(!arg_1, vec4<bool>(all(arg_1.zyx), true, true, global0.d), !arg_1)), max(global0.b.b, _wgslsmith_mod_i32(u_input.a, (-76849i | global0.b.c.x) >> (reverseBits(arg_0) % 32u))), min(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -40565i, global0.c.b), global0.c.c) << (vec3<u32>(arg_0, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a, global0.b.b, 0i) ^ -global0.b.c) << (~arg_2 % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(reverseBits(vec4<u32>(103543u, arg_2.x, global0.c.d, arg_0))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 98345u, 7351u, 56964u), vec4<u32>(4294967295u, 1u, arg_0, 46113u)), ~vec4<u32>(1u, 22115u, arg_0, arg_0)), vec4<u32>(arg_2.x, arg_0, 44635u, ~38097u)), ~countOneBits(~vec4<u32>(21249u, 4294967295u, 23066u, global0.b.d))), ~(-1i));
    return arg_2.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(21682u, 3362u ^ ~(~(4294967295u & global0.c.d)));
    let var_1 = firstTrailingBit(-vec2<i32>(~u_input.a, 28478i & u_input.a) >> ((func_1(~58133u, vec4<bool>(global0.a.a, false, global0.b.a, true), vec3<u32>(global0.b.d, 4294967295u, var_0)) << (~(~vec2<u32>(15556u, var_0)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = Struct_2(Struct_1(false, var_1.x, (vec3<i32>(-1i, var_1.x, var_1.x) | global0.b.c) | select(min(vec3<i32>(global0.c.c.x, var_1.x, 0i), global0.a.c), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.e, global0.c.b, -23580i), global0.a.c), true), ~var_0, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1098i, 2147483647i), abs(vec2<i32>(u_input.a, 34671i)), global0.c.a), select(vec2<i32>(21114i, 700i), firstTrailingBit(var_1), global0.d | true))), global0.b, Struct_1(global0.b.a, _wgslsmith_add_i32(1678i, -1i), _wgslsmith_add_vec3_i32(~(-global0.b.c), global0.a.c), var_0, -(var_1.x ^ abs(global0.a.b))), !select(global0.c.a, var_0 == max(global0.a.d, var_0), !any(vec2<bool>(false, global0.b.a))), global0.e);
    let var_2 = global0.a;
    global0 = Struct_2(global0.b, Struct_1(global0.b.a | any(vec3<bool>(true, var_2.a, true)), reverseBits(countOneBits(u_input.a)), _wgslsmith_add_vec3_i32(-global0.b.c ^ vec3<i32>(u_input.a, 1i, var_2.c.x), vec3<i32>(2147483647i >> (var_0 % 32u), ~(-61319i), _wgslsmith_add_i32(global0.b.c.x, -1i))), 4294967295u, var_1.x), global0.b, var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1527f) - global0.e));
    var var_3 = Struct_2(global0.a, global0.c, Struct_1(global0.b.a, max(select(select(-2147483647i, -12578i, global0.c.a), 1i, global0.e < -271f), -global0.b.b), -var_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, func_2(vec4<bool>(true, var_2.a, true, true)).a, _wgslsmith_mod_u32(22296u, var_0)), ~(~vec3<u32>(global0.a.d, 77727u, 0u))), -(var_2.e ^ 9380i)), select(true, true, var_2.a), _wgslsmith_f_op_f32(min(406f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.e)))), global0.e, var_2.a)))));
    var var_4 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(-max(vec4<i32>(-2147483647i, var_2.b, var_1.x, var_2.b), vec4<i32>(2147483647i, var_2.e, -23514i, -2147483647i)), vec4<i32>(var_2.b, global0.c.c.x, var_3.a.c.x, -23683i) & (vec4<i32>(-1i, var_3.c.e, global0.a.b, var_2.e) | vec4<i32>(0i, var_1.x, global0.b.e, var_2.c.x))));
}

