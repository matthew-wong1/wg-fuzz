struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(true, vec2<i32>(21013i, -66893i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false, 32546u, 1u, 0u), vec4<u32>(37524u, 4294967295u, 16605u, 1u)), Struct_4(true, vec2<i32>(-1i, 1i), Struct_1(vec2<i32>(2147483647i, -12231i), false, 74906u, 4294967295u, 51967u), vec4<u32>(4294967295u, 4294967295u, 11083u, 1u)), Struct_4(false, vec2<i32>(-3602i, 17119i), Struct_1(vec2<i32>(-28722i, 0i), true, 1u, 15209u, 0u), vec4<u32>(27304u, 4294967295u, 47446u, 126186u)), Struct_4(false, vec2<i32>(0i, i32(-2147483648)), Struct_1(vec2<i32>(1i, 84532i), true, 1u, 46693u, 4294967295u), vec4<u32>(0u, 34071u, 51760u, 79661u)), Struct_4(true, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec2<i32>(0i, 20793i), false, 1211u, 4294967295u, 10310u), vec4<u32>(1u, 7824u, 1u, 0u)), Struct_4(true, vec2<i32>(10117i, 2147483647i), Struct_1(vec2<i32>(0i, 16397i), false, 7114u, 30881u, 0u), vec4<u32>(11295u, 66133u, 41060u, 4294967295u)), Struct_4(true, vec2<i32>(1i, -18344i), Struct_1(vec2<i32>(-63418i, -1i), true, 1u, 0u, 49730u), vec4<u32>(4294967295u, 65287u, 0u, 37379u)), Struct_4(false, vec2<i32>(1i, -1i), Struct_1(vec2<i32>(1i, 1i), false, 0u, 20913u, 14240u), vec4<u32>(0u, 1u, 49262u, 33421u)), Struct_4(true, vec2<i32>(-6865i, 22052i), Struct_1(vec2<i32>(-1i, 1i), true, 0u, 25474u, 4294967295u), vec4<u32>(4294967295u, 22823u, 4294967295u, 0u)), Struct_4(true, vec2<i32>(-41001i, 78198i), Struct_1(vec2<i32>(i32(-2147483648), -32413i), false, 4294967295u, 48014u, 1u), vec4<u32>(26796u, 35796u, 14071u, 113090u)), Struct_4(true, vec2<i32>(1i, 30593i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false, 1105u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 9811u, 77568u)), Struct_4(false, vec2<i32>(-19204i, -1i), Struct_1(vec2<i32>(-35605i, 2147483647i), false, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 0u, 1u)), Struct_4(false, vec2<i32>(-1i, 23474i), Struct_1(vec2<i32>(32162i, 4751i), true, 0u, 6750u, 38961u), vec4<u32>(1u, 10477u, 3331u, 66056u)), Struct_4(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<i32>(1i, -48423i), false, 4294967295u, 0u, 1u), vec4<u32>(13256u, 14683u, 35974u, 28979u)), Struct_4(true, vec2<i32>(1i, i32(-2147483648)), Struct_1(vec2<i32>(1i, 4877i), false, 37654u, 1u, 1u), vec4<u32>(4294967295u, 1u, 51941u, 0u)), Struct_4(false, vec2<i32>(9056i, -1i), Struct_1(vec2<i32>(1i, 2147483647i), false, 35588u, 39412u, 1u), vec4<u32>(4294967295u, 111166u, 1u, 0u)), Struct_4(false, vec2<i32>(0i, -1i), Struct_1(vec2<i32>(-1i, 0i), false, 0u, 0u, 35196u), vec4<u32>(1u, 0u, 17373u, 28838u)), Struct_4(false, vec2<i32>(1i, 0i), Struct_1(vec2<i32>(0i, 1i), false, 32500u, 137u, 4294967295u), vec4<u32>(0u, 45429u, 0u, 0u)), Struct_4(false, vec2<i32>(-1i, -22472i), Struct_1(vec2<i32>(33344i, -1i), true, 4294967295u, 18387u, 17286u), vec4<u32>(36776u, 4301u, 19649u, 72515u)), Struct_4(false, vec2<i32>(0i, 809i), Struct_1(vec2<i32>(i32(-2147483648), -55633i), true, 63790u, 13095u, 102059u), vec4<u32>(0u, 4294967295u, 6980u, 26512u)), Struct_4(true, vec2<i32>(0i, 47512i), Struct_1(vec2<i32>(i32(-2147483648), -2623i), true, 31336u, 4294967295u, 37874u), vec4<u32>(41280u, 0u, 0u, 4294967295u)), Struct_4(false, vec2<i32>(-1i, -9096i), Struct_1(vec2<i32>(2147483647i, 12490i), false, 1u, 11273u, 0u), vec4<u32>(0u, 1u, 0u, 51556u)), Struct_4(false, vec2<i32>(1i, -21190i), Struct_1(vec2<i32>(0i, -1i), true, 39092u, 5073u, 1u), vec4<u32>(1u, 1u, 7539u, 1u)), Struct_4(true, vec2<i32>(-32767i, i32(-2147483648)), Struct_1(vec2<i32>(-1i, -49287i), false, 33397u, 4613u, 1u), vec4<u32>(24764u, 33503u, 8496u, 0u)), Struct_4(true, vec2<i32>(0i, 1i), Struct_1(vec2<i32>(1i, -1195i), true, 0u, 4294967295u, 14521u), vec4<u32>(0u, 47341u, 4294967295u, 25u)), Struct_4(false, vec2<i32>(-20814i, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), true, 0u, 30668u, 37861u), vec4<u32>(0u, 1u, 0u, 0u)), Struct_4(false, vec2<i32>(2147483647i, 38021i), Struct_1(vec2<i32>(19908i, 30653i), false, 4558u, 1u, 9355u), vec4<u32>(45846u, 4294967295u, 56347u, 12459u)), Struct_4(true, vec2<i32>(-1i, 1i), Struct_1(vec2<i32>(13749i, 28208i), false, 35110u, 36956u, 9380u), vec4<u32>(16806u, 1u, 76365u, 78258u)), Struct_4(false, vec2<i32>(i32(-2147483648), -14509i), Struct_1(vec2<i32>(23214i, 18711i), true, 4294967295u, 0u, 1u), vec4<u32>(22725u, 35857u, 1u, 39256u)), Struct_4(false, vec2<i32>(11788i, 2147483647i), Struct_1(vec2<i32>(1i, 2147483647i), true, 83326u, 44691u, 87806u), vec4<u32>(49969u, 4294967295u, 0u, 0u)), Struct_4(false, vec2<i32>(31593i, -7330i), Struct_1(vec2<i32>(24666i, -8274i), true, 55153u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 2129u, 29185u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> vec2<i32> {
    global0 = array<i32, 29>();
    let var_0 = Struct_5(vec2<bool>(true, true), global1[_wgslsmith_index_u32((arg_2.x >> (u_input.b.x % 32u)) ^ ~_wgslsmith_div_u32(_wgslsmith_div_u32(92395u, arg_1), arg_1), 31u)], vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(vec3<bool>(true, true, true))), arg_0.x, _wgslsmith_sub_i32(-22556i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-17448i, 1i), _wgslsmith_mod_i32(1i, ~(-2147483647i)))));
    let var_1 = arg_0.xx;
    var var_2 = vec4<u32>(1u, ~select(_wgslsmith_dot_vec3_u32(abs(arg_2.wzy), ~vec3<u32>(arg_1, 19758u, 31796u)), _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(1u, 18545u, arg_1, 1u)) ^ firstTrailingBit(var_0.b.c.d), var_0.a.x), var_0.b.c.e, var_0.b.d.x);
    global0 = array<i32, 29>();
    return _wgslsmith_mod_vec2_i32(~(-u_input.a.yz | -u_input.a.xx) ^ u_input.a.zx, select(vec2<i32>(1i >> (~u_input.b.x % 32u), var_0.e), vec2<i32>(2091i, u_input.a.x), any(vec3<bool>(true, !var_0.a.x, arg_0.x <= -561f))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-1i, -405i)), vec2<i32>(u_input.a.x, -2147483647i)), !select(any(vec2<bool>(true, true)), true, true), arg_0.x, ~1u, arg_0.x);
    let var_1 = Struct_5(!select(select(select(vec2<bool>(false, true), vec2<bool>(var_0.b, true), var_0.b), vec2<bool>(var_0.b, var_0.b), !vec2<bool>(var_0.b, true)), vec2<bool>(any(vec3<bool>(false, false, true)), true), true), Struct_4(!(!(79755u != u_input.b.x)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, -571f, -1327f, 575f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, -1072f, -979f, -746f) - vec4<f32>(473f, 2170f, -1974f, -1398f))), 0u, ~(u_input.b | u_input.b), -13164i), Struct_1(var_0.a, var_0.b, var_0.d, 1u, ~(var_0.e >> (var_0.d % 32u))), ~vec4<u32>(~17736u, u_input.b.x & u_input.b.x, u_input.b.x ^ arg_0.x, _wgslsmith_clamp_u32(arg_0.x, u_input.b.x, arg_0.x))), select(vec2<bool>(all(select(vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), false)), func_3(vec4<f32>(1279f, 599f, -609f, 924f), arg_0.x, u_input.b, 2147483647i).x <= var_0.a.x), vec2<bool>(true, var_0.b), select(!(!vec2<bool>(var_0.b, false)), !select(vec2<bool>(var_0.b, false), vec2<bool>(false, true), false), true)), -933f, 29931i);
    global1 = array<Struct_4, 31>();
    let var_2 = Struct_2(var_0.a.x, Struct_1(min(firstLeadingBit(firstLeadingBit(vec2<i32>(var_0.a.x, 55015i))), u_input.a.yz), !all(!vec4<bool>(true, var_1.a.x, false, var_1.c.x)), abs(_wgslsmith_sub_u32(u_input.b.x, ~0u)), 0u, ~1u));
    global1 = array<Struct_4, 31>();
    return Struct_2(~abs(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 140f, 436f, 715f)), 82834u, var_1.b.d, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 17560i, u_input.a.x, u_input.a.x), vec4<i32>(0i, var_1.e, 0i, 0i))).x), Struct_1(var_0.a, var_0.b, var_2.b.d, 44632u, 0u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = any(vec2<bool>(true & (false || all(vec2<bool>(false, true))), false));
    global1 = array<Struct_4, 31>();
    let var_1 = Struct_4(arg_0.b.b, (u_input.a.yx | vec2<i32>(arg_0.b.a.x, abs(1i))) ^ firstLeadingBit(u_input.a.yy), func_2(_wgslsmith_add_vec2_u32(u_input.b.wy, vec2<u32>(~0u, 40975u))).b, _wgslsmith_mod_vec4_u32((select(u_input.b, vec4<u32>(60041u, arg_0.b.c, arg_0.b.c, 55172u), var_0) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c, 56513u, arg_0.b.d, 30072u), u_input.b)) << (~vec4<u32>(arg_0.b.c, arg_0.b.d, 10499u, u_input.b.x) % vec4<u32>(32u)), select(u_input.b, vec4<u32>(arg_0.b.d ^ u_input.b.x, 91180u, arg_0.b.d, ~u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_0.b.b, arg_0.b.b), vec4<bool>(false, var_0, arg_0.b.b, var_0)))));
    var var_2 = vec4<i32>(arg_0.b.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), ~u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(18570u, 14754u, 40625u, var_1.d.x), vec4<u32>(1u, 24877u, 0u, var_1.c.e)), u_input.b), 29u)], _wgslsmith_mod_i32(1i, countOneBits(_wgslsmith_mult_i32(var_1.b.x, 1i) ^ _wgslsmith_mod_i32(2147483647i, -1i))));
    global0 = array<i32, 29>();
    return arg_0.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = arg_1.e;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1000f))) * 819f), Struct_1(_wgslsmith_sub_vec2_i32(min(arg_1.e.b.a, -var_0.b.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_0.b.a.x), vec2<i32>(8539i, -6837i)) & (vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], -8886i) | u_input.a.yz)), !var_0.b.b, ~1u, 12658u, ~(~_wgslsmith_mult_u32(arg_1.c.d, 4294967295u))), !(!var_0.b.b), Struct_2(max(global0[_wgslsmith_index_u32(u_input.b.x >> (0u % 32u), 29u)], arg_1.c.a.x << (reverseBits(0u) % 32u)), func_4(func_2(_wgslsmith_add_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, arg_1.e.b.c))), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -366f), ~(~vec4<i32>(u_input.a.x, -44587i, arg_1.e.b.a.x, 17466i)))));
    var var_2 = func_2(vec2<u32>(func_4(Struct_2(-1i, var_1.e.b), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a + -1000f), _wgslsmith_f_op_f32(2317f + 341f))), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, var_0.b.a.x, -11544i, 42299i), ~vec4<i32>(var_0.a, -1i, 1i, -43701i))).e, func_4(arg_1.e, _wgslsmith_div_f32(429f, -107f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-260f * arg_1.a))), _wgslsmith_div_vec4_i32(~vec4<i32>(-27953i, arg_1.c.a.x, u_input.a.x, var_0.a), vec4<i32>(-1i, -1604i, 22304i, 6907i))).c));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return global0[_wgslsmith_index_u32(0u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(firstTrailingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 45272i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -29088i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 29u)])) ^ (global0[_wgslsmith_index_u32(u_input.b.x, 29u)] >> (u_input.b.x % 32u)))), ~abs(1i | func_1(vec2<f32>(-1000f, -1000f), Struct_3(635f, -1000f, Struct_1(u_input.a.xz, true, 77110u, 4294967295u, 35954u), false, Struct_2(-1i, Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 0i), true, u_input.b.x, u_input.b.x, 4294967295u))))), 2147483647i);
    let var_1 = ~u_input.b.x;
    global0 = array<i32, 29>();
    var var_2 = (~_wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_add_i32(2147483647i, -17098i)) << (15489u % 32u)) ^ var_0.x;
    global1 = array<Struct_4, 31>();
    var_2 = -14489i >> ((0u >> (var_1 % 32u)) % 32u);
    let var_3 = Struct_1(~var_0.yy, false, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20703u, var_1, 0u), u_input.b) | u_input.b.x), u_input.b.xw), reverseBits(var_1), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.wx), vec2<u32>(15224u, ~1u)));
    var_2 = var_3.a.x;
    var var_4 = all(vec4<bool>(true, (abs(-2147483647i) < ~global0[_wgslsmith_index_u32(u_input.b.x, 29u)]) == func_2(vec2<u32>(36519u, var_1)).b.b, !(abs(var_3.c) > (u_input.b.x ^ var_1)), select(false, all(vec3<bool>(var_3.b, true, var_3.b)), any(select(vec4<bool>(var_3.b, var_3.b, false, var_3.b), vec4<bool>(false, var_3.b, false, var_3.b), vec4<bool>(false, false, var_3.b, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~u_input.b), ~u_input.b), ~((~vec3<u32>(27568u, 4294967295u, var_3.e) | ~u_input.b.wxy) ^ vec3<u32>(~var_3.d, abs(4294967295u), var_1)), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1410f, -648f) * vec2<f32>(-1257f, -505f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(464f)) - _wgslsmith_f_op_f32(select(-414f, -962f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1081f) * _wgslsmith_f_op_f32(trunc(-241f))))), abs(select(_wgslsmith_add_vec2_u32(u_input.b.xw, abs(u_input.b.xx)), u_input.b.xw | _wgslsmith_sub_vec2_u32(u_input.b.zw, vec2<u32>(1u, 1u)), vec2<bool>(true, any(vec4<bool>(true, false, true, false))))));
}

