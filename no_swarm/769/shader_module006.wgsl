struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(18005i, vec2<i32>(2147483647i, 0i), vec4<f32>(-1050f, 1099f, 423f, -1000f), vec4<i32>(0i, -49737i, i32(-2147483648), 2147483647i), vec2<i32>(-9433i, -44294i)), Struct_1(2147483647i, vec2<i32>(0i, -1i), vec4<f32>(-751f, 152f, 171f, 1338f), vec4<i32>(-58305i, 21245i, 2147483647i, 24414i), vec2<i32>(-13944i, i32(-2147483648))), Struct_1(-1i, vec2<i32>(16416i, i32(-2147483648)), vec4<f32>(193f, 643f, 1599f, 187f), vec4<i32>(9104i, -1i, 43763i, -299i), vec2<i32>(-21761i, -75569i)), Struct_1(27364i, vec2<i32>(-30257i, -22694i), vec4<f32>(-156f, -911f, -1134f, -348f), vec4<i32>(-8528i, 0i, -1i, -41713i), vec2<i32>(0i, 2147483647i)), Struct_1(-15200i, vec2<i32>(20071i, 0i), vec4<f32>(-532f, -1000f, 1427f, 276f), vec4<i32>(0i, -40066i, 0i, 0i), vec2<i32>(1i, 2147483647i)), Struct_1(69945i, vec2<i32>(-11173i, 29122i), vec4<f32>(1019f, -172f, 1567f, 1000f), vec4<i32>(18271i, 2147483647i, 2147483647i, 11512i), vec2<i32>(36335i, -1i)), Struct_1(-3282i, vec2<i32>(-1i, 35929i), vec4<f32>(1423f, 907f, 1000f, -122f), vec4<i32>(-48176i, 9865i, 0i, 15564i), vec2<i32>(i32(-2147483648), -15227i)), Struct_1(i32(-2147483648), vec2<i32>(-19626i, 8142i), vec4<f32>(426f, -898f, 756f, 1000f), vec4<i32>(7677i, -1i, 1i, 2147483647i), vec2<i32>(-9960i, 2147483647i)), Struct_1(-39913i, vec2<i32>(-9130i, 16287i), vec4<f32>(-2153f, 250f, -1160f, -1138f), vec4<i32>(2147483647i, 6203i, -14998i, 13471i), vec2<i32>(0i, 2147483647i)), Struct_1(0i, vec2<i32>(-13806i, -1i), vec4<f32>(1346f, 969f, 440f, -1451f), vec4<i32>(2147483647i, -23424i, -32040i, -1i), vec2<i32>(2281i, -41156i)), Struct_1(-1i, vec2<i32>(-1i, -1i), vec4<f32>(-1000f, 166f, -2091f, -678f), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -11818i), vec2<i32>(35489i, 0i)), Struct_1(2147483647i, vec2<i32>(-1i, -8036i), vec4<f32>(1548f, 538f, 740f, 707f), vec4<i32>(2147483647i, 2147483647i, 19809i, 2147483647i), vec2<i32>(-5685i, 0i)), Struct_1(0i, vec2<i32>(-58597i, -35029i), vec4<f32>(1023f, 1283f, -478f, -1051f), vec4<i32>(0i, 0i, 0i, i32(-2147483648)), vec2<i32>(14286i, 42532i)), Struct_1(-1i, vec2<i32>(1i, 39041i), vec4<f32>(-848f, -1638f, 1113f, 189f), vec4<i32>(-16379i, 1i, -11512i, 0i), vec2<i32>(42550i, i32(-2147483648))), Struct_1(-10287i, vec2<i32>(16441i, -1i), vec4<f32>(783f, -1000f, -747f, -2089f), vec4<i32>(-1i, -2026i, 24714i, 6140i), vec2<i32>(34705i, -6901i)), Struct_1(-1i, vec2<i32>(24872i, -16557i), vec4<f32>(-1949f, -1364f, -1267f, 1362f), vec4<i32>(34048i, -15492i, 1i, -41859i), vec2<i32>(-31410i, 0i)), Struct_1(-50807i, vec2<i32>(15123i, 0i), vec4<f32>(-1338f, 1000f, 664f, -1012f), vec4<i32>(24260i, -4511i, 0i, 0i), vec2<i32>(-1i, 48982i)), Struct_1(2147483647i, vec2<i32>(-929i, 1i), vec4<f32>(-1939f, 851f, 943f, -1654f), vec4<i32>(i32(-2147483648), 1i, -46190i, -33774i), vec2<i32>(i32(-2147483648), -51089i)), Struct_1(-27366i, vec2<i32>(11933i, i32(-2147483648)), vec4<f32>(892f, -1431f, 655f, -232f), vec4<i32>(0i, i32(-2147483648), -19105i, 1i), vec2<i32>(6516i, 0i)), Struct_1(-1i, vec2<i32>(17244i, 61758i), vec4<f32>(-570f, 2000f, -1005f, -525f), vec4<i32>(2147483647i, 30822i, -16245i, 9976i), vec2<i32>(23998i, -1i)), Struct_1(-63003i, vec2<i32>(-18320i, -1i), vec4<f32>(1093f, 733f, 174f, 130f), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 0i), vec2<i32>(2147483647i, 8643i)), Struct_1(i32(-2147483648), vec2<i32>(-52983i, -35283i), vec4<f32>(297f, 397f, 1000f, 2856f), vec4<i32>(20073i, -1i, 42313i, 2147483647i), vec2<i32>(1i, 0i)), Struct_1(56821i, vec2<i32>(i32(-2147483648), 31215i), vec4<f32>(-2356f, 1922f, 724f, -1000f), vec4<i32>(-6006i, i32(-2147483648), 0i, -1i), vec2<i32>(-13i, 1i)), Struct_1(2147483647i, vec2<i32>(1i, 1i), vec4<f32>(1045f, 288f, 1633f, -1000f), vec4<i32>(-40218i, -14708i, 35676i, -45631i), vec2<i32>(-25062i, 11567i)), Struct_1(-9506i, vec2<i32>(11886i, 2147483647i), vec4<f32>(-471f, -464f, -1000f, 1000f), vec4<i32>(-1i, 12002i, -10687i, -30350i), vec2<i32>(i32(-2147483648), 21946i)), Struct_1(14763i, vec2<i32>(-33066i, 8273i), vec4<f32>(1924f, -242f, -1000f, 1196f), vec4<i32>(0i, -29409i, 12136i, i32(-2147483648)), vec2<i32>(68837i, 51970i)), Struct_1(34564i, vec2<i32>(-189i, 85026i), vec4<f32>(-386f, -594f, -780f, -764f), vec4<i32>(1i, 2147483647i, i32(-2147483648), 9441i), vec2<i32>(0i, 20618i)));

