struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<i32>(-15977i, i32(-2147483648), -39190i, 2147483647i), 360f, true, 418f, vec2<f32>(-1000f, -1017f)), Struct_3(vec4<i32>(-49546i, 37712i, -19405i, -1i), 975f, true, 1730f, vec2<f32>(1107f, -975f)), Struct_3(vec4<i32>(i32(-2147483648), 59300i, 70447i, 2147483647i), -1516f, true, 411f, vec2<f32>(807f, 1550f)), Struct_3(vec4<i32>(38356i, -13710i, i32(-2147483648), -21640i), 1000f, true, 372f, vec2<f32>(-773f, -707f)), Struct_3(vec4<i32>(-1i, 2147483647i, 19637i, 1i), 1000f, true, 1000f, vec2<f32>(-306f, -564f)), Struct_3(vec4<i32>(47842i, 34907i, 42285i, -6371i), -2196f, true, 1589f, vec2<f32>(1350f, 1568f)), Struct_3(vec4<i32>(32387i, 2147483647i, -35351i, -14125i), 1197f, false, -1935f, vec2<f32>(-1000f, -442f)), Struct_3(vec4<i32>(25697i, 0i, 2147483647i, -26400i), 1000f, false, 1000f, vec2<f32>(-1610f, 1017f)), Struct_3(vec4<i32>(20888i, -1i, -55892i, -4476i), -686f, false, 369f, vec2<f32>(-272f, 1000f)), Struct_3(vec4<i32>(2147483647i, 1i, -64270i, 2147483647i), 1000f, true, -209f, vec2<f32>(566f, 219f)), Struct_3(vec4<i32>(-4396i, -33610i, 2147483647i, 1i), -372f, true, 1773f, vec2<f32>(-971f, -1299f)), Struct_3(vec4<i32>(61516i, 1i, i32(-2147483648), 15585i), 1757f, false, -844f, vec2<f32>(137f, -1379f)), Struct_3(vec4<i32>(1i, 926i, 0i, i32(-2147483648)), 344f, false, 1638f, vec2<f32>(-1111f, 605f)), Struct_3(vec4<i32>(8303i, 0i, 37206i, 32864i), -278f, false, -1171f, vec2<f32>(-502f, -761f)), Struct_3(vec4<i32>(1i, 0i, 32956i, 30715i), -1206f, false, -284f, vec2<f32>(-1368f, -770f)));

var<private> global1: vec2<u32> = vec2<u32>(28064u, 25582u);

