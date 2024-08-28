struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1402f, 205f, -309f, -450f, 768f, 315f, 1486f, 1119f, 106f, -1215f, 1000f, -1468f, 1405f, 738f, 1043f, 432f, -2355f, 2025f, 1000f, 708f, -158f, 1884f, -811f, -891f, 119f, -810f, -801f, 450f);

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<bool>(false, false, true, false), vec4<i32>(-1i, -425i, 48794i, 1i), 578f), Struct_3(vec4<bool>(false, true, false, true), vec4<i32>(-517i, i32(-2147483648), -11399i, -17973i), 900f), Struct_3(vec4<bool>(true, true, true, false), vec4<i32>(19241i, 0i, i32(-2147483648), 78218i), 1332f), Struct_3(vec4<bool>(true, true, false, false), vec4<i32>(1097i, 28474i, 2147483647i, 0i), -335f), Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(30816i, -65421i, 2147483647i, -51985i), 554f), Struct_3(vec4<bool>(true, true, false, true), vec4<i32>(-14820i, -1i, 0i, 1i), -535f), Struct_3(vec4<bool>(false, true, true, false), vec4<i32>(-99004i, 2147483647i, 47484i, 28879i), 2079f), Struct_3(vec4<bool>(true, false, false, true), vec4<i32>(-61950i, 2147483647i, -12924i, 43562i), 1198f), Struct_3(vec4<bool>(false, false, true, true), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), -1081f), Struct_3(vec4<bool>(true, false, false, true), vec4<i32>(1i, 66981i, i32(-2147483648), 35873i), 457f), Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(42176i, 0i, -1i, -6283i), 1807f));

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-6767i, i32(-2147483648))), vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(10620i, 2147483647i)), 1313f), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(i32(-2147483648), -69426i)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(6169i, 30788i)), 167f), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(2147483647i, i32(-2147483648))), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(54839i, 0i)), -157f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(-7938i, -22207i)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), 43576i)), -1000f), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(18254i, 1i)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(15928i, 1i)), -441f), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(8027i, -1i)), vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-12180i, 2147483647i)), 1242f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-16971i, 0i)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), -64995i)), -847f), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(0i, -1i)), vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 3305i)), -451f), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-64413i, -19912i)), vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(21762i, 2147483647i)), -737f), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(1i, 0i)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(1i, 0i)), 166f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), 1i)), vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(37401i, i32(-2147483648))), 1580f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(5875i, -15333i)), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-28203i, -28311i)), -1708f), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(1i, 0i)), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-10451i, 1i)), -1067f), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(1i, 2966i)), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(1i, 0i)), -1327f), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(5376i, i32(-2147483648))), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-34686i, -76685i)), 999f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), -68344i)), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(18122i, -51615i)), -714f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 35784i)), vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(-14028i, 1i)), 2168f), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-1i, 0i)), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-1i, 2147483647i)), -342f));

