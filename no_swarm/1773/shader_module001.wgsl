struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<u32>(61901u, 35393u, 0u), vec3<i32>(63059i, -3843i, 44899i), false, false), Struct_1(vec3<u32>(3171u, 48712u, 1u), vec3<i32>(-2867i, 24435i, 0i), false, false), vec3<u32>(1u, 49739u, 36660u), vec3<f32>(503f, -564f, 635f)), Struct_2(Struct_1(vec3<u32>(21764u, 30899u, 35528u), vec3<i32>(0i, -17623i, 0i), false, false), Struct_1(vec3<u32>(46511u, 106268u, 4294967295u), vec3<i32>(2147483647i, -8345i, -3692i), false, false), vec3<u32>(62036u, 4294967295u, 69101u), vec3<f32>(-811f, 269f, -323f)), Struct_2(Struct_1(vec3<u32>(40006u, 12979u, 4294967295u), vec3<i32>(-1i, -58421i, 26255i), false, true), Struct_1(vec3<u32>(1u, 30314u, 46153u), vec3<i32>(2147483647i, -1i, -269i), true, false), vec3<u32>(24601u, 16180u, 4294967295u), vec3<f32>(-1903f, -157f, -819f)), Struct_2(Struct_1(vec3<u32>(52501u, 47543u, 70872u), vec3<i32>(20605i, -1i, i32(-2147483648)), true, false), Struct_1(vec3<u32>(47197u, 5664u, 26063u), vec3<i32>(i32(-2147483648), -24225i, 4181i), false, true), vec3<u32>(1690u, 4294967295u, 10895u), vec3<f32>(440f, -884f, -327f)), Struct_2(Struct_1(vec3<u32>(6933u, 60916u, 0u), vec3<i32>(-16168i, 2147483647i, 62510i), true, true), Struct_1(vec3<u32>(21626u, 1u, 7023u), vec3<i32>(-18318i, 1i, -1i), true, true), vec3<u32>(4294967295u, 66104u, 1u), vec3<f32>(2071f, 230f, -1000f)), Struct_2(Struct_1(vec3<u32>(11823u, 1u, 0u), vec3<i32>(2147483647i, 2687i, -13142i), true, true), Struct_1(vec3<u32>(0u, 1u, 5143u), vec3<i32>(-21355i, -1i, 2147483647i), true, true), vec3<u32>(0u, 30390u, 14018u), vec3<f32>(-780f, 1335f, -438f)), Struct_2(Struct_1(vec3<u32>(39744u, 53293u, 7459u), vec3<i32>(0i, 1i, 0i), false, true), Struct_1(vec3<u32>(1583u, 22499u, 13637u), vec3<i32>(-20333i, -1i, 37291i), true, true), vec3<u32>(2378u, 18445u, 4294967295u), vec3<f32>(-2082f, 1146f, 522f)), Struct_2(Struct_1(vec3<u32>(7836u, 4294967295u, 1u), vec3<i32>(31384i, 39861i, -34751i), true, true), Struct_1(vec3<u32>(1u, 4294967295u, 62806u), vec3<i32>(-2892i, 0i, 0i), false, true), vec3<u32>(0u, 0u, 29065u), vec3<f32>(-1128f, -737f, -135f)), Struct_2(Struct_1(vec3<u32>(66521u, 0u, 22989u), vec3<i32>(0i, 0i, 0i), true, true), Struct_1(vec3<u32>(4294967295u, 43835u, 4294967295u), vec3<i32>(i32(-2147483648), 2319i, 2147483647i), true, false), vec3<u32>(4294967295u, 60391u, 7171u), vec3<f32>(1000f, -344f, 2311f)), Struct_2(Struct_1(vec3<u32>(14492u, 10353u, 4294967295u), vec3<i32>(-23066i, i32(-2147483648), -59820i), true, true), Struct_1(vec3<u32>(4294967295u, 0u, 115178u), vec3<i32>(33859i, 3558i, i32(-2147483648)), true, true), vec3<u32>(0u, 1u, 44689u), vec3<f32>(-2173f, -1475f, -986f)), Struct_2(Struct_1(vec3<u32>(0u, 1u, 34810u), vec3<i32>(34844i, 2147483647i, 40777i), true, true), Struct_1(vec3<u32>(1u, 49577u, 1u), vec3<i32>(1i, -16627i, i32(-2147483648)), true, false), vec3<u32>(70900u, 35663u, 1u), vec3<f32>(1806f, 672f, 1545f)), Struct_2(Struct_1(vec3<u32>(74735u, 55659u, 77438u), vec3<i32>(1i, -1i, i32(-2147483648)), true, true), Struct_1(vec3<u32>(35136u, 1u, 4294967295u), vec3<i32>(-11555i, -46304i, 1i), false, false), vec3<u32>(6334u, 48585u, 4294967295u), vec3<f32>(339f, -629f, -536f)), Struct_2(Struct_1(vec3<u32>(1u, 24911u, 4294967295u), vec3<i32>(-44964i, -36952i, -1i), false, false), Struct_1(vec3<u32>(57268u, 86154u, 35349u), vec3<i32>(1159i, 33392i, i32(-2147483648)), true, true), vec3<u32>(4294967295u, 34214u, 1u), vec3<f32>(658f, -142f, 820f)), Struct_2(Struct_1(vec3<u32>(51386u, 30863u, 0u), vec3<i32>(17507i, -1i, i32(-2147483648)), false, false), Struct_1(vec3<u32>(16280u, 1u, 4294967295u), vec3<i32>(-25474i, -5193i, 2147483647i), true, false), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(1676f, -429f, -1000f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 16436u), vec3<i32>(1i, 2147483647i, 2147483647i), false, true), Struct_1(vec3<u32>(1u, 1u, 8428u), vec3<i32>(i32(-2147483648), 8582i, 12767i), false, false), vec3<u32>(4294967295u, 59985u, 57611u), vec3<f32>(1518f, -887f, -611f)), Struct_2(Struct_1(vec3<u32>(5744u, 11571u, 12796u), vec3<i32>(-52121i, -76001i, 1i), true, false), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<i32>(-6934i, 12290i, 1i), false, false), vec3<u32>(21805u, 4294967295u, 90001u), vec3<f32>(691f, 129f, -2075f)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(15809i, 65735i, -59217i), false, true), Struct_1(vec3<u32>(4294967295u, 91358u, 97158u), vec3<i32>(i32(-2147483648), -17926i, -28850i), false, false), vec3<u32>(5453u, 36432u, 4294967295u), vec3<f32>(304f, -358f, 567f)), Struct_2(Struct_1(vec3<u32>(74453u, 4294967295u, 0u), vec3<i32>(-32351i, i32(-2147483648), 1i), true, false), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(-3213i, -1i, 2147483647i), false, true), vec3<u32>(20239u, 41874u, 13278u), vec3<f32>(-459f, -1381f, -475f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 47888u, 51336u), vec3<i32>(-8023i, -35054i, 563i), false, true), Struct_1(vec3<u32>(62870u, 80097u, 0u), vec3<i32>(-26742i, -2548i, -10200i), true, true), vec3<u32>(70528u, 4294967295u, 42055u), vec3<f32>(-403f, 769f, 327f)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), vec3<i32>(-10220i, -1i, 30514i), true, false), Struct_1(vec3<u32>(0u, 18802u, 1u), vec3<i32>(i32(-2147483648), -24388i, 46433i), false, true), vec3<u32>(4294967295u, 30506u, 1u), vec3<f32>(779f, 1505f, -1693f)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 15472u), vec3<i32>(-40753i, 0i, 2147483647i), true, false), Struct_1(vec3<u32>(1u, 56183u, 1u), vec3<i32>(i32(-2147483648), 0i, 0i), true, false), vec3<u32>(4294967295u, 4294967295u, 27082u), vec3<f32>(-2287f, 564f, -171f)), Struct_2(Struct_1(vec3<u32>(1u, 6356u, 10566u), vec3<i32>(13098i, 1i, 2147483647i), true, false), Struct_1(vec3<u32>(46672u, 1u, 1u), vec3<i32>(13087i, i32(-2147483648), -27390i), false, false), vec3<u32>(1u, 28958u, 0u), vec3<f32>(-851f, -1639f, -836f)), Struct_2(Struct_1(vec3<u32>(58566u, 0u, 18878u), vec3<i32>(43009i, 1i, 0i), true, false), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec3<i32>(2147483647i, 29936i, 0i), true, false), vec3<u32>(35643u, 23221u, 4294967295u), vec3<f32>(293f, 1458f, -360f)), Struct_2(Struct_1(vec3<u32>(49511u, 0u, 1u), vec3<i32>(-4328i, 17058i, -1i), true, true), Struct_1(vec3<u32>(25406u, 17112u, 21055u), vec3<i32>(0i, -1i, -553i), false, false), vec3<u32>(110907u, 0u, 1u), vec3<f32>(2024f, 741f, -1309f)), Struct_2(Struct_1(vec3<u32>(95493u, 16688u, 19313u), vec3<i32>(28955i, 2147483647i, 2147483647i), true, true), Struct_1(vec3<u32>(29163u, 61102u, 32782u), vec3<i32>(-1i, 44144i, 43440i), true, true), vec3<u32>(49182u, 4294967295u, 5493u), vec3<f32>(775f, 4282f, 972f)), Struct_2(Struct_1(vec3<u32>(1u, 3549u, 1u), vec3<i32>(20957i, 40203i, -1i), true, true), Struct_1(vec3<u32>(1u, 23697u, 5366u), vec3<i32>(47750i, 23466i, i32(-2147483648)), false, false), vec3<u32>(19560u, 1u, 1u), vec3<f32>(812f, -659f, -452f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 52582u), vec3<i32>(47950i, -12263i, -52240i), false, true), Struct_1(vec3<u32>(32684u, 25038u, 8752u), vec3<i32>(1i, 6089i, -12806i), true, true), vec3<u32>(13179u, 4442u, 0u), vec3<f32>(-1571f, -2463f, 315f)), Struct_2(Struct_1(vec3<u32>(1u, 2262u, 1u), vec3<i32>(-31310i, 33257i, i32(-2147483648)), true, false), Struct_1(vec3<u32>(39664u, 0u, 42540u), vec3<i32>(-9562i, -1i, -61670i), true, true), vec3<u32>(25551u, 117466u, 41440u), vec3<f32>(315f, 672f, -551f)), Struct_2(Struct_1(vec3<u32>(110170u, 37982u, 83633u), vec3<i32>(-18078i, -38088i, 2147483647i), false, false), Struct_1(vec3<u32>(1u, 0u, 2924u), vec3<i32>(-1i, -21842i, 41674i), false, false), vec3<u32>(27894u, 2977u, 30327u), vec3<f32>(249f, 1625f, 733f)), Struct_2(Struct_1(vec3<u32>(0u, 19003u, 19829u), vec3<i32>(15597i, -1i, 1i), true, false), Struct_1(vec3<u32>(24644u, 14328u, 103279u), vec3<i32>(-41283i, -5855i, -40139i), false, false), vec3<u32>(16603u, 0u, 47091u), vec3<f32>(550f, 640f, 1265f)), Struct_2(Struct_1(vec3<u32>(58364u, 45092u, 2146u), vec3<i32>(3053i, -18165i, -1i), false, true), Struct_1(vec3<u32>(4294967295u, 11784u, 17520u), vec3<i32>(-1i, -30322i, 1i), false, false), vec3<u32>(73748u, 0u, 28359u), vec3<f32>(-917f, 1016f, -673f)));