var<private> global2: vec2<i32>;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = ~_wgslsmith_mod_i32(-2147483647i, 3233i);
    global0 = array<Struct_3, 15>();
    var var_1 = 1006f;
    global1 = select(abs(_wgslsmith_sub_vec2_u32(min(~arg_1.b.wz, abs(vec2<u32>(arg_1.b.x, 1u))), arg_1.a.b.yy)), max(select(vec2<u32>(global1.x, arg_1.a.b.x) ^ u_input.b, abs(abs(arg_1.b.wy)), vec2<bool>(true, all(vec4<bool>(true, false, true, false)))), vec2<u32>(firstLeadingBit(u_input.a), ~81230u) >> (max(arg_1.b.zx, select(vec2<u32>(arg_1.b.x, u_input.a), vec2<u32>(91899u, arg_1.b.x), true)) % vec2<u32>(32u))), true);
    var var_2 = min(reverseBits(u_input.d), -select(_wgslsmith_mult_vec3_i32(u_input.c.wyx, u_input.d), _wgslsmith_add_vec3_i32(u_input.c.yyz, u_input.d), true) << (~(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 96126u, 58414u), vec3<u32>(0u, u_input.b.x, u_input.b.x)) ^ ~arg_1.a.b.xwz) % vec3<u32>(32u)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.c, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(17280i, -1i, 14737i, 1i), select(vec4<i32>(0i, -34054i, global3.x, global2.x), vec4<i32>(-1i, 0i, global2.x, global3.x), false), vec4<i32>(39575i, var_2.x, arg_1.a.c, u_input.c.x) >> (arg_1.b % vec4<u32>(32u))))), global3.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, max(8483i, global3.x)), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(func_3(vec2<f32>(arg_0.e.x, -1000f), Struct_2(Struct_1(vec2<i32>(arg_0.a.x, u_input.c.x), vec4<u32>(arg_1.c, arg_1.b, 44496u, arg_1.c), 0i), vec4<u32>(0u, 4294967295u, global1.x, u_input.b.x))), -u_input.d.x)), vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -37363i, _wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x)), u_input.d.x)));
    global0 = array<Struct_3, 15>();
    var var_0 = arg_0;
    return 1u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -391f)), min(_wgslsmith_mult_u32(4294967295u, 0u), select(arg_1, 4294967295u, true) ^ select(~4294967295u, ~global1.x, true)), arg_1, true);
    global1 = u_input.b | _wgslsmith_mod_vec2_u32(~u_input.b, select(u_input.b, vec2<u32>(var_0.c, 59362u), vec2<bool>(false, true)) | ~abs(vec2<u32>(arg_0, var_0.c)));
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    global0 = array<Struct_3, 15>();
    var var_0 = arg_1;
    global1 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, u_input.b) << (countOneBits(min(arg_3.b.xw, u_input.b)) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(0u, global1.x) << ((vec2<u32>(arg_2.x, 1u) >> (arg_2.zz % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = func_4(arg_2.x, _wgslsmith_clamp_u32(func_2(Struct_3(u_input.c, 176f, true, _wgslsmith_f_op_f32(f32(-1f) * -1661f), vec2<f32>(-157f, 556f)), Struct_4(1f, _wgslsmith_mult_u32(arg_2.x, global1.x), ~u_input.a, !var_0.x)), arg_2.x, ~18680u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -133f, -298f))))))));
    let var_2 = vec3<i32>(-1i) * -(~select(u_input.d, u_input.d, select(vec3<bool>(var_0.x, true, arg_1.x), vec3<bool>(true, true, true), var_1.d)));
    return Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, reverseBits(arg_0.x), ~0i, u_input.d.x >> (arg_2.x % 32u)), -firstTrailingBit(vec4<i32>(0i, global3.x, global2.x, -1i))), _wgslsmith_sub_vec4_i32(abs(u_input.c), select(u_input.c, u_input.c, 66107u <= arg_3.b.x))), 195f, true, var_1.a, vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec2<i32>(1i >> (firstLeadingBit(4294967295u) % 32u), firstLeadingBit(1i ^ global2.x)), vec4<u32>(u_input.a << (56561u % 32u), 0u, global1.x, ~4294967295u) | _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_1.b, u_input.b.x, arg_1.c), vec4<u32>(1u, arg_1.c, u_input.a, u_input.b.x)), firstTrailingBit(vec4<u32>(9660u, 0u, global1.x, 25508u)), vec4<u32>(global1.x, 35092u, arg_1.c, u_input.b.x)), 1i), vec4<u32>(max(arg_1.c, _wgslsmith_mult_u32(~global1.x, 50313u)), arg_1.c, 11502u, abs(u_input.a)));
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    global1 = var_0.b.yz;
    global2 = var_0.a.a;
    return select(vec3<bool>(u_input.a > arg_1.c, arg_1.d | (any(vec4<bool>(arg_1.d, arg_0.c, arg_1.d, arg_0.c)) && arg_1.d), all(vec2<bool>(true, false)) | !arg_0.c), select(!(!(!vec3<bool>(false, true, arg_0.c))), !(!(!vec3<bool>(arg_0.c, true, true))), select(vec3<bool>(all(vec3<bool>(arg_1.d, true, arg_1.d)), arg_0.c, true || arg_0.c), vec3<bool>(all(vec4<bool>(arg_1.d, false, false, arg_1.d)), true, !arg_0.c), false)), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-u_input.c.wzy, u_input.d | _wgslsmith_add_vec3_i32(u_input.c.wzy >> (vec3<u32>(u_input.a, 57593u, 0u) % vec3<u32>(32u)), u_input.d), !(!all(vec4<bool>(false, true, true, true)))) | ~vec3<i32>(firstLeadingBit(global3.x) | global3.x, _wgslsmith_add_i32(~1i, ~global3.x), _wgslsmith_mult_i32(-13901i, 1i) >> (u_input.b.x % 32u));
    var var_1 = vec3<bool>(true, any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), func_5(func_1(vec3<i32>(12409i, 21723i, 1i), vec2<bool>(true, false), vec3<u32>(28279u, 33342u, u_input.b.x), Struct_1(u_input.d.xx, vec4<u32>(76675u, 44331u, 20969u, 1u), -41601i)), Struct_4(142f, global1.x, u_input.a, true)), func_4(_wgslsmith_div_u32(1u, u_input.b.x), ~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(704f, 1476f, -1913f))).d)), true);
    let var_2 = Struct_1(var_0.xy, vec4<u32>(global1.x, 0u, abs(min(firstTrailingBit(0u), global1.x)), max(u_input.a, u_input.a)), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(min(1u, 93290u)), ~4294967295u));
}

