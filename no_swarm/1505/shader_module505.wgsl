struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1318f, -468f, 713f, 1929f);

var<private> global1: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1715f, 881f, -205f, global0.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x))), _wgslsmith_div_f32(-1000f, -461f), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(707f, global0.x)))))));
    var var_0 = select(select(vec3<bool>(false, (arg_1.a.x < global0.x) || arg_1.d, true), vec3<bool>(!(-686f >= global0.x), arg_2.d, arg_1.d), global0.x <= _wgslsmith_f_op_f32(ceil(-140f))), !select(select(vec3<bool>(arg_2.d, arg_2.d, false), vec3<bool>(arg_1.d, arg_1.d, false), vec3<bool>(true, false, arg_2.d)), vec3<bool>(arg_1.d, arg_1.d, false), select(select(vec3<bool>(true, false, arg_1.d), vec3<bool>(arg_2.d, false, false), arg_1.d), vec3<bool>(arg_2.d, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, arg_2.d, arg_1.d)))), !select(vec3<bool>(all(vec3<bool>(false, false, arg_2.d)), false, !arg_1.d), vec3<bool>(all(vec4<bool>(arg_1.d, arg_1.d, arg_2.d, arg_1.d)), true, -51811i <= arg_0), select(vec3<bool>(true, arg_2.d, false), select(vec3<bool>(true, arg_2.d, true), vec3<bool>(arg_1.d, arg_2.d, false), arg_2.d), select(vec3<bool>(arg_1.d, true, arg_2.d), vec3<bool>(arg_1.d, arg_2.d, arg_2.d), false))));
    var var_1 = Struct_3(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, u_input.c, arg_0), arg_2.c.zzw, var_0.x) & arg_1.c.wxw, -arg_2.c.yzx), Struct_2(arg_1, arg_2, vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(step(707f, _wgslsmith_f_op_f32(global0.x * 2746f)))), _wgslsmith_f_op_f32(-201f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1329f, -210f) + _wgslsmith_f_op_f32(exp2(arg_1.e))))));
    var var_2 = var_1.b;
    var var_3 = var_2.b.b.zzz;
    return arg_2.a;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.b.a.a + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.b.a.a, vec4<f32>(1005f, -587f, arg_1.b.a.e, -543f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(vec4<f32>(global0.x, 1248f, 1098f, global0.x), arg_1.b.a.b, vec4<i32>(26225i, arg_1.b.a.c.x, 2147483647i, arg_1.b.b.c.x), arg_2.x, 407f), arg_1.b.a)))))), ~(~abs(vec4<u32>(10356u, u_input.a, 4294967295u, 71560u))), _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_1.b.b.c.x), ~(-16339i), ~(-39374i), u_input.c) >> (~vec4<u32>(u_input.b, 0u, u_input.a, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(select(arg_1.b.b.c, select(arg_1.b.a.c, arg_1.b.a.c, false), all(vec2<bool>(false, false))))), min((arg_0 | -12877i) | -arg_1.b.a.c.x, arg_1.a) > _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -18881i, i32(-1i) * -27239i), u_input.d.x), _wgslsmith_f_op_f32(-global0.x));
    let var_1 = all(select(arg_2, !select(vec4<bool>(arg_2.x, arg_2.x, true, arg_1.b.b.d), !vec4<bool>(true, var_0.d, var_0.d, arg_2.x), false), arg_1.b.b.d));
    global1 = 92513u;
    var var_2 = arg_1.b;
    var var_3 = vec2<bool>(!select(any(select(vec3<bool>(arg_1.b.b.d, var_0.d, true), arg_2.ywy, true)), all(arg_2.yx), true), arg_1.b.a.c.x > -_wgslsmith_mult_i32(-2147483647i, i32(-1i) * -1i));
    return var_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(4294967295u, u_input.a, reverseBits(u_input.b));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-517f, -767f, 1969f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -506f, global0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(u_input.d.x, Struct_3(0i, Struct_2(Struct_1(vec4<f32>(-608f, -904f, global0.x, global0.x), vec4<u32>(1u, u_input.b, 1u, var_0.x), vec4<i32>(-1i, 25513i, u_input.c, 18410i), false, 788f), Struct_1(vec4<f32>(global0.x, global0.x, global0.x, 1415f), vec4<u32>(23448u, 0u, u_input.a, 75682u), vec4<i32>(44289i, u_input.d.x, 68466i, -49127i), false, global0.x), vec2<f32>(331f, 286f), global0.x)), vec4<bool>(false, false, true, true))), vec4<f32>(842f, global0.x, -478f, -499f))), false)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2218f, global0.x, -1465f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1113f, -1603f, -731f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-362f, -865f, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(func_2(i32(-1i) * -2147483647i, Struct_3(u_input.d.x, Struct_2(Struct_1(vec4<f32>(1869f, -279f, -559f, -139f), vec4<u32>(u_input.b, u_input.a, var_0.x, 4294967295u), vec4<i32>(5227i, u_input.d.x, u_input.d.x, u_input.c), false, global0.x), Struct_1(vec4<f32>(-1151f, 992f, -842f, global0.x), vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a), vec4<i32>(-1i, -19772i, u_input.d.x, 18508i), true, -358f), global0.xw, 1000f)), vec4<bool>(false, false, true, true)))), true)));
    var var_1 = Struct_3(-2944i, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -159f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, -1082f, -1468f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -894f, global0.x, -690f), vec4<f32>(-118f, global0.x, global0.x, global0.x)))), ~(vec4<u32>(u_input.a, 28350u, u_input.b, u_input.a) ^ vec4<u32>(38273u, 1u, 88860u, 64381u)), -vec4<i32>(u_input.d.x, u_input.d.x, 1i, -28548i) >> (vec4<u32>(var_0.x, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u)), true, global0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, -1549f, global0.x, global0.x) + vec4<f32>(-1120f, -726f, -1003f, global0.x))), select(vec4<u32>(var_0.x, 11181u, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 18653u, 0u, 0u), vec4<u32>(var_0.x, u_input.a, 1u, 39u)), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -1i, u_input.d.x, 8280i), vec4<i32>(-4947i, 2147483647i, 33279i, 54206i)) ^ -vec4<i32>(u_input.c, 0i, u_input.d.x, -38382i), (var_0.x >> (62375u % 32u)) == _wgslsmith_clamp_u32(var_0.x, 1u, var_0.x), -1163f), vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(-1541f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1335f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(3506i, Struct_3(738i, Struct_2(Struct_1(vec4<f32>(global0.x, 1395f, global0.x, global0.x), vec4<u32>(4294967295u, u_input.b, var_0.x, u_input.a), vec4<i32>(-2147483647i, -1i, -2147483647i, 5546i), false, global0.x), Struct_1(vec4<f32>(793f, 681f, 2681f, global0.x), vec4<u32>(var_0.x, u_input.a, 11055u, u_input.b), vec4<i32>(u_input.c, 0i, u_input.c, 29080i), false, -1034f), global0.xz, global0.x)), vec4<bool>(true, false, false, false))).x))));
    var_1 = Struct_3(_wgslsmith_sub_i32(16605i, _wgslsmith_mult_i32(countOneBits(~var_1.a), -var_1.a)), var_1.b);
    var var_2 = true;
    return Struct_3(var_1.b.b.c.x, var_1.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<f32> {
    var var_0 = true;
    global1 = 16586u;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(func_1().b.b.c.x, min(1i, u_input.c)), -2147483647i), ~arg_2.b.b.c.x), ~_wgslsmith_sub_i32(func_1().a, abs(-35899i)));
    var var_2 = func_1().b;
    let var_3 = arg_2.b.a.b.x > _wgslsmith_add_u32(arg_1.b.b.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 32691u, 56691u)), vec3<u32>(u_input.a, u_input.b & u_input.a, _wgslsmith_clamp_u32(18278u, 61260u, 16174u))));
    return arg_2.b.a.a.ww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false || !all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true))), true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.zw)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1149f, 1382f) * global0.wxz), Struct_2(Struct_1(vec4<f32>(-223f, global0.x, global0.x, 972f), vec4<u32>(17185u, 1u, u_input.b, u_input.b), vec4<i32>(u_input.d.x, -2779i, u_input.c, u_input.d.x), true, global0.x), Struct_1(vec4<f32>(global0.x, -177f, global0.x, global0.x), vec4<u32>(0u, 1u, 4294967295u, u_input.b), vec4<i32>(-21969i, 6169i, 2147483647i, 1i), true, -937f), global0.yz, 1378f), func_1(), vec3<u32>(u_input.b, u_input.a, u_input.a))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(843f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(-global0.x)), -329f)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - -117f), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_i32(u_input.c, u_input.d.x), func_1(), vec4<bool>(var_0.x, var_0.x, true, var_0.x))).x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-469f)), _wgslsmith_f_op_f32(global0.x - 337f)))), -153f));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_i32(u_input.c ^ 29456i, -u_input.c), func_1(), select(vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(false, false, var_0.x, false), false))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + 1120f), _wgslsmith_f_op_f32(global0.x - var_1.x))), 541f)));
    var var_3 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(max(0u, u_input.a), 0u, abs(4070u)) >> (~firstTrailingBit(vec3<u32>(38367u, 11352u, 47156u)) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, u_input.b)) | ~vec3<u32>(u_input.a, u_input.a, u_input.a));
    var var_4 = var_3.x >= _wgslsmith_add_u32(4294967295u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(-934f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(847f)))), _wgslsmith_f_op_f32(-var_1.x))), select(vec4<i32>(u_input.c, u_input.c, _wgslsmith_sub_i32(12154i, _wgslsmith_div_i32(57129i, 4213i)), u_input.d.x), ~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d.x, 0i, 15586i, -1i), ~vec4<i32>(39155i, u_input.c, 0i, 1i)), !all(vec2<bool>(true, var_0.x))), vec2<u32>(0u, ~func_1().b.a.b.x));
}

