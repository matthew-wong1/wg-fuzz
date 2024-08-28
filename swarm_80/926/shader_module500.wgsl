struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1306f, -373f, 671f);

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<u32>(4294967295u, 813u), vec3<u32>(1u, 4294967295u, 12600u), Struct_2(vec2<u32>(60876u, 4294967295u), Struct_1(vec3<u32>(37727u, 13409u, 1u), 1i), vec3<f32>(-137f, 1000f, 1387f)), vec3<i32>(0i, 2147483647i, 13516i)), Struct_3(vec2<u32>(1u, 58935u), vec3<u32>(16337u, 8666u, 0u), Struct_2(vec2<u32>(4294967295u, 65289u), Struct_1(vec3<u32>(0u, 9176u, 0u), -1i), vec3<f32>(-541f, 1000f, 1174f)), vec3<i32>(i32(-2147483648), 11457i, -21044i)), Struct_3(vec2<u32>(26223u, 58445u), vec3<u32>(1u, 51446u, 83726u), Struct_2(vec2<u32>(97737u, 12832u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -5204i), vec3<f32>(385f, 1003f, 1148f)), vec3<i32>(2147483647i, -16560i, 2147483647i)), Struct_3(vec2<u32>(29625u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), Struct_2(vec2<u32>(1u, 47781u), Struct_1(vec3<u32>(4294967295u, 0u, 54772u), 40595i), vec3<f32>(1100f, 1000f, 1313f)), vec3<i32>(-36198i, -1i, i32(-2147483648))), Struct_3(vec2<u32>(0u, 9937u), vec3<u32>(0u, 1u, 23971u), Struct_2(vec2<u32>(3276u, 47242u), Struct_1(vec3<u32>(0u, 1u, 4294967295u), -28184i), vec3<f32>(1786f, -1000f, 1053f)), vec3<i32>(25205i, 35829i, -1i)), Struct_3(vec2<u32>(0u, 5153u), vec3<u32>(1u, 4294967295u, 38002u), Struct_2(vec2<u32>(15840u, 1u), Struct_1(vec3<u32>(4294967295u, 6689u, 1u), 0i), vec3<f32>(197f, 1744f, 867f)), vec3<i32>(2812i, 1i, 54723i)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(19989u, 15046u, 0u), Struct_2(vec2<u32>(4294967295u, 61866u), Struct_1(vec3<u32>(67210u, 51493u, 4294967295u), 1i), vec3<f32>(1000f, 260f, 1215f)), vec3<i32>(i32(-2147483648), -79573i, 1i)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 0u, 114237u), Struct_2(vec2<u32>(117331u, 0u), Struct_1(vec3<u32>(1u, 12740u, 41109u), -41398i), vec3<f32>(-1644f, 2168f, 681f)), vec3<i32>(1i, 0i, 1i)), Struct_3(vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 1u, 7103u), Struct_2(vec2<u32>(43440u, 12501u), Struct_1(vec3<u32>(4294967295u, 9569u, 1957u), 35071i), vec3<f32>(-1447f, 254f, 1701f)), vec3<i32>(-42175i, 0i, -12420i)), Struct_3(vec2<u32>(90450u, 40894u), vec3<u32>(3085u, 22308u, 1u), Struct_2(vec2<u32>(1u, 3728u), Struct_1(vec3<u32>(41211u, 54029u, 32009u), 42616i), vec3<f32>(-429f, 756f, 110f)), vec3<i32>(34354i, -1i, 26274i)), Struct_3(vec2<u32>(6127u, 1u), vec3<u32>(4294967295u, 4294967295u, 21019u), Struct_2(vec2<u32>(108986u, 4294967295u), Struct_1(vec3<u32>(13570u, 58016u, 3902u), -1i), vec3<f32>(522f, -1691f, 393f)), vec3<i32>(-27704i, i32(-2147483648), 0i)), Struct_3(vec2<u32>(46838u, 23717u), vec3<u32>(39472u, 2689u, 1u), Struct_2(vec2<u32>(4294967295u, 8159u), Struct_1(vec3<u32>(0u, 34139u, 1u), -1i), vec3<f32>(500f, -656f, 1128f)), vec3<i32>(-1i, 2147483647i, 0i)), Struct_3(vec2<u32>(2628u, 35627u), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(vec2<u32>(12594u, 0u), Struct_1(vec3<u32>(13368u, 23158u, 1u), -20670i), vec3<f32>(914f, 1156f, 2317f)), vec3<i32>(1i, -22466i, 690i)), Struct_3(vec2<u32>(22806u, 0u), vec3<u32>(0u, 4294967295u, 1u), Struct_2(vec2<u32>(1u, 36266u), Struct_1(vec3<u32>(1u, 18780u, 0u), 31206i), vec3<f32>(1375f, -1226f, -759f)), vec3<i32>(-29106i, 40409i, -5578i)), Struct_3(vec2<u32>(0u, 34150u), vec3<u32>(1u, 0u, 0u), Struct_2(vec2<u32>(64638u, 4294967295u), Struct_1(vec3<u32>(7217u, 28347u, 4294967295u), 0i), vec3<f32>(-1000f, 235f, -850f)), vec3<i32>(56089i, 0i, 0i)), Struct_3(vec2<u32>(8064u, 54301u), vec3<u32>(71837u, 40481u, 16245u), Struct_2(vec2<u32>(19637u, 50443u), Struct_1(vec3<u32>(0u, 31135u, 9755u), 1i), vec3<f32>(435f, 112f, -659f)), vec3<i32>(0i, 0i, 1i)), Struct_3(vec2<u32>(1u, 16175u), vec3<u32>(81445u, 0u, 0u), Struct_2(vec2<u32>(11509u, 9448u), Struct_1(vec3<u32>(1u, 0u, 0u), -2382i), vec3<f32>(-434f, -1329f, 1000f)), vec3<i32>(25694i, 20558i, 35986i)), Struct_3(vec2<u32>(4294967295u, 19037u), vec3<u32>(71960u, 1u, 50699u), Struct_2(vec2<u32>(77033u, 37069u), Struct_1(vec3<u32>(4294967295u, 19092u, 4294967295u), 1i), vec3<f32>(1299f, 631f, 224f)), vec3<i32>(12802i, -9469i, 15124i)), Struct_3(vec2<u32>(9126u, 12276u), vec3<u32>(1u, 2688u, 0u), Struct_2(vec2<u32>(0u, 13393u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 1i), vec3<f32>(-238f, -893f, 1220f)), vec3<i32>(-25666i, -3080i, -28343i)), Struct_3(vec2<u32>(0u, 20486u), vec3<u32>(1u, 36926u, 29459u), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec3<u32>(0u, 0u, 12430u), 0i), vec3<f32>(-1268f, -217f, -970f)), vec3<i32>(1i, -69853i, -53367i)), Struct_3(vec2<u32>(22723u, 4294967295u), vec3<u32>(0u, 32181u, 76792u), Struct_2(vec2<u32>(12842u, 55467u), Struct_1(vec3<u32>(1u, 0u, 75444u), 12411i), vec3<f32>(-885f, -891f, 420f)), vec3<i32>(0i, 1i, -52027i)), Struct_3(vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_2(vec2<u32>(13081u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 37019u, 54610u), -13952i), vec3<f32>(-149f, -1243f, -524f)), vec3<i32>(42035i, -3487i, -1i)));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(31249u, 4294967295u), vec2<u32>(86073u, 4294967295u), vec2<u32>(23767u, 16207u), vec2<u32>(0u, 4294967295u), vec2<u32>(72369u, 0u), vec2<u32>(17091u, 0u), vec2<u32>(1u, 13939u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(82001u, 4294967295u), vec2<u32>(4028u, 63197u), vec2<u32>(1u, 73401u), vec2<u32>(90383u, 4838u), vec2<u32>(4637u, 0u), vec2<u32>(18635u, 0u), vec2<u32>(25435u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(14582u, 1u), vec2<u32>(16732u, 13008u), vec2<u32>(16347u, 42282u), vec2<u32>(2012u, 42348u), vec2<u32>(1u, 74884u), vec2<u32>(25731u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 50979u), vec2<u32>(1u, 4294967295u), vec2<u32>(3956u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global3 = array<vec2<u32>, 28>();
    var var_0 = u_input.b >> ((u_input.d.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(~40916u, u_input.d.x), vec2<u32>(u_input.d.x, max(u_input.d.x, u_input.d.x))) % 32u)) % 32u);
    global3 = array<vec2<u32>, 28>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, arg_0.x, arg_0.x), vec3<f32>(-145f, arg_0.x, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), _wgslsmith_f_op_f32(-arg_0.x), 520f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(-2706f, arg_0.x)), _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)))))));
    let var_1 = Struct_1(~abs(u_input.d), -2147483647i);
    return global1[_wgslsmith_index_u32(~(var_1.a.x ^ _wgslsmith_dot_vec2_u32(select(var_1.a.zx << (u_input.d.zx % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.d.yz, u_input.d.xz), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(var_1.a.xx, ~var_1.a.yy))), 22u)];
}

