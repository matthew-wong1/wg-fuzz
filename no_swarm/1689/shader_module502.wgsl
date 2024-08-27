struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = all(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, arg_1.d, arg_2.d, 4294967295u), vec4<u32>(u_input.c.x, 1u, 5076u, 96776u)), vec4<u32>(u_input.c.x, 34509u, u_input.c.x, arg_2.d) >> (vec4<u32>(4294967295u, u_input.c.x, arg_1.d, arg_0.d) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(select(vec4<u32>(1u, 38373u, arg_1.d, 74223u), vec4<u32>(0u, arg_1.d, arg_0.d, u_input.c.x), false)), _wgslsmith_add_vec4_u32(vec4<u32>(18434u, u_input.c.x, u_input.c.x, arg_0.d), vec4<u32>(arg_0.d, 42228u, arg_1.d, arg_2.d)))), reverseBits(_wgslsmith_sub_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(arg_2.d, 9189u, 3058u, 46671u))), vec4<u32>(max(1u, arg_0.d), ~arg_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, arg_0.d), vec2<u32>(arg_2.d, arg_1.d)), 0u))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~(~(~max(vec4<u32>(u_input.c.x, 17346u, 45280u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 14934u)))) >> (vec4<u32>(u_input.c.x, ~u_input.c.x >> (reverseBits(_wgslsmith_add_u32(9212u, u_input.c.x)) % 32u), u_input.c.x, ~min(u_input.c.x, ~0u)) % vec4<u32>(32u));
    var_0 = _wgslsmith_sub_vec4_u32((max(vec4<u32>(0u, 109638u, u_input.c.x, u_input.c.x), vec4<u32>(36415u, u_input.c.x, 4294967295u, var_0.x)) ^ firstLeadingBit(vec4<u32>(0u, 4294967295u, var_0.x, var_0.x))) | ~vec4<u32>(var_0.x, 1u, var_0.x, 59846u), reverseBits(vec4<u32>(0u, reverseBits(75909u), var_0.x, _wgslsmith_clamp_u32(u_input.c.x, 1u, var_0.x)))) ^ _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0.x, 4294967295u, ~var_0.x, reverseBits(u_input.c.x))), ~(~vec4<u32>(var_0.x, var_0.x, u_input.c.x, 49777u)) | vec4<u32>(1u, func_3(Struct_1(17434i, vec3<f32>(-543f, 1000f, 126f), vec4<i32>(-8464i, 2147483647i, u_input.a.x, 78906i), 58702u), Struct_1(0i, vec3<f32>(1000f, 1384f, -428f), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.b.x), 0u), Struct_1(0i, vec3<f32>(1000f, 1000f, -421f), u_input.a, 7506u)), 8074u, 0u));
    let var_1 = -1789f;
    var var_2 = Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 - -883f), var_1, 312f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 238f, var_1)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1451f, var_1, 645f), vec3<f32>(1236f, var_1, var_1)))), u_input.a & u_input.b, u_input.c.x), Struct_1(34993i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(873f * var_1), -1184f, _wgslsmith_div_f32(var_1, 100f))), select(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(-13430i, 3320i), ~u_input.a.x, -73877i), countOneBits(-vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.b.x)), !arg_0), _wgslsmith_mod_u32(firstTrailingBit(1u) >> (~5777u % 32u), 0u)), min(u_input.b.x, ~(-2147483647i)) << (~(~max(u_input.c.x, 4881u)) % 32u), Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, var_1, var_1) + vec3<f32>(-1595f, var_1, 1176f)))), ~vec4<i32>(_wgslsmith_sub_i32(28531i, u_input.b.x), -1i, 35239i, -2147483647i), 1u));
    var var_3 = var_1;
    return Struct_2(var_2.d, var_2.d, u_input.b.x >> (18479u % 32u), Struct_1(u_input.a.x ^ -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, -517f, -1143f))) - vec3<f32>(-792f, var_2.b.b.x, var_2.b.b.x))), ~(~firstTrailingBit(vec4<i32>(var_2.a.c.x, 0i, -3317i, u_input.b.x))), func_3(var_2.d, var_2.b, var_2.b)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = all(!select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), true));
    let var_1 = 456f;
    let var_2 = _wgslsmith_f_op_f32(floor(arg_0.c));
    let var_3 = select(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(49639u, 33036u, 50638u), ~vec3<u32>(u_input.c.x, u_input.c.x, arg_0.b.b.d))), vec3<u32>(arg_0.a, arg_1.b.d, ~(~(arg_0.d ^ 1u))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, true))));
    var_0 = true;
    return func_2(false);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = func_4(Struct_3(10650u, func_2(arg_1), _wgslsmith_f_op_f32(arg_3.b.a.b.x + arg_3.c), 1344u), arg_0.b);
    var var_1 = arg_0.a & select(4294967295u, 7055u, all(!select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true))));
    var var_2 = ~(15783u & var_0.b.d);
    let var_3 = Struct_3(4294967295u, Struct_2(arg_0.b.a, Struct_1(u_input.a.x, arg_0.b.b.b, u_input.b, ~_wgslsmith_add_u32(1u, var_0.a.d)), _wgslsmith_mult_i32(-var_0.c, _wgslsmith_div_i32(arg_2.x, 18278i)), arg_3.b.b), _wgslsmith_f_op_f32(351f + arg_3.b.d.b.x), ~1541u ^ (0u & u_input.c.x));
    var_1 = firstLeadingBit(arg_3.b.a.d);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, func_1(Struct_3(u_input.c.x, Struct_2(Struct_1(2147483647i, vec3<f32>(-1151f, 2106f, -1000f), u_input.a, u_input.c.x), Struct_1(u_input.a.x, vec3<f32>(442f, -746f, 444f), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), u_input.c.x), u_input.a.x, Struct_1(-1i, vec3<f32>(-1217f, -1607f, -1288f), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, 2147483647i), 20679u)), 764f, u_input.c.x), true, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), Struct_3(4294967295u, Struct_2(Struct_1(-1i, vec3<f32>(-581f, -658f, 452f), u_input.b, 15964u), Struct_1(u_input.a.x, vec3<f32>(-1000f, -2002f, -1000f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), u_input.c.x), u_input.a.x, Struct_1(-49277i, vec3<f32>(1198f, -1709f, -314f), u_input.b, 78114u)), 374f, 35119u))), 731i >> ((u_input.c.x | 0u) % 32u)), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(u_input.c.x, Struct_2(Struct_1(1i, vec3<f32>(464f, 742f, 263f), vec4<i32>(19058i, 1i, u_input.b.x, 1i), u_input.c.x), Struct_1(u_input.b.x, vec3<f32>(-1002f, -317f, 1000f), u_input.b, u_input.c.x), u_input.b.x, Struct_1(u_input.a.x, vec3<f32>(-395f, -1000f, 266f), vec4<i32>(-33366i, -8301i, -32477i, u_input.b.x), 1u)), 1160f, u_input.c.x), Struct_2(Struct_1(50203i, vec3<f32>(1116f, 1239f, -471f), u_input.a, 7u), Struct_1(25751i, vec3<f32>(-614f, 1371f, 1050f), vec4<i32>(u_input.b.x, -31758i, 1i, u_input.a.x), 9807u), u_input.a.x, Struct_1(-9446i, vec3<f32>(1498f, -177f, 621f), u_input.b, 1u))).a.b - func_2(any(vec3<bool>(true, true, false))).a.b), -(~select(u_input.a, vec4<i32>(27569i, u_input.b.x, u_input.b.x, 0i), true)), u_input.c.x), func_4(Struct_3(abs(~27150u), Struct_2(func_4(Struct_3(1u, Struct_2(Struct_1(-26973i, vec3<f32>(-1424f, 664f, -176f), u_input.b, 4294967295u), Struct_1(u_input.b.x, vec3<f32>(-404f, -1664f, 1101f), vec4<i32>(u_input.b.x, 44998i, -2147483647i, u_input.b.x), 21794u), u_input.a.x, Struct_1(40387i, vec3<f32>(-580f, -372f, -550f), vec4<i32>(-2147483647i, u_input.b.x, -8785i, 33790i), 49495u)), -516f, 0u), Struct_2(Struct_1(4748i, vec3<f32>(565f, -350f, -299f), u_input.a, 24595u), Struct_1(6800i, vec3<f32>(644f, 1237f, -517f), u_input.b, u_input.c.x), -13359i, Struct_1(61244i, vec3<f32>(408f, 1000f, -107f), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -22114i), 0u))).d, Struct_1(u_input.a.x, vec3<f32>(-179f, -920f, -530f), u_input.a, u_input.c.x), -2147483647i, func_2(false).d), -248f, ~firstLeadingBit(79853u)), func_2(true)).d, 1i, func_2(true).a);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a, var_0.c, -1095i), u_input.b.wwz), var_0.d.c.xyy);
    var_0 = func_4(Struct_3(41293u, func_4(Struct_3(15958u, func_4(Struct_3(72011u, Struct_2(var_0.d, var_0.a, var_1, Struct_1(var_0.c, vec3<f32>(var_0.a.b.x, var_0.d.b.x, 1712f), vec4<i32>(u_input.b.x, 0i, u_input.a.x, var_0.c), 23212u)), var_0.d.b.x, var_0.b.d), Struct_2(var_0.d, Struct_1(0i, var_0.a.b, var_0.b.c, var_0.a.d), 46175i, Struct_1(var_0.c, var_0.a.b, u_input.b, u_input.c.x))), _wgslsmith_f_op_f32(max(var_0.a.b.x, var_0.d.b.x)), _wgslsmith_sub_u32(u_input.c.x, 38892u)), func_2(all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_sub_u32(0u, func_2(65266u < var_0.b.d).b.d)), func_2(false));
    var_0 = Struct_2(func_4(Struct_3(1u, func_4(Struct_3(var_0.b.d, Struct_2(Struct_1(u_input.a.x, vec3<f32>(var_0.d.b.x, var_0.b.b.x, -1036f), vec4<i32>(1i, -6780i, 49509i, var_0.a.c.x), 4294967295u), Struct_1(u_input.b.x, var_0.d.b, u_input.b, 0u), -18400i, var_0.b), var_0.a.b.x, u_input.c.x), Struct_2(var_0.b, Struct_1(var_0.a.c.x, var_0.d.b, vec4<i32>(u_input.a.x, 0i, var_0.d.a, var_0.b.c.x), 1u), var_1, Struct_1(-44425i, vec3<f32>(-477f, 408f, -336f), var_0.b.c, 50061u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(517f - -1684f))), 4294967295u), func_4(Struct_3(~var_0.a.d, Struct_2(Struct_1(-2147483647i, vec3<f32>(var_0.d.b.x, 1379f, 779f), vec4<i32>(var_1, -30615i, 2036i, -2147483647i), var_0.a.d), Struct_1(u_input.a.x, vec3<f32>(var_0.a.b.x, -1419f, var_0.a.b.x), vec4<i32>(var_1, 14312i, -2147483647i, 1i), 4294967295u), var_1, var_0.d), _wgslsmith_f_op_f32(sign(var_0.d.b.x)), ~1u), func_4(Struct_3(4294967295u, Struct_2(var_0.b, var_0.b, var_1, var_0.d), var_0.d.b.x, u_input.c.x), func_4(Struct_3(var_0.b.d, Struct_2(var_0.b, var_0.b, u_input.b.x, Struct_1(1i, vec3<f32>(var_0.b.b.x, var_0.a.b.x, 537f), var_0.b.c, var_0.b.d)), var_0.a.b.x, 8602u), Struct_2(Struct_1(u_input.a.x, vec3<f32>(var_0.d.b.x, -1493f, 1696f), vec4<i32>(2147483647i, -3761i, 69008i, -2147483647i), 1u), Struct_1(u_input.b.x, vec3<f32>(1159f, 145f, -1123f), vec4<i32>(var_1, 1i, u_input.b.x, u_input.a.x), 4294967295u), var_0.b.c.x, Struct_1(var_0.b.a, var_0.d.b, vec4<i32>(2147483647i, -4813i, -1i, u_input.a.x), u_input.c.x)))))).b, func_4(Struct_3(~reverseBits(86346u), func_2(select(false, false, false)), _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_mult_u32(var_0.b.d, 4294967295u)), Struct_2(var_0.b, var_0.d, -max(3032i, var_1), func_4(Struct_3(var_0.b.d, Struct_2(var_0.a, var_0.a, 21428i, Struct_1(-1i, var_0.a.b, var_0.b.c, u_input.c.x)), var_0.b.b.x, var_0.a.d), Struct_2(Struct_1(-32351i, var_0.d.b, u_input.a, 0u), var_0.a, 49332i, var_0.b)).d)).d, 2147483647i | min(0i, func_1(Struct_3(var_0.a.d, Struct_2(Struct_1(20956i, var_0.b.b, var_0.d.c, var_0.b.d), Struct_1(35345i, var_0.a.b, var_0.b.c, 1u), u_input.a.x, var_0.b), 893f, u_input.c.x), true, func_2(false).a.c.wyw, Struct_3(var_0.b.d, Struct_2(Struct_1(1i, vec3<f32>(802f, var_0.b.b.x, 1509f), vec4<i32>(0i, 5327i, -28345i, u_input.a.x), 31471u), var_0.a, var_1, Struct_1(0i, var_0.d.b, u_input.a, u_input.c.x)), var_0.d.b.x, 49648u))), Struct_1(-189i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f), _wgslsmith_f_op_f32(sign(-2687f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.x, -637f))), _wgslsmith_f_op_f32(floor(-791f))), vec4<i32>(firstLeadingBit(var_0.a.c.x >> (1u % 32u)), -37963i, select(reverseBits(u_input.a.x), max(16920i, u_input.a.x), -1353f <= var_0.b.b.x), _wgslsmith_mod_i32(reverseBits(var_1), -1i)), ~_wgslsmith_sub_u32(~1u, var_0.a.d)));
    var_0 = func_4(Struct_3(abs(1u), Struct_2(Struct_1(select(-1354i, u_input.b.x, true), _wgslsmith_div_vec3_f32(var_0.a.b, var_0.d.b), var_0.d.c, ~1u), func_4(Struct_3(4294967295u, Struct_2(var_0.b, var_0.d, 28143i, var_0.b), var_0.a.b.x, 89780u), Struct_2(var_0.a, var_0.a, var_1, var_0.a)).b, -(u_input.b.x >> (var_0.b.d % 32u)), var_0.b), -747f, 4294967295u), func_4(Struct_3(abs(_wgslsmith_mult_u32(26662u, 0u)), Struct_2(var_0.d, Struct_1(var_1, vec3<f32>(var_0.a.b.x, -949f, var_0.a.b.x), u_input.a, var_0.a.d), -var_1, func_4(Struct_3(u_input.c.x, Struct_2(var_0.b, var_0.d, 2147483647i, var_0.d), var_0.a.b.x, 4294967295u), Struct_2(Struct_1(var_1, vec3<f32>(var_0.b.b.x, var_0.b.b.x, var_0.a.b.x), var_0.a.c, var_0.d.d), var_0.b, u_input.a.x, Struct_1(1i, var_0.d.b, u_input.a, 20273u))).b), _wgslsmith_f_op_f32(-var_0.b.b.x), u_input.c.x), Struct_2(Struct_1(reverseBits(-12163i), _wgslsmith_f_op_vec3_f32(-var_0.b.b), vec4<i32>(var_1, 2147483647i, var_0.b.c.x, u_input.a.x) | vec4<i32>(0i, 2147483647i, 26438i, u_input.b.x), u_input.c.x), Struct_1(~u_input.b.x, var_0.b.b, -var_0.d.c, 1u), 19681i, var_0.d)));
    var var_2 = Struct_2(Struct_1(reverseBits(0i), _wgslsmith_f_op_vec3_f32(floor(func_2(var_0.d.b.x == -1300f).d.b)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.d.a, 1i, 2147483647i), vec4<i32>(var_1, u_input.a.x, u_input.a.x, 1i))), abs(4294967295u)), var_0.b, var_1, Struct_1(-1i, _wgslsmith_f_op_vec3_f32(round(func_2(var_1 > var_0.b.a).d.b)), vec4<i32>(-4839i, -3826i, _wgslsmith_add_i32(reverseBits(var_1), reverseBits(-43438i)), var_1), var_0.b.d));
    let var_3 = vec2<bool>(true, false);
    var var_4 = var_2.a.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.b.x - var_0.d.b.x)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-var_2.b.b.x), true)), _wgslsmith_f_op_f32(-var_0.a.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1110f))), var_4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_f_op_f32(floor(var_2.b.b.x))), _wgslsmith_f_op_f32(1094f - var_4.x))));
}

