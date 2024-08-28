struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(32631i, 41942i, i32(-2147483648)), vec3<i32>(1i, 1i, -1i), vec3<i32>(i32(-2147483648), -34017i, 0i), vec3<i32>(14326i, 17476i, -1i), vec3<i32>(-5797i, -1i, -1i), vec3<i32>(-13446i, -41577i, -27715i), vec3<i32>(i32(-2147483648), 46382i, 2147483647i), vec3<i32>(-17426i, 11464i, -1i), vec3<i32>(i32(-2147483648), 23738i, -55474i), vec3<i32>(2147483647i, i32(-2147483648), 3306i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(82805i, 17055i, 1708i), vec3<i32>(i32(-2147483648), -1i, -9277i), vec3<i32>(-8776i, 2147483647i, -39246i), vec3<i32>(2147483647i, -1000i, -21591i), vec3<i32>(-64657i, 62594i, i32(-2147483648)), vec3<i32>(1i, 0i, 27838i), vec3<i32>(4018i, -1i, 1i), vec3<i32>(89793i, 1i, 24793i), vec3<i32>(23553i, 51599i, 1931i), vec3<i32>(2147483647i, 11889i, -29289i), vec3<i32>(-51217i, -4191i, -1i), vec3<i32>(0i, -12338i, 33439i), vec3<i32>(-2651i, 5214i, -6631i), vec3<i32>(-73396i, 6462i, 1i), vec3<i32>(27888i, 14829i, -44993i), vec3<i32>(-715i, -72085i, 31177i));

var<private> global1: array<i32, 8> = array<i32, 8>(30944i, 1i, 1i, -8596i, 15415i, 21317i, i32(-2147483648), 2147483647i);

var<private> global2: u32 = 1u;

