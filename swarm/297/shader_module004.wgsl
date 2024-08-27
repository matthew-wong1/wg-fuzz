struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<u32>(47244u, 0u, 29416u), 13112i), Struct_1(vec3<u32>(21579u, 44912u, 65001u), 24030i), Struct_1(vec3<u32>(40203u, 4294967295u, 4294967295u), 1i), 0u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 41267u), 59398i)), Struct_2(Struct_1(vec3<u32>(30384u, 26520u, 38592u), 23484i), Struct_1(vec3<u32>(49782u, 25534u, 1u), -1i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 26177i), 23898u, Struct_1(vec3<u32>(69135u, 62491u, 1u), 9068i)), Struct_2(Struct_1(vec3<u32>(87822u, 2356u, 4294967295u), -1i), Struct_1(vec3<u32>(1782u, 34322u, 92820u), -32583i), Struct_1(vec3<u32>(31109u, 1u, 3875u), 0i), 39634u, Struct_1(vec3<u32>(0u, 0u, 63346u), 1i)), Struct_2(Struct_1(vec3<u32>(81045u, 0u, 73303u), 2147483647i), Struct_1(vec3<u32>(45188u, 4294967295u, 4294967295u), 0i), Struct_1(vec3<u32>(28039u, 0u, 1u), 2147483647i), 33641u, Struct_1(vec3<u32>(19053u, 26159u, 58522u), 42587i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u), 51044i), Struct_1(vec3<u32>(25549u, 12216u, 16397u), i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 0u, 42953u), 0i), 1u, Struct_1(vec3<u32>(63208u, 65225u, 52916u), -39972i)), Struct_2(Struct_1(vec3<u32>(83752u, 0u, 1u), 35998i), Struct_1(vec3<u32>(81625u, 40323u, 28776u), 1i), Struct_1(vec3<u32>(1u, 1u, 1u), -27359i), 1u, Struct_1(vec3<u32>(20743u, 8752u, 74089u), -29482i)), Struct_2(Struct_1(vec3<u32>(22u, 44966u, 1u), -23790i), Struct_1(vec3<u32>(1u, 1u, 24980u), i32(-2147483648)), Struct_1(vec3<u32>(29206u, 64630u, 4870u), 0i), 1u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 22842u), -3201i)), Struct_2(Struct_1(vec3<u32>(39947u, 39412u, 0u), 40208i), Struct_1(vec3<u32>(14801u, 0u, 13716u), 44114i), Struct_1(vec3<u32>(95394u, 0u, 13647u), i32(-2147483648)), 52377u, Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), -1i)), Struct_2(Struct_1(vec3<u32>(82611u, 0u, 38740u), 88115i), Struct_1(vec3<u32>(8645u, 1u, 0u), 2400i), Struct_1(vec3<u32>(0u, 3630u, 50710u), -1i), 2408u, Struct_1(vec3<u32>(1u, 0u, 30474u), -37971i)), Struct_2(Struct_1(vec3<u32>(48972u, 89240u, 46507u), 37005i), Struct_1(vec3<u32>(85809u, 4294967295u, 0u), 1i), Struct_1(vec3<u32>(21105u, 29666u, 5653u), 1i), 13755u, Struct_1(vec3<u32>(36269u, 0u, 0u), 1i)), Struct_2(Struct_1(vec3<u32>(0u, 1u, 11075u), 0i), Struct_1(vec3<u32>(40286u, 1u, 4294967295u), -1138i), Struct_1(vec3<u32>(1175u, 1u, 21114u), i32(-2147483648)), 10059u, Struct_1(vec3<u32>(0u, 41105u, 4294967295u), 1i)), Struct_2(Struct_1(vec3<u32>(46360u, 0u, 5768u), -55458i), Struct_1(vec3<u32>(31932u, 18749u, 1u), 0i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 38278i), 14419u, Struct_1(vec3<u32>(29189u, 46997u, 0u), -22201i)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 24137u), 50829i), Struct_1(vec3<u32>(57807u, 10705u, 11617u), -1i), Struct_1(vec3<u32>(14761u, 43948u, 0u), -39235i), 0u, Struct_1(vec3<u32>(61639u, 0u, 6971u), -1i)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 28648u), 2147483647i), Struct_1(vec3<u32>(907u, 25223u, 3766u), -1724i), Struct_1(vec3<u32>(0u, 4294967295u, 22111u), i32(-2147483648)), 61313u, Struct_1(vec3<u32>(0u, 54477u, 67575u), -1i)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 67182u), 1i), Struct_1(vec3<u32>(1u, 25545u, 7746u), i32(-2147483648)), Struct_1(vec3<u32>(52801u, 26658u, 7274u), 0i), 1u, Struct_1(vec3<u32>(4294967295u, 21822u, 1u), 0i)));

