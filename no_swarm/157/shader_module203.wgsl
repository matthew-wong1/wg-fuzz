struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(false, vec4<i32>(-1i, 40410i, -629i, i32(-2147483648))), Struct_1(false, vec4<i32>(-44587i, 0i, 20233i, i32(-2147483648))), vec3<u32>(68741u, 30969u, 4294967295u), vec2<bool>(false, false)), Struct_2(vec3<u32>(0u, 31062u, 31663u), Struct_1(false, vec4<i32>(2147483647i, i32(-2147483648), 25849i, -5946i)), Struct_1(true, vec4<i32>(1i, 14314i, 2147483647i, -25117i)), vec3<u32>(11462u, 114030u, 20845u), vec2<bool>(true, false)), Struct_2(vec3<u32>(0u, 3300u, 0u), Struct_1(false, vec4<i32>(i32(-2147483648), -1i, 0i, i32(-2147483648))), Struct_1(false, vec4<i32>(-40675i, -8071i, -6414i, -36194i)), vec3<u32>(26831u, 1u, 4294967295u), vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 4038u, 1u), Struct_1(false, vec4<i32>(8984i, -27045i, i32(-2147483648), 22163i)), Struct_1(false, vec4<i32>(1i, -56262i, 33057i, -43066i)), vec3<u32>(4698u, 40115u, 0u), vec2<bool>(true, false)), Struct_2(vec3<u32>(19441u, 1u, 91360u), Struct_1(true, vec4<i32>(1i, 1i, 25462i, -3172i)), Struct_1(false, vec4<i32>(9554i, -26375i, 2147483647i, 1i)), vec3<u32>(4220u, 4294967295u, 13283u), vec2<bool>(false, true)), Struct_2(vec3<u32>(1u, 65296u, 1u), Struct_1(false, vec4<i32>(1i, -24251i, -1i, -1i)), Struct_1(true, vec4<i32>(2147483647i, 25807i, i32(-2147483648), -1i)), vec3<u32>(60610u, 1u, 4294967295u), vec2<bool>(false, true)), Struct_2(vec3<u32>(13712u, 4294967295u, 54929u), Struct_1(false, vec4<i32>(41043i, 0i, 10852i, 1i)), Struct_1(false, vec4<i32>(-45192i, 1i, 0i, 32407i)), vec3<u32>(6928u, 14091u, 1u), vec2<bool>(true, false)), Struct_2(vec3<u32>(1u, 4294967295u, 11492u), Struct_1(true, vec4<i32>(-24417i, 2732i, 2147483647i, i32(-2147483648))), Struct_1(false, vec4<i32>(2830i, -15505i, i32(-2147483648), -1i)), vec3<u32>(1u, 4294967295u, 50221u), vec2<bool>(true, true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(false, vec4<i32>(i32(-2147483648), 37719i, i32(-2147483648), 0i)), Struct_1(true, vec4<i32>(22953i, -1i, -1i, -1i)), vec3<u32>(66379u, 0u, 26531u), vec2<bool>(false, false)), Struct_2(vec3<u32>(11189u, 4294967295u, 26220u), Struct_1(false, vec4<i32>(-61425i, 1i, -50670i, -36019i)), Struct_1(true, vec4<i32>(-58562i, 1i, -26033i, i32(-2147483648))), vec3<u32>(28602u, 1u, 59196u), vec2<bool>(true, false)), Struct_2(vec3<u32>(36428u, 91744u, 1335u), Struct_1(false, vec4<i32>(2147483647i, 13171i, 2147483647i, 42107i)), Struct_1(true, vec4<i32>(-6908i, 0i, -42832i, 20828i)), vec3<u32>(37965u, 1u, 44398u), vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(true, vec4<i32>(-5627i, 2147483647i, 1i, -6049i)), Struct_1(true, vec4<i32>(0i, 1i, 0i, 2147483647i)), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<bool>(true, false)), Struct_2(vec3<u32>(66375u, 4294967295u, 4294967295u), Struct_1(false, vec4<i32>(-43046i, i32(-2147483648), -23840i, 7863i)), Struct_1(false, vec4<i32>(2147483647i, 1i, 29477i, -1i)), vec3<u32>(1u, 15344u, 9936u), vec2<bool>(true, false)), Struct_2(vec3<u32>(0u, 1u, 5139u), Struct_1(false, vec4<i32>(18362i, 2147483647i, -19839i, -1i)), Struct_1(true, vec4<i32>(i32(-2147483648), 36302i, -3000i, 0i)), vec3<u32>(36900u, 19328u, 0u), vec2<bool>(false, true)), Struct_2(vec3<u32>(18235u, 0u, 0u), Struct_1(false, vec4<i32>(5204i, 27236i, -49827i, i32(-2147483648))), Struct_1(false, vec4<i32>(i32(-2147483648), -11510i, 2147483647i, 0i)), vec3<u32>(0u, 22632u, 28802u), vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 0u, 1u), Struct_1(true, vec4<i32>(i32(-2147483648), -24087i, 1i, -1i)), Struct_1(false, vec4<i32>(1i, -32116i, 60144i, 0i)), vec3<u32>(0u, 67077u, 4294967295u), vec2<bool>(true, false)), Struct_2(vec3<u32>(4294967295u, 56037u, 11987u), Struct_1(true, vec4<i32>(4911i, 26976i, -5075i, 13371i)), Struct_1(false, vec4<i32>(-26681i, -16044i, 2147483647i, -10977i)), vec3<u32>(64107u, 124336u, 75454u), vec2<bool>(true, true)), Struct_2(vec3<u32>(1u, 29697u, 12412u), Struct_1(true, vec4<i32>(8674i, 36054i, -38865i, -7625i)), Struct_1(false, vec4<i32>(-1i, 1i, 1i, 17268i)), vec3<u32>(1u, 1u, 1u), vec2<bool>(false, true)), Struct_2(vec3<u32>(3519u, 0u, 11366u), Struct_1(false, vec4<i32>(0i, 1i, -3184i, -1i)), Struct_1(false, vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i)), vec3<u32>(4294967295u, 37282u, 13876u), vec2<bool>(false, true)), Struct_2(vec3<u32>(1u, 71509u, 84077u), Struct_1(false, vec4<i32>(26220i, -13007i, 41915i, -21057i)), Struct_1(true, vec4<i32>(-54066i, 0i, 11372i, -1720i)), vec3<u32>(20101u, 4294967295u, 35093u), vec2<bool>(false, true)), Struct_2(vec3<u32>(0u, 0u, 0u), Struct_1(false, vec4<i32>(-1i, 1i, 28422i, -44661i)), Struct_1(false, vec4<i32>(2147483647i, -53187i, -18268i, 22485i)), vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(true, false)), Struct_2(vec3<u32>(49572u, 0u, 17647u), Struct_1(true, vec4<i32>(i32(-2147483648), 25651i, 2147483647i, 0i)), Struct_1(false, vec4<i32>(-38023i, 2147483647i, 2147483647i, -15004i)), vec3<u32>(7397u, 11394u, 4294967295u), vec2<bool>(false, false)), Struct_2(vec3<u32>(41146u, 4336u, 1u), Struct_1(true, vec4<i32>(20724i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(true, vec4<i32>(0i, -29661i, 1i, 1i)), vec3<u32>(91395u, 0u, 19854u), vec2<bool>(false, false)), Struct_2(vec3<u32>(12884u, 113345u, 4294967295u), Struct_1(true, vec4<i32>(-2628i, -1i, -2707i, -1i)), Struct_1(false, vec4<i32>(i32(-2147483648), 1i, -17848i, -43638i)), vec3<u32>(17679u, 34202u, 855u), vec2<bool>(false, false)), Struct_2(vec3<u32>(31499u, 60479u, 1u), Struct_1(false, vec4<i32>(2147483647i, 23580i, i32(-2147483648), 1i)), Struct_1(false, vec4<i32>(1i, 0i, i32(-2147483648), -1i)), vec3<u32>(4294967295u, 13428u, 16800u), vec2<bool>(true, true)), Struct_2(vec3<u32>(0u, 15943u, 0u), Struct_1(false, vec4<i32>(i32(-2147483648), 25365i, 2147483647i, -488i)), Struct_1(true, vec4<i32>(1i, -1i, 1i, 5924i)), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<bool>(false, true)));

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 2754i, 1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> vec4<bool> {
    global0 = array<Struct_2, 26>();
    var var_0 = arg_1.b;
    var var_1 = Struct_4(_wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(countOneBits(~4294967295u), ~countOneBits(u_input.a), u_input.a)), Struct_2(var_0.a, Struct_1(all(select(vec3<bool>(arg_2.e.x, false, arg_1.b.c.a), vec3<bool>(false, true, false), vec3<bool>(false, arg_2.b.a, false))), ~firstLeadingBit(arg_1.b.c.b)), Struct_1(true, var_0.b.b & var_0.b.b), _wgslsmith_sub_vec3_u32(var_0.d, vec3<u32>(arg_1.b.d.x ^ 11817u, var_0.d.x, u_input.a)), arg_1.b.e), arg_1.b.b.b ^ vec4<i32>(-23089i, -var_0.c.b.x, ~arg_3.a, _wgslsmith_div_i32(arg_1.b.c.b.x, -34830i) >> (_wgslsmith_mod_u32(10456u, 67708u) % 32u)));
    return select(!vec4<bool>(true, false, false, !arg_1.b.b.a), vec4<bool>(false, all(select(vec4<bool>(arg_0.x, arg_2.b.a, arg_1.b.b.a, false), select(vec4<bool>(false, var_1.b.c.a, var_0.c.a, arg_2.b.a), vec4<bool>(true, var_0.b.a, arg_1.b.b.a, arg_2.e.x), vec4<bool>(var_1.b.b.a, arg_1.b.e.x, var_1.b.b.a, arg_1.b.c.a)), select(vec4<bool>(var_0.b.a, arg_1.b.c.a, false, true), vec4<bool>(var_1.b.e.x, false, true, arg_0.x), true))), (_wgslsmith_dot_vec3_u32(arg_2.d, arg_2.a) >= ~var_1.a) != (_wgslsmith_f_op_f32(sign(248f)) >= 840f), select(var_1.b.c.a, false, !arg_0.x)), all(select(!(!vec4<bool>(true, arg_1.b.c.a, var_1.b.c.a, false)), select(select(vec4<bool>(false, false, arg_1.b.c.a, arg_0.x), vec4<bool>(false, var_1.b.e.x, false, arg_2.c.a), arg_1.b.e.x), !vec4<bool>(true, var_0.b.a, false, false), !vec4<bool>(true, true, arg_2.c.a, false)), true)));
}