var<private> global2: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(false, true);
    global0 = array<Struct_4, 26>();
    global1 = array<Struct_2, 31>();
    let var_1 = !any(var_0);
    global2 = Struct_4(vec3<bool>(false, true & var_0.x, var_0.x), global2.b, _wgslsmith_clamp_u32(max(~_wgslsmith_add_u32(1u, global2.d.x), ~min(u_input.c.x, 83205u)), global2.c, 21317u), u_input.d, -1i << (~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, global2.d.x, 4294967295u, global2.d.x)), u_input.c) % 32u));
    return 27118u;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global1 = array<Struct_2, 31>();
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, abs((u_input.d.x << (4294967295u % 32u)) << (func_3() % 32u)), func_3()), vec3<u32>(~_wgslsmith_dot_vec2_u32(~u_input.d.yy, global2.d.zz), global2.d.x, ~min(~u_input.c.x, u_input.d.x)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.c), vec4<u32>(firstLeadingBit(u_input.d.x), var_0.x, var_0.x, min(var_0.x, var_0.x))), u_input.c), _wgslsmith_clamp_u32(select(firstTrailingBit(u_input.d.x), 1u, arg_2), u_input.d.x, 26993u)), 31u)];
    return global1[_wgslsmith_index_u32(18412u, 31u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> i32 {
    var var_0 = func_2(arg_0, false, !(!(~59030u > ~arg_1.d.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global2.b, -640f), vec3<f32>(arg_1.b, -1247f, global2.b))))))));
    var var_1 = ~(~(~(~global2.d.x))) > 1u;
    var_1 = !any(vec4<bool>(var_0.a.c, true, true, true));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, ~17192u), (0u >> (global2.c % 32u)) ^ 0u)), global2.d), 26u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(-var_2.b));
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(global2.d.x, 4294967295u ^ _wgslsmith_div_u32(abs(0u), global2.c ^ global2.c), 0u), ~reverseBits(vec3<i32>(i32(-1i) * -2147483647i, 15718i, func_1(vec3<i32>(u_input.a, global2.e, u_input.a), global0[_wgslsmith_index_u32(0u, 26u)]))), true, false);
    global1 = array<Struct_2, 31>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global1 = array<Struct_2, 31>();
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(f32(-1f) * -1730f)))) != 1058f, global2.a.x);
    let var_2 = Struct_3(var_0, !select(select(!vec4<bool>(var_1.x, global2.a.x, false, var_0.d), select(vec4<bool>(false, true, false, true), vec4<bool>(global2.a.x, false, true, false), vec4<bool>(false, false, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, global2.a.x)), !select(vec4<bool>(var_0.c, false, false, var_1.x), vec4<bool>(var_0.d, true, true, global2.a.x), vec4<bool>(var_1.x, global2.a.x, var_0.c, true)), select(!vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, var_0.d, false, global2.a.x), select(vec4<bool>(var_0.c, global2.a.x, false, var_0.c), vec4<bool>(var_0.c, var_1.x, false, var_0.c), global2.a.x))));
    var var_3 = Struct_4(!(!var_2.b.yyz), global2.b, 37242u, vec3<u32>(func_2(var_2.a.b, !(!var_1.x), false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, 283f, global2.b))))).a.a.x, _wgslsmith_mod_u32(~33100u, abs(_wgslsmith_sub_u32(1u, u_input.d.x))), ~1u), _wgslsmith_add_i32(~var_0.b.x, select(-19387i, 2147483647i, true)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.b), func_2(~var_2.a.b, any(global2.a), var_1.x, vec3<f32>(var_3.b, -241f, 1040f)).d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b)) + var_3.b) - var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(var_4 - var_4)))))), var_2.a.a.x);
}

