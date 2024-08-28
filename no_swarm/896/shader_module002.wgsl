struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-420f, 171f, -2425f, -627f), vec4<f32>(-421f, 417f, 588f, 1497f), vec4<f32>(-1722f, -1202f, -1000f, 1000f), vec4<f32>(1000f, 1876f, 480f, 527f), vec4<f32>(596f, -492f, 1235f, 500f), vec4<f32>(-689f, 1378f, 213f, -1000f), vec4<f32>(415f, 345f, -456f, 293f), vec4<f32>(-1000f, -1011f, 1269f, -1000f), vec4<f32>(1711f, -662f, -1075f, -226f), vec4<f32>(-1066f, 385f, -407f, -526f), vec4<f32>(-2190f, 207f, -939f, -1013f), vec4<f32>(1172f, -574f, -486f, -1000f), vec4<f32>(1440f, 280f, -1447f, -1247f), vec4<f32>(797f, 1000f, -230f, -394f), vec4<f32>(-562f, 589f, -286f, 784f), vec4<f32>(140f, 3017f, -1310f, 1518f), vec4<f32>(-782f, -1037f, 406f, 1029f), vec4<f32>(132f, 154f, 322f, 757f), vec4<f32>(-921f, 451f, -329f, -500f), vec4<f32>(-1804f, -912f, -1490f, -418f), vec4<f32>(-363f, 1000f, 541f, -373f), vec4<f32>(456f, 992f, 468f, -1000f), vec4<f32>(-584f, -923f, 414f, 2092f), vec4<f32>(542f, 458f, -1069f, -707f), vec4<f32>(1000f, 244f, 132f, -1254f), vec4<f32>(-327f, -1223f, 1000f, -1201f), vec4<f32>(1378f, -1321f, 215f, 583f), vec4<f32>(1000f, 1042f, 210f, -932f));

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)));

var<private> global2: u32 = 32524u;

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(9745i, i32(-2147483648)));

