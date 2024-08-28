struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 20>;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec2<u32>(620u, 1u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 55254i, 1i), vec4<i32>(i32(-2147483648), -13761i, 1i, -67295i), vec4<bool>(false, true, true, true)), vec3<u32>(0u, 4294967295u, 17731u)), Struct_4(vec2<u32>(38790u, 1u), Struct_1(vec4<i32>(23965i, -29310i, 57155i, -26307i), vec4<i32>(17194i, 1i, -1i, 1i), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 51501u, 15863u)), Struct_4(vec2<u32>(24793u, 6897u), Struct_1(vec4<i32>(-1i, 0i, 29593i, -1i), vec4<i32>(37123i, 0i, -807i, -1i), vec4<bool>(true, false, true, true)), vec3<u32>(13264u, 5885u, 4294967295u)), Struct_4(vec2<u32>(0u, 4294967295u), Struct_1(vec4<i32>(1i, 351i, -1i, 0i), vec4<i32>(2147483647i, -46881i, 1i, 0i), vec4<bool>(false, false, true, true)), vec3<u32>(0u, 689u, 0u)), Struct_4(vec2<u32>(21600u, 32138u), Struct_1(vec4<i32>(10683i, -58844i, -1i, 1i), vec4<i32>(-10024i, i32(-2147483648), i32(-2147483648), 36665i), vec4<bool>(true, false, true, false)), vec3<u32>(46602u, 4294967295u, 31286u)), Struct_4(vec2<u32>(1u, 1156u), Struct_1(vec4<i32>(-13869i, -66416i, 0i, 0i), vec4<i32>(1i, 39802i, 0i, 0i), vec4<bool>(false, false, false, false)), vec3<u32>(0u, 60789u, 13582u)), Struct_4(vec2<u32>(34792u, 1u), Struct_1(vec4<i32>(15316i, -1i, 0i, i32(-2147483648)), vec4<i32>(-8142i, 36676i, -5985i, 1945i), vec4<bool>(true, false, true, false)), vec3<u32>(58044u, 4294967295u, 4294967295u)), Struct_4(vec2<u32>(16805u, 19393u), Struct_1(vec4<i32>(-44662i, 24840i, 624i, 21390i), vec4<i32>(2147483647i, -1i, 13117i, 10455i), vec4<bool>(false, true, false, false)), vec3<u32>(21567u, 0u, 30519u)), Struct_4(vec2<u32>(1u, 1u), Struct_1(vec4<i32>(38729i, i32(-2147483648), -5034i, -18166i), vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i), vec4<bool>(false, true, true, true)), vec3<u32>(1261u, 63182u, 47342u)), Struct_4(vec2<u32>(34349u, 4294967295u), Struct_1(vec4<i32>(0i, -12496i, -18918i, 41749i), vec4<i32>(-1i, 36477i, 18968i, -9176i), vec4<bool>(false, false, true, false)), vec3<u32>(4294967295u, 76797u, 4294967295u)), Struct_4(vec2<u32>(0u, 4294967295u), Struct_1(vec4<i32>(-10281i, 5432i, 15742i, i32(-2147483648)), vec4<i32>(9244i, -1i, -3247i, 2147483647i), vec4<bool>(true, false, true, false)), vec3<u32>(63256u, 0u, 0u)), Struct_4(vec2<u32>(17471u, 4294967295u), Struct_1(vec4<i32>(29231i, 1i, 2147483647i, -27372i), vec4<i32>(39035i, -25772i, 0i, -5424i), vec4<bool>(true, false, true, true)), vec3<u32>(36860u, 4294967295u, 27076u)), Struct_4(vec2<u32>(0u, 0u), Struct_1(vec4<i32>(-5707i, 0i, 0i, 46711i), vec4<i32>(0i, -1i, 1i, -1i), vec4<bool>(true, true, false, false)), vec3<u32>(1u, 0u, 9321u)), Struct_4(vec2<u32>(5179u, 4294967295u), Struct_1(vec4<i32>(-1i, 3771i, -1i, 0i), vec4<i32>(34977i, -13139i, 1i, -1i), vec4<bool>(false, true, false, false)), vec3<u32>(7857u, 29900u, 26085u)), Struct_4(vec2<u32>(4294967295u, 1u), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(0i, 0i, i32(-2147483648), 22821i), vec4<bool>(false, false, true, true)), vec3<u32>(0u, 1u, 35006u)), Struct_4(vec2<u32>(1u, 24727u), Struct_1(vec4<i32>(62382i, 1i, 1i, 48343i), vec4<i32>(-1i, 1i, -1762i, -30040i), vec4<bool>(true, false, false, true)), vec3<u32>(4294967295u, 1u, 17579u)), Struct_4(vec2<u32>(53178u, 1u), Struct_1(vec4<i32>(1i, 11612i, 1i, -49009i), vec4<i32>(-35229i, 30383i, i32(-2147483648), -32523i), vec4<bool>(true, false, false, false)), vec3<u32>(144057u, 16642u, 10381u)), Struct_4(vec2<u32>(1u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 54245i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 1i, 24300i, -16766i), vec4<bool>(true, false, true, false)), vec3<u32>(44847u, 0u, 36381u)), Struct_4(vec2<u32>(51183u, 1u), Struct_1(vec4<i32>(-15094i, -1i, 26907i, 2147483647i), vec4<i32>(23370i, -13701i, 0i, -1i), vec4<bool>(true, true, false, true)), vec3<u32>(13558u, 1u, 10658u)), Struct_4(vec2<u32>(79198u, 149536u), Struct_1(vec4<i32>(7706i, 2147483647i, -22281i, -6555i), vec4<i32>(50015i, 1i, 20439i, i32(-2147483648)), vec4<bool>(false, true, false, true)), vec3<u32>(0u, 1u, 11382u)), Struct_4(vec2<u32>(1u, 15526u), Struct_1(vec4<i32>(0i, i32(-2147483648), 1i, 0i), vec4<i32>(1i, -3280i, 17928i, 4982i), vec4<bool>(false, true, true, true)), vec3<u32>(1u, 32032u, 1u)), Struct_4(vec2<u32>(44164u, 64124u), Struct_1(vec4<i32>(2147483647i, -39300i, -32224i, 16092i), vec4<i32>(26129i, 1i, 2695i, -23719i), vec4<bool>(true, false, true, false)), vec3<u32>(33888u, 0u, 1u)), Struct_4(vec2<u32>(103404u, 4294967295u), Struct_1(vec4<i32>(0i, 24562i, -5034i, -55579i), vec4<i32>(28009i, 1i, 20477i, -1i), vec4<bool>(true, false, false, true)), vec3<u32>(4294967295u, 0u, 5604u)), Struct_4(vec2<u32>(0u, 21171u), Struct_1(vec4<i32>(-74720i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-1i, 13602i, 17396i, 0i), vec4<bool>(true, true, true, true)), vec3<u32>(0u, 16635u, 46727u)), Struct_4(vec2<u32>(60735u, 42387u), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, -37351i), vec4<i32>(31075i, 26590i, -6260i, -1i), vec4<bool>(true, false, false, false)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 6503u), Struct_1(vec4<i32>(-1i, -41228i, -13524i, 24802i), vec4<i32>(20132i, -13273i, 0i, -10175i), vec4<bool>(true, true, false, true)), vec3<u32>(15957u, 47210u, 1u)), Struct_4(vec2<u32>(13423u, 61695u), Struct_1(vec4<i32>(3065i, 1i, -1886i, -31839i), vec4<i32>(-6196i, 0i, i32(-2147483648), -10896i), vec4<bool>(false, true, true, false)), vec3<u32>(4294967295u, 1u, 10413u)), Struct_4(vec2<u32>(23810u, 4015u), Struct_1(vec4<i32>(56980i, -34987i, 50384i, 1i), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<bool>(true, false, true, true)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(vec2<u32>(0u, 1u), Struct_1(vec4<i32>(31665i, 6439i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -32854i, 1i, 0i), vec4<bool>(true, false, true, true)), vec3<u32>(4769u, 23624u, 83983u)));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<i32>(-9550i, -27688i, -74115i, i32(-2147483648)), vec4<i32>(48783i, 2147483647i, -14224i, 2147483647i), vec4<bool>(false, true, true, false)), vec4<i32>(-35419i, -1741i, 27413i, 70233i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) + -914f), -538f, _wgslsmith_f_op_f32(732f - 806f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1449f, -1554f))))));
    var var_1 = select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - var_0.x))) == var_0.x, any(vec4<bool>((global1.d.x & global1.c) == 1u, all(select(vec3<bool>(global4.a.c.x, global1.a.c.x, global1.a.c.x), vec3<bool>(global1.a.c.x, global1.a.c.x, global4.a.c.x), vec3<bool>(global4.a.c.x, false, true))), true, all(global1.a.c.yy))), all(vec4<bool>(false, !(255f >= var_0.x), global1.a.c.x, false)));
    global3 = array<Struct_4, 29>();
    global1 = Struct_5(global1.a, min(select(arg_0, arg_1.yz, vec2<bool>(global4.a.c.x, any(vec2<bool>(global1.a.c.x, global1.a.c.x)))), arg_0), firstTrailingBit(abs(abs(_wgslsmith_add_u32(global1.d.x, global1.d.x)))), ~vec4<u32>(1u, 21722u, 0u, _wgslsmith_mod_u32(~global1.c, ~global1.d.x)));
    var var_2 = Struct_3(vec4<i32>(_wgslsmith_add_i32(arg_1.x, ~(~arg_0.x)), u_input.b.x << (global1.d.x % 32u), -global1.b.x, -2334i), global2[_wgslsmith_index_u32(global1.c, 20u)]);
    return arg_1;
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    global3 = array<Struct_4, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 587f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1562f, _wgslsmith_f_op_f32(step(-1291f, -1445f))))))));
    var var_1 = Struct_4(global1.d.yw, Struct_1(vec4<i32>(arg_0.x, 0i, func_3(~vec2<i32>(-2147483647i, global1.b.x), -vec3<i32>(global4.a.b.x, 34451i, arg_0.x)).x, _wgslsmith_dot_vec2_i32(max(arg_0.xz, vec2<i32>(global4.b.x, 2147483647i)), arg_0.yx)), -(vec4<i32>(-1i) * -vec4<i32>(u_input.c, global1.b.x, arg_0.x, -24282i)), select(global4.a.c, global4.a.c, vec4<bool>(global1.a.c.x & false, !global1.a.c.x, false, global1.a.c.x))), global1.d.wyw);
    let var_2 = vec3<f32>(-1612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f - var_0.x) * _wgslsmith_f_op_f32(sign(-597f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-330f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-981f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(261f, var_0.x)) + _wgslsmith_f_op_f32(var_0.x + var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var var_3 = var_0.x;
    return global1.c;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f - arg_3.x))))) + -1000f);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_i32(~(global4.a.a ^ select(vec4<i32>(u_input.a.x, 11453i, u_input.a.x, u_input.c), global4.a.a, vec4<bool>(arg_1.a.c.x, global1.a.c.x, arg_1.a.c.x, false))), countOneBits(~arg_1.a.b), vec4<i32>(7373i, _wgslsmith_sub_i32(abs(6090i), -u_input.a.x), global4.a.a.x, ~7723i)), Struct_2(Struct_1(vec4<i32>(-1i, -arg_1.b.x, countOneBits(-2147483647i), ~(-23364i)), vec4<i32>(~(-40781i), 1i, _wgslsmith_mult_i32(14717i, u_input.c), global1.a.a.x), vec4<bool>(all(global1.a.c), arg_2 && false, all(global4.a.c.xy), select(false, arg_2, false))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, 1i, u_input.a.x, global1.a.a.x), -global4.a.a ^ (global1.a.a & vec4<i32>(22925i, arg_1.a.a.x, 0i, 0i)))));
    global1 = arg_1;
    var var_3 = var_1;
    return u_input.c;
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 20>();
    var var_0 = Struct_5(global1.a, firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global4.b.x, -9112i), 1i), u_input.b.x)), global1.c, select(~abs(abs(vec4<u32>(4294967295u, global1.d.x, global1.d.x, 22078u))), ~(~vec4<u32>(71743u, 37485u, global1.d.x, 68704u)), vec4<bool>(true, all(global1.a.c) || select(false, true, false), all(vec3<bool>(global1.a.c.x, global1.a.c.x, global4.a.c.x)), any(select(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<bool>(false, false), false)))));
    var var_1 = ~global1.a.a.x;
    var var_2 = ~func_5(~(~(~var_0.c)), Struct_5(var_0.a, min(~vec2<i32>(0i, global4.a.a.x), vec2<i32>(u_input.b.x, -14123i)), func_4(func_3(vec2<i32>(global4.a.b.x, -32012i), global1.a.b.xwx)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 2256u, 16542u, global1.d.x) & var_0.d, vec4<u32>(var_0.d.x, 14722u, global1.d.x, 4294967295u))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -312f, 1000f, -427f)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1104f)), -576f);
    return Struct_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(2241i, ~global4.a.a.x, 1i, global1.b.x), global1.a.b), global2[_wgslsmith_index_u32(global1.c, 20u)]);
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, _wgslsmith_mod_i32(~firstLeadingBit(var_0.a.x), global1.a.a.x)), -vec2<i32>(u_input.c, -1i), ~(~vec2<i32>(-global4.a.b.x, -2147483647i)));
    let var_2 = firstLeadingBit(-u_input.b.yx);
    var var_3 = func_2().b.a;
    var var_4 = Struct_4(max(~(vec2<u32>(4294967295u, global1.c) & (global1.d.wy | vec2<u32>(32058u, 1u))), global1.d.xz), func_2().b.a, ~(~vec3<u32>(_wgslsmith_mult_u32(global1.d.x, global1.d.x), global1.c, global1.c)));
    return ~vec2<u32>(var_4.c.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xz;
    var var_1 = Struct_4(func_1(), Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, global1.a.a.x, 1i), -vec4<i32>(var_0.x, -2147483647i, 15158i, global4.b.x)), global1.a.b, !vec4<bool>(true, global1.a.c.x, global1.a.c.x, false)), vec3<u32>(_wgslsmith_mod_u32(func_4(vec3<i32>(50720i, var_0.x, 16162i)), countOneBits(4294967295u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_1(), ~vec2<u32>(28030u, 0u)), global1.d.zz), global1.c ^ (1747u << (func_4(vec3<i32>(32687i, -2147483647i, global4.a.b.x)) % 32u))));
    global2 = array<Struct_2, 20>();
    global1 = Struct_5(var_1.b, -countOneBits(global1.a.a.wz), _wgslsmith_mult_u32(~(~1u), max(~1u, 107754u)) & ~_wgslsmith_add_u32(~var_1.c.x, max(var_1.a.x, global1.d.x)), ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(global1.d.xzw, vec3<u32>(global1.c, var_1.a.x, global1.d.x)), func_1().x, countOneBits(var_1.a.x), 24063u)));
    let var_2 = var_0;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.c.x, var_1.a.x), 20u)];
    global0 = array<vec2<bool>, 32>();
    var var_4 = Struct_2(func_2().b.a, vec4<i32>(-2147483647i, var_0.x, min(-1i, -283i & func_3(vec2<i32>(u_input.a.x, global4.a.a.x), global4.a.b.zxw).x), 19i));
    let var_5 = Struct_3(var_4.b, Struct_2(Struct_1(var_3.a.b, _wgslsmith_mult_vec4_i32(vec4<i32>(20658i, var_0.x, var_3.b.x, global4.b.x), global4.b), select(global4.a.c, select(vec4<bool>(global4.a.c.x, true, global1.a.c.x, true), vec4<bool>(true, var_3.a.c.x, var_3.a.c.x, var_1.b.c.x), var_1.b.c.x), false)), ~(~(-var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~((global1.d ^ global1.d) & _wgslsmith_mod_vec4_u32(global1.d ^ vec4<u32>(4294967295u, var_1.a.x, 4294967295u, var_1.a.x), firstLeadingBit(vec4<u32>(83378u, 1u, 60529u, var_1.c.x)))));
}

