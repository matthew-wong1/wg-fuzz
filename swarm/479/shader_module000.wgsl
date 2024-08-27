struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<f32>(502f, -997f, 1625f), -1127f, false, Struct_1(102447u, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 61546u, 18353u, 1u), vec4<i32>(0i, 26613i, 0i, 1i), vec2<bool>(false, false))), vec3<u32>(63083u, 4294967295u, 0u), vec2<u32>(30082u, 0u), 4294967295u, -451f);

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_2(vec3<f32>(-420f, 387f, 717f), -278f, true, Struct_1(103241u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<i32>(-70392i, 41611i, 1765i, -54413i), vec2<bool>(false, true))), Struct_1(42091u, vec3<bool>(false, false, false), vec4<u32>(0u, 23603u, 1u, 19895u), vec4<i32>(11204i, 2147483647i, 33866i, 1i), vec2<bool>(true, false)), 0u), Struct_4(Struct_2(vec3<f32>(-825f, -1175f, 2031f), -1961f, false, Struct_1(166u, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 114614u, 1u, 4294967295u), vec4<i32>(0i, 892i, 23449i, i32(-2147483648)), vec2<bool>(false, true))), Struct_1(83733u, vec3<bool>(true, false, true), vec4<u32>(0u, 1u, 68620u, 53228u), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -12886i), vec2<bool>(false, false)), 60537u), Struct_4(Struct_2(vec3<f32>(-1000f, -1098f, -735f), 288f, true, Struct_1(4759u, vec3<bool>(false, true, false), vec4<u32>(0u, 18022u, 1u, 4294967295u), vec4<i32>(-44312i, 2147483647i, 0i, -26560i), vec2<bool>(true, false))), Struct_1(21295u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 0u, 4294967295u, 62507u), vec4<i32>(i32(-2147483648), -1i, 0i, -1i), vec2<bool>(true, false)), 16717u), Struct_4(Struct_2(vec3<f32>(-542f, 687f, 733f), 325f, false, Struct_1(19014u, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 18129u, 4294967295u, 63404u), vec4<i32>(6668i, -18686i, i32(-2147483648), -59745i), vec2<bool>(true, false))), Struct_1(1u, vec3<bool>(false, false, true), vec4<u32>(21912u, 0u, 4326u, 8150u), vec4<i32>(-56229i, 0i, 24336i, 0i), vec2<bool>(true, true)), 35719u), Struct_4(Struct_2(vec3<f32>(-129f, -174f, -1080f), 1797f, false, Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<u32>(30295u, 0u, 0u, 55122u), vec4<i32>(15673i, -1i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, false))), Struct_1(24985u, vec3<bool>(false, false, false), vec4<u32>(1u, 80703u, 4294967295u, 29566u), vec4<i32>(3081i, 13987i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true)), 0u), Struct_4(Struct_2(vec3<f32>(-202f, -457f, 145f), 343f, false, Struct_1(0u, vec3<bool>(true, false, true), vec4<u32>(1u, 37887u, 0u, 0u), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 0i), vec2<bool>(true, true))), Struct_1(0u, vec3<bool>(false, false, true), vec4<u32>(29059u, 84012u, 27526u, 43698u), vec4<i32>(-14832i, 1i, i32(-2147483648), 2147483647i), vec2<bool>(false, true)), 4380u), Struct_4(Struct_2(vec3<f32>(-128f, -324f, -128f), -480f, true, Struct_1(0u, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 1u, 53209u, 4294967295u), vec4<i32>(46829i, -6447i, 2147483647i, -47237i), vec2<bool>(true, true))), Struct_1(17456u, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 90507u, 23562u, 42433u), vec4<i32>(0i, -8142i, -8763i, 2147483647i), vec2<bool>(false, false)), 1u), Struct_4(Struct_2(vec3<f32>(1258f, 1000f, -782f), 821f, false, Struct_1(8451u, vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 13455u, 1u), vec4<i32>(-58784i, 14784i, 2147483647i, 13107i), vec2<bool>(false, true))), Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<u32>(98434u, 86838u, 33682u, 4294967295u), vec4<i32>(2147483647i, 30269i, 34851i, -5261i), vec2<bool>(true, false)), 6057u), Struct_4(Struct_2(vec3<f32>(-235f, -601f, 1973f), 1510f, false, Struct_1(18714u, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 0u, 1u, 14452u), vec4<i32>(0i, 0i, 50089i, 1i), vec2<bool>(true, false))), Struct_1(51190u, vec3<bool>(false, false, false), vec4<u32>(63965u, 0u, 0u, 4294967295u), vec4<i32>(9010i, -55070i, 2147483647i, 64227i), vec2<bool>(true, false)), 48333u), Struct_4(Struct_2(vec3<f32>(-950f, 2052f, -882f), 812f, true, Struct_1(7133u, vec3<bool>(false, true, true), vec4<u32>(66888u, 0u, 19158u, 14558u), vec4<i32>(53125i, -30296i, -87117i, 1i), vec2<bool>(false, true))), Struct_1(48556u, vec3<bool>(false, true, true), vec4<u32>(20921u, 1u, 1u, 4294967295u), vec4<i32>(0i, -5224i, 0i, 3602i), vec2<bool>(true, false)), 94597u), Struct_4(Struct_2(vec3<f32>(-1000f, 427f, -1578f), -385f, false, Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<u32>(4921u, 3257u, 0u, 18581u), vec4<i32>(2147483647i, 0i, -13464i, 1i), vec2<bool>(false, true))), Struct_1(58764u, vec3<bool>(true, false, false), vec4<u32>(0u, 16212u, 4294967295u, 22196u), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true)), 1u), Struct_4(Struct_2(vec3<f32>(575f, -1136f, -506f), 635f, true, Struct_1(35331u, vec3<bool>(true, true, true), vec4<u32>(1u, 82956u, 0u, 4294967295u), vec4<i32>(42297i, -2599i, 1i, 1i), vec2<bool>(true, true))), Struct_1(4294967295u, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 4053u, 4294967295u, 28059u), vec4<i32>(i32(-2147483648), 1i, 54233i, -1i), vec2<bool>(true, false)), 122181u), Struct_4(Struct_2(vec3<f32>(704f, 648f, -1409f), 383f, false, Struct_1(23961u, vec3<bool>(false, false, true), vec4<u32>(0u, 31756u, 21095u, 1u), vec4<i32>(i32(-2147483648), -5914i, 1i, 47892i), vec2<bool>(false, false))), Struct_1(1u, vec3<bool>(true, true, false), vec4<u32>(8688u, 25796u, 1u, 58741u), vec4<i32>(16413i, -1i, 0i, 82115i), vec2<bool>(false, true)), 71556u), Struct_4(Struct_2(vec3<f32>(1000f, 2371f, 881f), -1172f, true, Struct_1(0u, vec3<bool>(true, false, true), vec4<u32>(19985u, 1u, 1u, 25444u), vec4<i32>(i32(-2147483648), 27188i, -38362i, -57600i), vec2<bool>(true, true))), Struct_1(4971u, vec3<bool>(false, true, true), vec4<u32>(6636u, 1914u, 4294967295u, 1u), vec4<i32>(-49080i, 1i, 17235i, 0i), vec2<bool>(true, false)), 9957u), Struct_4(Struct_2(vec3<f32>(1000f, 933f, 886f), 1968f, false, Struct_1(47537u, vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 41921u, 0u), vec4<i32>(i32(-2147483648), -4704i, -41156i, -41625i), vec2<bool>(false, true))), Struct_1(39778u, vec3<bool>(false, false, false), vec4<u32>(119920u, 58691u, 89588u, 3974u), vec4<i32>(11694i, -34972i, -34542i, -23538i), vec2<bool>(true, true)), 20193u));

