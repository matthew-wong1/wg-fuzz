struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, true, false, true, false, true, false, false, true, true);

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 52791u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(38677u, 1u), vec2<u32>(584u, 1u));

var<private> global3: u32;

var<private> global4: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_5(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.d), vec4<i32>(-70103i, -8862i, 28445i, 0i), _wgslsmith_add_i32(0i, -42473i)), vec4<i32>(_wgslsmith_clamp_i32(-52226i, -2147483647i, 8267i), abs(-2147483647i), ~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, 1i))), abs(_wgslsmith_mult_i32(0i, 2147483647i)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57396u, u_input.b, u_input.b), 28u)], select(vec4<i32>(-24191i, 15920i, -1i, -15721i), vec4<i32>(-22109i, -12366i, -2147483647i, -2147483647i), global1[_wgslsmith_index_u32(u_input.c, 24u)]), ~12535i)), Struct_1(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(94922u, 28u)], global0[_wgslsmith_index_u32(51765u, 28u)] | vec4<u32>(u_input.b, u_input.b, u_input.c, 29208u)), ~vec4<i32>(-8472i, 1i, 0i, 0i), abs(_wgslsmith_clamp_i32(-5423i, 1i, 2147483647i))), vec3<i32>(37660i, ~(-32391i), -1i)), firstLeadingBit(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(0i, -51230i, -26379i, -1i)), -(~vec4<i32>(3185i, 24824i, 22019i, 0i)))));
    global4 = array<vec3<bool>, 15>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a.a.d.a.yxz, vec3<u32>(0u, abs(~(~var_0.a.b.a.x)), ~(~24565u))), 24u)];
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.x)));
    var var_3 = var_0.a.a.c;
    return var_0.a.b.b.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(u_input.d, 28u)], vec4<u32>(0u, 45836u, 1u, u_input.d)), vec4<i32>(1i, _wgslsmith_mult_i32(2147483647i, 0i), 0i, 1i), abs(~(-19080i))), vec4<i32>(-33773i, ~(i32(-1i) * -2147483647i), -36018i, i32(-1i) * -1i), 27727i, Struct_1(~(~global0[_wgslsmith_index_u32(0u, 28u)]), ~vec4<i32>(1i, 1i, 1i, 1i), 1i)), vec2<i32>(-reverseBits(firstLeadingBit(35569i)), 66506i), Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.d, 38171u, 54992u, u_input.d), vec4<i32>(-1i, 21429i, 45524i, 0i), _wgslsmith_mod_i32(-15423i, 1i)), vec4<i32>(-2147483647i, 1i, ~(-1i), 1i), ~2147483647i, Struct_1(vec4<u32>(u_input.b, 14532u, u_input.a, 42218u), vec4<i32>(-71887i, -1i, 2147483647i, 24347i) >> (global0[_wgslsmith_index_u32(u_input.b, 28u)] % vec4<u32>(32u)), func_3(vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c, 24u)], false, global1[_wgslsmith_index_u32(5516u, 24u)]), vec3<f32>(872f, -1000f, 1536f)))), Struct_1(min(select(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false, false, global1[_wgslsmith_index_u32(u_input.a, 24u)])), global0[_wgslsmith_index_u32(~u_input.a, 28u)]), -vec4<i32>(2147483647i, 2147483647i, 22536i, -38307i), max(~(-30102i), -1i)), vec3<i32>(1i, 17934i, 0i) >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.c), vec3<u32>(u_input.a, 4294967295u, u_input.c)), reverseBits(vec3<u32>(0u, u_input.c, 97724u))) % vec3<u32>(32u))));
    let var_1 = Struct_4(var_0.c.a, reverseBits(min(var_0.c.b.b.wy, vec2<i32>(2147483647i, -12702i)) << (firstLeadingBit(~global2[_wgslsmith_index_u32(16652u, 5u)]) % vec2<u32>(32u))), var_0.c);
    let var_2 = var_0.c.a.a.a.wyx;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(189f, -1717f))))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-909f, 907f)) * _wgslsmith_div_vec2_f32(vec2<f32>(426f, var_3.x), vec2<f32>(-1257f, var_3.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-145f, var_3.x), vec2<f32>(var_3.x, -335f)))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(896f, var_3.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-875f, 884f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, -1167f) + vec2<f32>(var_3.x, var_3.x)))));
    return var_2.x;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    global0 = array<vec4<u32>, 28>();
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 28u)], vec4<u32>(0u, var_0, var_0, 4294967295u)), vec4<i32>(abs(33118i), 1i, firstTrailingBit(-3189i), select(-8598i, -1i, global1[_wgslsmith_index_u32(0u, 24u)])), firstLeadingBit(1i)), vec4<i32>(45126i, ~_wgslsmith_mod_i32(62432i, -35891i), _wgslsmith_dot_vec3_i32(vec3<i32>(6983i, 0i, -35585i), vec3<i32>(6570i, 0i, -37569i)) >> (0u % 32u), func_3(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(54406u, 24u)], true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1046f, 700f, -102f), vec3<f32>(-1640f, 577f, -609f))))), _wgslsmith_div_i32(i32(-1i) * -35691i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 27251i, -19532i), vec3<i32>(0i, 12107i, 0i), false), abs(vec3<i32>(0i, -2161i, 1i)))), Struct_1(global0[_wgslsmith_index_u32(19054u, 28u)] ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14800u, 59394u), vec2<u32>(41039u, 4294967295u)), 28u)], -vec4<i32>(0i, 1i, -3900i, 1i), _wgslsmith_mod_i32(firstTrailingBit(-41757i), ~1i))), Struct_1(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(u_input.b, 28u)], ~vec4<u32>(4294967295u, 0u, 1u, 54297u), vec4<u32>(var_0, ~4294967295u, 0u & var_0, firstTrailingBit(var_0))), vec4<i32>(-30202i, abs(-49740i), _wgslsmith_sub_i32(1i, -2147483647i >> (var_0 % 32u)), -13918i), select(2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -21582i, -2147483647i, -53156i), -vec4<i32>(-5732i, 0i, 2147483647i, 12007i)), true)), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(1i, 9825i, 12293i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(14436i, 60731i, 0i)), ~vec3<i32>(1i, 23429i, -54007i))));
    var var_2 = ~_wgslsmith_sub_u32(reverseBits(var_1.a.d.a.x), 0u);
    var var_3 = countOneBits(vec4<i32>(var_1.a.a.c, -_wgslsmith_add_i32(1i, _wgslsmith_add_i32(1i, 0i)), ~_wgslsmith_sub_i32(var_1.b.b.x, abs(2466i)), var_1.a.d.b.x));
    return Struct_3(Struct_2(var_1.b, ~var_1.b.b, var_3.x, var_1.b), var_1.a.a, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    var var_0 = Struct_5(func_1(), select(min(select(vec4<i32>(14120i, -1i, -25598i, 1i), vec4<i32>(-2147483647i, -2147483647i, -36998i, 2147483647i), vec4<bool>(global1[_wgslsmith_index_u32(73577u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], false, false)), vec4<i32>(1i, 1i, 1i, 1i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -2147483647i) >> (global0[_wgslsmith_index_u32(4439u, 28u)] % vec4<u32>(32u)), vec4<i32>(-2147483647i, -2147483647i, -1i, 0i)), -vec4<i32>(0i, i32(-1i) * -2450i, 30954i, _wgslsmith_div_i32(-7284i, -1i)), true));
    let var_1 = !all(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(66056u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.b.a.x, 24u)], true), vec2<bool>(false, true)), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 24u)]), vec2<bool>(true, true)));
    global3 = ~_wgslsmith_add_u32(func_1().a.d.a.x | 4294967295u, var_0.a.b.a.x >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.a.x, var_0.a.b.a.x), vec2<u32>(0u, 4294967295u)) | ~1503u) % 32u));
    global2 = array<vec2<u32>, 5>();
    let var_2 = !(true | any(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.b.a.x, 24u)], var_1), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.a.d.a.x, 24u)], var_1)), var_0.b.x < var_0.a.c.x)));
    global2 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(46014u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1366f, -191f), vec2<f32>(-1000f, 633f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-279f, -836f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -602f)), select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), vec2<bool>(true, true))))))), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_0.b.x, var_0.a.a.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(523f)), _wgslsmith_f_op_f32(-2961f - 923f), -1817f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(612f, -2195f, 561f, 1398f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(496f, 1959f, -1000f, 1419f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, -115f, -652f, -1720f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-409f, 112f, -1062f, 354f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, 1432f, 507f, -134f) * vec4<f32>(-129f, -596f, -1810f, 496f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-218f, -755f, -1000f, -894f)))), true)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1237f, 305f, -143f, 160f))) - vec4<f32>(497f, -301f, _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-109f * -655f)))));
}

