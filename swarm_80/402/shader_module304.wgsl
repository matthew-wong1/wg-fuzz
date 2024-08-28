struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: array<vec2<u32>, 13>;

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_2(vec3<u32>(5808u, 6301u, 1u), 55379i, false), Struct_1(vec4<i32>(0i, -39640i, 69300i, 2147483647i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-10783i, 1i, 16195i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 108730u, 0u), 1i, false), Struct_1(vec4<i32>(2147483647i, 29846i, -33334i, 1i), vec3<i32>(-1i, -59812i, 40112i), vec3<i32>(2147483647i, -1i, 2147483647i))), Struct_4(Struct_2(vec3<u32>(17186u, 1u, 0u), 15190i, true), Struct_1(vec4<i32>(-1i, 9639i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, 38024i), vec3<i32>(-1i, -21929i, 12511i))), Struct_4(Struct_2(vec3<u32>(1u, 0u, 20217u), -1i, true), Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 1i), vec3<i32>(-14669i, 53962i, 2147483647i), vec3<i32>(-1i, 22927i, -22379i))), Struct_4(Struct_2(vec3<u32>(19130u, 63241u, 4294967295u), -23607i, true), Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, 9068i), vec3<i32>(1i, -54750i, -131i), vec3<i32>(i32(-2147483648), 1i, -1i))), Struct_4(Struct_2(vec3<u32>(1u, 0u, 7182u), i32(-2147483648), false), Struct_1(vec4<i32>(2147483647i, 96446i, 0i, -1i), vec3<i32>(26723i, 35127i, -1856i), vec3<i32>(22026i, -243i, -1i))), Struct_4(Struct_2(vec3<u32>(0u, 1u, 29353u), -25965i, false), Struct_1(vec4<i32>(17781i, 0i, -1i, -1296i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-28986i, -22452i, -13746i))), Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, 562u), -48676i, false), Struct_1(vec4<i32>(40972i, -54603i, -12921i, 43989i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(-42971i, -422i, -29952i))), Struct_4(Struct_2(vec3<u32>(64896u, 4294967295u, 4294967295u), 1i, true), Struct_1(vec4<i32>(-21617i, i32(-2147483648), -1i, -1i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)))), Struct_4(Struct_2(vec3<u32>(4294967295u, 1u, 0u), -1i, true), Struct_1(vec4<i32>(-14391i, 0i, 2147483647i, 1i), vec3<i32>(-9204i, 9130i, 1i), vec3<i32>(-1i, 9084i, -6192i))), Struct_4(Struct_2(vec3<u32>(1u, 121112u, 8728u), -7799i, false), Struct_1(vec4<i32>(26743i, 1i, 0i, -24602i), vec3<i32>(-21490i, -1i, -16870i), vec3<i32>(-288i, -2954i, -2794i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 75546u, 1u), 5647i, true), Struct_1(vec4<i32>(860i, 9232i, -22765i, 2147483647i), vec3<i32>(0i, -7418i, 1i), vec3<i32>(-24663i, i32(-2147483648), -8832i))), Struct_4(Struct_2(vec3<u32>(1u, 0u, 63970u), 17000i, false), Struct_1(vec4<i32>(53613i, -1i, 2147483647i, 2147483647i), vec3<i32>(1i, 26516i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i))), Struct_4(Struct_2(vec3<u32>(1u, 759u, 4294967295u), -5511i, false), Struct_1(vec4<i32>(8906i, 8447i, 268i, i32(-2147483648)), vec3<i32>(-43702i, 19080i, -1i), vec3<i32>(i32(-2147483648), -1i, 0i))), Struct_4(Struct_2(vec3<u32>(91435u, 4294967295u, 12306u), -41416i, true), Struct_1(vec4<i32>(0i, i32(-2147483648), 27117i, 12111i), vec3<i32>(0i, 14261i, -48901i), vec3<i32>(1i, 30747i, 4383i))), Struct_4(Struct_2(vec3<u32>(1u, 18821u, 99604u), 28666i, false), Struct_1(vec4<i32>(0i, -1i, -24524i, 40184i), vec3<i32>(0i, 1i, -27319i), vec3<i32>(-62476i, -1i, 2147483647i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), 12422i, false), Struct_1(vec4<i32>(1i, 11751i, 12224i, -1i), vec3<i32>(28365i, 58627i, 0i), vec3<i32>(i32(-2147483648), 56695i, -11041i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 95300u, 1u), i32(-2147483648), false), Struct_1(vec4<i32>(-23472i, -1i, 2147483647i, -3859i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(1i, 35123i, 0i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 54765u, 1u), 8910i, true), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), vec3<i32>(24888i, -19284i, 1i), vec3<i32>(1i, -8255i, -1i))), Struct_4(Struct_2(vec3<u32>(34926u, 4294967295u, 1u), 55388i, false), Struct_1(vec4<i32>(-55774i, 95511i, 32274i, -43739i), vec3<i32>(0i, -28166i, 37638i), vec3<i32>(-1i, 0i, -1i))), Struct_4(Struct_2(vec3<u32>(57879u, 21588u, 24416u), -40289i, true), Struct_1(vec4<i32>(-1i, 3082i, 37442i, -1i), vec3<i32>(39773i, -181i, 2147483647i), vec3<i32>(-4892i, -4126i, 11306i))), Struct_4(Struct_2(vec3<u32>(60387u, 72184u, 0u), i32(-2147483648), false), Struct_1(vec4<i32>(0i, 2147483647i, -64107i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(1i, 76819i, 20819i))), Struct_4(Struct_2(vec3<u32>(49186u, 7762u, 1u), -1i, false), Struct_1(vec4<i32>(1i, -20099i, 1100i, 0i), vec3<i32>(-14452i, 1i, i32(-2147483648)), vec3<i32>(-1i, 0i, -22347i))), Struct_4(Struct_2(vec3<u32>(0u, 4294967295u, 36369u), 4036i, false), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(31855i, 19610i, -41991i), vec3<i32>(-15751i, 0i, i32(-2147483648)))), Struct_4(Struct_2(vec3<u32>(0u, 70533u, 44753u), 2147483647i, true), Struct_1(vec4<i32>(-2420i, -14255i, 4504i, 1i), vec3<i32>(-28311i, 1i, 1i), vec3<i32>(-28763i, -8718i, 0i))), Struct_4(Struct_2(vec3<u32>(0u, 1u, 1u), 13823i, true), Struct_1(vec4<i32>(0i, 34282i, -23628i, 2147483647i), vec3<i32>(12227i, -29713i, 141i), vec3<i32>(i32(-2147483648), 67112i, -9401i))), Struct_4(Struct_2(vec3<u32>(0u, 47096u, 17090u), 43871i, true), Struct_1(vec4<i32>(0i, 1i, 29656i, 7904i), vec3<i32>(2147483647i, 2147483647i, -33789i), vec3<i32>(-19791i, 23437i, 0i))), Struct_4(Struct_2(vec3<u32>(0u, 0u, 0u), 2147483647i, false), Struct_1(vec4<i32>(-5259i, -53332i, 25698i, 3190i), vec3<i32>(0i, -1i, 35891i), vec3<i32>(-86034i, 32758i, 0i))), Struct_4(Struct_2(vec3<u32>(4294967295u, 21109u, 15325u), 2147483647i, false), Struct_1(vec4<i32>(19791i, i32(-2147483648), 2147483647i, 25341i), vec3<i32>(-22207i, 1i, -27569i), vec3<i32>(-3769i, -4579i, i32(-2147483648)))), Struct_4(Struct_2(vec3<u32>(23472u, 1u, 0u), -1i, true), Struct_1(vec4<i32>(5405i, -6362i, -24907i, -18619i), vec3<i32>(2147483647i, -1i, -19674i), vec3<i32>(63950i, 0i, -41028i))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2717f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -881f), 564f, true)))), -957f));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))));
    var var_2 = Struct_1(vec4<i32>(i32(-1i) * -34926i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global0.c.x, -2147483647i ^ global0.c.x), global0.c.x), 2147483647i, global0.a.x), ~global0.c, min(max(~(global0.c | u_input.c), u_input.c), -vec3<i32>(~(-17492i), -4244i, 1i)));
    var var_3 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + -196f))));
    var var_4 = Struct_2(~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 26926u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, u_input.b, 0u), vec3<u32>(arg_0, u_input.d, u_input.b)))), _wgslsmith_sub_i32(12600i, 42604i >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(26471u, arg_0), vec2<u32>(0u, arg_0)) << (abs(u_input.d) % 32u)) % 32u)), select(true, true, false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-227f, var_1.a), vec2<f32>(var_3.x, var_0.a)) + vec2<f32>(var_0.a, 802f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 455f))) * vec2<f32>(var_1.a, _wgslsmith_f_op_f32(var_3.x + var_1.a)))));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global3 = array<Struct_4, 30>();
    var var_0 = Struct_3(-284f);
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global0.c, ~global0.b), ~vec3<i32>(1i, 0i, global0.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_u32(~(u_input.d & u_input.b), u_input.d)));
    let var_3 = Struct_1(~_wgslsmith_clamp_vec4_i32(abs(global1[_wgslsmith_index_u32(u_input.b | u_input.b, 19u)]), vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 19u)], vec4<i32>(_wgslsmith_clamp_i32(global0.c.x, u_input.c.x, global0.b.x), 0i, 0i, ~(-52346i))), global0.c, vec3<i32>(abs(global0.b.x), -1i, -1i));
    return Struct_2(max(vec3<u32>(select(1u, 21705u, all(vec3<bool>(true, false, true))), 22879u, u_input.b), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, u_input.b, 38189u) >> (vec3<u32>(u_input.d, u_input.b, 96834u) % vec3<u32>(32u)), vec3<u32>(1u, ~1u, ~u_input.b), firstTrailingBit(~vec3<u32>(0u, 0u, u_input.b)))), ~_wgslsmith_sub_i32(13377i, -reverseBits(u_input.a.x)), var_0.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a)))));
}

