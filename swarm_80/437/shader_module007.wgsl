struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-18662i, 19518i), vec3<i32>(3965i, -1i, i32(-2147483648)), true, Struct_1(-9231i, 57350i)), vec2<u32>(20678u, 1u), Struct_1(3583i, i32(-2147483648)), vec3<bool>(false, false, true));

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(20746i, i32(-2147483648)), vec3<i32>(15880i, 1i, 19208i), true, Struct_1(12939i, 55165i)), vec2<u32>(4294967295u, 4294967295u), Struct_1(-37923i, -5718i), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(46916i, -17699i), vec3<i32>(0i, 2147483647i, 1i), true, Struct_1(2147483647i, 16173i)), vec2<u32>(7014u, 1u), Struct_1(-24082i, 56351i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(1i, 0i), vec3<i32>(i32(-2147483648), -58275i, 20973i), true, Struct_1(1i, -17035i)), vec2<u32>(0u, 2482u), Struct_1(-52595i, 1i), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(-26966i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 47153i), true, Struct_1(37597i, -1061i)), vec2<u32>(1u, 1u), Struct_1(i32(-2147483648), -24268i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(-1i, 21808i), vec3<i32>(-1i, 0i, -16480i), true, Struct_1(-19186i, -53882i)), vec2<u32>(1u, 1006u), Struct_1(2147483647i, -16854i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-44777i, 0i), vec3<i32>(i32(-2147483648), -37255i, -21534i), true, Struct_1(-7429i, -41842i)), vec2<u32>(46082u, 1u), Struct_1(44973i, -677i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(0i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), false, Struct_1(19124i, -49916i)), vec2<u32>(13655u, 9651u), Struct_1(2147483647i, 1i), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(1i, -26388i), vec3<i32>(16920i, 2147483647i, 0i), true, Struct_1(64871i, -1i)), vec2<u32>(4294967295u, 7932u), Struct_1(-1i, 0i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(-14114i, 12882i), vec3<i32>(-3703i, 2147483647i, -2195i), false, Struct_1(2147483647i, -7648i)), vec2<u32>(0u, 0u), Struct_1(1i, 0i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(28019i, i32(-2147483648)), vec3<i32>(53181i, i32(-2147483648), 78396i), true, Struct_1(-1i, -27997i)), vec2<u32>(13499u, 4294967295u), Struct_1(-11161i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-38036i, -2996i), vec3<i32>(1i, 1i, 1i), false, Struct_1(1i, i32(-2147483648))), vec2<u32>(1u, 4294967295u), Struct_1(-10843i, -43317i), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-8151i, 1i), vec3<i32>(62479i, 13493i, 25778i), false, Struct_1(0i, -19475i)), vec2<u32>(18542u, 0u), Struct_1(66445i, 0i), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(1i, 59090i), vec3<i32>(-12562i, 18580i, -29869i), false, Struct_1(-1i, 4985i)), vec2<u32>(8117u, 22831u), Struct_1(1i, 958i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(90184i, 2147483647i), vec3<i32>(i32(-2147483648), 15149i, -16037i), false, Struct_1(-1i, 30066i)), vec2<u32>(1u, 0u), Struct_1(2147483647i, -1637i), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(1i, -72919i), vec3<i32>(14974i, i32(-2147483648), 1i), false, Struct_1(i32(-2147483648), -46269i)), vec2<u32>(0u, 2181u), Struct_1(-1i, 0i), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(-1i, -1i), vec3<i32>(25226i, 14945i, -32541i), false, Struct_1(-1i, 2147483647i)), vec2<u32>(4294967295u, 1876u), Struct_1(8613i, 2147483647i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), i32(-2147483648)), vec3<i32>(45921i, -25899i, -23183i), false, Struct_1(-38441i, 59289i)), vec2<u32>(0u, 5359u), Struct_1(-1i, 1i), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(35609i, 2147483647i), vec3<i32>(-8034i, -1i, -14541i), false, Struct_1(2147483647i, -33160i)), vec2<u32>(8464u, 34951u), Struct_1(2147483647i, 1i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), 24462i), vec3<i32>(-28747i, 5961i, 89760i), true, Struct_1(-6340i, 4592i)), vec2<u32>(519u, 1u), Struct_1(-1i, -1i), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-42415i, 0i), vec3<i32>(-5066i, 44535i, -6614i), false, Struct_1(1i, 2147483647i)), vec2<u32>(0u, 93442u), Struct_1(2147483647i, 0i), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(1805i, 1i), vec3<i32>(42754i, 0i, -1664i), true, Struct_1(0i, -41985i)), vec2<u32>(1u, 4294967295u), Struct_1(1i, 0i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(-1i, -44002i), vec3<i32>(-28698i, -31487i, 37282i), true, Struct_1(i32(-2147483648), 73023i)), vec2<u32>(0u, 24553u), Struct_1(48694i, -12576i), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(-1i, 0i), vec3<i32>(-22969i, -24150i, 1i), true, Struct_1(54094i, -13516i)), vec2<u32>(8257u, 16059u), Struct_1(2147483647i, -1i), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), 0i), vec3<i32>(1i, 5594i, 1i), true, Struct_1(i32(-2147483648), 0i)), vec2<u32>(0u, 10625u), Struct_1(-1i, 1i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(2147483647i, i32(-2147483648)), vec3<i32>(-4305i, 0i, 0i), false, Struct_1(0i, -16055i)), vec2<u32>(4294967295u, 4303u), Struct_1(2147483647i, -11751i), vec3<bool>(false, true, false)));

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(61421i, -35387i), vec3<i32>(-1i, i32(-2147483648), -1i), false, Struct_1(18882i, 2147483647i)), vec2<u32>(4294967295u, 42553u), Struct_1(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(-35368i, 32973i), vec3<i32>(-23340i, 2147483647i, 35807i), false, Struct_1(2147483647i, 37701i)), vec2<u32>(92609u, 1u), Struct_1(2147483647i, -54434i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(-33942i, -43005i), vec3<i32>(1i, 42814i, 2147483647i), false, Struct_1(-50661i, 0i)), vec2<u32>(1u, 25600u), Struct_1(1i, 0i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(-308i, 1i), vec3<i32>(2147483647i, 13789i, 54997i), true, Struct_1(0i, 0i)), vec2<u32>(51070u, 46446u), Struct_1(-37770i, 71132i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(1i, 2147483647i), vec3<i32>(30080i, -1i, 0i), false, Struct_1(-1i, -1i)), vec2<u32>(4294967295u, 176806u), Struct_1(i32(-2147483648), 20916i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-1i, -14163i), vec3<i32>(34683i, -1i, -1i), true, Struct_1(6353i, 2147483647i)), vec2<u32>(4294967295u, 9619u), Struct_1(-1495i, 4385i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(17056i, 0i), vec3<i32>(1i, i32(-2147483648), 30391i), false, Struct_1(i32(-2147483648), 0i)), vec2<u32>(0u, 6169u), Struct_1(2147483647i, 52945i), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-1i, -56171i), vec3<i32>(-91301i, i32(-2147483648), -36728i), false, Struct_1(41335i, 0i)), vec2<u32>(18284u, 27168u), Struct_1(29188i, -32581i), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(-22073i, 1i), vec3<i32>(0i, -81524i, -78899i), false, Struct_1(-16162i, 8975i)), vec2<u32>(0u, 4294967295u), Struct_1(i32(-2147483648), 2147483647i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(-22911i, 47454i), vec3<i32>(1i, 37214i, 1i), false, Struct_1(-4694i, -74409i)), vec2<u32>(69882u, 6444u), Struct_1(-34315i, -10484i), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(2147483647i, 0i), vec3<i32>(0i, 0i, -9239i), false, Struct_1(1i, -1i)), vec2<u32>(12094u, 4294967295u), Struct_1(-65068i, -8844i), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-1i, 8547i), vec3<i32>(0i, 2147483647i, -48121i), false, Struct_1(-18959i, -9871i)), vec2<u32>(5432u, 44852u), Struct_1(-38451i, -24815i), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1i, -18577i), vec3<i32>(-16056i, 12905i, 2147483647i), false, Struct_1(20684i, 20375i)), vec2<u32>(0u, 19491u), Struct_1(61159i, 0i), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(-45008i, 0i), vec3<i32>(-1i, 15781i, -47786i), false, Struct_1(0i, -3662i)), vec2<u32>(15793u, 22031u), Struct_1(-15123i, 2147483647i), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(42408i, 2147483647i), vec3<i32>(1i, 0i, -21855i), true, Struct_1(2147483647i, 31479i)), vec2<u32>(4294967295u, 1u), Struct_1(2147483647i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1i, 0i), vec3<i32>(i32(-2147483648), -6057i, i32(-2147483648)), true, Struct_1(2840i, -1550i)), vec2<u32>(51046u, 0u), Struct_1(-1i, i32(-2147483648)), vec3<bool>(true, true, true)));