var<private> global3: array<vec4<u32>, 32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_2(u_input.c, vec2<u32>(_wgslsmith_mod_u32(u_input.d ^ ~u_input.c.x, _wgslsmith_sub_u32(abs(41523u), u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(18959u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.d, u_input.d, u_input.c.x), vec4<u32>(678u, 9132u, 4294967295u, 28674u)), ~1u), firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)) ^ ~vec3<u32>(9310u, arg_0, 0u))), countOneBits(~_wgslsmith_sub_u32(u_input.c.x, 22047u)) >= u_input.d);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(800f, -218f)) + -1000f)), _wgslsmith_f_op_f32(sign(1380f)));
    global4 = Struct_1(global1[_wgslsmith_index_u32(min(u_input.d, _wgslsmith_div_u32(var_0.b.x, var_0.b.x | arg_0)) ^ u_input.d, 19u)], firstLeadingBit(global4.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x - arg_1.x)), arg_1.x, -287f)), vec4<i32>(_wgslsmith_mod_i32(global4.e.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 78611u, arg_0), vec3<u32>(1u, u_input.d, var_0.b.x)), 19u)]), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global4.b.x, global4.b.x), global4.a), countOneBits(global1[_wgslsmith_index_u32(66921u, 19u)]) & -10827i), _wgslsmith_clamp_i32(-14370i, firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_0.a.x), 19u)]), 14566i), 0i), -abs(-vec2<i32>(u_input.a, global4.b.x)));
    let var_2 = all(select(select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, false), vec4<bool>(true, var_0.c, var_0.c, false), any(vec4<bool>(false, var_0.c, false, var_0.c))), select(select(vec4<bool>(false, false, var_0.c, arg_2.x), vec4<bool>(arg_2.x, var_0.c, true, var_0.c), arg_2.x), select(vec4<bool>(true, var_0.c, true, true), vec4<bool>(arg_2.x, false, true, var_0.c), vec4<bool>(true, false, false, false)), vec4<bool>(arg_2.x, false, var_0.c, arg_2.x)), true), select(!(!vec4<bool>(arg_2.x, arg_2.x, var_0.c, false)), vec4<bool>(var_0.c, all(vec2<bool>(true, false)), true, true), arg_2.x), select(select(vec4<bool>(arg_2.x, arg_2.x, var_0.c, arg_2.x), select(vec4<bool>(var_0.c, false, arg_2.x, true), vec4<bool>(false, var_0.c, arg_2.x, false), vec4<bool>(arg_2.x, var_0.c, false, true)), select(vec4<bool>(false, arg_2.x, false, var_0.c), vec4<bool>(false, arg_2.x, arg_2.x, false), true)), !vec4<bool>(arg_2.x, true, false, var_0.c), vec4<bool>(true, !arg_2.x, false, true))));
    global0 = _wgslsmith_f_op_vec2_f32(step(arg_1.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global4.c.zz + vec2<f32>(global4.c.x, global4.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, var_1.x) + arg_1.ww)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), arg_1.zz)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~abs(global4.d.xxz), global4.d.yxy), -u_input.a) & firstTrailingBit(~abs(~(-14237i)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(~func_3(_wgslsmith_add_u32(15875u, u_input.c.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global4.c.x, 1027f, -443f))))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), all(vec2<bool>(true, false)))), -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e | vec2<i32>(u_input.e.x, -1i), vec2<i32>(global4.e.x, 27252i)), _wgslsmith_clamp_vec2_i32(u_input.e, global4.e, -vec2<i32>(u_input.b.x, 0i))), global4.c, -reverseBits(reverseBits(~global4.d)), vec2<i32>(~1i, 2147483647i));
    global2 = array<Struct_1, 27>();
    let var_1 = !(!(_wgslsmith_sub_u32(u_input.c.x ^ u_input.d, 0u) >= ~u_input.d));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], -global4.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1206f, _wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(sign(var_0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-525f)), -171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) - var_0.c.x), 952f)), -var_0.d, vec2<i32>(_wgslsmith_mod_i32(-u_input.e.x, -(i32(-1i) * -1i)), 0i));
    let var_3 = u_input.c.x;
    return Struct_2(_wgslsmith_sub_vec2_u32(abs(~(~vec2<u32>(var_3, 1u))), u_input.c), ~firstLeadingBit(u_input.c), !all(select(!vec2<bool>(false, var_1), !vec2<bool>(var_1, var_1), vec2<bool>(var_1, false))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = func_2();
    var var_1 = Struct_1(u_input.e.x, -u_input.e, vec4<f32>(global0.x, -1271f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-530f - -1672f)), 1135f), max(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.e.x, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, global4.d.x), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], u_input.b.x, 15974i)), -global4.b.x), select(global4.d, global4.d, all(vec4<bool>(arg_0, false, arg_0, false)))), vec4<i32>(~u_input.a, u_input.a, u_input.a, ~0i) >> (vec4<u32>(13544u, 0u, _wgslsmith_div_u32(0u, 51635u), ~var_0.b.x) % vec4<u32>(32u))), u_input.e);
    let var_2 = Struct_2(var_0.b, vec2<u32>(_wgslsmith_sub_u32(~1u, var_0.a.x), 1u), all(select(select(select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, false, false), vec3<bool>(false, false, arg_0)), !vec3<bool>(var_0.c, false, var_0.c), true)));
    var var_3 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(49627u, u_input.c.x, u_input.d)), ~vec3<u32>(var_2.b.x, var_2.a.x, var_0.a.x)) & 1u, firstTrailingBit(max(1u, 8456u ^ var_0.a.x))), ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_2.b.x, 838u)), ~_wgslsmith_mult_vec2_u32(var_0.b, u_input.c), select(vec2<u32>(var_2.a.x, var_2.b.x) >> (var_0.b % vec2<u32>(32u)), vec2<u32>(var_0.b.x, 50212u), select(vec2<bool>(false, false), vec2<bool>(false, true), var_0.c))), var_2.c);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(12502u, u_input.d, 0u) | vec3<u32>(u_input.d, 1u, u_input.c.x), vec3<u32>(37636u, var_3.a.x, 80175u) << (vec3<u32>(0u, 45501u, var_0.a.x) % vec3<u32>(32u)))), ~var_2.b.x), 27u)];
    return !all(vec4<bool>(true, var_2.c, !all(vec2<bool>(arg_0, var_2.c)), !select(false, arg_0, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.d, _wgslsmith_mod_u32(u_input.d, (abs(u_input.c.x) ^ reverseBits(u_input.c.x)) & 36428u));
    let var_1 = global4.d.yyz;
    let var_2 = -1171f;
    var var_3 = u_input.c;
    let var_4 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, all(vec3<bool>(true, false, true)), false), func_1(true)));
    global1 = array<i32, 19>();
    var var_5 = func_2();
    let var_6 = _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(firstLeadingBit(1i), max(u_input.a, select(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)], var_4)))), abs(18418i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, var_3.x), 4294967295u, 19851u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.c.x, global0.x, global4.c.x, var_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global4.c.x, -1000f, 401f) * vec4<f32>(global4.c.x, global4.c.x, 1000f, global0.x))), global4.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.c, global4.c) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(global4.c)))))), ~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a) | global4.e, vec2<i32>(-1i, global1[_wgslsmith_index_u32(3435u, 19u)]))));
}

