struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<vec3<u32>, 20>;

var<private> global3: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(31157i, 0i, -52374i), vec3<i32>(1i, 16592i, 51916i), vec3<i32>(i32(-2147483648), 23932i, -25121i), vec3<i32>(-31572i, -40119i, 2147483647i), vec3<i32>(2261i, -17405i, 61190i), vec3<i32>(2147483647i, 149i, -6203i), vec3<i32>(-64150i, -1i, -1i), vec3<i32>(0i, 3779i, 2147483647i), vec3<i32>(i32(-2147483648), 42879i, 2147483647i), vec3<i32>(0i, 0i, -30057i), vec3<i32>(0i, 46353i, 0i), vec3<i32>(64865i, 1i, i32(-2147483648)), vec3<i32>(20121i, 1i, 2147483647i), vec3<i32>(-40109i, 2147483647i, -2620i), vec3<i32>(1i, -2709i, 10901i), vec3<i32>(-1i, -12958i, 2147483647i), vec3<i32>(i32(-2147483648), 18984i, i32(-2147483648)), vec3<i32>(-46836i, i32(-2147483648), 63067i), vec3<i32>(-80986i, 0i, i32(-2147483648)), vec3<i32>(583i, 12354i, 40840i), vec3<i32>(i32(-2147483648), 27128i, 45511i), vec3<i32>(0i, -15531i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 36278i), vec3<i32>(-35347i, 0i, i32(-2147483648)), vec3<i32>(3107i, 4834i, 0i), vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -37246i, 1i), vec3<i32>(-1i, 54629i, 2147483647i), vec3<i32>(-1i, 37617i, 32853i), vec3<i32>(1i, 10614i, i32(-2147483648)), vec3<i32>(42766i, 47361i, -37974i), vec3<i32>(2147483647i, 19630i, 60657i));

