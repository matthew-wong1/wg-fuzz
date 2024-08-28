struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(i32(-2147483648), vec2<u32>(69839u, 36890u), Struct_2(Struct_1(58486u, vec4<i32>(14669i, 26795i, -1i, -1i)), vec2<u32>(41350u, 37121u)), Struct_1(17622u, vec4<i32>(-19101i, -1i, 1i, -7499i))), Struct_3(2157i, vec2<u32>(4294967295u, 1u), Struct_2(Struct_1(0u, vec4<i32>(-1i, i32(-2147483648), 1i, 29352i)), vec2<u32>(12988u, 20537u)), Struct_1(4294967295u, vec4<i32>(5944i, -1i, 2147483647i, 2147483647i))), Struct_3(-19559i, vec2<u32>(0u, 0u), Struct_2(Struct_1(1u, vec4<i32>(1911i, 32687i, 8247i, 0i)), vec2<u32>(4294967295u, 57587u)), Struct_1(33080u, vec4<i32>(i32(-2147483648), -17286i, 2147483647i, -1i))), Struct_3(-15476i, vec2<u32>(38098u, 23171u), Struct_2(Struct_1(1u, vec4<i32>(-2547i, -29674i, -24522i, -22159i)), vec2<u32>(4294967295u, 1u)), Struct_1(1u, vec4<i32>(-10796i, -1i, 10943i, -3156i))), Struct_3(19074i, vec2<u32>(4294967295u, 1u), Struct_2(Struct_1(11545u, vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i)), vec2<u32>(27613u, 4294967295u)), Struct_1(4294967295u, vec4<i32>(0i, 3561i, 0i, 1i))), Struct_3(2147483647i, vec2<u32>(54986u, 1u), Struct_2(Struct_1(1u, vec4<i32>(17754i, 31633i, -37282i, 13027i)), vec2<u32>(17022u, 4294967295u)), Struct_1(0u, vec4<i32>(-7819i, i32(-2147483648), -6849i, 0i))), Struct_3(i32(-2147483648), vec2<u32>(4294967295u, 77171u), Struct_2(Struct_1(61191u, vec4<i32>(30619i, 1i, -3203i, 17910i)), vec2<u32>(4294967295u, 4294967295u)), Struct_1(4294967295u, vec4<i32>(2147483647i, -35669i, -4921i, 2147483647i))), Struct_3(0i, vec2<u32>(4294967295u, 61727u), Struct_2(Struct_1(35749u, vec4<i32>(-1i, -50904i, -1i, -17062i)), vec2<u32>(24365u, 24570u)), Struct_1(66930u, vec4<i32>(-1i, i32(-2147483648), -28532i, 0i))), Struct_3(91688i, vec2<u32>(0u, 87710u), Struct_2(Struct_1(43429u, vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648))), vec2<u32>(24885u, 93832u)), Struct_1(1u, vec4<i32>(37516i, 2147483647i, -1i, 4283i))), Struct_3(-82462i, vec2<u32>(1u, 22409u), Struct_2(Struct_1(37022u, vec4<i32>(0i, -1i, 2147483647i, i32(-2147483648))), vec2<u32>(5570u, 0u)), Struct_1(0u, vec4<i32>(2147483647i, 2147483647i, 29044i, 2147483647i))), Struct_3(i32(-2147483648), vec2<u32>(0u, 8867u), Struct_2(Struct_1(19641u, vec4<i32>(-1i, -1i, -1i, 0i)), vec2<u32>(4294967295u, 1u)), Struct_1(11020u, vec4<i32>(-34806i, 489i, 44333i, i32(-2147483648)))));

var<private> global1: i32 = 22530i;