var<private> global3: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-386f, 697f, 745f), vec3<f32>(252f, -1000f, -1072f), vec3<f32>(-113f, 1060f, -196f), vec3<f32>(-1000f, 565f, -387f), vec3<f32>(-1076f, 204f, 505f), vec3<f32>(-1000f, 632f, 2618f), vec3<f32>(-440f, 478f, -147f), vec3<f32>(540f, 1989f, -669f), vec3<f32>(-107f, 630f, 757f), vec3<f32>(1099f, 298f, -1624f), vec3<f32>(322f, -1000f, 1176f), vec3<f32>(475f, -686f, 756f), vec3<f32>(343f, -905f, -1577f), vec3<f32>(431f, -1000f, 1079f), vec3<f32>(501f, -354f, -1749f), vec3<f32>(826f, -1283f, 1000f), vec3<f32>(212f, 687f, -465f), vec3<f32>(-363f, 1144f, 280f), vec3<f32>(-358f, -213f, 1396f), vec3<f32>(-752f, -854f, 1102f), vec3<f32>(-875f, 550f, 1000f), vec3<f32>(-1071f, 899f, 498f), vec3<f32>(448f, -1142f, 1542f), vec3<f32>(506f, -297f, -501f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = abs(_wgslsmith_mult_u32(16827u, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(10411u, firstLeadingBit(4294967295u), ~0u))));
    let var_1 = true;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(1724u)), 27u)], firstTrailingBit(vec3<i32>(-1i, 12528i, u_input.a)) ^ vec3<i32>(-1i, -1i, u_input.a))), u_input.a, u_input.b.x, -global1[_wgslsmith_index_u32(19773u, 8u)]);
    let var_3 = u_input.b;
    var var_4 = var_1;
    return vec4<bool>(true, var_1, any(select(!(!vec4<bool>(false, true, var_1, false)), vec4<bool>(true, all(vec4<bool>(var_1, var_1, var_1, false)), true, var_1), select(select(true, var_1, var_1), var_1, false))), !(!any(select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, false), true))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, ~(1i ^ global1[_wgslsmith_index_u32(~4058u, 8u)])), -(~(vec2<i32>(-1i) * -vec2<i32>(arg_1.x, global1[_wgslsmith_index_u32(16740u, 8u)]))));
    global3 = array<vec3<f32>, 24>();
    var var_2 = select(var_1, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 8u)] | -2147483647i, select(1i, var_1, true)), arg_0);
    var_2 = _wgslsmith_mult_i32(u_input.a, -(i32(-1i) * -31571i));
    return _wgslsmith_add_i32(u_input.a, ~(-2147483647i));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_4(firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.b, 8u)]), 1u, Struct_1(arg_0.c.a));
    let var_1 = ~var_0.b;
    let var_2 = u_input.a;
    let var_3 = Struct_4(func_4(any(vec2<bool>(true, true)), select(vec4<i32>(var_2, _wgslsmith_mod_i32(9291i, 2147483647i), u_input.a, i32(-1i) * -1i), firstLeadingBit(~vec4<i32>(7244i, -17181i, u_input.a, u_input.a)), select(func_3(), vec4<bool>(true, true, true, true), func_3().x))), var_0.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -893f)));
    let var_4 = u_input.b;
    return 1u;
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(_wgslsmith_add_u32(arg_0.b, arg_0.b), func_2(arg_0), ~arg_0.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(25962u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 4294967295u, arg_0.b), vec4<u32>(5385u, 4294967295u, arg_0.b, 323u)) << ((arg_0.b & 0u) % 32u), 62020u), vec3<u32>(~_wgslsmith_mult_u32(61491u, 7019u), 45188u, ~_wgslsmith_mod_u32(arg_0.b, 60359u))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 83225u, arg_0.b), vec3<u32>(3116u, 75294u, 4294967295u), vec3<bool>(false, false, true)) << (~vec3<u32>(36839u, 70687u, 0u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(arg_0.b, 5186u), ~0u, arg_0.b >> (arg_0.b % 32u))) ^ reverseBits(~vec3<u32>(arg_0.b, arg_0.b, 35741u)));
    let var_1 = arg_0;
    var var_2 = arg_0.c.a;
    var var_3 = (any(vec4<bool>(true, false, 4294967295u > arg_0.b, any(vec3<bool>(false, true, true)))) || (_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 0i, global1[_wgslsmith_index_u32(1u, 8u)]), -vec3<i32>(var_1.a, 4946i, 0i)) != -arg_0.a)) || true;
    var var_4 = !(select(true, true, true) && select(!func_3().x, !(var_1.c.a == 393f), any(vec2<bool>(false, true))));
    return any(select(!select(func_3(), vec4<bool>(true, true, true, true), true), vec4<bool>(1u < arg_0.b, any(vec3<bool>(false, false, false)) | true, any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = select(!vec4<bool>(true, all(vec4<bool>(true, false, true, false)), !func_1(Struct_4(global1[_wgslsmith_index_u32(20157u, 8u)], 17870u, Struct_1(-515f))), false), vec4<bool>(_wgslsmith_f_op_f32(1f - 967f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(628f)) * _wgslsmith_f_op_f32(-789f + 817f)), true, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b.x, u_input.a, 1i, 0i), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(32055u, 8u)], 11043i, u_input.b.x)), vec4<i32>(1i, 0i, global1[_wgslsmith_index_u32(24484u, 8u)], u_input.b.x)) > -u_input.a, select(select(func_1(Struct_4(-1i, 4294967295u, Struct_1(1000f))), true, true), true, true)), vec4<bool>(any(vec2<bool>(true, true)), true | all(func_3()), all(vec4<bool>(true, true, true, true)), false));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(~33741i, ~(-2147483647i))), u_input.a), countOneBits(~max(global0[_wgslsmith_index_u32(~0u, 27u)], vec3<i32>(1i, 1i, 1i))));
    var_2 = ~vec3<i32>(firstTrailingBit(-43383i), -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(3291u, 19947u), 55909u), 8u)], -2147483647i);
    global3 = array<vec3<f32>, 24>();
    var var_3 = var_1.yyw;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 1u, 1u, 1u), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(36270u, 21638u, 4294967295u, 28014u), vec4<u32>(8050u, 14270u, 32077u, 15276u)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1843f, -215f))))), _wgslsmith_f_op_f32(step(2070f, -191f)), -1585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f * 1430f) - _wgslsmith_f_op_f32(ceil(1143f))))), vec3<i32>(~max(u_input.a ^ 0i, countOneBits(global1[_wgslsmith_index_u32(0u, 8u)])), -24464i, -global1[_wgslsmith_index_u32(22676u, 8u)]));
}

