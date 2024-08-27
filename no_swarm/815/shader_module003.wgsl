struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(true, vec3<u32>(0u, 38298u, 55830u)), Struct_3(false, vec3<u32>(0u, 1u, 1u)), Struct_3(true, vec3<u32>(11535u, 1u, 0u)), Struct_3(true, vec3<u32>(4294967295u, 1u, 9237u)), Struct_3(true, vec3<u32>(1u, 4294967295u, 40125u)), Struct_3(false, vec3<u32>(0u, 4294967295u, 0u)), Struct_3(true, vec3<u32>(41882u, 4294967295u, 4294967295u)), Struct_3(false, vec3<u32>(4294967295u, 0u, 1u)), Struct_3(true, vec3<u32>(56638u, 22317u, 0u)), Struct_3(true, vec3<u32>(1u, 14642u, 770u)), Struct_3(false, vec3<u32>(73214u, 4294967295u, 4294967295u)), Struct_3(true, vec3<u32>(4117u, 95699u, 37168u)), Struct_3(true, vec3<u32>(1u, 4294967295u, 39047u)), Struct_3(false, vec3<u32>(31933u, 110165u, 69480u)), Struct_3(true, vec3<u32>(0u, 73357u, 82967u)), Struct_3(false, vec3<u32>(28164u, 4527u, 0u)), Struct_3(true, vec3<u32>(1794u, 35360u, 9570u)), Struct_3(true, vec3<u32>(0u, 68379u, 1u)), Struct_3(true, vec3<u32>(0u, 1u, 44034u)), Struct_3(false, vec3<u32>(1u, 1u, 7958u)), Struct_3(false, vec3<u32>(1u, 33206u, 19824u)), Struct_3(false, vec3<u32>(37389u, 0u, 9627u)), Struct_3(false, vec3<u32>(1u, 85322u, 1u)), Struct_3(true, vec3<u32>(4294967295u, 0u, 1u)), Struct_3(true, vec3<u32>(4294967295u, 17749u, 82592u)));

var<private> global1: bool = false;