var<private> global1: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_2, 15>();
    let var_0 = Struct_3(Struct_2(global1.a, Struct_1(global1.a.a, abs(~(-1i))), global1.a, (global1.a.a.x >> (_wgslsmith_div_u32(global1.a.a.x, 69211u) % 32u)) | u_input.a.x, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, ~1593u), _wgslsmith_add_i32(-global1.a.b, global1.a.b))), global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~u_input.a.x, 8111u)), 15u)]);
    global1 = Struct_4(Struct_1(vec3<u32>((42176u << (u_input.a.x % 32u)) << (~u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(max(var_0.b.e.a.yz, vec2<u32>(global1.a.a.x, global1.a.a.x)), ~vec2<u32>(0u, 61228u)), ~(~global1.a.a.x)), 0i));
    let var_1 = Struct_1(reverseBits(~global1.a.a | var_0.b.b.a), abs(1i));
    let var_2 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(reverseBits(u_input.a.x ^ 24936u), reverseBits(arg_2)), 4294967295u), 15u)];
    let var_1 = 9511u;
    var var_2 = countOneBits(select(arg_2, (73890u << (_wgslsmith_dot_vec2_u32(var_0.e.a.zz, vec2<u32>(41753u, var_1)) % 32u)) & abs(46941u), all(vec2<bool>(true, 1i == arg_1.x))));
    let var_3 = arg_0.x;
    var_2 = 0u;
    return arg_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    global1 = Struct_4(arg_1);
    let var_0 = -618f;
    var var_1 = arg_0;
    let var_2 = Struct_4(Struct_1(var_1.b.c.a, func_4(_wgslsmith_f_op_vec4_f32(func_3()), countOneBits(-vec3<i32>(var_1.a.c.b, var_1.b.a.b, var_1.a.a.b)), ~arg_0.b.d ^ ~arg_1.a.x, !arg_2)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(564f, 209f, arg_3.x) + vec3<f32>(-428f, -779f, var_0)) * vec3<f32>(arg_3.x, -142f, arg_3.x)))));
    return -2147483647i;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x), arg_2));
    var_0 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, -350f);
    let var_1 = vec3<u32>(58097u, ~(1u >> (((0u & arg_0.a.x) & ~global1.a.a.x) % 32u)), 1u);
    let var_2 = arg_3.a.a.x;
    global0 = array<Struct_2, 15>();
    return global0[_wgslsmith_index_u32(69285u, 15u)];
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    var var_0 = arg_0.b.d;
    return Struct_4(func_5(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.a.a.x, global1.a.a.x) & vec3<u32>(1u, 26085u, 16074u), global1.a.a & vec3<u32>(23448u, 1u, 0u)), _wgslsmith_mult_i32(0i, -2147483647i) << (_wgslsmith_clamp_u32(4294967295u, global1.a.a.x, 5207u) % 32u)), -vec4<i32>(-60445i, ~23683i, ~arg_0.b.c.b, global1.a.b & global1.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-852f, -1478f), vec2<f32>(-841f, 189f), vec2<bool>(arg_1, false))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, 1437f)))), global0[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_sub_u32(1u, 1u))), 15u)]).c);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    global1 = func_6(Struct_3(Struct_2(global1.a, Struct_1(abs(vec3<u32>(1u, global1.a.a.x, 73657u)), _wgslsmith_add_i32(global1.a.b, 1i)), global1.a, ~_wgslsmith_clamp_u32(global1.a.a.x, u_input.a.x, u_input.a.x), Struct_1(firstLeadingBit(vec3<u32>(27684u, arg_1.x, global1.a.a.x)), _wgslsmith_mod_i32(arg_0, global1.a.b))), func_5(Struct_1(~vec3<u32>(u_input.a.x, 2424u, arg_1.x), func_2(Struct_3(Struct_2(Struct_1(vec3<u32>(29110u, 4294967295u, 60272u), 1i), global1.a, Struct_1(arg_1, arg_0), global1.a.a.x, global1.a), global0[_wgslsmith_index_u32(4294967295u, 15u)]), global1.a, false, vec2<f32>(164f, 1337f))), min(vec4<i32>(-12006i, 11559i, -34050i, 1i) ^ vec4<i32>(-20348i, global1.a.b, global1.a.b, arg_0), ~vec4<i32>(arg_0, arg_0, global1.a.b, global1.a.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, 1205f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1370f, -796f), vec2<f32>(-2313f, -409f), vec2<bool>(false, false)))), Struct_2(global1.a, global1.a, global1.a, arg_1.x, Struct_1(u_input.a.xxw, 57374i)))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))) && (true || all(vec4<bool>(true, true, true, true))));
    let var_0 = arg_0 & (i32(-1i) * -(~global1.a.b));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(arg_1.x, 15u)], Struct_2(Struct_1(min(abs(vec3<u32>(u_input.a.x, u_input.a.x, global1.a.a.x)), arg_1), global1.a.b), func_5(func_5(func_5(Struct_1(vec3<u32>(u_input.a.x, 0u, arg_1.x), 1i), vec4<i32>(global1.a.b, -1i, 25280i, arg_0), vec2<f32>(666f, -458f), Struct_2(global1.a, global1.a, Struct_1(arg_1, global1.a.b), 80373u, Struct_1(arg_1, var_0))).b, -vec4<i32>(1266i, -1i, 1i, global1.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(170f, 1056f) - vec2<f32>(-1807f, -888f)), func_5(global1.a, vec4<i32>(2147483647i, global1.a.b, var_0, var_0), vec2<f32>(-1073f, 1732f), Struct_2(Struct_1(u_input.a.yxy, 1i), global1.a, Struct_1(vec3<u32>(global1.a.a.x, 87472u, 20763u), global1.a.b), global1.a.a.x, global1.a))).a, ~select(vec4<i32>(-1i, -69792i, var_0, arg_0), vec4<i32>(global1.a.b, -2574i, global1.a.b, 1i), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1605f, -1805f)), global0[_wgslsmith_index_u32(arg_1.x, 15u)]).b, global1.a, _wgslsmith_add_u32(u_input.a.x, max(global1.a.a.x, 29506u) ^ arg_1.x), Struct_1(vec3<u32>(max(u_input.a.x, 1u), _wgslsmith_sub_u32(25471u, 1u), ~arg_1.x), global1.a.b)));
    global1 = func_6(Struct_3(var_1.a, Struct_2(func_6(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 30898u, var_1.b.c.a.x), 89575i), var_1.a.c, Struct_1(vec3<u32>(23345u, 0u, arg_1.x), 0i), 27163u, Struct_1(u_input.a.wzz, -49146i)), global0[_wgslsmith_index_u32(0u, 15u)]), true).a, Struct_1(~vec3<u32>(var_1.b.e.a.x, var_1.b.a.a.x, 1u), -2147483647i), func_5(func_5(Struct_1(vec3<u32>(arg_1.x, 2524u, 49779u), var_0), vec4<i32>(-46842i, arg_0, -36120i, -1i), vec2<f32>(1405f, -790f), global0[_wgslsmith_index_u32(0u, 15u)]).c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, global1.a.b, var_0, 14351i), vec4<i32>(var_1.a.e.b, -2147483647i, var_1.b.b.b, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-368f, -1467f)), Struct_2(var_1.b.e, Struct_1(vec3<u32>(var_1.b.b.a.x, 36048u, global1.a.a.x), 0i), Struct_1(global1.a.a, -2147483647i), 656u, Struct_1(global1.a.a, -28682i))).b, ~17598u, Struct_1(u_input.a.wzw, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.a.b), vec2<i32>(2147483647i, 1i))))), true);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], var_1.b);
    return Struct_2(func_6(Struct_3(var_2.a, global0[_wgslsmith_index_u32((0u & u_input.a.x) ^ abs(32763u), 15u)]), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))).a, func_5(func_6(Struct_3(func_5(var_2.b.c, vec4<i32>(49494i, arg_0, 2147483647i, -64190i), vec2<f32>(-884f, -1729f), Struct_2(Struct_1(vec3<u32>(global1.a.a.x, global1.a.a.x, var_2.b.e.a.x), 1i), global1.a, global1.a, 86521u, Struct_1(var_2.a.e.a, -2147483647i))), var_1.a), true).a, _wgslsmith_sub_vec4_i32(vec4<i32>(~var_2.a.c.b, firstTrailingBit(-2147483647i), 1i, -1i), vec4<i32>(abs(var_1.b.a.b), var_2.a.e.b, 0i, _wgslsmith_add_i32(-2147483647i, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(590f, -853f), _wgslsmith_f_op_f32(round(-1795f))) - vec2<f32>(1f, 1f)), Struct_2(Struct_1(u_input.a.zzx ^ arg_1, -1i), Struct_1(var_1.a.e.a | arg_1, -2488i), global1.a, _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 11627u, global1.a.a.x, 0u), vec4<u32>(var_1.b.c.a.x, 1u, 1u, arg_1.x))), global1.a)).e, func_6(Struct_3(Struct_2(var_1.b.a, Struct_1(var_1.a.e.a, 18887i), Struct_1(var_1.a.a.a, -1222i), ~u_input.a.x, func_5(Struct_1(vec3<u32>(15764u, 1808u, 32779u), 2147483647i), vec4<i32>(-33952i, -22132i, -1i, var_2.a.c.b), vec2<f32>(-1000f, -982f), var_2.a).a), global0[_wgslsmith_index_u32(11107u, 15u)]), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))).a, 0u, func_5(func_5(var_2.a.e, select(vec4<i32>(var_0, -2147483647i, 7155i, arg_0), ~vec4<i32>(var_2.a.c.b, global1.a.b, var_1.b.e.b, arg_0), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(791f, 1870f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(788f, 1000f))), func_5(Struct_1(vec3<u32>(1u, var_2.a.a.a.x, 43394u), 1i), max(vec4<i32>(var_2.a.b.b, var_2.a.b.b, var_2.a.c.b, global1.a.b), vec4<i32>(24025i, global1.a.b, -1i, 0i)), vec2<f32>(-374f, -1000f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.b.a.a, var_1.b.e.a), 15u)])).c, vec4<i32>(24854i, _wgslsmith_add_i32(var_1.b.c.b, arg_0), _wgslsmith_add_i32(global1.a.b, 2147483647i), countOneBits(17681i)), vec2<f32>(2023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -413f)) * -316f)), global0[_wgslsmith_index_u32(arg_1.x, 15u)]).e);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = func_5(Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.a.a, ~arg_2.a.a), vec3<u32>(arg_0.a.x, u_input.a.x, u_input.a.x >> (global1.a.a.x % 32u))), _wgslsmith_clamp_i32(abs(func_4(arg_3, vec3<i32>(arg_1.b.e.b, 1i, 0i), arg_2.a.a.x, true)), -arg_2.a.b | ~global1.a.b, func_1(func_1(-1i, vec3<u32>(0u, 0u, global1.a.a.x)).a.b, firstLeadingBit(arg_2.a.a)).c.b)), -vec4<i32>(func_1(-1i | arg_0.b, select(vec3<u32>(20883u, 0u, 82860u), u_input.a.wzw, vec3<bool>(true, false, false))).c.b, 10227i, -arg_1.b.c.b, arg_1.a.e.b), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(381f)) * 750f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)))), func_1(abs(-14542i), global1.a.a)).b;
    var var_1 = 30124u;
    var var_2 = func_6(arg_1, false | (true || select(all(vec3<bool>(true, true, true)), global1.a.a.x >= var_0.a.x, true)));
    global1 = func_6(arg_1, all(vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true)), _wgslsmith_sub_u32(arg_2.a.a.x, 73722u) < countOneBits(1u))));
    var_1 = ~(~4294967295u | _wgslsmith_sub_u32(~72014u, ~0u & ~arg_1.b.d));
    return arg_1.a;
}

