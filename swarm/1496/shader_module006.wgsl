struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(4294967295u, 23405u, 49721u, 60499u, 30222u, 431u, 1u, 24773u, 0u, 0u, 36718u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<u32>(2764u, 1u), vec4<bool>(false, true, false, false), vec3<u32>(75650u, 1u, 41131u)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(35839u, 1u), vec4<bool>(false, true, true, false), vec3<u32>(22221u, 89339u, 0u)), -928f, 66907u, 1i), 1938f, Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(6065u, 26855u), vec4<bool>(false, false, false, true), vec3<u32>(40388u, 1u, 1u)), 377f, 1u, 2147483647i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(15933u, 1u), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 81854u, 43436u))), Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<u32>(39879u, 0u), vec4<bool>(false, false, true, false), vec3<u32>(16443u, 52485u, 1u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(2155u, 1u), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 4294967295u, 16260u)), 510f, 1u, 0i), 110f, Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(71722u, 3488u), vec4<bool>(true, true, false, true), vec3<u32>(44440u, 0u, 7306u)), -1318f, 19706u, -11272i), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 1u), vec4<bool>(true, true, true, true), vec3<u32>(112077u, 1u, 23896u))), Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 1098u), vec4<bool>(true, false, false, false), vec3<u32>(79359u, 25965u, 0u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(30090u, 13026u), vec4<bool>(false, true, false, false), vec3<u32>(81285u, 24106u, 0u)), -1000f, 30642u, i32(-2147483648)), -1471f, Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 12858u), vec4<bool>(true, false, true, false), vec3<u32>(31901u, 4294967295u, 1u)), 3277f, 4294967295u, -1i), Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 0u), vec4<bool>(true, false, true, true), vec3<u32>(7674u, 1u, 4294967295u))), Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<u32>(18443u, 1u), vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 39260u, 1u)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, false, false), vec3<u32>(1u, 1u, 16136u)), 210f, 19348u, 18980i), -394f, Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(22682u, 4294967295u), vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 49253u, 13617u)), -211f, 71301u, -34998i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 11280u), vec4<bool>(true, true, true, true), vec3<u32>(69604u, 87945u, 0u))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<u32>(43814u, 1776u), vec4<bool>(true, false, true, true), vec3<u32>(43220u, 0u, 81165u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 79471u), vec4<bool>(false, true, false, false), vec3<u32>(1u, 57339u, 38858u)), -606f, 19772u, 5547i), 943f, Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 25458u), vec4<bool>(true, false, false, false), vec3<u32>(18916u, 19869u, 76262u)), -688f, 5854u, -5592i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(42199u, 0u), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 24166u, 0u))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 1u), vec4<bool>(false, true, true, false), vec3<u32>(2222u, 53375u, 42995u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(1908u, 16365u), vec4<bool>(true, false, false, true), vec3<u32>(1u, 84976u, 0u)), 172f, 1u, -29757i), -386f, Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 44139u), vec4<bool>(true, true, true, false), vec3<u32>(1u, 80008u, 8565u)), -585f, 0u, 0i), Struct_1(vec3<bool>(true, false, false), vec2<u32>(6482u, 4294967295u), vec4<bool>(true, false, true, true), vec3<u32>(0u, 6509u, 44425u))), Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<u32>(16923u, 1u), vec4<bool>(false, true, true, false), vec3<u32>(1u, 20775u, 1u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(1714u, 18864u), vec4<bool>(true, false, false, true), vec3<u32>(1u, 1u, 4294967295u)), 1743f, 1u, 2147483647i), -1675f, Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 4294967295u), vec4<bool>(false, true, false, false), vec3<u32>(30713u, 4294967295u, 13475u)), -898f, 0u, -9024i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, true, false), vec3<u32>(87686u, 1u, 4294967295u))), Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 49267u), vec4<bool>(false, true, true, false), vec3<u32>(6306u, 45297u, 21041u)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 1u), vec4<bool>(false, false, true, false), vec3<u32>(23325u, 1u, 68611u)), 742f, 45164u, 42695i), -2036f, Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(17723u, 0u), vec4<bool>(false, false, false, false), vec3<u32>(47022u, 8612u, 80461u)), -978f, 69919u, 0i), Struct_1(vec3<bool>(false, true, true), vec2<u32>(42601u, 45102u), vec4<bool>(true, false, true, true), vec3<u32>(11861u, 4294967295u, 21479u))), Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 62142u), vec4<bool>(true, true, true, true), vec3<u32>(52271u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(13978u, 0u), vec4<bool>(false, true, true, false), vec3<u32>(99323u, 17923u, 1u)), 535f, 87797u, -4928i), -634f, Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(4294967295u, 83123u), vec4<bool>(true, false, false, false), vec3<u32>(62491u, 1u, 3484u)), 360f, 36721u, 3970i), Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 15236u), vec4<bool>(true, true, true, true), vec3<u32>(11364u, 1u, 1u))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    let var_0 = 16716i;
    global1 = array<Struct_3, 9>();
    var var_1 = vec2<i32>(-1i, 0i);
    var_1 = firstTrailingBit(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-31038i, u_input.a, 1i), reverseBits(vec3<i32>(1i, var_0, 2147483647i))), 0i));
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.d.d, arg_2.d.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(~(~(-10658i)), -2147483647i), ~(vec2<i32>(arg_2.d.d, u_input.a) << (_wgslsmith_div_vec2_u32(arg_2.a.b, arg_2.a.d.zz) % vec2<u32>(32u))), ~reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(41213i, -42395i), vec2<i32>(var_0, u_input.a)))));
    return all(vec3<bool>(arg_2.e.c.x, true, true)) && false;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = array<u32, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(265f, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-arg_0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, -689f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-723f, arg_0.x, 186f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_2 = global0[_wgslsmith_index_u32(arg_1.b.x, 13u)];
    var var_3 = ~vec4<u32>(min(~68890u, select(28696u, 1u, arg_1.c.x == true)), global0[_wgslsmith_index_u32(5106u, 13u)], global0[_wgslsmith_index_u32(4007u, 13u)], 16454u);
    return ~31921u >> (firstTrailingBit(_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 28711u, 1u), vec3<u32>(35777u, global0[_wgslsmith_index_u32(1u, 13u)], 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 95831u), vec2<u32>(48877u, var_3.x) ^ var_3.yw))) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> u32 {
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    global0 = array<u32, 13>();
    let var_0 = !arg_0.a.a.x;
    var var_1 = arg_0.a;
    return 20356u;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(arg_2.d, u_input.a, -(~(~_wgslsmith_sub_i32(arg_2.d, -2147483647i))));
    let var_1 = -_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_2.d, u_input.a), firstLeadingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.d, var_0.x, var_0.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_2.d), vec3<i32>(u_input.a, -4873i, var_0.x)))));
    let var_2 = _wgslsmith_mult_i32(arg_2.d, firstTrailingBit(var_1.x));
    var var_3 = func_4(Struct_3(Struct_1(vec3<bool>(any(arg_3.xy), true, func_2(u_input.a, vec3<f32>(468f, 488f, 726f), Struct_3(arg_2.a, Struct_2(Struct_1(arg_3, vec2<u32>(18390u, arg_2.c), vec4<bool>(arg_1, arg_2.a.a.x, arg_1, arg_3.x), arg_2.a.d), 585f, arg_2.a.d.x, -2147483647i), -1406f, Struct_2(Struct_1(vec3<bool>(false, arg_1, arg_2.a.c.x), arg_2.a.d.yz, arg_2.a.c, arg_2.a.d), -418f, 45799u, 1i), arg_2.a), vec3<f32>(arg_2.b, -1863f, arg_2.b))), arg_2.a.b, select(arg_2.a.c, vec4<bool>(false, true, false, true), select(arg_2.a.c, vec4<bool>(arg_2.a.a.x, arg_1, arg_1, true), arg_3.x)), vec3<u32>(_wgslsmith_clamp_u32(22700u, 69384u, arg_2.a.d.x), 9681u, global0[_wgslsmith_index_u32(arg_2.c, 13u)])), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f)), Struct_2(Struct_1(arg_2.a.c.xzx, arg_2.a.d.yz, select(vec4<bool>(arg_2.a.a.x, arg_1, true, false), vec4<bool>(arg_2.a.c.x, arg_2.a.c.x, false, arg_2.a.c.x), false), vec3<u32>(4294967295u, arg_0, 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3174f), _wgslsmith_f_op_f32(-arg_2.b)), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b, 268f, arg_2.b), vec3<f32>(-631f, -1036f, 1000f), true)), arg_2.a, var_1.x), ~(~var_2)), arg_2.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, arg_2.b, arg_2.b, -2164f) + vec4<f32>(594f, 928f, arg_2.b, arg_2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1711f, 1390f, 168f, arg_2.b) * vec4<f32>(1000f, arg_2.b, -2512f, 679f))))))));
    let var_4 = Struct_1(vec3<bool>(arg_2.a.c.x, arg_3.x, arg_3.x), firstLeadingBit(arg_2.a.b), select(vec4<bool>(true, false, select(true, arg_1 == arg_3.x, -14201i < arg_2.d), true), arg_2.a.c, vec4<bool>(!arg_1 | any(vec2<bool>(true, arg_2.a.c.x)), false, arg_2.a.a.x, arg_2.a.c.x)), firstLeadingBit(arg_2.a.d));
    return arg_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(min(1f, -363f));
    return Struct_1(arg_0.a, ~(arg_2.zz ^ _wgslsmith_div_vec2_u32(arg_0.d.zz, var_1.d.zx)), vec4<bool>(68580u <= var_1.b.x, true, -2356f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1063f - 1105f), 1000f)), !(arg_0.a.x && false) || true), var_1.d ^ ~vec3<u32>(_wgslsmith_mult_u32(28261u, var_1.b.x), 10097u, ~14576u));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> StorageBuffer {
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    let var_0 = (select(vec4<u32>(~arg_3, ~1u, arg_3, _wgslsmith_mod_u32(arg_2.a.d.x, arg_0.d.x)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(15070u, 13u)], 0u, 32539u, global0[_wgslsmith_index_u32(1u, 13u)]), vec4<u32>(4294967295u, 60844u, 0u, global0[_wgslsmith_index_u32(0u, 13u)]))), arg_0.a.x) | ~(~reverseBits(vec4<u32>(arg_0.d.x, global0[_wgslsmith_index_u32(54875u, 13u)], 36381u, 4294967295u)))) ^ (vec4<u32>(~_wgslsmith_mod_u32(0u, arg_2.a.b.x), ~4294967295u, firstTrailingBit(arg_2.a.d.x), arg_0.b.x) >> (vec4<u32>(_wgslsmith_mod_u32(min(20559u, 52729u), 1u), arg_3, _wgslsmith_div_u32(0u & arg_0.d.x, 4294967295u), 79023u) % vec4<u32>(32u)));
    global1 = array<Struct_3, 9>();
    let var_1 = func_5(func_5(arg_2.a, func_1(11299u ^ ~arg_2.c, true, arg_2, vec3<bool>(any(vec4<bool>(arg_2.a.a.x, false, true, arg_1.x)), true, -7885i != u_input.a)).c, ~var_0), !arg_1, var_0);
    return StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.d, arg_2.d) ^ (vec2<i32>(arg_2.d, arg_2.d) & vec2<i32>(u_input.a, -33543i)), vec2<i32>(-1i) * -vec2<i32>(46482i, -2147483647i)), vec2<i32>(_wgslsmith_div_i32(min(u_input.a, u_input.a), -1i), (i32(-1i) * -69123i) >> (~arg_0.d.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)), -105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(793f))))), i32(-1i) * -15536i, -(~select(vec4<i32>(u_input.a, -35321i, u_input.a, -34545i), vec4<i32>(u_input.a, u_input.a, u_input.a, -3269i), false) & _wgslsmith_mult_vec4_i32(-vec4<i32>(54000i, -2147483647i, arg_2.d, u_input.a), ~vec4<i32>(1327i, arg_2.d, arg_2.d, arg_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), false));
    var var_1 = _wgslsmith_f_op_f32(-1116f - _wgslsmith_div_f32(-1535f, 746f));
    var var_2 = 4294967295u;
    var var_3 = false;
    global0 = array<u32, 13>();
    let var_4 = ~vec3<i32>((u_input.a | 2147483647i) >> (112700u % 32u), -(_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a) | -u_input.a), ~u_input.a);
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~113873u, ~global0[_wgslsmith_index_u32(75715u, 13u)]), 13u)], _wgslsmith_clamp_u32(4294967295u | global0[_wgslsmith_index_u32(30996u, 13u)], 7221u, 1u)), 9u)];
    var var_6 = ~((countOneBits(_wgslsmith_sub_u32(4294967295u, 0u)) ^ (reverseBits(1u) | global0[_wgslsmith_index_u32(var_5.b.c, 13u)])) & ~firstTrailingBit(~var_5.a.b.x));
    let x = u_input.a;
    s_output = func_6(func_5(func_1(_wgslsmith_add_u32(_wgslsmith_add_u32(48600u, 31714u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_5.e.b.x, global0[_wgslsmith_index_u32(var_5.e.b.x, 13u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<u32>(62565u, 7787u, 1u, 22947u))), var_5.e.c.x, Struct_2(var_5.e, _wgslsmith_f_op_f32(f32(-1f) * -208f), firstLeadingBit(0u), u_input.a), select(!var_0.zwy, !var_0.ywz, var_0.xzw)), !(!(!vec4<bool>(var_5.a.a.x, true, false, true))), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 13u)], 53987u, 35516u)), ~reverseBits(vec4<u32>(4294967295u, 10215u, var_5.b.c, global0[_wgslsmith_index_u32(50521u, 13u)])))), !vec4<bool>(all(var_0.yy) == var_0.x, func_1(var_5.b.c, false, Struct_2(Struct_1(vec3<bool>(false, var_0.x, var_5.a.a.x), vec2<u32>(4524u, 4294967295u), vec4<bool>(false, false, var_0.x, var_0.x), var_5.b.a.d), 1000f, var_5.e.d.x, var_4.x), var_0.yxz).c.x, var_0.x, var_5.b.a.c.x), var_5.d, ~_wgslsmith_dot_vec2_u32(~var_5.d.a.b, ~(~vec2<u32>(0u, var_5.d.a.b.x))));
}

