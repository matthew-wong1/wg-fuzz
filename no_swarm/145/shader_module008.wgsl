struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(-41535i, Struct_2(Struct_1(vec2<u32>(4294967295u, 23574u), 7601u, false, 64084u), Struct_1(vec2<u32>(4294967295u, 12833u), 24196u, true, 850u), 47022u), Struct_2(Struct_1(vec2<u32>(0u, 0u), 63524u, false, 9667u), Struct_1(vec2<u32>(21355u, 4294967295u), 4294967295u, true, 4294967295u), 0u)), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec2<u32>(45282u, 20777u), 14399u, false, 0u), Struct_1(vec2<u32>(44702u, 0u), 6704u, true, 0u), 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 11675u), 0u, true, 37962u), Struct_1(vec2<u32>(518u, 94207u), 0u, true, 63615u), 4294967295u)), Struct_3(0i, Struct_2(Struct_1(vec2<u32>(23307u, 1u), 25595u, false, 26534u), Struct_1(vec2<u32>(35889u, 32612u), 1828u, true, 63508u), 42514u), Struct_2(Struct_1(vec2<u32>(0u, 20872u), 0u, false, 0u), Struct_1(vec2<u32>(0u, 20713u), 106448u, false, 85923u), 1u)), Struct_3(-1i, Struct_2(Struct_1(vec2<u32>(34877u, 27359u), 53403u, false, 0u), Struct_1(vec2<u32>(2342u, 107391u), 4294967295u, true, 9409u), 1u), Struct_2(Struct_1(vec2<u32>(52450u, 59572u), 4294967295u, false, 5085u), Struct_1(vec2<u32>(26459u, 4048u), 26110u, true, 48185u), 4294967295u)), Struct_3(40724i, Struct_2(Struct_1(vec2<u32>(77283u, 1u), 38679u, true, 4294967295u), Struct_1(vec2<u32>(4294967295u, 34220u), 0u, true, 27552u), 39002u), Struct_2(Struct_1(vec2<u32>(2432u, 4294967295u), 1u, false, 39688u), Struct_1(vec2<u32>(2649u, 0u), 28466u, true, 14927u), 36405u)), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec2<u32>(4294967295u, 10177u), 1u, true, 39819u), Struct_1(vec2<u32>(61152u, 4294967295u), 4294967295u, true, 0u), 1u), Struct_2(Struct_1(vec2<u32>(1u, 0u), 1u, true, 0u), Struct_1(vec2<u32>(4294967295u, 60281u), 4294967295u, false, 0u), 4294967295u)), Struct_3(-18362i, Struct_2(Struct_1(vec2<u32>(216u, 58483u), 27440u, false, 1137u), Struct_1(vec2<u32>(4294967295u, 27187u), 1u, true, 0u), 20582u), Struct_2(Struct_1(vec2<u32>(27651u, 1u), 1u, false, 0u), Struct_1(vec2<u32>(0u, 0u), 103787u, true, 0u), 61973u)), Struct_3(1i, Struct_2(Struct_1(vec2<u32>(4294967295u, 8376u), 42368u, true, 1u), Struct_1(vec2<u32>(9067u, 12838u), 0u, true, 2371u), 1u), Struct_2(Struct_1(vec2<u32>(11818u, 27000u), 4294967295u, false, 88609u), Struct_1(vec2<u32>(84539u, 0u), 10631u, true, 83069u), 0u)), Struct_3(0i, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, true, 42717u), Struct_1(vec2<u32>(1u, 0u), 51807u, false, 4294967295u), 4294967295u), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 41282u, true, 30305u), Struct_1(vec2<u32>(1u, 33599u), 3994u, false, 25048u), 1u)), Struct_3(-6023i, Struct_2(Struct_1(vec2<u32>(11672u, 4294967295u), 82535u, false, 4294967295u), Struct_1(vec2<u32>(31480u, 1u), 0u, true, 0u), 37881u), Struct_2(Struct_1(vec2<u32>(6155u, 18759u), 1u, true, 4411u), Struct_1(vec2<u32>(0u, 1u), 1u, false, 0u), 0u)), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec2<u32>(30347u, 1u), 4294967295u, true, 4294967295u), Struct_1(vec2<u32>(41003u, 24460u), 128221u, false, 1u), 1u), Struct_2(Struct_1(vec2<u32>(86659u, 1u), 77345u, true, 47609u), Struct_1(vec2<u32>(0u, 1u), 16724u, false, 57790u), 1u)), Struct_3(1i, Struct_2(Struct_1(vec2<u32>(1u, 0u), 0u, false, 16081u), Struct_1(vec2<u32>(22281u, 8691u), 3269u, true, 34346u), 0u), Struct_2(Struct_1(vec2<u32>(26696u, 1u), 77845u, true, 28830u), Struct_1(vec2<u32>(0u, 0u), 7936u, true, 54680u), 84727u)));

