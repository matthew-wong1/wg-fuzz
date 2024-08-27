struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-12090i, 0i), vec2<i32>(4462i, -7589i), vec2<i32>(-1838i, i32(-2147483648)), vec2<i32>(21084i, 36251i), vec2<i32>(1i, 1542i), vec2<i32>(0i, 0i), vec2<i32>(-26509i, -80234i), vec2<i32>(12843i, -20173i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-12497i, 8157i), vec2<i32>(44468i, -35216i), vec2<i32>(-7083i, -1i));

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec3<u32>(10017u, 4294967295u, 4294967295u), vec3<u32>(0u, 70698u, 39860u), -3023f, vec3<bool>(true, false, true)), 1u, 55630i), Struct_2(Struct_1(vec3<u32>(0u, 1u, 53956u), vec3<u32>(43550u, 1u, 4294967295u), 742f, vec3<bool>(true, false, false)), 51125u, -29426i), Struct_2(Struct_1(vec3<u32>(4294967295u, 66045u, 35905u), vec3<u32>(119888u, 4294967295u, 64271u), 1000f, vec3<bool>(true, true, true)), 8001u, -2340i), Struct_2(Struct_1(vec3<u32>(8151u, 54103u, 2799u), vec3<u32>(26963u, 0u, 4294967295u), -633f, vec3<bool>(false, false, true)), 29874u, -53351i), Struct_2(Struct_1(vec3<u32>(19069u, 74732u, 22292u), vec3<u32>(4294967295u, 85667u, 55992u), 658f, vec3<bool>(false, false, true)), 101223u, -6830i), Struct_2(Struct_1(vec3<u32>(24685u, 4504u, 1u), vec3<u32>(1u, 618u, 12068u), -181f, vec3<bool>(false, true, false)), 0u, 679i), Struct_2(Struct_1(vec3<u32>(31778u, 0u, 56610u), vec3<u32>(63188u, 58158u, 124684u), 714f, vec3<bool>(false, false, true)), 25895u, 105285i), Struct_2(Struct_1(vec3<u32>(68262u, 4294967295u, 12613u), vec3<u32>(0u, 1u, 0u), 953f, vec3<bool>(false, false, false)), 0u, 1i), Struct_2(Struct_1(vec3<u32>(55455u, 1u, 20323u), vec3<u32>(73087u, 0u, 4294967295u), 1015f, vec3<bool>(false, false, false)), 127184u, 0i), Struct_2(Struct_1(vec3<u32>(0u, 28761u, 5922u), vec3<u32>(24284u, 10644u, 4294967295u), -2210f, vec3<bool>(true, false, false)), 18970u, -20116i), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), vec3<u32>(12347u, 21953u, 22326u), 1386f, vec3<bool>(false, true, false)), 42027u, -1i), Struct_2(Struct_1(vec3<u32>(52877u, 4294967295u, 0u), vec3<u32>(7190u, 105071u, 1u), 492f, vec3<bool>(false, false, false)), 65551u, 2147483647i), Struct_2(Struct_1(vec3<u32>(28377u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), 1878f, vec3<bool>(false, true, true)), 11309u, -7519i), Struct_2(Struct_1(vec3<u32>(0u, 1u, 1u), vec3<u32>(29067u, 0u, 18694u), 172f, vec3<bool>(true, false, true)), 26031u, i32(-2147483648)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 14393u), 1568f, vec3<bool>(true, false, true)), 6052u, -1i), Struct_2(Struct_1(vec3<u32>(34506u, 1u, 16007u), vec3<u32>(1u, 77067u, 18148u), -1029f, vec3<bool>(false, true, true)), 23593u, -20375i), Struct_2(Struct_1(vec3<u32>(43358u, 0u, 27478u), vec3<u32>(17603u, 105300u, 43839u), -2266f, vec3<bool>(false, false, true)), 0u, -3309i), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 67959u), vec3<u32>(4294967295u, 10491u, 0u), 1000f, vec3<bool>(true, true, false)), 22966u, -29835i), Struct_2(Struct_1(vec3<u32>(4294967295u, 7158u, 23418u), vec3<u32>(19705u, 0u, 101613u), -506f, vec3<bool>(true, true, false)), 1u, -28648i), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 44671u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), -543f, vec3<bool>(false, true, false)), 2790u, 0i), Struct_2(Struct_1(vec3<u32>(53310u, 1u, 4294967295u), vec3<u32>(1u, 98842u, 14373u), -1504f, vec3<bool>(true, false, false)), 24400u, -56174i), Struct_2(Struct_1(vec3<u32>(1429u, 44558u, 143486u), vec3<u32>(1u, 0u, 12325u), 666f, vec3<bool>(true, true, true)), 0u, 11347i), Struct_2(Struct_1(vec3<u32>(39496u, 4294967295u, 69887u), vec3<u32>(44597u, 20334u, 1u), 1288f, vec3<bool>(true, false, false)), 4294967295u, 1i), Struct_2(Struct_1(vec3<u32>(38931u, 35887u, 72083u), vec3<u32>(0u, 1u, 1u), -1414f, vec3<bool>(true, false, false)), 4294967295u, i32(-2147483648)), Struct_2(Struct_1(vec3<u32>(18865u, 2456u, 49937u), vec3<u32>(23856u, 1u, 4294967295u), -827f, vec3<bool>(false, false, true)), 12655u, i32(-2147483648)));

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<u32>(18503u, 14715u, 69218u), vec3<u32>(4294967295u, 1u, 4294967295u), 1028f, vec3<bool>(false, true, true)), 86u, -8103i), Struct_2(Struct_1(vec3<u32>(50991u, 8430u, 0u), vec3<u32>(391u, 1u, 51641u), 1175f, vec3<bool>(true, false, false)), 40113u, 106354i), Struct_2(Struct_1(vec3<u32>(0u, 52102u, 4294967295u), vec3<u32>(1u, 4294967295u, 18924u), 887f, vec3<bool>(false, true, true)), 1u, 0i), Struct_2(Struct_1(vec3<u32>(0u, 17884u, 0u), vec3<u32>(0u, 27328u, 0u), -617f, vec3<bool>(false, false, false)), 1u, -1i), Struct_2(Struct_1(vec3<u32>(4294967295u, 52226u, 0u), vec3<u32>(1u, 11489u, 35898u), 144f, vec3<bool>(true, true, true)), 67292u, -1i), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 0u, 7573u), -475f, vec3<bool>(true, true, true)), 55569u, 58870i), Struct_2(Struct_1(vec3<u32>(0u, 131811u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), -322f, vec3<bool>(true, true, true)), 93148u, -1i), Struct_2(Struct_1(vec3<u32>(17529u, 4294967295u, 8772u), vec3<u32>(13764u, 1u, 0u), 1000f, vec3<bool>(false, true, true)), 0u, -1i), Struct_2(Struct_1(vec3<u32>(4294967295u, 52045u, 4294967295u), vec3<u32>(4294967295u, 48459u, 0u), 199f, vec3<bool>(false, true, false)), 0u, 0i), Struct_2(Struct_1(vec3<u32>(1u, 60746u, 0u), vec3<u32>(1u, 4294967295u, 34588u), -681f, vec3<bool>(false, true, true)), 24423u, -14895i), Struct_2(Struct_1(vec3<u32>(33458u, 18215u, 0u), vec3<u32>(1u, 0u, 410u), 436f, vec3<bool>(true, false, true)), 0u, -1i), Struct_2(Struct_1(vec3<u32>(1u, 74008u, 0u), vec3<u32>(0u, 11943u, 4294967295u), -470f, vec3<bool>(false, true, false)), 0u, 17085i), Struct_2(Struct_1(vec3<u32>(0u, 33779u, 4294967295u), vec3<u32>(1u, 1u, 37871u), -885f, vec3<bool>(false, false, false)), 4294967295u, 3552i), Struct_2(Struct_1(vec3<u32>(1u, 48038u, 0u), vec3<u32>(21822u, 1u, 152u), 113f, vec3<bool>(true, false, false)), 0u, i32(-2147483648)), Struct_2(Struct_1(vec3<u32>(40317u, 4294967295u, 31663u), vec3<u32>(4294967295u, 0u, 28332u), 1000f, vec3<bool>(false, false, true)), 83470u, 12111i), Struct_2(Struct_1(vec3<u32>(12343u, 1u, 921u), vec3<u32>(17418u, 5975u, 79494u), 1690f, vec3<bool>(true, true, true)), 14689u, 38321i), Struct_2(Struct_1(vec3<u32>(43047u, 39441u, 4294967295u), vec3<u32>(28181u, 0u, 0u), -1735f, vec3<bool>(true, false, true)), 13229u, 0i), Struct_2(Struct_1(vec3<u32>(4294967295u, 6594u, 11127u), vec3<u32>(24196u, 0u, 0u), 1804f, vec3<bool>(true, true, true)), 60789u, 2147483647i), Struct_2(Struct_1(vec3<u32>(4294967295u, 63617u, 4294967295u), vec3<u32>(52203u, 43353u, 0u), -1120f, vec3<bool>(false, false, false)), 50060u, -9962i), Struct_2(Struct_1(vec3<u32>(0u, 0u, 65397u), vec3<u32>(63373u, 30613u, 10958u), -293f, vec3<bool>(true, false, false)), 4294967295u, 0i), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), vec3<u32>(5821u, 13780u, 1u), -405f, vec3<bool>(true, true, true)), 49792u, 28524i), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), vec3<u32>(8497u, 27641u, 1u), 2271f, vec3<bool>(false, false, false)), 11309u, i32(-2147483648)), Struct_2(Struct_1(vec3<u32>(0u, 21769u, 1u), vec3<u32>(1u, 1u, 14884u), -742f, vec3<bool>(false, true, true)), 80616u, 26066i), Struct_2(Struct_1(vec3<u32>(1u, 15955u, 0u), vec3<u32>(50671u, 1u, 62288u), 721f, vec3<bool>(true, true, false)), 4294967295u, -57278i), Struct_2(Struct_1(vec3<u32>(0u, 37252u, 1u), vec3<u32>(1u, 6198u, 0u), 501f, vec3<bool>(false, true, false)), 1u, 0i), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 110412u, 62661u), 363f, vec3<bool>(false, true, true)), 65033u, 1i), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 0u, 41406u), 975f, vec3<bool>(false, false, false)), 0u, -6751i));

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    global3 = array<Struct_2, 27>();
    let var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a >> (global4.b.x % 32u), 0u | u_input.a, 1u), max(global4.a, global4.b)), ~(~global4.a), global4.c, global4.d);
    let var_1 = global4.b.x;
    var var_2 = firstLeadingBit(~abs(~1u));
    let var_3 = vec4<bool>(true, true, true, true);
    return global3[_wgslsmith_index_u32(4294967295u, 27u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = global4.b.x;
    global0 = 0i;
    var var_1 = (!(!global4.d.x & true) | !(!(arg_1.c == global4.c))) != (arg_1.d.x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c, -1661f))) <= arg_1.c));
    let var_2 = func_2();
    var var_3 = -vec3<i32>(arg_0.c, ~arg_2, 0i);
    return true;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(-385f, 1216f));
    var var_1 = vec2<bool>(false & arg_0.a.d.x, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, arg_0.a.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, arg_0.a.c) - vec2<f32>(837f, arg_0.a.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, 758f) - vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, global4.c) - vec2<f32>(arg_0.a.c, 1498f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.c, -1292f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(726f, var_0))), vec2<bool>(var_1.x, true))))))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0.b, global4.a.x), 25u)];
    global2 = array<Struct_2, 25>();
    return arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 15068i ^ (u_input.b ^ -15259i);
    global4 = Struct_1(_wgslsmith_sub_vec3_u32(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global4.a.x, 1u), vec3<u32>(u_input.a, global4.a.x, 0u)), global4.a), reverseBits(global4.b)), global4.b, _wgslsmith_f_op_f32(190f * -570f), vec3<bool>(global4.d.x && (_wgslsmith_mod_u32(global4.b.x, u_input.a) == 19913u), global4.d.x || !select(global4.d.x, true, global4.d.x), true));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, -629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f + global4.c)))));
    let var_1 = vec2<bool>((false && !global4.d.x) & ((u_input.b == countOneBits(u_input.b)) && false), func_1(global2[_wgslsmith_index_u32(1u, 25u)], Struct_1(global4.a, _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 4294967295u, global4.a.x)), vec3<u32>(0u, u_input.a, global4.a.x), countOneBits(global4.a)), _wgslsmith_f_op_f32(f32(-1f) * -900f), vec3<bool>(!global4.d.x, global4.d.x, global4.d.x)), u_input.b));
    global1 = array<vec2<i32>, 12>();
    let var_2 = func_2();
    global0 = ~(-1i);
    var var_3 = func_2().a;
    var var_4 = 24984i;
    let x = u_input.a;
    s_output = StorageBuffer(~(30736u & ~_wgslsmith_mult_u32(var_2.a.a.x, var_2.a.b.x)), vec4<u32>(1u, ~var_2.b, max(~_wgslsmith_mod_u32(67911u, 1u), _wgslsmith_sub_u32(~54994u, _wgslsmith_dot_vec3_u32(global4.a, var_3.a))), func_3(Struct_2(Struct_1(global4.a, global4.b, 1090f, vec3<bool>(false, global4.d.x, true)), _wgslsmith_dot_vec2_u32(var_3.a.yx, var_2.a.a.xz), _wgslsmith_add_i32(5391i, 27690i)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a | 0u, ~6255u), var_2.a.b.x, _wgslsmith_div_u32(~15072u, var_2.a.b.x), 9776u), abs(vec4<u32>(select(global4.a.x, var_3.a.x, var_3.d.x), var_2.a.a.x, 28581u | global4.b.x, func_2().b))), ~abs(~81281i));
}