var<private> global4: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(11946u, 4294967295u, 30126u), vec3<u32>(23528u, 0u, 18825u), vec3<u32>(4294967295u, 0u, 43698u), vec3<u32>(1u, 0u, 0u), vec3<u32>(53087u, 61265u, 38850u), vec3<u32>(86155u, 0u, 88716u), vec3<u32>(4294967295u, 1u, 11525u), vec3<u32>(70858u, 32333u, 4294967295u), vec3<u32>(15104u, 48252u, 7871u), vec3<u32>(2640u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 64085u), vec3<u32>(13118u, 1u, 1u), vec3<u32>(62236u, 4294967295u, 13142u), vec3<u32>(26422u, 1u, 4294967295u), vec3<u32>(4294967295u, 25797u, 83415u), vec3<u32>(76411u, 19826u, 46050u), vec3<u32>(68784u, 0u, 0u), vec3<u32>(2098u, 55335u, 28632u), vec3<u32>(26861u, 0u, 39924u), vec3<u32>(26329u, 4294967295u, 9079u), vec3<u32>(73171u, 56169u, 0u), vec3<u32>(106596u, 1u, 0u), vec3<u32>(51733u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 39365u, 15865u), vec3<u32>(4294967295u, 30920u, 1u), vec3<u32>(44424u, 1894u, 0u), vec3<u32>(26600u, 1u, 4294967295u), vec3<u32>(1u, 60595u, 1u), vec3<u32>(1u, 36651u, 28197u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> i32 {
    var var_0 = !(!arg_0.x);
    global3 = array<vec3<i32>, 32>();
    var var_1 = Struct_3(arg_1.e.a, Struct_2(abs(vec3<u32>(94537u, arg_1.e.a, arg_1.b.a) & global4[_wgslsmith_index_u32(1u, 31u)]) & max(global2[_wgslsmith_index_u32(~6946u, 20u)], _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(arg_1.b.a, 31u)])), arg_1.b, Struct_1(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21635u, 4294967295u, 1u, 41344u), vec4<u32>(arg_1.b.a, 1u, 1u, 55144u)), 20u)], ~vec3<u32>(4294967295u, 74988u, arg_1.b.a)), ~1i), arg_1.c.xz), select(select(~vec4<u32>(0u, 9966u, 1u, 1u), select(~vec4<u32>(1u, 0u, arg_1.b.a, 40303u), vec4<u32>(arg_1.e.a, arg_1.a, arg_1.b.a, arg_1.a), vec4<bool>(arg_0.x, arg_1.c.x, arg_0.x, false)), !select(arg_1.c, vec4<bool>(arg_1.d, true, arg_0.x, arg_1.c.x), true)), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.a, 29338u, 0u, 1u), vec4<u32>(1u, arg_1.e.a, 36298u, arg_1.b.a)), vec4<u32>(arg_1.a, 1u, 31232u, arg_1.b.a) | vec4<u32>(arg_1.e.a, arg_1.e.a, arg_1.e.a, arg_1.a), true), any(!vec3<bool>(true, arg_1.c.x, true))), vec4<i32>(min(~_wgslsmith_clamp_i32(u_input.a.x, 8080i, -1i), countOneBits(arg_1.b.b)), ~(~u_input.a.x) >> (arg_1.e.a % 32u), ~1i, reverseBits(-61781i)));
    var var_2 = !arg_1.c.zx;
    var var_3 = !(!(!(!(!arg_1.c))));
    return min(max(_wgslsmith_div_i32(26336i >> (firstTrailingBit(arg_1.a) % 32u), 31626i), u_input.a.x), _wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(-21677i, u_input.a.x, -13526i)) >> (vec3<u32>(1u, var_1.a, 106314u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(80056u, 32u)], global3[_wgslsmith_index_u32(5877u, 32u)]), global3[_wgslsmith_index_u32(~arg_1.e.a, 32u)]), !vec3<bool>(arg_0.x, arg_1.c.x, true)), -vec3<i32>(-1i, u_input.a.x, ~(-29130i))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(firstLeadingBit(reverseBits(abs(~vec4<i32>(1i, 2147483647i, -17484i, u_input.a.x)))), global1[_wgslsmith_index_u32(13212u, 21u)], 1u, select(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(746f, -882f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-296f + -1129f), 1000f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(822f, -710f) * vec2<f32>(545f, -674f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-567f, -385f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + 267f) + _wgslsmith_f_op_f32(floor(1113f)))) <= -1190f));
    var var_2 = vec3<i32>(u_input.a.x, max(i32(-1i) * -var_0.a.x, func_3(var_0.b.d, Struct_5(31310u, var_0.b.c, vec4<bool>(var_0.d, true, var_0.b.d.x, var_0.d), false, Struct_1(var_0.b.a.x, -15453i)))), ~u_input.a.x >> (select(~var_0.c, ~var_0.b.c.a, var_0.b.d.x) % 32u)) >> (~(~(global2[_wgslsmith_index_u32(4294967295u, 20u)] ^ vec3<u32>(1u, var_0.c, 0u)) & vec3<u32>(select(var_0.c, var_0.b.b.a, var_0.d), _wgslsmith_dot_vec3_u32(var_0.b.a, global4[_wgslsmith_index_u32(var_0.c, 31u)]), var_0.c)) % vec3<u32>(32u));
    global4 = array<vec3<u32>, 31>();
    var var_3 = _wgslsmith_f_op_f32(abs(-1026f)) != var_1.x;
    return Struct_1(51454u, var_0.b.b.b);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1.x;
    global4 = array<vec3<u32>, 31>();
    var var_1 = select(select(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.e.a, 130845u, 1u), ~global2[_wgslsmith_index_u32(arg_2.a, 20u)], vec3<u32>(arg_2.b.a, arg_2.a, arg_2.b.a))), abs(global4[_wgslsmith_index_u32(~arg_2.b.a, 31u)]), !(!vec3<bool>(arg_2.c.x, arg_2.d, false))), firstLeadingBit(reverseBits(min(global2[_wgslsmith_index_u32(arg_2.a, 20u)] ^ vec3<u32>(arg_2.e.a, arg_2.e.a, 1u), reverseBits(vec3<u32>(4294967295u, arg_2.e.a, 0u))))), false);
    var_1 = firstLeadingBit(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_2.a, var_1.x), vec3<u32>(4294967295u, var_1.x, 51340u))));
    var var_2 = _wgslsmith_mult_vec4_i32(select(-vec4<i32>(arg_3, _wgslsmith_div_i32(arg_2.b.b, 35971i), i32(-1i) * -2147483647i, -27914i), vec4<i32>(select(arg_3, arg_3, true), func_2().b, _wgslsmith_mod_i32(arg_3, arg_2.b.b), abs(_wgslsmith_div_i32(u_input.a.x, arg_2.b.b))), arg_2.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3, -abs(arg_3), -33930i, u_input.a.x), -abs(vec4<i32>(u_input.a.x, -31773i, arg_2.e.b, arg_3))));
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.a), vec3<u32>(54841u, 1u, 13104u)), 21u)];
    let var_1 = _wgslsmith_div_f32(-918f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1456f)), _wgslsmith_f_op_f32(951f - 148f)), 1000f))));
    let var_2 = var_0.d.x;
    var var_3 = ~select(arg_0, 1u, all(!vec2<bool>(var_0.d.x, var_0.d.x))) < (~reverseBits(0u) & arg_0);
    let var_4 = ~(~vec4<u32>(0u, var_0.c.a, arg_0 | arg_1.a, 23574u));
    return func_2();
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    global4 = array<vec3<u32>, 31>();
    global4 = array<vec3<u32>, 31>();
    global0 = array<vec4<f32>, 29>();
    let var_0 = arg_1;
    global1 = array<Struct_2, 21>();
    return Struct_2(abs(global4[_wgslsmith_index_u32(arg_2, 31u)]), Struct_1(arg_2, _wgslsmith_add_i32(abs(countOneBits(arg_3.x)), u_input.a.x)), func_5(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(arg_2, arg_2, arg_2)), arg_2), func_4(2324f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 533f, var_0)) * vec4<f32>(var_0, var_0, -262f, 180f)), Struct_5(arg_2, Struct_1(arg_2, 2147483647i), arg_0, false, func_2()), arg_3.x)), arg_0.xz);
}

fn func_6(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(1000f - -1069f);
    var var_1 = -1i;
    global1 = array<Struct_2, 21>();
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.c, 29u)]);
    return var_3.ww;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 29>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6(Struct_4(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, 20836i), func_1(!vec4<bool>(var_0, var_0, false, var_0), 1162f, 36018u, vec3<i32>(-1i & u_input.a.x, u_input.a.x, ~(-15477i))), 19742u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 0i, u_input.a.x), global3[_wgslsmith_index_u32(56972u, 32u)]) | (global3[_wgslsmith_index_u32(1u, 32u)] << (~vec3<u32>(0u, 76712u, 29421u) % vec3<u32>(32u)))), var_1.x);
}