var<private> global4: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-1i, 1i, 2147483647i, 2147483647i), vec4<i32>(0i, -29099i, 1i, 1i), vec4<i32>(29834i, 2147483647i, 2147483647i, 8198i), vec4<i32>(2147483647i, -93727i, 51735i, 2147483647i), vec4<i32>(-1i, -228i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -39251i, 1i, 2147483647i), vec4<i32>(2147483647i, 0i, -12065i, 1i), vec4<i32>(-1i, 16579i, 1i, -41344i), vec4<i32>(10349i, i32(-2147483648), -1777i, 1i), vec4<i32>(1i, -40513i, -4744i, 16708i), vec4<i32>(0i, -10862i, 1i, i32(-2147483648)), vec4<i32>(39224i, -23229i, 0i, i32(-2147483648)), vec4<i32>(1i, 6634i, -11405i, -42998i), vec4<i32>(-2357i, 514i, -1i, 0i), vec4<i32>(-81797i, -7254i, 2147483647i, 53718i), vec4<i32>(i32(-2147483648), -2413i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 1i, -13638i), vec4<i32>(2456i, 0i, -64033i, i32(-2147483648)), vec4<i32>(-31248i, -1i, 1i, 3144i), vec4<i32>(-1i, -38029i, -26989i, -11180i), vec4<i32>(-1i, -90087i, 0i, 4302i), vec4<i32>(-28527i, 0i, 20834i, 38775i), vec4<i32>(15374i, 13501i, 1i, 12909i), vec4<i32>(-52473i, 2147483647i, 0i, 0i), vec4<i32>(9969i, -18663i, -8183i, 2147483647i), vec4<i32>(1i, -1i, -1i, 0i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 18470i, 30076i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2866f) * _wgslsmith_f_op_f32(ceil(969f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1407f, 887f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-545f, 402f)) + 706f))))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -847f) * vec2<f32>(var_0, 667f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, var_0)))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = 10604i;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, !all(vec2<bool>(false, true)), var_0.c >= 0i, true), Struct_2(~(-vec2<i32>(u_input.c, 1i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(878f, 1080f)))))))));
    var var_3 = select(vec2<bool>(false, true), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true)), any(vec2<bool>(true, true)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + -1150f) != -828f));
    var var_4 = arg_2.b.x;
    return Struct_1(arg_0.a, firstTrailingBit(vec4<u32>(arg_0.d.x >> (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), 1u, _wgslsmith_sub_u32(1u << (1u % 32u), reverseBits(arg_2.d.x)), ~4294967295u)), -2147483647i, vec4<u32>(~countOneBits(~9012u), ~var_0.b.x, 20166u >> (var_0.b.x % 32u), ~_wgslsmith_div_u32(reverseBits(arg_0.d.x), 4294967295u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = array<vec4<f32>, 28>();
    global4 = array<vec4<i32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_0 = func_2(Struct_1(-720f, arg_1.b, _wgslsmith_add_i32(-select(13080i, arg_1.c, true), -14664i >> ((34787u << (u_input.d.x % 32u)) % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1.d.x, u_input.e, arg_1.d.x, u_input.b)), _wgslsmith_div_vec4_u32(arg_1.d, arg_1.b)), vec4<u32>(7614u, _wgslsmith_mod_u32(30956u, arg_1.b.x), ~4294967295u, 17476u ^ u_input.a.x), ~(~arg_1.b))), 1u, arg_1).b.x;
    global0 = array<vec4<f32>, 28>();
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = Struct_2(~abs(func_4(vec2<i32>(-41101i, u_input.c) >> (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u)), func_2(Struct_1(-1630f, vec4<u32>(0u, 21426u, u_input.e, u_input.b), -24613i, vec4<u32>(u_input.a.x, u_input.b, 1u, 1u)), 28621u, Struct_1(-1167f, vec4<u32>(0u, u_input.d.x, 65450u, u_input.e), global1.a.x, vec4<u32>(u_input.b, u_input.e, 4294967295u, 1u))), vec4<i32>(-2147483647i, 4908i, 13103i, arg_0))));
    let var_0 = Struct_1(-502f, countOneBits(min(firstTrailingBit(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 31789u)), max(vec4<u32>(99917u, u_input.e, 66065u, 4294967295u), vec4<u32>(1u, u_input.b, u_input.b, u_input.d.x))) | ~vec4<u32>(u_input.d.x, u_input.a.x, 35851u, u_input.a.x)), -63307i, ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b, 17614u, u_input.d.x, u_input.d.x)), abs(select(vec4<u32>(u_input.d.x, u_input.e, 15672u, u_input.e), vec4<u32>(6180u, u_input.a.x, 1u, 7308u), vec4<bool>(false, true, false, false)))));
    global2 = 50754u;
    global4 = array<vec4<i32>, 28>();
    global2 = 1u ^ ~u_input.a.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 1>();
    var var_0 = func_1(u_input.c);
    let var_1 = u_input.c & ~(~u_input.c);
    let var_2 = _wgslsmith_dot_vec2_u32(select(var_0.b.xx, u_input.a, true), ~vec2<u32>(23711u, (u_input.a.x & u_input.d.x) >> (~u_input.a.x % 32u)));
    global2 = ~var_0.d.x;
    var var_3 = Struct_2(~global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_2(Struct_1(var_0.a, vec4<u32>(29888u, 4294967295u, 0u, var_0.d.x), -37709i, vec4<u32>(var_0.b.x, 0u, var_0.d.x, u_input.b)), var_0.b.x, Struct_1(-697f, var_0.b, u_input.c, var_0.b)).b.x, 0u), 1u)]);
    var var_4 = Struct_1(716f, select(var_0.b, vec4<u32>(var_2 >> (34065u % 32u), ~var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_0.d.x, var_0.d.x, u_input.d.x), vec4<u32>(u_input.b, 19462u, 87124u, var_0.d.x)), 95150u), (-919f <= var_0.a) | true) << (var_0.b % vec4<u32>(32u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(var_1, reverseBits(1i))), u_input.c), countOneBits(var_0.d) | (var_0.b & vec4<u32>(4294967295u >> (var_2 % 32u), firstLeadingBit(var_2), ~0u, var_2 | var_2)));
    global3 = array<vec2<i32>, 1>();
    var var_5 = _wgslsmith_div_vec2_u32(~(~(_wgslsmith_add_vec2_u32(vec2<u32>(var_2, 2456u), vec2<u32>(1u, var_2)) << (var_4.d.yw % vec2<u32>(32u)))), func_2(func_2(func_2(Struct_1(-180f, vec4<u32>(var_2, 0u, 39728u, 4294967295u), u_input.c, var_4.b), abs(1u), Struct_1(var_4.a, vec4<u32>(1u, 1u, 1u, 90378u), var_0.c, var_4.d)), _wgslsmith_mod_u32(var_4.d.x, ~var_4.d.x), func_2(func_1(-2147483647i), 2174u, Struct_1(var_0.a, vec4<u32>(u_input.d.x, u_input.a.x, var_4.b.x, 8519u), var_1, var_4.d))), abs(~var_0.b.x), Struct_1(var_4.a, vec4<u32>(var_0.d.x, ~0u, 7490u, func_1(-2814i).b.x), ~var_0.c, ~(var_4.d ^ vec4<u32>(4294967295u, 63203u, var_0.b.x, 21530u)))).d.wy);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