var<private> global2: i32;

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(arg_0.b.a, ~17179u, abs(firstTrailingBit(u_input.a)) >= u_input.a, ~arg_1.b.c), Struct_1(reverseBits(~(~vec2<u32>(17442u, 39213u))), ~19310u, true, _wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.a.x, arg_0.a.b, arg_0.c), vec3<u32>(arg_0.a.b, arg_0.a.d, u_input.a)), ~vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<bool>(arg_1.b.a.c, true, arg_0.b.c)), _wgslsmith_add_vec3_u32(vec3<u32>(8623u, arg_0.c, arg_0.c), vec3<u32>(arg_1.c.b.d, 74936u, 4294967295u) >> (vec3<u32>(4294967295u, u_input.a, arg_1.b.c) % vec3<u32>(32u))))), 0u);
    var var_1 = arg_0;
    let var_2 = vec4<f32>(934f, 1000f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(-424f + -979f)) * _wgslsmith_div_f32(-1349f, _wgslsmith_f_op_f32(f32(-1f) * -1382f))));
    global2 = -2147483647i;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32((~24494u >> (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u)) & (~var_1.c ^ 1901u), ~(~_wgslsmith_mod_u32(var_1.c, u_input.a))), ~(~4294967295u)), 12u)];
    return global3[_wgslsmith_index_u32(~4294967295u, 23u)];
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_5, arg_3: vec4<u32>) -> bool {
    global1 = array<Struct_3, 12>();
    global3 = array<Struct_2, 23>();
    let var_0 = max(global0.a.x, -reverseBits(-13992i)) <= (u_input.b.x & global0.a.x);
    var var_1 = Struct_5(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(arg_2.a), max(arg_2.a, vec2<i32>(-1i, 2147483647i)), firstTrailingBit(global0.a)) >> (firstLeadingBit(vec2<u32>(4294967295u, arg_3.x)) % vec2<u32>(32u)), ~(-vec2<i32>(5964i, 24942i)) ^ ~vec2<i32>(global0.a.x, global0.a.x), _wgslsmith_mult_vec2_i32(select(-vec2<i32>(global0.a.x, u_input.c), vec2<i32>(-1i, global0.a.x), !vec2<bool>(false, arg_0.b.c)), vec2<i32>(i32(-1i) * -1i, -arg_2.a.x))));
    var var_2 = 0i;
    return true;
}

fn func_1() -> bool {
    global0 = Struct_5(countOneBits(~global0.a | abs(vec2<i32>(global0.a.x, -19637i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    let var_0 = true | func_3(func_2(global3[_wgslsmith_index_u32(max(u_input.a, 48307u), 23u)], global1[_wgslsmith_index_u32(firstLeadingBit(26511u), 12u)]), 283u, Struct_5(_wgslsmith_add_vec2_i32(vec2<i32>(33855i, u_input.c), global0.a) & vec2<i32>(-14638i, 2147483647i)), vec4<u32>(u_input.a, 64571u, 0u, u_input.a));
    let var_1 = _wgslsmith_mod_i32(~select(_wgslsmith_sub_i32(global0.a.x | -1i, -u_input.b.x), global0.a.x, var_0 & all(vec2<bool>(var_0, true))), -4435i);
    global0 = Struct_5(min(u_input.b, u_input.b ^ u_input.b));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true && (any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))) | func_1()), 1f > _wgslsmith_f_op_f32(ceil(-1000f)), true, all(select(vec2<bool>(5038u <= u_input.a, true), vec2<bool>(true, true), true)));
    var var_1 = all(!vec3<bool>(!var_0.x, var_0.x, all(var_0.wz)));
    let var_2 = func_2(Struct_2(Struct_1(_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 50775u)), u_input.a, select(all(vec4<bool>(true, var_0.x, true, var_0.x)), false, var_0.x), ~(~1u)), func_2(global3[_wgslsmith_index_u32(abs(~u_input.a), 23u)], Struct_3(global0.a.x, global3[_wgslsmith_index_u32(abs(u_input.a), 23u)], Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), 4294967295u, var_0.x, 1u), Struct_1(vec2<u32>(43780u, u_input.a), u_input.a, false, 12286u), 0u))).a, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 4294967295u, 17833u, u_input.a), ~vec4<u32>(u_input.a, 54502u, 14784u, u_input.a)) & vec4<u32>(min(0u, u_input.a), 43222u, _wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_add_u32(1u, 75044u)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 3936u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 38462u)) >> (abs(vec4<u32>(45185u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 38436u), vec3<u32>(0u, 7255u, 1u)), firstTrailingBit(24371u), 111268u))), 12u)]).b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1500f) + 129f), !all(var_0.zxy) & true)));
    global2 = 0i;
    global2 = 4650i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, var_3)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, 1025f))), vec2<f32>(-1110f, var_3), var_2.c))));
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -124511i), vec3<i32>(0i, global0.a.x, 32550i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(301f)) * -1958f), -1943f)), _wgslsmith_dot_vec2_u32(var_2.a, var_2.a), _wgslsmith_f_op_vec2_f32(sign(var_4)));
}

