struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<u32>(4294967295u, 5548u, 17675u), 35160i, vec2<f32>(633f, 120f), Struct_1(vec3<i32>(15253i, -1i, 7926i), -1436f, vec2<f32>(-1000f, -536f))), Struct_3(vec3<u32>(31231u, 36229u, 67944u), -1i, vec2<f32>(-1153f, -914f), Struct_1(vec3<i32>(-32614i, 18101i, -27877i), 645f, vec2<f32>(623f, -841f))), Struct_3(vec3<u32>(8416u, 64586u, 109951u), 1i, vec2<f32>(-1000f, -472f), Struct_1(vec3<i32>(6284i, 2147483647i, i32(-2147483648)), 351f, vec2<f32>(-535f, -2043f))), Struct_3(vec3<u32>(4294967295u, 0u, 7138u), i32(-2147483648), vec2<f32>(-1506f, 431f), Struct_1(vec3<i32>(-29627i, 2147483647i, 1i), 1920f, vec2<f32>(-131f, 1716f))), Struct_3(vec3<u32>(24913u, 1u, 23158u), 1i, vec2<f32>(1035f, -259f), Struct_1(vec3<i32>(-39366i, 1i, 6020i), -1181f, vec2<f32>(513f, -1167f))), Struct_3(vec3<u32>(27108u, 0u, 62473u), 1i, vec2<f32>(-1398f, 1000f), Struct_1(vec3<i32>(36148i, 0i, -30173i), -243f, vec2<f32>(-1544f, -1000f))), Struct_3(vec3<u32>(41918u, 1u, 59714u), -54131i, vec2<f32>(1190f, 643f), Struct_1(vec3<i32>(-10778i, -1i, 14451i), 731f, vec2<f32>(-2714f, -1435f))), Struct_3(vec3<u32>(0u, 53237u, 6480u), -1i, vec2<f32>(-246f, -219f), Struct_1(vec3<i32>(47063i, i32(-2147483648), 0i), 415f, vec2<f32>(531f, 505f))), Struct_3(vec3<u32>(5219u, 33291u, 0u), -15935i, vec2<f32>(1276f, 410f), Struct_1(vec3<i32>(60920i, 31233i, -1i), 1472f, vec2<f32>(-328f, 346f))), Struct_3(vec3<u32>(0u, 34362u, 47030u), i32(-2147483648), vec2<f32>(455f, -1658f), Struct_1(vec3<i32>(7814i, -59057i, 39650i), 1000f, vec2<f32>(-293f, -613f))), Struct_3(vec3<u32>(4294967295u, 1u, 5605u), -56671i, vec2<f32>(-1000f, -580f), Struct_1(vec3<i32>(-18047i, 1i, 1i), -1145f, vec2<f32>(1110f, 528f))), Struct_3(vec3<u32>(13684u, 4294967295u, 0u), -1i, vec2<f32>(1226f, -484f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 6598i), 155f, vec2<f32>(1090f, 871f))), Struct_3(vec3<u32>(50820u, 0u, 852u), -39095i, vec2<f32>(1000f, -1143f), Struct_1(vec3<i32>(1i, 39912i, 22406i), -441f, vec2<f32>(-399f, 467f))), Struct_3(vec3<u32>(0u, 117426u, 20615u), 35585i, vec2<f32>(290f, -1000f), Struct_1(vec3<i32>(1i, 20623i, 5609i), 305f, vec2<f32>(544f, 588f))), Struct_3(vec3<u32>(90110u, 1u, 55042u), 2147483647i, vec2<f32>(1717f, 717f), Struct_1(vec3<i32>(60728i, -27194i, i32(-2147483648)), 393f, vec2<f32>(866f, 1031f))), Struct_3(vec3<u32>(4682u, 16819u, 25528u), -18520i, vec2<f32>(565f, -305f), Struct_1(vec3<i32>(-16642i, 3170i, -99325i), -229f, vec2<f32>(1000f, -1000f))), Struct_3(vec3<u32>(1u, 4294967295u, 1u), -30570i, vec2<f32>(-205f, -292f), Struct_1(vec3<i32>(-5169i, 1i, 2147483647i), 2109f, vec2<f32>(-128f, 703f))), Struct_3(vec3<u32>(70391u, 6685u, 4294967295u), -5352i, vec2<f32>(-783f, 531f), Struct_1(vec3<i32>(0i, -7452i, 1i), -947f, vec2<f32>(-224f, 530f))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec4<i32> {
    global0 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_div_vec2_i32(~u_input.b, _wgslsmith_mod_vec2_i32(u_input.b, firstLeadingBit(abs(u_input.b))));
    var var_1 = true;
    let var_2 = select(~_wgslsmith_sub_vec3_i32(max(arg_0.d.d.a, max(vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(1i, 2147483647i, arg_0.d.d.a.x))), arg_0.d.d.a), abs(vec3<i32>(var_0.x, 2147483647i, firstLeadingBit(2147483647i))) >> (select(_wgslsmith_clamp_vec3_u32(abs(arg_0.d.a), arg_0.d.a, firstLeadingBit(vec3<u32>(arg_1, 9203u, u_input.d))), vec3<u32>(4294967295u, arg_1, u_input.e) & ~vec3<u32>(arg_1, arg_1, 10772u), !select(vec3<bool>(true, arg_0.c, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(true, false, true))) % vec3<u32>(32u)), arg_0.a || arg_0.a);
    var var_3 = Struct_2(arg_0.d.d, arg_0.d.d, select(~(~abs(arg_1)), arg_1, true), select(arg_0.a, all(!select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, arg_0.a, false), vec3<bool>(true, false, arg_0.c))), select(arg_0.c, all(select(vec3<bool>(arg_0.a, false, true), vec3<bool>(true, false, arg_0.c), vec3<bool>(arg_0.c, false, false))), true)));
    return -arg_0.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_4 {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_0 = 404u;
    let var_1 = _wgslsmith_mult_u32(reverseBits(1u) ^ _wgslsmith_div_u32(~76006u, 1u & abs(arg_0.x)), _wgslsmith_add_u32(~arg_0.x, ~var_0 & _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(33394u, var_0, arg_0.x), vec3<u32>(arg_0.x, 57806u, 0u)))));
    global0 = array<Struct_3, 18>();
    return Struct_4(true, select(-func_3(Struct_4(true, vec4<i32>(9737i, arg_1, arg_1, 14083i), true, global0[_wgslsmith_index_u32(3362u, 18u)]), 15577u) ^ vec4<i32>(2147483647i, _wgslsmith_mult_i32(716i, arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c, 0i, arg_1, arg_1)), -11540i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_1, 2098i, arg_1), vec4<i32>(u_input.a, u_input.a, 18064i, arg_1))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), any(vec2<bool>(true, true)))), !(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -35749i), u_input.b), -1i) <= -7088i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(arg_0.x, 1u), _wgslsmith_div_u32(0u, u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.d, 0u)), countOneBits(var_0)) << ((vec4<u32>(var_1, 67707u, u_input.e, 4862u) | countOneBits(vec4<u32>(14327u, var_1, 1u, var_1))) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(56939u, var_1, var_0, var_1), vec4<u32>(1u, 56838u, 4294967295u, 0u)))), 18u)]);
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_3, 18>();
    var var_0 = func_2(vec2<u32>(~u_input.e, ~9484u), u_input.b.x);
    var var_1 = -(~(vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.b.x), 0i) | ((u_input.b & var_0.b.wz) | -vec2<i32>(u_input.c, var_0.b.x))));
    global0 = array<Struct_3, 18>();
    let var_2 = Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(~0i >> (~var_0.d.a.x % 32u), 18290i, countOneBits(var_1.x & 0i)), var_0.b.wzz), Struct_4(var_0.a, var_0.b, false, func_2(select(var_0.d.a.zx | var_0.d.a.yx, var_0.d.a.xz, vec2<bool>(true, true)), _wgslsmith_mult_i32(-var_1.x, var_0.d.b ^ 1i)).d), vec4<f32>(var_0.d.d.c.x, -460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.d.b)))), _wgslsmith_f_op_f32(abs(1f))), -817f, Struct_1(vec3<i32>(-39989i >> (~u_input.d % 32u), reverseBits(-24940i), _wgslsmith_add_i32(-8462i, var_0.b.x)), 147f, var_0.d.d.c));
    return var_0.d.d.a & (vec3<i32>(0i, _wgslsmith_mult_i32(var_0.d.b, firstLeadingBit(var_2.b.d.b)), -u_input.a) << (var_0.d.a % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    var var_0 = Struct_5(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(func_1(), firstTrailingBit(reverseBits(vec3<i32>(u_input.c, u_input.c, -2147483647i)))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, -24157i), vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ vec3<i32>(u_input.a, 8895i, u_input.b.x), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a)), u_input.b.x))), func_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.d), vec2<u32>(u_input.d, 1u)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, 33334u)) % vec2<u32>(32u)), 4445i), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1350f * _wgslsmith_f_op_f32(-102f + 1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1978f * -158f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-279f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1856f - 761f)))), _wgslsmith_f_op_f32(max(-1069f, -2128f))), 1066f, func_2(vec2<u32>(u_input.d, func_2(countOneBits(vec2<u32>(1u, 15350u)), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)).d.a.x), -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 59331i), vec3<i32>(-55339i, -38184i, 33289i)) ^ -1i)).d.d);
    let var_1 = Struct_2(var_0.e, Struct_1(~firstTrailingBit(~var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x))))), var_0.e.c), u_input.e, false & all(!(!vec4<bool>(var_0.b.a, var_0.b.c, true, false))));
    var_0 = Struct_5(var_1.a.a, func_2(vec2<u32>(func_2(var_0.b.d.a.xx, select(1i, 2147483647i, false)).d.a.x, 4294967295u), max(~_wgslsmith_dot_vec3_i32(vec3<i32>(-19011i, 1i, 0i), var_0.e.a), ~(-12932i))), _wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(sign(var_0.c))), _wgslsmith_f_op_f32(-593f * _wgslsmith_div_f32(var_0.b.d.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * 182f))), var_0.e);
    var_0 = Struct_5(firstTrailingBit(var_1.b.a), var_0.b, vec4<f32>(-965f, _wgslsmith_f_op_f32(round(var_0.d)), var_1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.a.b)), _wgslsmith_div_f32(var_0.e.b, var_1.a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))) * 1097f), var_0.e);
    var var_2 = vec4<u32>(var_1.c, min(min(~var_0.b.d.a.x, ~(var_0.b.d.a.x ^ var_1.c)), 1u), 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.b.d.a.xy >> (var_0.b.d.a.yz % vec2<u32>(32u))), reverseBits(reverseBits(var_0.b.d.a.yy))), var_0.b.d.a.x >> (var_1.c % 32u)));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, func_1().x, -1i, (~u_input.c >> (~u_input.d % 32u)) >> (countOneBits(~var_0.b.d.a.x) % 32u)), -405f, firstLeadingBit(vec2<u32>(u_input.e << (~var_2.x % 32u), ~(~16861u))));
}