fn func_1() -> vec4<f32> {
    global1 = array<vec4<i32>, 19>();
    var var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f), 1151f);
    let var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(round(1081f))));
    var var_3 = vec3<i32>(countOneBits(25374i), 53670i, _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b, var_2.b), u_input.a, u_input.c.xx) ^ u_input.a, _wgslsmith_clamp_vec2_i32(-global0.a.wz, vec2<i32>(u_input.c.x, global0.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.b.x, -1i), vec2<i32>(0i, var_2.b))), !var_2.c), global0.b.xx));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-280f, 1812f, 1521f, 664f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, 1647f, 384f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(~u_input.c.x, global0.c.x), ~_wgslsmith_mult_i32(1i, u_input.c.x), _wgslsmith_sub_i32(-26103i, global0.b.x), u_input.c.x) ^ abs(vec4<i32>(u_input.c.x, -8576i, u_input.c.x, u_input.a.x) & global0.a), vec3<i32>(-(~27918i), min(1i, min(global0.a.x, u_input.c.x)) << (u_input.d % 32u), countOneBits(7510i)), firstLeadingBit(abs(vec3<i32>(u_input.a.x, u_input.c.x, 0i)) ^ max(vec3<i32>(u_input.c.x, global0.a.x, global0.b.x) | global0.c, -vec3<i32>(global0.a.x, global0.a.x, global0.a.x))));
    var var_2 = min(vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u), select(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(u_input.b, 88414u, 44592u), true))), min(u_input.b, u_input.b), 1u, ~min(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 26642u, 1u, u_input.d), vec4<u32>(75740u, 0u, u_input.d, u_input.b)))), vec4<u32>(1u, countOneBits(70731u), ~4294967295u, u_input.d));
    global0 = Struct_1(-global0.a, vec3<i32>(u_input.c.x, global0.a.x, firstLeadingBit(i32(-1i) * -u_input.c.x)), var_1.c);
    var_2 = (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_2.x, 34749u, u_input.b, u_input.b), vec4<u32>(1u, 1u, 71886u, u_input.d), vec4<bool>(true, false, true, true)), vec4<u32>(1479u, u_input.b, 47872u, var_2.x)) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 46580u, 4294967295u, 4294967295u)), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), ~vec4<u32>(1u, u_input.b, 0u, u_input.d))) % vec4<u32>(32u))) | reverseBits(vec4<u32>(var_2.x, 1u, u_input.d, 4294967295u) ^ countOneBits(vec4<u32>(u_input.d, 35704u, var_2.x, u_input.d) << (vec4<u32>(u_input.d, u_input.b, 57163u, var_2.x) % vec4<u32>(32u))));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(37461i, firstTrailingBit(vec4<u32>(~u_input.d, 29859u, _wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_mult_u32(47502u, u_input.b)) ^ firstLeadingBit(vec4<u32>(var_2.x, 4399u, 4294967295u, 18468u))));
}