var<private> global2: array<Struct_2, 17>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(0u, vec4<i32>(i32(-2147483648), 2147483647i, 14317i, -22951i)), vec2<u32>(80485u, 0u)), Struct_2(Struct_1(0u, vec4<i32>(0i, -56730i, i32(-2147483648), -1i)), vec2<u32>(86311u, 103725u)), Struct_2(Struct_1(4294967295u, vec4<i32>(-1i, 634i, 70988i, 2147483647i)), vec2<u32>(0u, 20271u)), Struct_2(Struct_1(0u, vec4<i32>(-52928i, -1i, 2147483647i, i32(-2147483648))), vec2<u32>(54298u, 9386u)), Struct_2(Struct_1(4294967295u, vec4<i32>(-13967i, -7937i, i32(-2147483648), i32(-2147483648))), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(15087u, vec4<i32>(-1i, 0i, 28692i, 1i)), vec2<u32>(27451u, 0u)), Struct_2(Struct_1(12223u, vec4<i32>(19865i, -5655i, 2147483647i, 45634i)), vec2<u32>(60157u, 0u)), Struct_2(Struct_1(7351u, vec4<i32>(-4590i, 0i, 0i, 3493i)), vec2<u32>(0u, 26319u)), Struct_2(Struct_1(1u, vec4<i32>(0i, 11681i, i32(-2147483648), 0i)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(Struct_1(51529u, vec4<i32>(-28931i, 49233i, 5459i, i32(-2147483648))), vec2<u32>(1705u, 86588u)), Struct_2(Struct_1(60705u, vec4<i32>(-1i, 449i, -29718i, -26524i)), vec2<u32>(1u, 37501u)), Struct_2(Struct_1(1u, vec4<i32>(1i, i32(-2147483648), -46707i, 2147483647i)), vec2<u32>(1u, 1u)), Struct_2(Struct_1(72594u, vec4<i32>(-5681i, -96818i, -1i, 2147483647i)), vec2<u32>(37564u, 1u)), Struct_2(Struct_1(9321u, vec4<i32>(2147483647i, 2147483647i, 15541i, 1i)), vec2<u32>(4294967295u, 1u)), Struct_2(Struct_1(39324u, vec4<i32>(37786i, -2081i, -25548i, 2147483647i)), vec2<u32>(13302u, 12806u)), Struct_2(Struct_1(4294967295u, vec4<i32>(2147483647i, -27849i, 34411i, 71029i)), vec2<u32>(0u, 81826u)), Struct_2(Struct_1(9484u, vec4<i32>(2147483647i, 61410i, -18819i, 2147483647i)), vec2<u32>(4294967295u, 25903u)), Struct_2(Struct_1(4294967295u, vec4<i32>(0i, -5382i, 32138i, 0i)), vec2<u32>(0u, 24753u)), Struct_2(Struct_1(0u, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -32761i)), vec2<u32>(6558u, 38133u)), Struct_2(Struct_1(27890u, vec4<i32>(1i, 1i, -1i, 2252i)), vec2<u32>(1u, 47935u)), Struct_2(Struct_1(2142u, vec4<i32>(38283i, 41631i, -9999i, 5218i)), vec2<u32>(39324u, 36682u)), Struct_2(Struct_1(4325u, vec4<i32>(7512i, 11197i, -52959i, -1i)), vec2<u32>(0u, 1u)), Struct_2(Struct_1(4294967295u, vec4<i32>(-630i, -41645i, 0i, i32(-2147483648))), vec2<u32>(0u, 0u)), Struct_2(Struct_1(52457u, vec4<i32>(10868i, -13545i, 1i, 5249i)), vec2<u32>(19212u, 0u)), Struct_2(Struct_1(67123u, vec4<i32>(-1i, 18001i, 11605i, -78198i)), vec2<u32>(4294967295u, 46980u)), Struct_2(Struct_1(77420u, vec4<i32>(2147483647i, 7387i, 25431i, -1i)), vec2<u32>(4294967295u, 46130u)), Struct_2(Struct_1(20952u, vec4<i32>(26160i, i32(-2147483648), -15547i, 28594i)), vec2<u32>(6237u, 30618u)), Struct_2(Struct_1(16369u, vec4<i32>(i32(-2147483648), 2147483647i, 1i, -25373i)), vec2<u32>(137031u, 42219u)));