var<private> global2: Struct_4;

var<private> global3: u32 = 51963u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> u32 {
    global3 = 10521u;
    global2 = global1[_wgslsmith_index_u32(1u, 15u)];
    let var_0 = arg_1.wzy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f * _wgslsmith_f_op_f32(global2.a.a.x - -1123f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(965f + -411f) - _wgslsmith_div_f32(1505f, 1017f)), arg_1.x)));
    let var_2 = vec3<bool>(global2.b.e.x, false & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + var_0.x)) <= _wgslsmith_f_op_f32(-1119f - var_0.x)), arg_0.x);
    return min(global2.b.a, global2.c);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec2<bool> {
    global2 = Struct_4(global2.a, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global0.c.x, 30976u), vec3<u32>(arg_0.x, 4294967295u, arg_0.x)) << (max(arg_0.x, 20369u) % 32u), !global2.b.b, vec4<u32>(~(~global0.a.d.a), max(_wgslsmith_clamp_u32(12428u, 1u, 41500u), 0u), arg_0.x, arg_0.x), abs(~vec4<i32>(59177i, 1i, global0.a.d.d.x, -1i)), vec2<bool>(any(select(vec2<bool>(global0.a.d.e.x, false), vec2<bool>(global0.a.d.b.x, true), true)), true)), 44484u);
    global2 = Struct_4(global2.a, global2.a.d, global2.c);
    let var_0 = global0.a.d.d.yxw;
    let var_1 = global2.b.b.x;
    let var_2 = Struct_3(Struct_2(global2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1863f, -1000f)) + _wgslsmith_f_op_f32(round(arg_1))), any(!(!global0.a.d.b.yy)), global2.a.d), abs(~vec3<u32>(global0.b.x, 1u, arg_0.x)) ^ min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, global0.a.d.a, global2.a.d.a), global0.a.d.c.xyy, global2.b.c.wyx), _wgslsmith_add_vec3_u32(global2.b.c.zwy, vec3<u32>(global2.c, global0.a.d.c.x, 48686u)) | ~vec3<u32>(40112u, 1u, global2.c)), select(abs(vec2<u32>(4294967295u, 1u)) & vec2<u32>(arg_0.x, 1u), vec2<u32>(88336u >> (~arg_0.x % 32u), 0u), false), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(1u, global0.b.x), arg_0.x, firstLeadingBit(global0.b.x & 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23221u, 59539u), vec2<u32>(global0.d, global2.a.d.c.x)), countOneBits(55681u), _wgslsmith_sub_u32(4294967295u, ~global0.a.d.a))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x), -945f, global2.a.d.e.x & global2.b.e.x))), _wgslsmith_f_op_f32(global2.a.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(393f, 1555f)))));
    return vec2<bool>(global2.a.c, false);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(global2.b.c.x, global2.c ^ _wgslsmith_clamp_u32(abs(global2.b.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.d.a, 2165u, 28986u), vec3<u32>(global2.a.d.a, global2.b.c.x, 0u)), func_2(vec4<bool>(global2.a.d.e.x, true, false, global0.a.d.b.x), vec4<f32>(global0.a.b, -1046f, -1000f, global0.a.a.x)))), global2.a.d.a);
    let var_1 = select(select(select(!select(vec2<bool>(true, false), global0.a.d.b.xy, global0.a.d.b.xz), !(!vec2<bool>(true, global0.a.d.b.x)), !(global0.e >= -788f)), vec2<bool>(true, true), !global0.a.c), select(global0.a.d.e, !select(func_3(vec2<u32>(global2.a.d.c.x, 40124u), -2021f), !global0.a.d.e, global2.a.d.e), false), vec2<bool>(true, false));
    return global1[_wgslsmith_index_u32(global2.a.d.a, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(35634u, 1u >> ((1u & _wgslsmith_div_u32(1u, global2.c)) % 32u), global2.a.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.a.x)))) < global0.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a.zy) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)), 548f));
    global1 = array<Struct_4, 15>();
    let var_2 = global0.a;
    let var_3 = func_1();
    let var_4 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-global0.a.d.d.x, ~4294967295u, var_4.d.d.xz);
}

