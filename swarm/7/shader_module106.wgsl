struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(-1633f, 0u, Struct_2(Struct_1(vec3<i32>(0i, -23454i, 36753i), -2143i), Struct_1(vec3<i32>(i32(-2147483648), -56866i, 18159i), -21713i), 749f, 50768u), Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), i32(-2147483648)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), i32(-2147483648)), Struct_1(vec3<i32>(13089i, i32(-2147483648), 23030i), -14829i))), Struct_4(-335f, 0u, Struct_2(Struct_1(vec3<i32>(9923i, 0i, 20825i), -38351i), Struct_1(vec3<i32>(0i, 21137i, 39946i), -20991i), 724f, 4294967295u), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -14234i, 19788i), 1i), Struct_1(vec3<i32>(-10419i, 58290i, 2147483647i), -8572i), Struct_1(vec3<i32>(-20707i, -60678i, i32(-2147483648)), 47689i))), Struct_4(-759f, 35679u, Struct_2(Struct_1(vec3<i32>(2147483647i, 34610i, 11569i), 48461i), Struct_1(vec3<i32>(-46385i, 0i, 914i), 2147483647i), -1158f, 1u), Struct_3(Struct_1(vec3<i32>(-1i, -1543i, 35820i), -57827i), Struct_1(vec3<i32>(-1i, -1i, 10953i), 1i), Struct_1(vec3<i32>(i32(-2147483648), 51074i, 79533i), -1i))), Struct_4(-423f, 1u, Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 0i), 2147483647i), Struct_1(vec3<i32>(-5063i, -1i, -3187i), 100257i), 945f, 28417u), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(-1i, -1i, -28834i), 44954i), Struct_1(vec3<i32>(2147483647i, -24673i, 27448i), -9400i))), Struct_4(-816f, 0u, Struct_2(Struct_1(vec3<i32>(-1i, -16463i, -1i), i32(-2147483648)), Struct_1(vec3<i32>(1i, 1i, 21609i), -1i), 1640f, 17996u), Struct_3(Struct_1(vec3<i32>(-41137i, -6196i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec3<i32>(0i, 1i, -16403i), 1i), Struct_1(vec3<i32>(1i, -1i, 29649i), 23702i))), Struct_4(-324f, 31870u, Struct_2(Struct_1(vec3<i32>(-76600i, -4976i, -1373i), -47476i), Struct_1(vec3<i32>(24089i, 0i, -15082i), -11334i), -200f, 43520u), Struct_3(Struct_1(vec3<i32>(18456i, 52653i, 1i), -25823i), Struct_1(vec3<i32>(-56916i, -25794i, 0i), 1i), Struct_1(vec3<i32>(0i, i32(-2147483648), -10408i), 1i))), Struct_4(196f, 19566u, Struct_2(Struct_1(vec3<i32>(1710i, -1i, 2147483647i), -3219i), Struct_1(vec3<i32>(-28137i, 1i, -72212i), i32(-2147483648)), -1044f, 1u), Struct_3(Struct_1(vec3<i32>(-36144i, i32(-2147483648), -1i), 28488i), Struct_1(vec3<i32>(2147483647i, 78581i, 1i), -1i), Struct_1(vec3<i32>(11197i, i32(-2147483648), 2147483647i), 1i))), Struct_4(849f, 7361u, Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, 7214i), -16156i), Struct_1(vec3<i32>(14465i, 1i, -1i), -1i), 560f, 33461u), Struct_3(Struct_1(vec3<i32>(1i, i32(-2147483648), 3159i), 2147483647i), Struct_1(vec3<i32>(0i, -6316i, 1i), -20311i), Struct_1(vec3<i32>(-10527i, -1i, 2147483647i), 1i))), Struct_4(191f, 0u, Struct_2(Struct_1(vec3<i32>(-23733i, -13383i, -26740i), 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 15957i), 10202i), -1130f, 62047u), Struct_3(Struct_1(vec3<i32>(45333i, 14010i, -1i), 46706i), Struct_1(vec3<i32>(0i, i32(-2147483648), -12303i), -24065i), Struct_1(vec3<i32>(20802i, 2147483647i, -305i), 1i))), Struct_4(1000f, 93123u, Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -1i), 2147483647i), Struct_1(vec3<i32>(-6480i, 1i, -63529i), 0i), 120f, 4294967295u), Struct_3(Struct_1(vec3<i32>(-22598i, 9076i, 1i), 0i), Struct_1(vec3<i32>(0i, 16302i, 2147483647i), -62916i), Struct_1(vec3<i32>(36163i, 18519i, 46819i), 2147483647i))), Struct_4(1000f, 1u, Struct_2(Struct_1(vec3<i32>(16236i, -15350i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(-56094i, -23899i, -38605i), 9998i), -3161f, 4294967295u), Struct_3(Struct_1(vec3<i32>(20672i, 0i, -53384i), -1i), Struct_1(vec3<i32>(2282i, 30851i, -63029i), -19041i), Struct_1(vec3<i32>(37864i, i32(-2147483648), 0i), i32(-2147483648)))), Struct_4(321f, 4294967295u, Struct_2(Struct_1(vec3<i32>(-57676i, 5620i, -1i), i32(-2147483648)), Struct_1(vec3<i32>(1i, -55918i, -1i), 2147483647i), 334f, 0u), Struct_3(Struct_1(vec3<i32>(-9867i, 1i, 0i), -2878i), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), 33798i), Struct_1(vec3<i32>(11598i, -28629i, -37357i), i32(-2147483648)))));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(-15750i, 1i, -18307i), i32(-2147483648)), Struct_1(vec3<i32>(-25944i, 18118i, -19178i), i32(-2147483648)), Struct_1(vec3<i32>(41564i, 0i, -48822i), 12709i), Struct_1(vec3<i32>(5048i, i32(-2147483648), -1i), -1753i), Struct_1(vec3<i32>(2147483647i, 17743i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(27736i, 1i, 2147483647i), 2147483647i), Struct_1(vec3<i32>(1i, -877i, 2147483647i), -1i), Struct_1(vec3<i32>(-3134i, 1i, 1i), 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), 2147483647i));

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -161f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.c.c))))));
    return 1228f;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec3_u32((_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b, 4294967295u, 45025u), vec3<u32>(arg_0.b, arg_0.b, global0.b)) << ((vec3<u32>(28474u, arg_0.b, global0.b) & vec3<u32>(global0.c.d, 36466u, 0u)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(29168u, 78634u, 0u) >> (vec3<u32>(1u, arg_0.c.d, 0u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(arg_0.b, 39557u, u_input.a.x))) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, 0u, u_input.d), ~vec3<u32>(global0.b, 53138u, 1u)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(max(arg_0.a, global0.c.c)), 1u, Struct_2(arg_1, arg_0.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(44289u, global0.b), 12u)], vec3<u32>(4294967295u, u_input.d, 59718u) << (vec3<u32>(69262u, 47632u, 1u) % vec3<u32>(32u)), Struct_1(vec3<i32>(55255i, 873i, -22330i), u_input.e))), global0.a), select(~31070u, select(1u, 44872u, arg_2), true)), global0.d);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1784f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(802f + 297f))), 771f))), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, global0.c.d) & (0u | global0.b)), arg_0.c, Struct_3(global0.c.b, Struct_1(firstTrailingBit(vec3<i32>(-32639i, u_input.b, arg_0.d.a.b) << (vec3<u32>(0u, arg_0.c.d, 4294967295u) % vec3<u32>(32u))), ~var_1.d.c.b), arg_0.c.a));
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_2.b, 726u, 1u, global0.c.d) | ~vec4<u32>(arg_0.c.d, var_1.c.d, 5545u, u_input.d)), ~vec4<u32>(~30375u, _wgslsmith_mult_u32(23475u, var_1.b), 2976u, 65254u)), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(4294967295u, arg_0.c.d, u_input.d, 17878u))), firstLeadingBit(firstTrailingBit(vec4<u32>(0u, var_1.b, global0.b, 17355u)))));
    let var_4 = var_1.d;
    return arg_0.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<i32> {
    global2 = array<Struct_1, 9>();
    return ~(u_input.c & global0.d.a.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = global0.c.a;
    global2 = array<Struct_1, 9>();
    global3 = vec2<i32>(~(abs(u_input.c.x) >> (firstTrailingBit(69813u) % 32u)), firstTrailingBit(select(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a.x, -65513i, -42803i), firstTrailingBit(u_input.c)), _wgslsmith_sub_i32(var_0.b, 1i) & _wgslsmith_clamp_i32(u_input.e, global3.x, arg_1.b.b), true)));
    var var_1 = true;
    var var_2 = !vec4<bool>(!(!all(vec4<bool>(true, true, false, true))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))) && any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false, true);
    return Struct_4(global0.c.c, u_input.d, Struct_2(Struct_1(~func_3(vec3<u32>(u_input.a.x, 68140u, 1u), 2147483647i, Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global0.d.c, -1131f, arg_1.d), vec2<f32>(952f, arg_0)), -(i32(-1i) * -2147483647i)), Struct_1(~global0.d.a.a, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.c.b.a.x, 0i), vec3<i32>(-28376i, -49539i, 15083i)), u_input.e)), _wgslsmith_f_op_f32(exp2(arg_1.c)), min(~(arg_1.d ^ u_input.a.x), select(min(arg_1.d, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.d, 1u), vec4<u32>(18245u, global0.c.d, 35874u, global0.b)), !var_2.x))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 12>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * -404f), 1014f)), _wgslsmith_f_op_f32(abs(global0.c.c)), _wgslsmith_f_op_f32(sign(313f)));
    global3 = global0.c.a.a.yz;
    let var_1 = global0.c;
    var var_2 = global3.x;
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(var_0.x, global0.c.d, global0.c, global0.d), Struct_1(vec3<i32>(u_input.e, 70430i, 73773i), -2147483647i), true)))))), Struct_2(Struct_1(func_3(vec3<u32>(86454u, 4294967295u, 4294967295u), _wgslsmith_mult_i32(global3.x, var_1.b.a.x), Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], Struct_1(vec3<i32>(u_input.c.x, var_1.a.b, global3.x), global0.d.c.b), global0.c.c, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -923f))), max(2147483647i, select(global0.d.c.b, 26541i, false))), var_1.b, var_0.x, ~(~58659u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.c.c))), 4294967295u ^ (_wgslsmith_sub_u32(countOneBits(global0.b), 1u) >> (((u_input.a.x << (u_input.a.x % 32u)) ^ 1u) % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.d, 2795u, countOneBits(1595u)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1u, global0.b, 4294967295u) | vec4<u32>(u_input.d, u_input.d, 1u, var_1.d)), vec4<u32>(max(global0.b, var_1.d), ~var_1.d, 1u, _wgslsmith_clamp_u32(4294967295u, var_1.d, 4294967295u)))));
}

