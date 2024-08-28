struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(64206i, i32(-2147483648), 0i);

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 9>;

var<private> global3: array<vec3<bool>, 7>;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(38114u, 0u, 29910i, 787f), vec4<i32>(-24508i, 1i, 0i, 34413i), Struct_1(19097u, 0u, -23314i, -1094f), Struct_1(4294967295u, 93045u, 1i, 587f), 0u), Struct_2(Struct_1(22960u, 1670u, -41219i, -440f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), Struct_1(1u, 1u, -1i, -1353f), Struct_1(0u, 105675u, -32711i, 355f), 0u), Struct_2(Struct_1(15848u, 0u, i32(-2147483648), -217f), vec4<i32>(41033i, i32(-2147483648), 81563i, -1i), Struct_1(3580u, 4294967295u, i32(-2147483648), 1778f), Struct_1(40928u, 2292u, 2147483647i, 504f), 8772u), Struct_2(Struct_1(48456u, 41441u, 2147483647i, -850f), vec4<i32>(i32(-2147483648), -28079i, 23138i, 2147483647i), Struct_1(212u, 6012u, 0i, -1162f), Struct_1(4294967295u, 22232u, 0i, -809f), 44587u), Struct_2(Struct_1(59810u, 38565u, 0i, -2240f), vec4<i32>(1i, 11543i, -30802i, 1i), Struct_1(4294967295u, 4294967295u, 0i, -1491f), Struct_1(4294967295u, 94163u, -22700i, -638f), 22155u), Struct_2(Struct_1(4127u, 1u, -34242i, -724f), vec4<i32>(-1i, 1i, 18855i, -1i), Struct_1(4503u, 47592u, -9831i, 1000f), Struct_1(1u, 0u, 2765i, -660f), 1u), Struct_2(Struct_1(16274u, 1u, -1i, 306f), vec4<i32>(43987i, -70507i, -1i, -13138i), Struct_1(4294967295u, 24665u, i32(-2147483648), 393f), Struct_1(4294967295u, 1u, -8199i, 348f), 7529u), Struct_2(Struct_1(4294967295u, 20411u, 1i, -388f), vec4<i32>(2147483647i, -1i, 64916i, -38745i), Struct_1(1u, 4294967295u, 5614i, -583f), Struct_1(73719u, 25087u, 43582i, -277f), 4294967295u), Struct_2(Struct_1(4294967295u, 35338u, 2147483647i, -1148f), vec4<i32>(-1i, -24370i, -47106i, 43250i), Struct_1(101212u, 29531u, -8615i, -1541f), Struct_1(20257u, 26182u, -1i, -334f), 57842u), Struct_2(Struct_1(49105u, 0u, 2147483647i, 376f), vec4<i32>(0i, 2147483647i, -13849i, -21710i), Struct_1(46296u, 4294967295u, 24364i, -2124f), Struct_1(0u, 58343u, 2147483647i, -1353f), 17501u), Struct_2(Struct_1(0u, 53038u, 15069i, -1423f), vec4<i32>(2147483647i, i32(-2147483648), -28351i, 0i), Struct_1(27160u, 4294967295u, 1037i, 878f), Struct_1(69982u, 4855u, -27829i, -1968f), 23369u), Struct_2(Struct_1(0u, 0u, -8159i, -380f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), Struct_1(7101u, 85870u, 0i, -831f), Struct_1(4776u, 4294967295u, 42831i, 737f), 13116u), Struct_2(Struct_1(0u, 7217u, 42205i, -2241f), vec4<i32>(19831i, 34461i, -9827i, i32(-2147483648)), Struct_1(75203u, 4294967295u, 37007i, -1869f), Struct_1(4294967295u, 65581u, i32(-2147483648), -2829f), 0u), Struct_2(Struct_1(4294967295u, 1588u, 1i, 315f), vec4<i32>(2147483647i, 2049i, -1i, 23580i), Struct_1(0u, 1u, -2177i, -1088f), Struct_1(1u, 4294967295u, -55091i, 251f), 12283u), Struct_2(Struct_1(55279u, 1059u, 0i, 1334f), vec4<i32>(-19048i, -86200i, i32(-2147483648), 2147483647i), Struct_1(0u, 29788u, 2147483647i, -1207f), Struct_1(8533u, 44530u, -21263i, -341f), 40207u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    global4 = array<Struct_2, 15>();
    var var_0 = global4[_wgslsmith_index_u32(arg_0.b, 15u)];
    let var_1 = vec4<f32>(arg_2.a.d, _wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(round(arg_1.d))), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(277f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.d, arg_1.d) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(f32(-1f) * -1048f), !global1.x)))));
    return ~arg_3.x;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, func_3(Struct_1(1u, 0u, -44726i, 1325f), Struct_1(5105u, 1u, -2147483647i, -357f), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(57673u, 79142u), vec2<u32>(1u, 45226u)), 15u)], select(vec2<u32>(1u, 17094u), vec2<u32>(0u, 5074u), global1.xy)), ~(~0u)), min(1u, ~12063u), 6537u), 35719u);
    global0 = abs(abs(_wgslsmith_mult_vec3_i32(abs(firstTrailingBit(vec3<i32>(u_input.a, -31212i, global0.x))), -vec3<i32>(global0.x, u_input.a, -2147483647i))));
    var var_1 = Struct_1(_wgslsmith_add_u32(var_0.x, var_0.x), ~89458u, select(1i, -6991i, any(!global1.zx)), -573f);
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(19533u, 1u, var_0.x, var_0.x)), ~vec4<u32>(35697u, var_1.b, var_0.x, 0u), !vec4<bool>(true, global1.x, false, false)), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, var_0.x), vec2<u32>(var_1.a, var_1.b)), _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(1u, var_1.a)), 36634u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_1.b, var_0.x, 66504u, 1u), vec4<u32>(var_1.b, 4294967295u, 4294967295u, 0u), global1.x), abs(vec4<u32>(var_0.x, var_1.b, var_1.a, var_1.a)), ~vec4<u32>(23631u, var_1.a, 56952u, 18028u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(23039u, var_0.x, var_0.x, 45010u), _wgslsmith_sub_vec4_u32(vec4<u32>(94628u, 4294967295u, var_0.x, var_1.b), vec4<u32>(var_1.a, 115434u, var_1.b, 4294967295u)))), ~1i, 1230f), ~(~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(5430i, -19792i, u_input.a, -1i)), vec4<i32>(var_1.c, -1i, 42455i, global0.x))), Struct_1(firstTrailingBit(1u), abs(abs(var_0.x)) << (_wgslsmith_div_u32(0u, 1u) % 32u), -abs(_wgslsmith_add_i32(global0.x, u_input.a)), -2319f), Struct_1(~_wgslsmith_div_u32(4294967295u & var_0.x, ~0u), _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(4294967295u, 74888u, 4294967295u)), select(~var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x), global1.x)), 1726i, -1280f), 1u ^ var_1.b);
    global1 = vec3<bool>(true, !(var_1.d < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -336f)))), false);
    return ~vec3<u32>(min(~105235u << (0u % 32u), 16931u), firstTrailingBit(~var_1.a), _wgslsmith_add_u32(30282u, ~(~1u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    global4 = array<Struct_2, 15>();
    global0 = vec3<i32>(18874i, u_input.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(45907i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -13840i, u_input.a, -1i), vec4<i32>(-1i, global0.x, u_input.a, 22447i))), -19166i)) >> ((_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(func_2(arg_1), vec3<u32>(14058u, 101810u, 55015u)), vec3<u32>(~0u, countOneBits(1u), countOneBits(47022u))) >> (func_2(arg_1) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_0 = -_wgslsmith_mult_i32(select(u_input.a, 0i, global1.x & arg_0.x) << (_wgslsmith_sub_u32(4294967295u, abs(52716u)) % 32u), ~(-962i));
    global1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(39507u, 80634u)), abs(countOneBits(vec2<u32>(1u, 20984u)))), 7u)];
    var var_1 = !arg_0;
    return Struct_1(0u, min(~67559u, _wgslsmith_mod_u32(40215u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 22304u, 4294967295u, 1u)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_1)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -471f)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = !global1.x;
    var var_1 = abs(vec2<u32>(~arg_0.a & (~arg_0.b << (0u % 32u)), max(~(33569u >> (arg_0.b % 32u)), ~arg_0.a | select(1u, 0u, global1.x))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(~0u, var_1.x ^ 0u, 34232u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(23506u, var_1.x, arg_0.a), vec3<u32>(arg_0.b, arg_0.b, arg_0.b), vec3<u32>(28925u, 0u, 82896u))), select(vec3<u32>(4294967295u, arg_0.a, var_1.x), vec3<u32>(~arg_0.a, firstLeadingBit(var_1.x), arg_0.b), global1.x));
    let var_3 = arg_0;
    let var_4 = Struct_2(func_1(!(!vec4<bool>(global1.x, false, true, global1.x)), 404f), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21360i | global0.x, _wgslsmith_mod_i32(0i, var_3.c), 1i, global0.x), abs(abs(vec4<i32>(var_3.c, 0i, u_input.a, global0.x)))), _wgslsmith_dot_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(3228i, arg_0.c, -2147483647i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, -45609i, -1i), vec4<i32>(34026i, 0i, u_input.a, arg_0.c)), var_3.c, min(-526i, 60194i))), _wgslsmith_div_i32(abs(arg_0.c), var_3.c) ^ ~(~12575i), 2147483647i), Struct_1(~_wgslsmith_sub_u32(1u, var_1.x), ~28806u, _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(56606i, arg_0.c, 26702i), vec3<i32>(global0.x, 0i, -1867i) | vec3<i32>(2147483647i, 1i, 0i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f))))), arg_0, var_3.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1059f;
    let var_1 = func_4(func_1(vec4<bool>(true, true, false, true), -1000f), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-323f))))));
    global2 = array<vec2<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_1.d), var_1.d), var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1633f - var_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1241f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(681f, var_0)) * -1330f));
}