var<private> global3: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = Struct_3(!(!(!global3.a)), -max(_wgslsmith_add_vec4_i32(global3.b, arg_2.b), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(arg_2.b, arg_2.b), arg_2.b.x >> (39792u % 32u), 53312i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, _wgslsmith_f_op_f32(abs(global3.c)))) * _wgslsmith_f_op_f32(max(305f, _wgslsmith_f_op_f32(-arg_2.c))))));
    global2 = array<Struct_2, 18>();
    var var_1 = 1u;
    var_1 = 20142u ^ max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(41499u), _wgslsmith_mult_u32(80341u, 26527u)), ~(~4294967295u)), min(~(71581u << (0u % 32u)), firstLeadingBit(abs(0u))));
    global3 = arg_2;
    return 110f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    global3 = arg_1;
    var var_0 = Struct_1(vec4<bool>(any(select(vec3<bool>(arg_1.a.x, global3.a.x, false), vec3<bool>(global3.a.x, false, true), select(vec3<bool>(global3.a.x, global3.a.x, true), vec3<bool>(false, true, true), global3.a.x))), -u_input.a > firstLeadingBit(23898i), !(_wgslsmith_div_f32(-1000f, global3.c) < global3.c), true), vec2<i32>(6492i, u_input.a) ^ min(vec2<i32>(~(-31816i), u_input.a), _wgslsmith_mod_vec2_i32(arg_1.b.zw & global3.b.yw, vec2<i32>(u_input.a, global3.b.x) ^ vec2<i32>(51466i, arg_1.b.x))));
    var var_1 = select(select(select(vec2<bool>(!var_0.a.x, true), !global3.a.yx, !arg_1.a.xy), !select(!vec2<bool>(var_0.a.x, arg_1.a.x), arg_1.a.xz, !vec2<bool>(true, global3.a.x)), !(-1459f > _wgslsmith_f_op_f32(trunc(557f)))), select(vec2<bool>(any(vec4<bool>(true, true, global3.a.x, var_0.a.x)), true), arg_1.a.zy, global3.a.x), global3.a.x);
    let var_2 = Struct_3(vec4<bool>(true, true, !(!(-1i <= arg_1.b.x)), false), arg_1.b, arg_0.x);
    var_1 = select(var_2.a.xw, arg_1.a.xy, vec2<bool>(var_0.a.x, true));
    return arg_1.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(firstLeadingBit(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -5050i, -8965i, -28277i), vec4<i32>(-1i, global3.b.x, global3.b.x, 1i)))), _wgslsmith_div_i32(u_input.a, ~(-abs(global3.b.x))), global3.b.x);
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(func_3(global3.b.xyx, vec3<f32>(global3.c, global3.c, -1752f), Struct_3(vec4<bool>(global3.a.x, global3.a.x, true, true), vec4<i32>(15328i, u_input.a, u_input.a, -6446i), -1449f), -664f)))), 290f, _wgslsmith_div_f32(-1401f, _wgslsmith_f_op_f32(max(global3.c, 1362f))), 368f), Struct_3(global3.a, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -1i, u_input.a), 2147483647i, u_input.a, -6823i), min(global3.b, global3.b)), -1713f));
    var var_2 = ~vec3<u32>(firstTrailingBit(72308u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(49463u, 4294967295u, 1u, 46908u), vec4<u32>(148979u, 1u, 1u, 0u))), ~_wgslsmith_add_u32(4928u, 10870u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u));
    var var_3 = Struct_1(select(!select(vec4<bool>(global3.a.x, false, global3.a.x, global3.a.x), global3.a, select(vec4<bool>(false, false, global3.a.x, false), vec4<bool>(false, global3.a.x, global3.a.x, true), true)), global3.a, !(!global3.a)), firstTrailingBit(vec2<i32>(31654i, ~_wgslsmith_div_i32(1i, global3.b.x))));
    var var_4 = Struct_1(vec4<bool>(var_3.a.x, !all(vec2<bool>(true, var_3.a.x)), false, global3.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(1i), -23859i), ~var_3.b));
    return Struct_1(select(vec4<bool>(select(true, true, var_4.a.x), false, all(vec3<bool>(true, global3.a.x, var_4.a.x)) || (-1214f == global3.c), true), var_4.a, (var_4.a.x || true) && true), global3.b.xx);
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_2, 18>();
    var var_0 = Struct_2(func_2(), func_2().a.xyw, Struct_1(select(vec4<bool>(true, all(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, false)), any(vec2<bool>(false, global3.a.x)), true), func_2().a, select(global3.a.x || false, false, global3.a.x)), vec2<i32>(global3.b.x, ~abs(-1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(470f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + 294f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * 938f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-550f)) + _wgslsmith_f_op_f32(trunc(701f)))))));
    global3 = global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, 0u), 16405u), vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 27685u), vec2<u32>(1u, 1u))))), 11u)];
    global2 = array<Struct_2, 18>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), 0u), max(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mult_u32(1u, 1u), 1u))), 18u)];
    return global2[_wgslsmith_index_u32(1u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global3 = global1[_wgslsmith_index_u32(42990u, 11u)];
    global3 = Struct_3(!global3.a, global3.b, global3.c);
    var var_1 = func_1();
    let var_2 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.x, _wgslsmith_mult_vec3_u32(firstLeadingBit(min(vec3<u32>(25317u, 4294967295u, 31793u), vec3<u32>(68753u, 4294967295u, 30406u))), vec3<u32>(1u, 1u, 1u)) | _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(firstLeadingBit(20155u), _wgslsmith_clamp_u32(4294967295u, 24061u, 4294967295u), abs(46254u))), vec2<u32>(~33309u, 1u), global3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(sign(1216f))) * _wgslsmith_f_op_f32(-1f)))));
}

