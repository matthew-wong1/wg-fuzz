struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 1u, 58985u);

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(1u, 42301u, 4294967295u), vec3<i32>(15376i, -6307i, 3251i), vec4<i32>(-11156i, 2147483647i, 2147483647i, -25547i), vec2<i32>(-47277i, -1i), Struct_1(1u)), Struct_2(vec3<u32>(15092u, 0u, 0u), vec3<i32>(2147483647i, 7002i, 2147483647i), vec4<i32>(4789i, 27632i, 0i, -53986i), vec2<i32>(-27718i, 29087i), Struct_1(0u)), Struct_2(vec3<u32>(48687u, 1u, 30683u), vec3<i32>(61381i, -39609i, -47023i), vec4<i32>(1i, -14184i, -24460i, 43052i), vec2<i32>(22384i, 11170i), Struct_1(4294967295u)), Struct_2(vec3<u32>(0u, 48270u, 4338u), vec3<i32>(12684i, 29921i, 0i), vec4<i32>(7613i, -1i, 0i, 2147483647i), vec2<i32>(0i, 14310i), Struct_1(11295u)), Struct_2(vec3<u32>(78885u, 38595u, 0u), vec3<i32>(24040i, 1i, -16838i), vec4<i32>(-57632i, -1i, 0i, -56881i), vec2<i32>(56781i, 2147483647i), Struct_1(1u)), Struct_2(vec3<u32>(4294967295u, 31673u, 0u), vec3<i32>(-13668i, -3641i, 1i), vec4<i32>(2147483647i, 2965i, 2147483647i, 0i), vec2<i32>(2147483647i, 0i), Struct_1(1087u)), Struct_2(vec3<u32>(3312u, 1u, 4294967295u), vec3<i32>(53615i, -37679i, 1i), vec4<i32>(-55556i, -1i, -1i, i32(-2147483648)), vec2<i32>(0i, 1i), Struct_1(4294967295u)), Struct_2(vec3<u32>(4294967295u, 65322u, 25939u), vec3<i32>(0i, 32104i, -1i), vec4<i32>(i32(-2147483648), 44882i, 2147483647i, 57863i), vec2<i32>(26138i, 2147483647i), Struct_1(1u)), Struct_2(vec3<u32>(9143u, 4294967295u, 69175u), vec3<i32>(-1i, 32198i, 30844i), vec4<i32>(-96630i, 1i, -2384i, -38367i), vec2<i32>(1i, -8291i), Struct_1(3349u)), Struct_2(vec3<u32>(40434u, 0u, 0u), vec3<i32>(-35204i, i32(-2147483648), 0i), vec4<i32>(1i, -21879i, 1i, -1i), vec2<i32>(-34623i, 27243i), Struct_1(1u)), Struct_2(vec3<u32>(56655u, 22675u, 6747u), vec3<i32>(45822i, -1i, -29183i), vec4<i32>(1i, -1i, 42893i, 1i), vec2<i32>(i32(-2147483648), -16646i), Struct_1(45990u)), Struct_2(vec3<u32>(4294967295u, 0u, 1u), vec3<i32>(10565i, 39551i, 15492i), vec4<i32>(66656i, 26368i, -47131i, i32(-2147483648)), vec2<i32>(-1605i, i32(-2147483648)), Struct_1(4294967295u)), Struct_2(vec3<u32>(6685u, 45893u, 20915u), vec3<i32>(24213i, 2147483647i, -30131i), vec4<i32>(-31949i, 23664i, -7107i, -36262i), vec2<i32>(-10397i, -1i), Struct_1(0u)), Struct_2(vec3<u32>(73404u, 4294967295u, 0u), vec3<i32>(-1i, -14733i, 14587i), vec4<i32>(27509i, 2147483647i, -70818i, 70331i), vec2<i32>(2147483647i, -86847i), Struct_1(38612u)), Struct_2(vec3<u32>(88444u, 1u, 4294967295u), vec3<i32>(i32(-2147483648), 1i, -38391i), vec4<i32>(i32(-2147483648), -26006i, 17222i, 2147483647i), vec2<i32>(-35959i, i32(-2147483648)), Struct_1(4546u)), Struct_2(vec3<u32>(97435u, 0u, 45096u), vec3<i32>(46219i, -26048i, -11846i), vec4<i32>(1i, 37162i, i32(-2147483648), 0i), vec2<i32>(-23774i, 30465i), Struct_1(64601u)), Struct_2(vec3<u32>(37701u, 31313u, 27318u), vec3<i32>(-22994i, -4402i, -1i), vec4<i32>(-1i, -6350i, -4208i, i32(-2147483648)), vec2<i32>(-47800i, 1i), Struct_1(104343u)), Struct_2(vec3<u32>(60644u, 46331u, 26874u), vec3<i32>(37033i, i32(-2147483648), 1i), vec4<i32>(-1i, -95660i, -3279i, i32(-2147483648)), vec2<i32>(21853i, 2147483647i), Struct_1(0u)), Struct_2(vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(13855i, 2147483647i, 0i), vec4<i32>(1i, 0i, -40741i, -7656i), vec2<i32>(0i, -2385i), Struct_1(11891u)), Struct_2(vec3<u32>(0u, 0u, 62739u), vec3<i32>(56189i, 46214i, 26285i), vec4<i32>(56576i, -1657i, i32(-2147483648), -20491i), vec2<i32>(-26554i, -8657i), Struct_1(1u)), Struct_2(vec3<u32>(4294967295u, 42072u, 4294967295u), vec3<i32>(-1i, 9527i, -1i), vec4<i32>(-2239i, 1i, 11841i, 2147483647i), vec2<i32>(76940i, 824i), Struct_1(58900u)), Struct_2(vec3<u32>(4294967295u, 56374u, 0u), vec3<i32>(0i, 2147483647i, -17208i), vec4<i32>(21761i, -1i, 1i, 32038i), vec2<i32>(7840i, 41075i), Struct_1(0u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 7279u), vec3<i32>(-22256i, 2147483647i, 18277i), vec4<i32>(-29162i, 556i, -1i, 2147483647i), vec2<i32>(1i, 35954i), Struct_1(10017u)), Struct_2(vec3<u32>(5196u, 0u, 0u), vec3<i32>(i32(-2147483648), -18418i, 32400i), vec4<i32>(i32(-2147483648), 0i, -42445i, 1i), vec2<i32>(50454i, -1i), Struct_1(1u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec3<i32>(7850i, 1i, 1i), vec4<i32>(-1i, 0i, 0i, -8015i), vec2<i32>(1i, 1302i), Struct_1(9459u)));