fn func_2() -> u32 {
    var var_0 = !(!vec3<bool>(false, false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))));
    var_0 = select(vec3<bool>(true, var_0.x, !any(vec3<bool>(var_0.x, var_0.x, false))), !select(vec3<bool>(all(vec2<bool>(var_0.x, true)), !var_0.x, true), vec3<bool>(var_0.x | true, true, true), false), var_0.x);
    global0 = array<Struct_2, 26>();
    var_0 = vec3<bool>(true, var_0.x, select(global1.x > _wgslsmith_mult_i32(2147483647i, global1.x), all(vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(vec4<bool>(false, var_0.x, false, false)), true, !var_0.x)), all(func_3(select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), Struct_4(83948u, global0[_wgslsmith_index_u32(u_input.a, 26u)], vec4<i32>(global1.x, -2147483647i, global1.x, 29016i)), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(var_0.x, vec4<i32>(global1.x, global1.x, global1.x, global1.x)), Struct_1(var_0.x, vec4<i32>(-11298i, 2147483647i, global1.x, global1.x)), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.zy), Struct_3(-1i)))));
    let var_1 = func_3(vec3<bool>(true, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1579f)))) == 1080f), Struct_4(u_input.a | ~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~20869u, u_input.a), 26u)], reverseBits(vec4<i32>(~global1.x, global1.x, i32(-1i) * -41071i, -42807i))), global0[_wgslsmith_index_u32(~0u, 26u)], Struct_3(global1.x)).yyz;
    return ~0u;
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, abs(countOneBits(global1.x)), global1.x), global1.zwx) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, -33170i), vec3<i32>(2120i, abs(-global1.x), firstTrailingBit(global1.x) | global1.x));
    global0 = array<Struct_2, 26>();
    return Struct_2(arg_0.yxx, Struct_1(false, max(~vec4<i32>(0i, 17290i, 60678i, 25549i), -(vec4<i32>(global1.x, 19459i, var_0.x, 0i) >> (vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x) % vec4<u32>(32u))))), Struct_1(true, abs((vec4<i32>(-2147483647i, global1.x, global1.x, -10918i) | vec4<i32>(55094i, 0i, global1.x, global1.x)) | vec4<i32>(2147483647i, -2147483647i, 6372i, 21440i))), arg_0.xwy, select(!func_3(vec3<bool>(true, true, true), Struct_4(1u, Struct_2(vec3<u32>(0u, u_input.a, 1u), Struct_1(true, vec4<i32>(-2147483647i, 5495i, global1.x, var_0.x)), Struct_1(false, vec4<i32>(-2147483647i, global1.x, -1i, var_0.x)), arg_0.zxy, vec2<bool>(false, true)), vec4<i32>(global1.x, var_0.x, var_0.x, 0i)), global0[_wgslsmith_index_u32(~u_input.a, 26u)], Struct_3(global1.x)).xw, func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec4<bool>(false, false, true, true))), Struct_4(abs(u_input.a), Struct_2(vec3<u32>(u_input.a, u_input.a, 229u), Struct_1(false, vec4<i32>(var_0.x, -17029i, var_0.x, var_0.x)), Struct_1(true, vec4<i32>(global1.x, -2147483647i, global1.x, -34210i)), arg_0.wwx, vec2<bool>(false, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, 0i, var_0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, 69587i))), Struct_2(~vec3<u32>(u_input.a, 1u, 13152u), Struct_1(false, vec4<i32>(-69768i, -2147483647i, 0i, 14355i)), Struct_1(true, vec4<i32>(-5555i, global1.x, 1i, global1.x)), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec2<bool>(true, true)), Struct_3(min(-2147483647i, -1i))).xy, true));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: u32) -> bool {
    let var_0 = func_4(~vec4<u32>(~71951u ^ u_input.a, _wgslsmith_clamp_u32(~4294967295u, ~0u, min(26540u, 0u)), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_3, u_input.a), vec3<u32>(arg_3, arg_2.b.x, arg_2.a.x)) & max(0u, 12194u)));
    let var_1 = func_2();
    global0 = array<Struct_2, 26>();
    let var_2 = Struct_3(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_1.zz), global1.ww | vec2<i32>(arg_1.x, -2147483647i)) ^ reverseBits(abs(global1.x)));
    global0 = array<Struct_2, 26>();
    return true;
}