var<private> global2: Struct_5 = Struct_5(Struct_4(-1i, Struct_3(true, vec3<u32>(0u, 19610u, 29678u)), Struct_2(4294967295u)), 1i, vec2<u32>(9449u, 0u), 1u, Struct_1(vec2<f32>(1421f, 1000f), false, vec4<u32>(0u, 0u, 28482u, 0u), 4294967295u, vec2<f32>(1133f, 1000f)));

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(1i, Struct_3(true, vec3<u32>(1u, 66870u, 4294967295u)), Struct_2(113756u)), Struct_4(32249i, Struct_3(false, vec3<u32>(0u, 12807u, 4294967295u)), Struct_2(4294967295u)), Struct_4(-9373i, Struct_3(false, vec3<u32>(0u, 0u, 68262u)), Struct_2(18211u)), Struct_4(19051i, Struct_3(false, vec3<u32>(1u, 21698u, 46602u)), Struct_2(1u)), Struct_4(-9518i, Struct_3(false, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_2(4294967295u)), Struct_4(-1i, Struct_3(true, vec3<u32>(4294967295u, 1u, 18336u)), Struct_2(20645u)), Struct_4(0i, Struct_3(true, vec3<u32>(37311u, 4294967295u, 1171u)), Struct_2(1u)), Struct_4(2147483647i, Struct_3(false, vec3<u32>(0u, 4294967295u, 0u)), Struct_2(1u)), Struct_4(-28674i, Struct_3(false, vec3<u32>(4294967295u, 20732u, 35779u)), Struct_2(28157u)), Struct_4(29788i, Struct_3(false, vec3<u32>(17805u, 10183u, 57020u)), Struct_2(59059u)), Struct_4(-1i, Struct_3(false, vec3<u32>(34153u, 40463u, 0u)), Struct_2(1u)), Struct_4(i32(-2147483648), Struct_3(false, vec3<u32>(4294967295u, 1u, 33929u)), Struct_2(67863u)), Struct_4(1i, Struct_3(false, vec3<u32>(39536u, 1u, 0u)), Struct_2(70182u)), Struct_4(-10276i, Struct_3(false, vec3<u32>(4294967295u, 8294u, 13540u)), Struct_2(88030u)), Struct_4(-26478i, Struct_3(true, vec3<u32>(73072u, 0u, 26238u)), Struct_2(19675u)), Struct_4(37696i, Struct_3(true, vec3<u32>(4294967295u, 4235u, 2530u)), Struct_2(62496u)), Struct_4(-37841i, Struct_3(false, vec3<u32>(0u, 1u, 18993u)), Struct_2(37164u)), Struct_4(-11812i, Struct_3(true, vec3<u32>(1u, 41292u, 13597u)), Struct_2(39531u)), Struct_4(23103i, Struct_3(true, vec3<u32>(43998u, 4294967295u, 39799u)), Struct_2(1u)), Struct_4(2147483647i, Struct_3(true, vec3<u32>(44170u, 1u, 11703u)), Struct_2(2482u)), Struct_4(14145i, Struct_3(false, vec3<u32>(0u, 4294967295u, 22893u)), Struct_2(9914u)), Struct_4(-41273i, Struct_3(false, vec3<u32>(1u, 4294967295u, 38161u)), Struct_2(26464u)), Struct_4(1i, Struct_3(false, vec3<u32>(1u, 49539u, 19802u)), Struct_2(1u)), Struct_4(32494i, Struct_3(false, vec3<u32>(0u, 29175u, 4037u)), Struct_2(4294967295u)), Struct_4(i32(-2147483648), Struct_3(false, vec3<u32>(19049u, 4294967295u, 4294967295u)), Struct_2(0u)), Struct_4(-25424i, Struct_3(false, vec3<u32>(1762u, 4294967295u, 1u)), Struct_2(60972u)));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(15416u), Struct_2(0u), Struct_2(48276u), Struct_2(6746u), Struct_2(1u), Struct_2(19066u), Struct_2(4294967295u), Struct_2(0u), Struct_2(100174u), Struct_2(1u), Struct_2(4294967295u), Struct_2(29075u), Struct_2(19396u), Struct_2(0u), Struct_2(43025u), Struct_2(1u), Struct_2(47031u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(49168u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = true;
    global3 = array<Struct_4, 26>();
    var var_1 = vec3<bool>(global2.e.b, all(!vec2<bool>(!global2.a.b.a, arg_1.a)), all(vec3<bool>(all(vec4<bool>(false, true, global2.e.b, arg_1.a)) || arg_1.a, arg_0.b.a, all(vec2<bool>(arg_0.b.a, false)) && global2.e.b)));
    global2 = Struct_5(Struct_4(u_input.a, arg_1, global4[_wgslsmith_index_u32(u_input.b.x, 21u)]), arg_0.a << ((u_input.b.x & 1u) % 32u), _wgslsmith_add_vec2_u32(select(abs(firstTrailingBit(arg_0.b.b.yx)), ~_wgslsmith_div_vec2_u32(vec2<u32>(542u, arg_1.b.x), global2.c), vec2<bool>(true, !var_1.x)), _wgslsmith_div_vec2_u32(vec2<u32>(60630u, _wgslsmith_div_u32(32797u, global2.a.c.a)), max(u_input.b, vec2<u32>(arg_0.c.a, 32604u)) << (vec2<u32>(u_input.b.x, arg_0.b.b.x) % vec2<u32>(32u)))), select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~global2.e.c, ~vec4<u32>(0u, 1u, arg_0.b.b.x, arg_1.b.x)), (global2.e.c | global2.e.c) & vec4<u32>(1u, 45396u, arg_0.c.a, 5861u)), countOneBits(arg_0.c.a), !arg_0.b.a), Struct_1(global2.e.a, _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(1u, global2.a.b.b.x)) < global2.c.x, ~_wgslsmith_mod_vec4_u32(min(global2.e.c, global2.e.c), abs(vec4<u32>(arg_1.b.x, arg_0.c.a, arg_1.b.x, arg_0.b.b.x))), ~countOneBits(global2.c.x) ^ ~_wgslsmith_mod_u32(551u, 29568u), vec2<f32>(811f, global2.e.e.x)));
    var var_2 = global2.e;
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> vec2<u32> {
    global0 = array<Struct_3, 25>();
    let var_0 = Struct_2(u_input.b.x);
    let var_1 = Struct_2(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(20201u, 18353u), global2.a.b.b.zz)));
    global3 = array<Struct_4, 26>();
    let var_2 = firstLeadingBit(abs(-(~arg_3 & (vec2<i32>(arg_1, 12785i) | arg_3))));
    return global2.e.c.zy;
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    var var_0 = select(arg_0.zzw, arg_0.zww, select(any(arg_0.xyz), !(!select(arg_0.x, true, global2.a.b.a)), (global2.b > -11085i) && (all(arg_0.xwy) || !arg_0.x)));
    var var_1 = 1u;
    let var_2 = reverseBits(17191u);
    var var_3 = 0u;
    var var_4 = Struct_5(Struct_4(_wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i), global2.a.b, Struct_2(~(~u_input.b.x))), u_input.a, global2.a.b.b.yy ^ _wgslsmith_add_vec2_u32(func_4(true, -1i << (u_input.b.x % 32u), func_3(global2.a, Struct_3(global2.a.b.a, vec3<u32>(global2.a.c.a, var_2, 1u)), 26986i), vec2<i32>(12966i, -2147483647i)), global2.c), _wgslsmith_add_u32(25487u, 7347u << (_wgslsmith_dot_vec2_u32(global2.e.c.xz, global2.e.c.yw) % 32u)) << (var_2 % 32u), Struct_1(global2.e.e, var_0.x == any(vec3<bool>(var_0.x, true, arg_0.x)), global2.e.c, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.e.e + vec2<f32>(global2.e.a.x, global2.e.a.x))))));
    return Struct_5(global2.a, select(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-22420i), ~(-1i)), vec2<i32>(var_4.a.a, firstLeadingBit(global2.a.a))), countOneBits(_wgslsmith_add_i32(-2147483647i, u_input.a)) | _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7230i, u_input.a, 1i, 39985i), vec4<i32>(u_input.a, -1i, var_4.a.a, u_input.a)), _wgslsmith_mult_i32(global2.b, -11335i)), true), vec2<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), 4294967295u), 9582u), _wgslsmith_div_u32(~var_4.a.c.a & _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, global2.a.b.b.x), ~global2.e.c.xz), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.c & vec2<u32>(u_input.b.x, var_2), vec2<u32>(22631u, var_4.c.x) | vec2<u32>(u_input.b.x, 9007u)), min(global2.e.c.x, ~103765u))), global2.e);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = 30534u;
    let var_1 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(437f))) + _wgslsmith_f_op_f32(-arg_3.x)));
    global3 = array<Struct_4, 26>();
    global2 = func_2(!(!vec4<bool>(true, true, !global2.e.b, true)));
    global1 = any(!select(vec2<bool>(true, !global2.a.b.a), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, global2.a.b.a)), vec2<bool>(false, global2.a.b.a), vec2<bool>(global2.e.b, global2.a.b.a)), any(select(vec3<bool>(false, global2.a.b.a, false), vec3<bool>(false, global2.e.b, false), false))));
    return -917f;
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    global4 = array<Struct_2, 21>();
    global3 = array<Struct_4, 26>();
    let var_0 = !vec3<bool>(global2.e.b, !global2.e.b, true);
    global0 = array<Struct_3, 25>();
    var var_1 = global2.e;
    return u_input.b.x;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.e.e + vec2<f32>(-464f, 682f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, -198f) * global2.e.e)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(305f, 1000f) + _wgslsmith_f_op_vec2_f32(max(global2.e.e, global2.e.e))))), vec2<f32>(global2.e.a.x, global2.e.e.x)));
    global1 = global2.e.b;
    let var_1 = global2.a.b.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(global2.e.e, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.e.x, _wgslsmith_f_op_f32(min(-430f, 872f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.e.a.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global2.e.e.x))))), vec2<f32>(_wgslsmith_f_op_f32(global2.e.a.x + _wgslsmith_f_op_f32(-1000f - var_0.x)), _wgslsmith_f_op_f32(-global2.e.a.x)))), vec2<bool>(select(false, true, true | select(true, arg_1, global2.e.b)), all(select(!vec3<bool>(true, global2.e.b, true), !vec3<bool>(arg_1, arg_1, false), arg_1)))));
    global2 = Struct_5(Struct_4(global2.a.a & _wgslsmith_clamp_i32(1i, reverseBits(62072i), firstLeadingBit(-34958i)), Struct_3(true, global2.e.c.wyy), func_2(select(select(vec4<bool>(true, false, global2.e.b, false), vec4<bool>(arg_1, arg_1, arg_1, false), true), !vec4<bool>(global2.e.b, arg_1, arg_1, arg_1), select(vec4<bool>(global2.e.b, false, global2.e.b, false), vec4<bool>(false, arg_1, true, false), false))).a.c), global2.a.a, vec2<u32>(u_input.b.x, u_input.b.x), global2.a.b.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_2.x))) * var_2))), true, abs(global2.e.c), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2)) - var_0))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(280f, global2.e.e.x))))), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, 1715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.e.x * -858f))))), select(~arg_0 | ((arg_0 >> (u_input.b.x % 32u)) ^ u_input.a), u_input.a, global2.e.b), 47054i, ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b), ~1u, ~(~arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 21>();
    let var_0 = -vec3<i32>(abs(-_wgslsmith_mod_i32(global2.a.a, u_input.a)), global2.b & _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.a, global2.a.a), select(vec2<i32>(-1i, u_input.a), vec2<i32>(-20564i, global2.a.a), vec2<bool>(true, global2.e.b))), global2.a.a);
    var var_1 = select(select(global2.a.b.a, u_input.b.x > ~global2.a.b.b.x, global2.a.b.a), global2.a.b.a, true & global2.a.b.a);
    var_1 = global2.a.b.a;
    let x = u_input.a;
    s_output = func_6(55432i, global2.e.b, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, _wgslsmith_f_op_f32(func_1(1522u, 9333u, global2.e.c, vec4<f32>(567f, global2.e.e.x, global2.e.e.x, global2.e.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

