struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-961f, 393f), vec2<f32>(1000f, -403f), vec2<f32>(801f, -1000f), vec2<f32>(-733f, -1000f), vec2<f32>(-338f, -1605f), vec2<f32>(-1445f, 1171f), vec2<f32>(2839f, -2648f));

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<i32>(-44373i, -37325i, -9388i, -6347i), vec3<bool>(false, false, true), true), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -63536i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-1i, 2147483647i, 23372i, 0i), vec3<bool>(true, false, false), true), 1691f, Struct_1(vec4<i32>(-1i, 2147483647i, 0i, 1i), vec3<bool>(true, true, true), true)), Struct_2(Struct_1(vec4<i32>(34761i, -1i, i32(-2147483648), -4694i), vec3<bool>(true, true, false), false), Struct_1(vec4<i32>(37367i, -24081i, -18209i, -2195i), vec3<bool>(false, true, false), false), Struct_1(vec4<i32>(-76456i, -12548i, -37272i, 1182i), vec3<bool>(true, true, true), false), 503f, Struct_1(vec4<i32>(-48418i, 7320i, i32(-2147483648), 2147483647i), vec3<bool>(true, true, false), true)), Struct_2(Struct_1(vec4<i32>(43678i, 2147483647i, -18560i, -1i), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(-1i, 0i, 29081i, 7051i), vec3<bool>(false, true, false), true), Struct_1(vec4<i32>(42716i, 0i, 1i, -57479i), vec3<bool>(true, false, true), true), 629f, Struct_1(vec4<i32>(1i, -1i, -65015i, 2147483647i), vec3<bool>(true, true, true), false)), Struct_2(Struct_1(vec4<i32>(1i, 25316i, -34984i, -37457i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(1i, 15616i, 32748i, i32(-2147483648)), vec3<bool>(false, false, false), false), Struct_1(vec4<i32>(-2599i, -168i, -1i, -20800i), vec3<bool>(true, false, true), true), -846f, Struct_1(vec4<i32>(-11704i, 0i, -34340i, 28074i), vec3<bool>(false, true, false), true)), Struct_2(Struct_1(vec4<i32>(60021i, 11069i, -14859i, 1i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-1i, 7125i, -1i, 9686i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(0i, -45212i, 23680i, 22563i), vec3<bool>(false, true, true), true), -1142f, Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), 0i), vec3<bool>(true, true, true), true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -3326i, -25359i), vec3<bool>(true, false, false), false), Struct_1(vec4<i32>(-1i, i32(-2147483648), -30833i, 38829i), vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(2147483647i, 10604i, -13841i, 14632i), vec3<bool>(true, false, false), true), -837f, Struct_1(vec4<i32>(18791i, -359i, -20039i, -1i), vec3<bool>(false, true, false), false)), Struct_2(Struct_1(vec4<i32>(1i, -14402i, 18240i, 2147483647i), vec3<bool>(false, false, true), false), Struct_1(vec4<i32>(-71021i, -12160i, -1i, 2147483647i), vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(-17493i, -1i, -27652i, 30520i), vec3<bool>(true, true, false), false), -391f, Struct_1(vec4<i32>(30279i, -21476i, 0i, i32(-2147483648)), vec3<bool>(false, false, false), true)), Struct_2(Struct_1(vec4<i32>(25858i, -1i, -47114i, -13732i), vec3<bool>(true, true, false), false), Struct_1(vec4<i32>(2147483647i, 0i, 1523i, 0i), vec3<bool>(false, true, false), true), Struct_1(vec4<i32>(-17166i, -11007i, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, false), false), 841f, Struct_1(vec4<i32>(-7811i, -1402i, 34208i, -4556i), vec3<bool>(true, false, true), true)), Struct_2(Struct_1(vec4<i32>(1i, 44900i, 0i, 2147483647i), vec3<bool>(false, true, true), false), Struct_1(vec4<i32>(-4096i, i32(-2147483648), 12813i, 0i), vec3<bool>(true, true, true), true), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648)), vec3<bool>(false, false, false), false), -1000f, Struct_1(vec4<i32>(3791i, 2147483647i, -1i, 0i), vec3<bool>(false, false, false), true)), Struct_2(Struct_1(vec4<i32>(60135i, 0i, 0i, 0i), vec3<bool>(false, true, true), true), Struct_1(vec4<i32>(0i, -1i, -12466i, -32055i), vec3<bool>(false, true, true), true), Struct_1(vec4<i32>(-6917i, 22926i, -48391i, 31001i), vec3<bool>(false, false, true), true), 679f, Struct_1(vec4<i32>(-28552i, 2147483647i, -24865i, -37498i), vec3<bool>(false, false, false), true)), Struct_2(Struct_1(vec4<i32>(41782i, 1i, 0i, 1399i), vec3<bool>(false, false, true), true), Struct_1(vec4<i32>(8302i, 54392i, 2147483647i, 0i), vec3<bool>(true, true, true), true), Struct_1(vec4<i32>(0i, 9854i, 1i, 17515i), vec3<bool>(false, true, true), false), 1000f, Struct_1(vec4<i32>(-62775i, 1i, -15647i, i32(-2147483648)), vec3<bool>(false, true, true), true)), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 2467i), vec3<bool>(true, false, false), false), Struct_1(vec4<i32>(72980i, -18806i, 1i, -36263i), vec3<bool>(false, false, false), false), Struct_1(vec4<i32>(0i, -34579i, 2043i, 42003i), vec3<bool>(false, false, false), true), -1216f, Struct_1(vec4<i32>(999i, -1i, 2147483647i, 2147483647i), vec3<bool>(false, false, true), false)), Struct_2(Struct_1(vec4<i32>(0i, -1i, -3071i, 0i), vec3<bool>(true, true, true), true), Struct_1(vec4<i32>(-1i, 25861i, -1i, -1i), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(2147483647i, 2147483647i, 21240i, 15453i), vec3<bool>(false, false, true), true), -1790f, Struct_1(vec4<i32>(-31565i, 0i, 0i, -17137i), vec3<bool>(true, false, true), true)), Struct_2(Struct_1(vec4<i32>(27793i, 18373i, -21784i, -1745i), vec3<bool>(true, false, false), false), Struct_1(vec4<i32>(-20404i, 1i, -42246i, -89548i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(13795i, -31450i, 23379i, 0i), vec3<bool>(true, true, true), false), -322f, Struct_1(vec4<i32>(31004i, i32(-2147483648), -1i, i32(-2147483648)), vec3<bool>(true, false, true), true)), Struct_2(Struct_1(vec4<i32>(-18416i, -21044i, -9307i, 1i), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(0i, 1i, 1i, -1i), vec3<bool>(true, true, true), true), Struct_1(vec4<i32>(0i, i32(-2147483648), 38824i, -12787i), vec3<bool>(false, false, true), true), 1007f, Struct_1(vec4<i32>(25298i, 1959i, 28110i, -3977i), vec3<bool>(false, true, true), false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 46956i, -12635i, i32(-2147483648)), vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(-18924i, -18210i, 2147483647i, -57013i), vec3<bool>(false, false, true), false), Struct_1(vec4<i32>(-1i, i32(-2147483648), 21402i, 20859i), vec3<bool>(false, true, true), true), -295f, Struct_1(vec4<i32>(-58836i, 1i, i32(-2147483648), 23992i), vec3<bool>(true, false, false), false)), Struct_2(Struct_1(vec4<i32>(45740i, -10568i, 3469i, -46347i), vec3<bool>(false, false, true), false), Struct_1(vec4<i32>(1i, -12000i, i32(-2147483648), 92919i), vec3<bool>(false, true, true), false), Struct_1(vec4<i32>(1i, 2147483647i, -103077i, i32(-2147483648)), vec3<bool>(false, false, false), true), -298f, Struct_1(vec4<i32>(1i, i32(-2147483648), -6566i, 10192i), vec3<bool>(true, true, true), false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -33754i, 25811i, -16546i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(1i, 0i, 10944i, 31717i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<bool>(false, false, false), true), -1000f, Struct_1(vec4<i32>(-1i, 40128i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true), false)), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 1i, -23693i), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(8832i, 2147483647i, 1i, 1i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-44279i, 42639i, -1i, 1i), vec3<bool>(false, false, false), false), 1115f, Struct_1(vec4<i32>(43925i, 0i, -1i, 1i), vec3<bool>(false, true, false), true)), Struct_2(Struct_1(vec4<i32>(-5534i, -1i, 2147483647i, -37385i), vec3<bool>(false, false, false), false), Struct_1(vec4<i32>(-11536i, 25149i, -5538i, 15410i), vec3<bool>(true, true, false), false), Struct_1(vec4<i32>(-1i, 18731i, 0i, -6340i), vec3<bool>(true, false, true), true), 264f, Struct_1(vec4<i32>(4127i, i32(-2147483648), -1i, 32833i), vec3<bool>(false, true, true), false)), Struct_2(Struct_1(vec4<i32>(0i, -68197i, 7092i, 11669i), vec3<bool>(false, true, false), true), Struct_1(vec4<i32>(9551i, 3532i, 2147483647i, -14664i), vec3<bool>(false, true, true), false), Struct_1(vec4<i32>(14491i, i32(-2147483648), 47918i, -1i), vec3<bool>(false, false, false), false), -1061f, Struct_1(vec4<i32>(39397i, -31159i, -16106i, 1i), vec3<bool>(true, true, true), false)), Struct_2(Struct_1(vec4<i32>(1i, -528i, 22508i, 57154i), vec3<bool>(false, true, true), true), Struct_1(vec4<i32>(-14300i, -632i, -92003i, 0i), vec3<bool>(false, true, false), false), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 33439i, i32(-2147483648)), vec3<bool>(false, false, true), false), 129f, Struct_1(vec4<i32>(-43447i, -32543i, 1i, 2147483647i), vec3<bool>(true, false, false), false)), Struct_2(Struct_1(vec4<i32>(45387i, -22154i, i32(-2147483648), 1i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-9746i, -18032i, 1i, 16322i), vec3<bool>(false, false, true), true), Struct_1(vec4<i32>(32392i, -21412i, 0i, -57622i), vec3<bool>(true, true, false), true), -1679f, Struct_1(vec4<i32>(-27012i, 1i, -23083i, -1i), vec3<bool>(false, true, true), false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -33135i, 2147483647i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, i32(-2147483648)), vec3<bool>(false, true, true), false), Struct_1(vec4<i32>(20901i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<bool>(true, true, false), true), -1032f, Struct_1(vec4<i32>(0i, 1i, -44226i, 4054i), vec3<bool>(false, false, true), false)), Struct_2(Struct_1(vec4<i32>(24092i, i32(-2147483648), 2147483647i, -1i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-34546i, i32(-2147483648), -1i, 0i), vec3<bool>(false, false, false), false), Struct_1(vec4<i32>(0i, -22134i, 2987i, 1i), vec3<bool>(false, true, true), true), -961f, Struct_1(vec4<i32>(19963i, i32(-2147483648), -38854i, 24163i), vec3<bool>(true, false, false), false)), Struct_2(Struct_1(vec4<i32>(-22942i, 5532i, i32(-2147483648), -9754i), vec3<bool>(true, false, true), true), Struct_1(vec4<i32>(1035i, 36146i, -1791i, 1109i), vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(0i, 2147483647i, -65185i, -83322i), vec3<bool>(true, true, true), true), 574f, Struct_1(vec4<i32>(1i, -443i, -1i, i32(-2147483648)), vec3<bool>(true, true, true), false)), Struct_2(Struct_1(vec4<i32>(1i, 60617i, 1i, 2147483647i), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(4948i, -12535i, -24308i, 1i), vec3<bool>(false, false, false), false), Struct_1(vec4<i32>(-72715i, -13134i, i32(-2147483648), 5907i), vec3<bool>(false, true, true), true), -1768f, Struct_1(vec4<i32>(27665i, 33082i, 29031i, i32(-2147483648)), vec3<bool>(true, false, true), false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    var var_0 = arg_0.c.a.wwy;
    let var_1 = arg_0.b.a.xxy;
    var var_2 = ~0u;
    return arg_0.d;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = abs(select(-2147483647i, _wgslsmith_add_i32(arg_0, arg_2.a.x), arg_2.b.x));
    global0 = array<vec2<f32>, 7>();
    var var_1 = 4294967295u;
    var var_2 = arg_1.x >> (u_input.b % 32u);
    global0 = array<vec2<f32>, 7>();
    return any(!select(vec4<bool>(arg_2.b.x, any(vec3<bool>(false, false, false)), !arg_3.b.x, true), select(!vec4<bool>(true, arg_2.b.x, false, arg_3.c), select(vec4<bool>(false, arg_2.b.x, true, false), vec4<bool>(false, false, false, false), vec4<bool>(arg_2.b.x, true, false, false)), vec4<bool>(true, arg_3.c, arg_2.c, arg_3.b.x)), !all(vec2<bool>(arg_2.b.x, arg_3.b.x))));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global2 = array<Struct_2, 27>();
    var var_0 = ~(~(~(~_wgslsmith_add_u32(15141u, 63371u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)))))) - _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(abs(72933u), 27u)])));
    var var_2 = Struct_1(-(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 28567i, 0i), vec4<i32>(1i, -1714i, 1i, -2147483647i)) << (~vec4<u32>(4294967295u, u_input.b, u_input.a.x, 0u) % vec4<u32>(32u))) | ~vec4<i32>(~2147483647i, 1i, ~1i, ~61476i), vec3<bool>(false, true, arg_0), func_3(25699i, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(~u_input.b, u_input.a.x)), Struct_1(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 41399i, 2147483647i, 26247i), vec4<i32>(8201i, -1i, -881i, -28727i)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(-112f, -662f)) >= 1421f), Struct_1(vec4<i32>(0i, -1i >> (u_input.b % 32u), 2147483647i >> (u_input.b % 32u), _wgslsmith_div_i32(-1i, 22519i)), vec3<bool>(true, true, false), any(vec4<bool>(true, true, arg_0, arg_0)))));
    global2 = array<Struct_2, 27>();
    return StorageBuffer(_wgslsmith_clamp_vec2_i32(select(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a.x, 2147483647i), var_2.a.zy), vec2<i32>(var_2.a.x, -var_2.a.x), select(var_2.b.zy, select(var_2.b.xx, vec2<bool>(false, false), false), any(vec3<bool>(false, var_2.b.x, var_2.c)))), var_2.a.wz & vec2<i32>(var_2.a.x ^ -569i, -var_2.a.x), vec2<i32>(var_2.a.x, _wgslsmith_sub_i32(0i, 1i))), -490f, firstTrailingBit(abs(vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u), 1u))), u_input.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(10687u, 27u)];
    global1 = array<vec3<u32>, 6>();
    let var_1 = Struct_1(~countOneBits(vec4<i32>(var_0.e.a.x, -20589i, _wgslsmith_clamp_i32(var_0.e.a.x, 0i, -3485i), var_0.b.a.x & 1i)), !(!vec3<bool>(true, true, !var_0.a.b.x)), true);
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 16380u), max(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(41094u, 21931u, u_input.a.x))), global1[_wgslsmith_index_u32(u_input.b | u_input.a.x, 6u)]) | countOneBits(u_input.b), _wgslsmith_div_u32(firstTrailingBit(u_input.a.x) << (u_input.b % 32u), 16213u) >> ((47551u ^ _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, 22925u, 22216u))) % 32u));
    global1 = array<vec3<u32>, 6>();
    global1 = array<vec3<u32>, 6>();
    let var_3 = var_0.a;
    var var_4 = Struct_1(~var_0.a.a, vec3<bool>(var_0.a.c, true, var_1.c), !(!(true && (false || var_3.c))));
    let x = u_input.a;
    s_output = func_1(select(true, _wgslsmith_f_op_f32(var_0.d - _wgslsmith_div_f32(var_0.d, var_0.d)) == _wgslsmith_div_f32(-1475f, var_0.d), all(!(!vec4<bool>(true, false, var_4.c, var_1.b.x)))));
}