fn func_5(arg_0: bool) -> vec2<f32> {
    global1 = vec4<i32>(i32(-1i) * -reverseBits(_wgslsmith_mult_i32(27341i, global1.x)), global1.x, ~_wgslsmith_div_i32(~global1.x, firstLeadingBit(64911i >> (u_input.a % 32u))), countOneBits(_wgslsmith_div_i32(global1.x, abs(-24444i))) << (_wgslsmith_mult_u32(u_input.a, ~u_input.a) % 32u));
    var var_0 = Struct_3(global1.x);
    global0 = array<Struct_2, 26>();
    global1 = -(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global1.xxz, vec3<i32>(var_0.a, global1.x, var_0.a)), select(global1.yxy, global1.www, vec3<bool>(arg_0, arg_0, false))), -61134i, select(global1.x | var_0.a, global1.x, arg_0), reverseBits(global1.x << (u_input.a % 32u))) | vec4<i32>(global1.x, -2147483647i, global1.x, 0i));
    global1 = ~abs(-(vec4<i32>(-1i) * -vec4<i32>(-17529i, global1.x, -2063i, global1.x)));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -1552f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1198f, -434f) + vec2<f32>(112f, 514f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-609f, -890f)))))) - vec2<f32>(-409f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-916f, -1421f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(-25472i, global1.x, global1.x, 1i);
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(~vec4<i32>(global1.x, 2147483647i, -33739i, -1i), -vec4<i32>(-1i, 0i, -1145i, global1.x), Struct_5(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), false), u_input.a))))));
    var var_1 = _wgslsmith_sub_vec2_i32(global1.wz, -(~_wgslsmith_mod_vec2_i32(~vec2<i32>(global1.x, 17400i), vec2<i32>(global1.x, 2147483647i))));
    var var_2 = Struct_5(select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), countOneBits(vec4<u32>(1u, u_input.a, 112917u, 4294967295u))), firstLeadingBit(~abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), true), _wgslsmith_mod_vec3_u32(reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 21392u, u_input.a), vec3<u32>(22610u, u_input.a, 533u))), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 0u)))), true);
    global0 = array<Struct_2, 26>();
    var_2 = Struct_5(~((vec4<u32>(var_2.a.x, 4294967295u, u_input.a, u_input.a) << (max(var_2.a, vec4<u32>(u_input.a, 80399u, 25507u, 0u)) % vec4<u32>(32u))) & vec4<u32>(1u, var_2.a.x, ~14226u, firstTrailingBit(26956u))), ~vec3<u32>(~var_2.b.x, _wgslsmith_mult_u32(var_2.a.x, 31685u) >> ((var_2.a.x & var_2.a.x) % 32u), _wgslsmith_mod_u32(var_2.b.x << (var_2.a.x % 32u), ~53963u)), true);
    var_1 = select(max(-vec2<i32>(var_1.x, max(global1.x, var_1.x)), global1.xw), global1.zw, func_4(vec4<u32>(_wgslsmith_mod_u32(var_2.b.x, 1u), ~u_input.a, 0u, u_input.a) | var_2.a).b.a);
    var_2 = Struct_5(vec4<u32>(_wgslsmith_mult_u32(~firstTrailingBit(u_input.a), firstLeadingBit(~4294967295u)), ~(~21886u), ~countOneBits(4271u) << (func_2() % 32u), _wgslsmith_add_u32(firstTrailingBit(17806u), 4294967295u)), ~select(vec3<u32>(0u, 0u, ~var_2.a.x), vec3<u32>(~var_2.b.x, u_input.a << (var_2.a.x % 32u), var_2.b.x), var_2.c), var_2.b.x != firstLeadingBit(min(u_input.a, _wgslsmith_sub_u32(var_2.b.x, 0u))));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, select(countOneBits(firstLeadingBit(vec2<i32>(global1.x, 1i))), vec2<i32>(~(-1i), 1i), !(!(!vec2<bool>(var_2.c, var_2.c)))));
}