var<private> global3: Struct_1;

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = -1438f;
    let var_1 = arg_0;
    global3 = var_1.d.e;
    var var_2 = arg_0.a;
    var var_3 = vec4<u32>(~1u, arg_2.e.a, _wgslsmith_div_u32(global3.a, _wgslsmith_clamp_u32(0u, 15908u, ~4294967295u) << (arg_2.e.a % 32u)), 11264u);
    return arg_0.b.x;
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = min(countOneBits(-firstLeadingBit(vec4<i32>(arg_0, arg_0, u_input.b.x, 2147483647i))), -(~(~(-vec4<i32>(1i, -2147483647i, 6354i, -44826i)))));
    global1 = ~(~(global4[_wgslsmith_index_u32(1u, 27u)] & ~vec4<u32>(global3.a, global1.x, 1u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
    global1 = vec4<u32>(37978u >> (global1.x % 32u), ~(~_wgslsmith_sub_u32(u_input.d.x, 4294967295u)) ^ global1.x, reverseBits(~_wgslsmith_sub_u32(~83708u, _wgslsmith_div_u32(global3.a, global1.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~21577u), _wgslsmith_add_u32(1u ^ global1.x, 6834u)), countOneBits(min(vec2<u32>(global1.x, 0u), abs(vec2<u32>(u_input.d.x, u_input.d.x))))));
    var var_2 = 2147483647i;
    return abs(global3.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    global2 = array<Struct_2, 25>();
    global1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d.x, 1u, 49121u, global3.a), vec4<u32>(56620u, abs(countOneBits(global1.x)), u_input.d.x, ~(~0u))), vec4<u32>(0u, global3.a, 103062u, _wgslsmith_sub_u32(countOneBits(abs(57812u)), 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(global3.a, 27u)], vec4<u32>(9438u, 1u, 2149u, global1.x)) | abs(global1.x), global3.a, 86841u, _wgslsmith_mult_u32(global1.x, select(4294967295u, 44656u, true))) ^ _wgslsmith_mult_vec4_u32(min(countOneBits(u_input.a), ~vec4<u32>(global3.a, global1.x, 0u, u_input.c.x)), global4[_wgslsmith_index_u32(global3.a, 27u)]));
    let var_0 = Struct_1(reverseBits(global1.x));
    var var_1 = !arg_0.x;
    global2 = array<Struct_2, 25>();
    return func_4(func_3(Struct_3(Struct_1(4308u), ~vec2<i32>(15784i, arg_1), vec3<f32>(-371f, -212f, 1000f), global2[_wgslsmith_index_u32(10635u & var_0.a, 25u)], u_input.b), any(select(arg_0.wx, vec2<bool>(arg_0.x, arg_0.x), arg_0.xz)), global2[_wgslsmith_index_u32(~global1.x, 25u)]) << (min(~0u, ~global1.x) % 32u));
}

fn func_1() -> vec3<bool> {
    global1 = vec4<u32>(_wgslsmith_div_u32(0u, reverseBits(func_2(vec4<bool>(true, true, true, true), firstLeadingBit(0i)))), func_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b ^ vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(u_input.b.x, u_input.b.x)), 1i)), 27384u, ~global1.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(803f, 365f, true)), 1237f)) * 2170f) * -1631f));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1048f, 1000f) + -370f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1125f, -955f)))) + 1078f), 796f, false));
    global4 = array<vec4<u32>, 27>();
    var var_1 = _wgslsmith_add_vec3_u32(firstTrailingBit(firstLeadingBit(reverseBits(vec3<u32>(45126u, 1u, global1.x)))), vec3<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, global4[_wgslsmith_index_u32(global3.a, 27u)]), min(36482u, 8854u))), ~global3.a, ~global3.a));
    return select(select(vec3<bool>(any(vec2<bool>(true, true)), false, true), !vec3<bool>(true, true, select(false, true, false)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), vec3<bool>((min(u_input.a.x, global3.a) & abs(var_1.x)) == (0u | _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 25435u, 4494u, global3.a), global4[_wgslsmith_index_u32(1u, 27u)])), true, true), vec3<bool>(select(true, true, true), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    let var_0 = select(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), true), func_1(), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -820f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(round(-546f)))), select(!func_1(), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !any(vec2<bool>(true, u_input.c.x >= u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec2_i32(-(~firstLeadingBit(-vec2<i32>(u_input.b.x, u_input.b.x))), u_input.b);
    let var_2 = any(vec4<bool>(true, !(firstLeadingBit(global3.a) >= 0u), true, func_1().x));
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    var var_3 = 6402u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(24261i, 1i), (2147483647i | u_input.b.x) ^ ~(-1i));
}