var<private> global4: array<i32, 29>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global4 = array<i32, 29>();
    let var_0 = -2147483647i;
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(~global0.b.x), 28u)];
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = array<vec4<bool>, 28>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f - 1179f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1606f))))));
    global3 = array<Struct_3, 16>();
    global2 = array<Struct_3, 25>();
    let var_1 = var_0;
    return 2147483647i;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_add_u32(5762u, ~u_input.a);
    var var_1 = ~(min(vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 17766u, global0.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(global0.b.x, 27174u, global0.b.x), min(vec3<u32>(u_input.a, global0.b.x, 22052u), vec3<u32>(u_input.a, global0.b.x, 4294967295u)))) >> (_wgslsmith_sub_vec3_u32(select(~vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(global0.b.x, 4294967295u, 1u) ^ vec3<u32>(4294967295u, 12826u, 16108u), select(global0.d, vec3<bool>(global0.a.c, true, global0.d.x), global0.a.c)), vec3<u32>(_wgslsmith_div_u32(u_input.a, global0.b.x), global0.b.x, u_input.a)) % vec3<u32>(32u)));
    var var_2 = global0.a.d;
    let var_3 = global0.c;
    let var_4 = _wgslsmith_add_i32(func_3(u_input.a, var_1.x, func_2(vec4<i32>(1i << (var_1.x % 32u), -2147483647i, 66206i >> (u_input.a % 32u), i32(-1i) * -4079i), Struct_1(firstLeadingBit(var_2.b), _wgslsmith_sub_i32(-1i, -1i)), false), var_3.b), -_wgslsmith_mult_i32(-16978i, _wgslsmith_sub_i32(firstTrailingBit(41364i), -41985i << (global0.b.x % 32u))));
    return -1515f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(967f)) + _wgslsmith_f_op_f32(-512f * -1042f)))));
    var var_1 = Struct_3(Struct_2(global0.a.a, global0.a.b, true && global0.a.c, global0.a.d), global0.b, global0.c, !vec3<bool>(any(vec3<bool>(true, global0.d.x, global0.d.x)), global0.a.c, global0.d.x && all(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, var_0, false)), _wgslsmith_f_op_f32(min(var_0, var_0)))), 872f, 809f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(167f, -474f, true)))))))));
    let var_3 = _wgslsmith_div_u32(countOneBits(61337u), 55156u);
    let var_4 = _wgslsmith_mod_vec3_i32(~(~(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.a.b.x, -12547i), vec3<i32>(-31998i, -2147483647i, -2147483647i)))), -(~vec3<i32>(var_1.c.b, i32(-1i) * -61340i, reverseBits(-23108i))));
    var var_5 = Struct_3(Struct_2(var_1.c, -var_1.a.b, any(vec3<bool>(global0.d.x, true, true)) && true, Struct_1(-var_1.c.a, _wgslsmith_mult_i32(2147483647i, var_1.a.a.a) >> (var_3 % 32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(~59998u, firstLeadingBit(global0.b.x) | abs(global0.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, firstLeadingBit(u_input.a)), (global0.b << (vec2<u32>(var_3, 4294967295u) % vec2<u32>(32u))) >> (firstTrailingBit(vec2<u32>(0u, var_3)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(var_3, var_3), vec2<u32>(0u, 4294967295u)))), var_1.c, select(select(var_1.d, var_1.d, ~global0.b.x >= ~20991u), select(var_1.d, vec3<bool>(true, true, !var_1.d.x), select(!var_1.d, vec3<bool>(global0.d.x, global0.d.x, true), var_1.d)), select(global0.a.c, -34478i < func_3(0u, var_1.b.x, var_1.c, 2147483647i), var_1.a.b.x >= ~var_4.x)));
    global0 = Struct_3(Struct_2(var_1.a.d, vec3<i32>(var_1.c.b, -(~var_1.c.b), global4[_wgslsmith_index_u32(1u ^ u_input.a, 29u)] << (var_3 % 32u)), false, Struct_1(_wgslsmith_sub_i32(global0.c.b, -1i), reverseBits(2147483647i))), global0.b, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_4.x | -17162i, 7465i, var_5.c.b), vec4<i32>(-var_4.x, -2147483647i, global0.a.a.a, _wgslsmith_div_i32(var_4.x, var_5.a.a.b))), Struct_1(7688i << (_wgslsmith_mod_u32(4294967295u, global0.b.x) % 32u), global4[_wgslsmith_index_u32(1u, 29u)] << (1u % 32u)), false), select(vec3<bool>(all(select(vec4<bool>(var_1.a.c, true, false, true), vec4<bool>(var_5.a.c, var_1.d.x, var_1.d.x, false), vec4<bool>(true, var_1.a.c, var_5.a.c, false))), global0.d.x, !var_1.a.c), vec3<bool>(true, false, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global4[_wgslsmith_index_u32(var_1.b.x, 29u)], 1i, var_5.a.b.x), firstLeadingBit(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 29u)], -467i, -43776i, -1i))) & _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(44743u, 29u)], 58560i, 22136i, var_5.a.a.a), vec4<i32>(0i, -1i, global4[_wgslsmith_index_u32(var_3, 29u)], 0i), vec4<i32>(var_4.x, global0.a.b.x, 2147483647i, var_1.a.a.a)), -vec4<i32>(1586i, global4[_wgslsmith_index_u32(1u, 29u)], var_5.c.b, 0i)), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_5.c.b, 1i, global4[_wgslsmith_index_u32(global0.b.x, 29u)], var_1.c.b), vec4<i32>(-2147483647i, global0.a.b.x, var_5.a.d.a, 22029i))), abs(vec4<i32>(15078i, var_5.c.a, var_4.x, var_1.c.b) << (vec4<u32>(u_input.a, var_1.b.x, 29675u, 0u) % vec4<u32>(32u)))), -min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.a, 19800i, var_4.x, global4[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<i32>(var_4.x, -17565i, global4[_wgslsmith_index_u32(u_input.a, 29u)], global4[_wgslsmith_index_u32(var_3, 29u)])), _wgslsmith_add_vec4_i32(vec4<i32>(-35061i, var_4.x, 21825i, -190i), vec4<i32>(global4[_wgslsmith_index_u32(var_3, 29u)], -41004i, var_1.a.a.b, var_5.c.b)))), vec4<i32>(i32(-1i) * -12471i, 8473i, var_1.a.b.x, ~abs(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(var_3, 29u)], global0.a.b.x))));
}