var<private> global4: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(~_wgslsmith_mod_u32(reverseBits(arg_1.c.a.a ^ u_input.a.x), abs(~u_input.a.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2.a.b, vec4<i32>(-arg_1.a, -2355i, arg_1.a, ~arg_1.c.a.b.x)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_2.a.b.x, 4510i), -30525i, arg_0.a.b.x), ~(2147483647i >> (arg_0.a.a % 32u)), 2147483647i, arg_1.a)));
    global4 = max(arg_2.a.a, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(6519u, 0u, 30544u), vec3<u32>(67399u, 1u, arg_2.b.x)), vec3<u32>(1u, u_input.a.x ^ 0u, 3114u)));
    let var_2 = global2[_wgslsmith_index_u32(22709u, 17u)];
    global3 = array<Struct_2, 28>();
    return arg_1.c.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = true;
    global4 = u_input.a.x;
    return min(-arg_3.a.b.x, _wgslsmith_mult_i32(func_2(global2[_wgslsmith_index_u32(1u, 17u)], Struct_3(-arg_2, u_input.a, Struct_2(arg_3.a, u_input.a), func_2(global2[_wgslsmith_index_u32(1u, 17u)], Struct_3(arg_3.a.b.x, vec2<u32>(36391u, 0u), Struct_2(arg_0, vec2<u32>(0u, 0u)), Struct_1(arg_3.b.x, vec4<i32>(0i, arg_0.b.x, -1i, -1i))), Struct_2(Struct_1(arg_0.a, vec4<i32>(-42506i, arg_2, arg_0.b.x, -38652i)), vec2<u32>(arg_3.a.a, 23199u)))), Struct_2(arg_0, vec2<u32>(4294967295u, 4294967295u))).b.x, select(~_wgslsmith_div_i32(0i, arg_3.a.b.x), func_2(Struct_2(arg_0, vec2<u32>(4294967295u, arg_3.a.a)), Struct_3(26020i, u_input.a, Struct_2(arg_0, arg_3.b), arg_0), Struct_2(arg_0, vec2<u32>(3535u, u_input.a.x))).b.x, true)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(-(i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(arg_1.b.x, arg_1.b.x), arg_1.b.x)), _wgslsmith_mult_i32(10249i, ~func_3(func_2(global2[_wgslsmith_index_u32(arg_0, 17u)], Struct_3(-25041i, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(u_input.a.x, arg_1.b)), Struct_2(arg_1, vec2<u32>(u_input.a.x, 0u))), vec3<bool>(true, true, true), arg_1.b.x, Struct_2(arg_1, u_input.a))));
    let var_1 = ~vec3<i32>(-select(_wgslsmith_sub_i32(arg_1.b.x, 47080i), arg_1.b.x, false), -30169i, arg_1.b.x);
    let var_2 = Struct_2(arg_1, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a >> (firstTrailingBit(u_input.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_0, u_input.a.x))));
    global2 = array<Struct_2, 17>();
    let var_3 = global0[_wgslsmith_index_u32(~(~max(~_wgslsmith_add_u32(arg_1.a, arg_0), var_2.a.a)), 11u)];
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 17>();
    var var_0 = vec4<i32>(select(abs(-1i >> (u_input.a.x % 32u)), ~func_1(52626u, Struct_1(u_input.a.x, vec4<i32>(-1845i, -1i, 0i, -2147483647i))), true), 35001i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -1i, 33029i), reverseBits(vec3<i32>(30271i, 26556i, 0i))), countOneBits(_wgslsmith_div_i32(-1i, 49745i) >> (u_input.a.x % 32u))) | _wgslsmith_div_vec4_i32(~min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-37537i, 0i, 759i, 31049i) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-39631i, 2147483647i), ~1i, min(2147483647i, 0i)), 27476i, -(~2147483647i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-35466i, 1i, 2147483647i, 1i), vec4<i32>(1i, 26876i, -2147483647i, -330i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(324f, 630f, 858f), vec3<f32>(163f, -1547f, 1386f))) + vec3<f32>(-143f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-528f - -278f), -672f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(284f, -1401f, 1000f))))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 11u)];
    var_0 = var_2.d.b;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(655f + 1476f), _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_div_f32(var_1.x, 1089f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, var_1.x, -1000f)))));
    let var_3 = Struct_2(func_2(Struct_2(Struct_1(68584u, firstTrailingBit(vec4<i32>(var_2.d.b.x, var_0.x, 22326i, var_2.a))), ~(var_2.b | vec2<u32>(1u, var_2.b.x))), Struct_3(var_2.c.a.b.x, u_input.a, Struct_2(Struct_1(u_input.a.x, var_2.d.b), ~vec2<u32>(62967u, u_input.a.x)), Struct_1(52246u, func_2(Struct_2(var_2.c.a, var_2.c.b), Struct_3(41175i, vec2<u32>(var_2.c.b.x, u_input.a.x), Struct_2(Struct_1(640u, vec4<i32>(var_2.d.b.x, -1357i, var_0.x, 42827i)), vec2<u32>(u_input.a.x, var_2.d.a)), Struct_1(var_2.b.x, vec4<i32>(var_2.c.a.b.x, var_2.d.b.x, var_2.c.a.b.x, var_2.c.a.b.x))), Struct_2(Struct_1(u_input.a.x, vec4<i32>(2147483647i, var_2.d.b.x, var_0.x, var_2.a)), vec2<u32>(var_2.c.b.x, 4294967295u))).b)), Struct_2(Struct_1(47278u, -vec4<i32>(-1i, var_0.x, 0i, -26096i)), _wgslsmith_clamp_vec2_u32(var_2.b, vec2<u32>(u_input.a.x, 19711u), u_input.a))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1728f, -402f) * var_1.yx))), vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, -2810f)), _wgslsmith_div_f32(var_1.x, -1833f))))), vec2<i32>(func_2(global3[_wgslsmith_index_u32(~(~u_input.a.x), 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_2.c).b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.d.b.x, -1i, var_2.d.b.x, -1351i), var_2.c.a.b & vec4<i32>(64320i, var_2.c.a.b.x, var_3.a.b.x, var_2.d.b.x))), vec2<u32>(~1u, var_3.b.x), var_3.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, var_1.x, -790f, var_1.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-885f, var_1.x, 571f, -556f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, -1346f, var_1.x, 445f) + vec4<f32>(var_1.x, var_1.x, var_1.x, 732f)))))));
}