fn func_8(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-11144i, arg_0.a.e.b)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(arg_1.a.b, -2147483647i)), vec2<i32>(-2147483647i, global1.a.b), vec2<i32>(arg_0.a.b.b, -743i) << (arg_2.yx % vec2<u32>(32u))) | vec2<i32>(arg_0.a.b.b << (0u % 32u), ~global1.a.b)) | (vec2<i32>(6083i, ~func_6(arg_0, var_0.x).a.b) & select(vec2<i32>(2147483647i, arg_0.a.e.b) ^ _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.b, -857i), vec2<i32>(-2147483647i, global1.a.b)), countOneBits(~vec2<i32>(global1.a.b, arg_0.b.b.b)), !select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), vec2<bool>(false, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1125f, _wgslsmith_f_op_f32(f32(-1f) * -757f)))));
    let var_3 = select(vec3<bool>(var_0.x, true, any(vec2<bool>(any(vec3<bool>(false, false, false)), arg_2.x > 0u))), !(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, false)))), true);
    var_2 = _wgslsmith_f_op_f32(-1311f + 861f);
    return func_6(Struct_3(Struct_2(func_7(arg_0.a.a, arg_0, Struct_4(Struct_1(arg_2.xzx, -1i)), vec4<f32>(-1346f, -1529f, 1000f, 1000f)).e, global1.a, Struct_1(arg_2.wxy, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b.b, -49998i), vec2<i32>(arg_1.a.b, 42267i))), max(global1.a.a.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0.b.b.a.x)), Struct_1(~arg_0.a.a.a, arg_1.a.b)), Struct_2(func_6(Struct_3(Struct_2(global1.a, global1.a, global1.a, arg_0.a.a.a.x, arg_1.a), global0[_wgslsmith_index_u32(27858u, 15u)]), true).a, Struct_1(u_input.a.yzz, func_6(arg_0, var_0.x).a.b), Struct_1(min(vec3<u32>(9427u, arg_2.x, 0u), arg_1.a.a), -1i), abs(firstLeadingBit(arg_0.b.c.a.x)), global1.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_8(Struct_3(func_7(global1.a, Struct_3(func_1(global1.a.b, vec3<u32>(0u, u_input.a.x, global1.a.a.x)), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), func_6(Struct_3(global0[_wgslsmith_index_u32(31775u, 15u)], Struct_2(Struct_1(vec3<u32>(7063u, global1.a.a.x, 0u), -4475i), global1.a, global1.a, 22303u, global1.a)), any(vec3<bool>(true, false, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, -1340f, 537f, -726f) - vec4<f32>(-1689f, 725f, -1520f, -856f)), _wgslsmith_f_op_vec4_f32(func_3()))), global0[_wgslsmith_index_u32(func_1(global1.a.b, ~func_6(Struct_3(Struct_2(global1.a, global1.a, global1.a, global1.a.a.x, global1.a), Struct_2(global1.a, Struct_1(vec3<u32>(global1.a.a.x, global1.a.a.x, u_input.a.x), 1i), Struct_1(global1.a.a, global1.a.b), 21995u, Struct_1(vec3<u32>(u_input.a.x, global1.a.a.x, 1u), global1.a.b))), false).a.a).d, 15u)]), Struct_4(global1.a), u_input.a);
    let var_0 = !(!all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_1 = func_7(func_1(-(global1.a.b | global1.a.b), select(u_input.a.wzw, global1.a.a, vec3<bool>(false, var_0, var_0)) ^ vec3<u32>(global1.a.a.x, u_input.a.x, 4294967295u)).b, Struct_3(Struct_2(Struct_1(global1.a.a, -2147483647i), Struct_1(vec3<u32>(0u, 49731u, u_input.a.x), global1.a.b), func_8(Struct_3(global0[_wgslsmith_index_u32(17356u, 15u)], Struct_2(global1.a, global1.a, Struct_1(global1.a.a, global1.a.b), 100377u, global1.a)), Struct_4(global1.a), u_input.a).a, ~u_input.a.x, Struct_1(global1.a.a, -58287i)), global0[_wgslsmith_index_u32(~(~3665u), 15u)]), Struct_4(func_8(Struct_3(Struct_2(global1.a, Struct_1(u_input.a.zyy, 0i), Struct_1(vec3<u32>(global1.a.a.x, 19797u, u_input.a.x), -13182i), 34406u, Struct_1(vec3<u32>(0u, u_input.a.x, global1.a.a.x), -1i)), global0[_wgslsmith_index_u32(51611u, 15u)]), Struct_4(global1.a), ~vec4<u32>(345u, 3411u, u_input.a.x, u_input.a.x)).a), vec4<f32>(1f, 1f, 1f, 1f)).b.b ^ -global1.a.b;
    var var_2 = abs(reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(min(global1.a.a.x, global1.a.a.x), ~12029u), global1.a.a.x)));
    var_2 = 66563u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global1.a.b, 3333i), select(-vec2<i32>(global1.a.b, -2147483647i), ~vec2<i32>(global1.a.b, 1i), select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), vec2<bool>(true, var_0)))), global1.a.b, select(1i, -24770i, var_0), global1.a.b));
}