fn func_3(arg_0: Struct_4) -> Struct_4 {
    var var_0 = global0.x;
    let var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(arg_0.a.b.yx, u_input.d.zx, vec2<u32>(u_input.d.x, 20543u))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0.a.c.b.a.x, _wgslsmith_sub_u32(arg_0.a.b.x, _wgslsmith_mult_u32(arg_0.a.a.x, 4294967295u))), 28u)], vec2<u32>(func_2(vec2<f32>(-1190f, arg_0.a.c.c.x)).b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21192u, arg_0.a.c.b.a.x), vec2<u32>(19010u, 37746u)), ~1u))), func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1085f, arg_0.a.c.c.x), vec2<f32>(-1428f, global0.x))))))).c.b, _wgslsmith_f_op_vec3_f32(round(arg_0.a.c.c)));
    global1 = array<Struct_3, 22>();
    var var_2 = !all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)), vec4<bool>(true, true, true, true)));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.c))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * arg_0.a.c.c.x))), arg_0.a.c.c.x, -1083f)));
    return Struct_4(func_2(_wgslsmith_f_op_vec2_f32(global0.xz + arg_0.a.c.c.xy)));
}

fn func_1(arg_0: u32) -> Struct_5 {
    global2 = 195f;
    var var_0 = func_3(Struct_4(func_2(global0.xx)));
    let var_1 = u_input.a;
    var_0 = func_3(func_3(func_3(func_3(Struct_4(Struct_3(vec2<u32>(u_input.d.x, var_0.a.a.x), var_0.a.c.b.a, var_0.a.c, vec3<i32>(-1i, -1i, -2147483647i)))))));
    global3 = array<vec2<u32>, 28>();
    return Struct_5(Struct_3(_wgslsmith_mod_vec2_u32(max(~vec2<u32>(1u, var_0.a.a.x), _wgslsmith_sub_vec2_u32(var_0.a.a, vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(func_2(vec2<f32>(global0.x, global0.x)).a.x, ~35828u)), var_0.a.c.b.a, func_3(func_3(func_3(Struct_4(Struct_3(global3[_wgslsmith_index_u32(8839u, 28u)], vec3<u32>(4294967295u, 0u, var_0.a.c.b.a.x), var_0.a.c, var_0.a.d))))).a.c, var_0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(u_input.a, 0i), -2147483647i), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mult_i32(u_input.a, -2147483647i), -2147483647i >> (u_input.d.x % 32u)))));
    let var_1 = ~countOneBits(29770u);
    let var_2 = 1i;
    var var_3 = func_1(1u);
    var var_4 = select(select(!vec3<bool>(false, 19470u >= var_3.a.c.b.a.x, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(var_3.a.c.c.x * _wgslsmith_div_f32(var_3.a.c.c.x, -1264f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, var_3.a.c.c.x, false)))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c.c, -(~select(var_0, var_3.a.d.yx, false) << (_wgslsmith_div_vec2_u32(u_input.d.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_3.a.b.x), var_3.a.b.xy)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -594f)))));
}

