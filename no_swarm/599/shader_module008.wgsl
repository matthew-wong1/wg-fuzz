struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(15164i, i32(-2147483648), -36082i), vec2<i32>(-38826i, i32(-2147483648)), vec2<f32>(-1752f, 1000f), Struct_1(vec4<i32>(-1i, 9568i, -9991i, 27729i), vec3<f32>(-849f, 135f, 260f), vec2<bool>(false, false), 31888u, true), 113f), Struct_2(vec3<i32>(-28646i, 0i, -1i), vec2<i32>(-11025i, i32(-2147483648)), vec2<f32>(384f, 2334f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -65355i), vec3<f32>(809f, 734f, -1000f), vec2<bool>(false, false), 6890u, false), 577f), Struct_2(vec3<i32>(1i, 7340i, 2147483647i), vec2<i32>(1i, -1i), vec2<f32>(-716f, -332f), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), vec3<f32>(-676f, 694f, -1390f), vec2<bool>(false, false), 0u, false), -1502f), Struct_2(vec3<i32>(0i, 0i, 52226i), vec2<i32>(2582i, 1i), vec2<f32>(-410f, -613f), Struct_1(vec4<i32>(-1i, -1i, -56598i, 0i), vec3<f32>(275f, 1088f, 487f), vec2<bool>(true, true), 29896u, false), 1096f), Struct_2(vec3<i32>(0i, 10398i, 18526i), vec2<i32>(-21696i, 37668i), vec2<f32>(-536f, 1000f), Struct_1(vec4<i32>(-1i, 1i, -1i, -12718i), vec3<f32>(-484f, 659f, 1000f), vec2<bool>(true, false), 43777u, true), -1000f), Struct_2(vec3<i32>(-40886i, 1i, 13167i), vec2<i32>(1i, 2147483647i), vec2<f32>(605f, 221f), Struct_1(vec4<i32>(0i, -34376i, 2147483647i, 34456i), vec3<f32>(-1196f, -835f, -821f), vec2<bool>(true, false), 4294967295u, false), 450f), Struct_2(vec3<i32>(i32(-2147483648), 3576i, 2147483647i), vec2<i32>(1i, -1i), vec2<f32>(-969f, 582f), Struct_1(vec4<i32>(-20066i, 1i, 1i, 2154i), vec3<f32>(335f, -660f, 563f), vec2<bool>(true, false), 0u, true), 288f), Struct_2(vec3<i32>(-43595i, 2147483647i, 0i), vec2<i32>(0i, -22849i), vec2<f32>(-557f, 567f), Struct_1(vec4<i32>(-1i, 2147483647i, -14506i, -17479i), vec3<f32>(123f, 1084f, -211f), vec2<bool>(false, false), 28704u, false), 161f), Struct_2(vec3<i32>(-10008i, 36879i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<f32>(1654f, 1100f), Struct_1(vec4<i32>(-1i, 0i, 0i, 0i), vec3<f32>(1897f, 2455f, 1535f), vec2<bool>(false, true), 21297u, false), 788f), Struct_2(vec3<i32>(14336i, 86879i, -1i), vec2<i32>(-29370i, -1i), vec2<f32>(-204f, 1000f), Struct_1(vec4<i32>(1i, 0i, -9494i, 2147483647i), vec3<f32>(-737f, -1000f, -939f), vec2<bool>(false, false), 75315u, false), 2765f), Struct_2(vec3<i32>(39578i, 0i, -24114i), vec2<i32>(i32(-2147483648), 28706i), vec2<f32>(619f, 1064f), Struct_1(vec4<i32>(11193i, -24002i, 2147483647i, -9411i), vec3<f32>(1203f, -521f, 493f), vec2<bool>(true, false), 26653u, false), 1026f), Struct_2(vec3<i32>(-38292i, -10134i, 1i), vec2<i32>(21435i, 1i), vec2<f32>(-321f, -455f), Struct_1(vec4<i32>(2147483647i, 1i, -15810i, -1385i), vec3<f32>(1332f, -1000f, 389f), vec2<bool>(true, true), 8698u, false), -1050f), Struct_2(vec3<i32>(0i, -7456i, 36958i), vec2<i32>(-1i, 5880i), vec2<f32>(-1250f, -1102f), Struct_1(vec4<i32>(8070i, 1i, 0i, -11583i), vec3<f32>(1000f, 1707f, -147f), vec2<bool>(true, true), 14587u, true), 677f), Struct_2(vec3<i32>(27729i, i32(-2147483648), 1i), vec2<i32>(2147483647i, 0i), vec2<f32>(-972f, -328f), Struct_1(vec4<i32>(-55535i, 42823i, -6498i, -27073i), vec3<f32>(-1429f, 833f, -449f), vec2<bool>(true, true), 15600u, true), -391f), Struct_2(vec3<i32>(61949i, 8382i, -24777i), vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-1499f, -1161f), Struct_1(vec4<i32>(i32(-2147483648), 44463i, -1i, 2147483647i), vec3<f32>(-798f, -1214f, 1891f), vec2<bool>(false, true), 0u, false), 728f), Struct_2(vec3<i32>(-33561i, -1i, 9665i), vec2<i32>(1i, 0i), vec2<f32>(1987f, 1804f), Struct_1(vec4<i32>(0i, -60594i, -25011i, 0i), vec3<f32>(215f, 952f, 1606f), vec2<bool>(false, true), 53814u, false), -692f), Struct_2(vec3<i32>(47983i, -5821i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<f32>(900f, 368f), Struct_1(vec4<i32>(66338i, -58540i, 2147483647i, 1i), vec3<f32>(1784f, 416f, 567f), vec2<bool>(false, false), 1u, true), 374f), Struct_2(vec3<i32>(42855i, -23872i, 0i), vec2<i32>(-1i, 2147483647i), vec2<f32>(1873f, -261f), Struct_1(vec4<i32>(-225i, 9498i, 8075i, 24897i), vec3<f32>(-303f, 128f, -1081f), vec2<bool>(false, true), 4294967295u, true), 1000f), Struct_2(vec3<i32>(-1i, -16793i, -4465i), vec2<i32>(-36827i, -30784i), vec2<f32>(1000f, 673f), Struct_1(vec4<i32>(71667i, -23350i, 1i, -13249i), vec3<f32>(286f, -772f, 1000f), vec2<bool>(true, false), 46996u, false), -925f), Struct_2(vec3<i32>(-37340i, 36342i, i32(-2147483648)), vec2<i32>(26149i, 0i), vec2<f32>(-468f, -189f), Struct_1(vec4<i32>(-22776i, 6298i, 84303i, -12648i), vec3<f32>(-485f, -1923f, 447f), vec2<bool>(true, true), 31019u, true), 965f), Struct_2(vec3<i32>(11232i, -14450i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<f32>(447f, -962f), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), -60032i), vec3<f32>(-234f, 576f, 612f), vec2<bool>(true, true), 24289u, true), -1239f), Struct_2(vec3<i32>(1i, -1i, 0i), vec2<i32>(i32(-2147483648), 28029i), vec2<f32>(1231f, 521f), Struct_1(vec4<i32>(-24233i, -1i, 17205i, 2147483647i), vec3<f32>(-1918f, 1257f, 553f), vec2<bool>(false, false), 19080u, false), -1269f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<u32> {
    global0 = array<Struct_2, 22>();
    var var_0 = Struct_4(vec2<i32>(u_input.b, 0i) ^ _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(25477i, -17234i), vec2<i32>(u_input.d, -2147483647i)) | vec2<i32>(1i, 1i), -vec2<i32>(18411i, u_input.b) ^ (vec2<i32>(u_input.d, 11453i) << (u_input.a % vec2<u32>(32u)))), abs(39357i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1000f, -709f), vec3<f32>(384f, -1521f, 105f))))))), !(any(vec2<bool>(arg_1, arg_1)) && true) == !any(!vec4<bool>(false, arg_1, arg_0, false)));
    global0 = array<Struct_2, 22>();
    var var_1 = _wgslsmith_div_i32(select(-30454i & var_0.a.x, 0i ^ firstTrailingBit(var_0.a.x), false), ~(-abs(var_0.a.x)));
    let var_2 = Struct_1(~vec4<i32>(_wgslsmith_mod_i32(-26442i, u_input.b), 19692i, var_0.a.x, ~u_input.d) >> (u_input.e % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.c)), vec2<bool>(var_0.d, arg_1), 47101u, !(~firstTrailingBit(u_input.a.x) != u_input.e.x));
    return ~u_input.e.yxw;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec3_u32(func_3(any(vec2<bool>(true, true)) || true, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), func_3(any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = Struct_3(!any(vec2<bool>(true, any(vec3<bool>(false, true, false)))));
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return Struct_4(vec2<i32>(-firstTrailingBit(-1934i), -25835i), _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(15975i), max(1i, -46634i), ~u_input.d, ~u_input.b), vec4<i32>(u_input.b, -1i, _wgslsmith_mult_i32(u_input.d, u_input.b), u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -947f, arg_0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1088f, -519f, arg_0) - vec3<f32>(arg_0, -621f, 833f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-716f * arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(313f, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -857f))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, u_input.b), u_input.d, -1i, min(u_input.b, 1257i)), vec4<i32>(_wgslsmith_sub_i32(u_input.d, u_input.b), u_input.b, u_input.d, abs(2147483647i))) >= u_input.d);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_1.c.x;
    var var_1 = Struct_2(-(vec3<i32>(u_input.d, -55338i, u_input.d) << (u_input.e.yxz % vec3<u32>(32u))) & abs(~abs(vec3<i32>(2147483647i, arg_3.x, 2147483647i))), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(u_input.b, arg_3.x), arg_3.x)), arg_1.a), _wgslsmith_f_op_vec2_f32(arg_1.c.xz * vec2<f32>(arg_1.c.x, var_0)), Struct_1(vec4<i32>(~arg_3.x, 1i, firstLeadingBit(2147483647i), u_input.d), arg_1.c, !arg_2.wx, ~firstLeadingBit(1u), (min(arg_3.x, arg_1.b) >> (~64199u % 32u)) != 1i), -857f);
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 0u), 22u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(-832f).c.x), arg_1.c.x) + var_0));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_f_op_f32(round(arg_0.e));
    var_0 = 1076f;
    let var_1 = vec4<bool>((_wgslsmith_f_op_f32(func_4(~arg_0.d.d, func_2(arg_0.e), select(vec4<bool>(arg_0.d.e, true, arg_0.d.e, true), vec4<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.d.e, false), true), arg_0.b << (u_input.a % vec2<u32>(32u)))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x * -755f)))) && all(!(!vec3<bool>(true, false, arg_0.d.c.x))), arg_0.d.c.x, !arg_0.d.c.x, all(select(arg_0.d.c, vec2<bool>(true, true), !arg_0.d.c.x)));
    let var_2 = _wgslsmith_div_f32(-1238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b.x * _wgslsmith_f_op_f32(-arg_0.d.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2009f, arg_0.e))) + arg_0.c.x));
    return -360f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<Struct_2, 22>();
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, ~var_0, 1i, u_input.b), max(select(vec4<i32>(-2147483647i, u_input.d, u_input.b, 1i) & vec4<i32>(var_0, u_input.d, u_input.b, 1i), -vec4<i32>(var_0, u_input.d, 0i, var_0), true), vec4<i32>(abs(u_input.b), -1i, -u_input.b, -5591i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1002f - 433f) * -927f), 219f, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.c, 22u)])))), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e.xzy, u_input.e.yzz) & max(u_input.e.xww, u_input.e.yww), u_input.e.xzw, select(vec3<u32>(42280u, u_input.c, 1u), u_input.e.yzy, vec3<bool>(false, false, false))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(5712u, u_input.c, u_input.c, u_input.c), u_input.e), u_input.c, _wgslsmith_div_u32(u_input.a.x, 1u)) & select(vec3<u32>(u_input.c, u_input.a.x, 1u), vec3<u32>(20295u, u_input.c, u_input.a.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), true);
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)), any(vec4<bool>(var_1.e, true, false, var_1.e))))));
    var_2 = Struct_4(_wgslsmith_mod_vec2_i32(var_1.a.wx, reverseBits(abs(-var_2.a))), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_1.b.x, -1000f) * vec3<f32>(var_2.c.x, var_2.c.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(abs(var_1.b))))))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.zz, ~_wgslsmith_dot_vec3_u32(~(u_input.e.zwx >> (u_input.e.yyy % vec3<u32>(32u))), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, var_1.d), u_input.e.wzw))));
}

