struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
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

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: array<Struct_5, 5>;

var<private> global4: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_4(vec2<u32>(1u, 14107u), vec3<u32>(1u, 11255u, 4294967295u), Struct_2(Struct_1(vec2<f32>(1054f, 1142f), vec3<u32>(58856u, 1u, 0u)), true, Struct_1(vec2<f32>(-1790f, 793f), vec3<u32>(4294967295u, 0u, 1u)), vec3<bool>(true, true, true))), Struct_4(vec2<u32>(32805u, 4294967295u), vec3<u32>(40908u, 1u, 0u), Struct_2(Struct_1(vec2<f32>(1000f, 175f), vec3<u32>(0u, 65075u, 651u)), false, Struct_1(vec2<f32>(195f, 1822f), vec3<u32>(1u, 4294967295u, 0u)), vec3<bool>(true, false, false)))), Struct_5(Struct_4(vec2<u32>(0u, 1u), vec3<u32>(0u, 43827u, 64539u), Struct_2(Struct_1(vec2<f32>(-1366f, -803f), vec3<u32>(4294967295u, 0u, 0u)), false, Struct_1(vec2<f32>(1821f, 1167f), vec3<u32>(0u, 74308u, 62003u)), vec3<bool>(false, false, true))), Struct_4(vec2<u32>(14267u, 19595u), vec3<u32>(57773u, 7768u, 1u), Struct_2(Struct_1(vec2<f32>(-813f, -374f), vec3<u32>(63197u, 89654u, 1u)), false, Struct_1(vec2<f32>(-209f, -259f), vec3<u32>(28538u, 4294967295u, 23903u)), vec3<bool>(false, true, true)))), Struct_5(Struct_4(vec2<u32>(53400u, 102447u), vec3<u32>(28402u, 4294967295u, 0u), Struct_2(Struct_1(vec2<f32>(1100f, -287f), vec3<u32>(4294967295u, 1u, 54903u)), false, Struct_1(vec2<f32>(-1172f, -2779f), vec3<u32>(27176u, 19076u, 1u)), vec3<bool>(true, true, false))), Struct_4(vec2<u32>(75928u, 52805u), vec3<u32>(1u, 35788u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-414f, -2564f), vec3<u32>(1u, 0u, 4294967295u)), true, Struct_1(vec2<f32>(358f, -462f), vec3<u32>(4294967295u, 1u, 137257u)), vec3<bool>(true, false, true)))), Struct_5(Struct_4(vec2<u32>(35247u, 21320u), vec3<u32>(44470u, 56667u, 894u), Struct_2(Struct_1(vec2<f32>(-662f, 356f), vec3<u32>(4294967295u, 19275u, 17526u)), false, Struct_1(vec2<f32>(-1768f, -394f), vec3<u32>(37208u, 75697u, 0u)), vec3<bool>(false, true, true))), Struct_4(vec2<u32>(41392u, 1u), vec3<u32>(1u, 84011u, 1u), Struct_2(Struct_1(vec2<f32>(744f, 217f), vec3<u32>(27366u, 4294967295u, 66923u)), true, Struct_1(vec2<f32>(-481f, -1959f), vec3<u32>(17073u, 4294967295u, 27834u)), vec3<bool>(false, false, false)))), Struct_5(Struct_4(vec2<u32>(64406u, 11273u), vec3<u32>(1u, 1u, 4294967295u), Struct_2(Struct_1(vec2<f32>(-1000f, -213f), vec3<u32>(4294967295u, 3290u, 915u)), true, Struct_1(vec2<f32>(-601f, -914f), vec3<u32>(35889u, 4294967295u, 58249u)), vec3<bool>(true, true, false))), Struct_4(vec2<u32>(1u, 4294967295u), vec3<u32>(4294967295u, 10627u, 46848u), Struct_2(Struct_1(vec2<f32>(535f, -1000f), vec3<u32>(1u, 4522u, 0u)), true, Struct_1(vec2<f32>(-191f, 1020f), vec3<u32>(0u, 31042u, 23705u)), vec3<bool>(false, true, true)))), Struct_5(Struct_4(vec2<u32>(61326u, 0u), vec3<u32>(1u, 1u, 26322u), Struct_2(Struct_1(vec2<f32>(-678f, -1000f), vec3<u32>(56812u, 0u, 1u)), true, Struct_1(vec2<f32>(377f, 1098f), vec3<u32>(2461u, 4294967295u, 100766u)), vec3<bool>(false, true, false))), Struct_4(vec2<u32>(1u, 59532u), vec3<u32>(4294967295u, 37524u, 70443u), Struct_2(Struct_1(vec2<f32>(-1000f, -175f), vec3<u32>(1u, 0u, 55555u)), false, Struct_1(vec2<f32>(821f, -401f), vec3<u32>(60598u, 4294967295u, 18501u)), vec3<bool>(false, true, false)))), Struct_5(Struct_4(vec2<u32>(1u, 1608u), vec3<u32>(4294967295u, 2443u, 1u), Struct_2(Struct_1(vec2<f32>(211f, 635f), vec3<u32>(2926u, 1u, 24891u)), false, Struct_1(vec2<f32>(-208f, -1707f), vec3<u32>(43563u, 16898u, 11058u)), vec3<bool>(false, false, false))), Struct_4(vec2<u32>(0u, 24142u), vec3<u32>(69107u, 4294967295u, 47462u), Struct_2(Struct_1(vec2<f32>(1116f, 698f), vec3<u32>(1u, 4294967295u, 4294967295u)), true, Struct_1(vec2<f32>(-1643f, -862f), vec3<u32>(4294967295u, 0u, 18440u)), vec3<bool>(false, false, false)))), Struct_5(Struct_4(vec2<u32>(25848u, 17104u), vec3<u32>(38056u, 0u, 0u), Struct_2(Struct_1(vec2<f32>(-915f, -128f), vec3<u32>(0u, 1u, 13993u)), false, Struct_1(vec2<f32>(-781f, 2082f), vec3<u32>(0u, 0u, 16352u)), vec3<bool>(false, true, true))), Struct_4(vec2<u32>(16423u, 0u), vec3<u32>(1u, 472u, 1u), Struct_2(Struct_1(vec2<f32>(248f, 158f), vec3<u32>(18724u, 0u, 13548u)), true, Struct_1(vec2<f32>(734f, -1857f), vec3<u32>(4294967295u, 8325u, 46406u)), vec3<bool>(true, false, false)))));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = array<vec3<i32>, 10>();
    global3 = array<Struct_5, 5>();
    let var_0 = -646f;
    var var_1 = Struct_5(Struct_4(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global1.b.x), vec2<u32>(u_input.b.x, 1u), vec2<u32>(global1.b.x, u_input.d.x)) & ~global1.b.yy), ~select(vec3<u32>(u_input.b.x, u_input.d.x, 4294967295u), u_input.b.yww, vec3<bool>(true, true, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -169f) * global1.a), ~u_input.b.xww), all(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, false, arg_0), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1902f, var_0)), u_input.b.wzz), vec3<bool>(arg_0, arg_0 | arg_0, arg_0 | true))), Struct_4(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, global1.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), u_input.b.xx)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~u_input.b.yw), ~min(global1.b.x, u_input.d.x), 8185u), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), u_input.b.xwy), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1265f, var_0)), vec3<u32>(u_input.b.x, 1u, 18944u)), vec3<bool>(true, true, true))));
    var var_2 = Struct_5(var_1.a, var_1.a);
    return var_1.b.c.c;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    global2 = array<vec3<i32>, 10>();
    global0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(72717u, u_input.b.x, u_input.b.x), u_input.b.zyy, vec3<bool>(false, arg_1.b, arg_1.d.x))), vec3<u32>(~arg_1.a.b.x, 6184u, 7562u)), 3280u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_2(arg_1.d.x).a.x, _wgslsmith_f_op_f32(exp2(arg_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.a) * _wgslsmith_f_op_vec2_f32(max(arg_1.a.a, arg_1.a.a))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(max(arg_1.c.a, arg_1.c.a))))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(16667u | _wgslsmith_add_u32(abs(min(11176u, 40590u)), _wgslsmith_mult_u32(~arg_1.a.b.x, 1u)), countOneBits(4294967295u)), 5u)];
    var var_2 = arg_2;
    return var_1.a.c.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_3(_wgslsmith_mult_vec2_u32(arg_2.a, max(vec2<u32>(4294967295u, global1.b.x), vec2<u32>(global1.b.x, u_input.d.x))) | ~u_input.d, arg_2.c, 4294967295u & ~firstLeadingBit(arg_2.b.x), min(u_input.a << (~u_input.b % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(1i, arg_0.x ^ u_input.c.x, -2147483647i, ~26219i))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(409f, arg_2.c, var_0.d.xxy, arg_1.a.x).a + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2006f, 702f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, 334f) * vec2<f32>(625f, global1.a.x))))), firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, 20615u, 0u) >> (arg_2.b % vec3<u32>(32u)), global1.b)));
    var var_1 = var_0;
    let var_2 = var_0.d;
    global0 = ~func_3(global1.a.x, Struct_2(var_1.b.c, !var_0.b.b, func_2(var_1.c == 1u), vec3<bool>(true, var_0.b.b, all(vec2<bool>(true, false)))), vec3<i32>(~_wgslsmith_sub_i32(-24190i, var_1.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, -1i, -29971i, var_1.d.x), vec4<i32>(var_1.d.x, 1i, var_0.d.x, arg_0.x)), vec4<i32>(1i, u_input.c.x, arg_0.x, -21215i)), var_1.d.x), -969f).b.x;
    return firstTrailingBit(0i);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = true;
    var_0 = -countOneBits(-31790i) == func_4(u_input.a.ww, func_2(any(vec4<bool>(false, true, true, true))), Struct_4(u_input.b.zz, _wgslsmith_sub_vec3_u32(~u_input.b.xzy, vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), Struct_2(func_3(arg_0, Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, 0u, 1u)), true, Struct_1(vec2<f32>(-590f, -292f), vec3<u32>(4294967295u, u_input.b.x, 18472u)), vec3<bool>(false, false, false)), vec3<i32>(u_input.a.x, arg_1.x, 1i), -1205f), true, Struct_1(vec2<f32>(arg_0, global1.a.x), u_input.b.xxz), vec3<bool>(false, true, true))));
    global0 = _wgslsmith_mult_u32(abs(u_input.b.x) >> (global1.b.x % 32u), func_3(_wgslsmith_f_op_f32(max(global1.a.x, func_2(true).a.x)), Struct_2(func_2(true), _wgslsmith_f_op_f32(618f - arg_0) <= _wgslsmith_f_op_f32(f32(-1f) * -429f), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -825f) * vec2<f32>(502f, -3028f)), u_input.b.yxw ^ global1.b), vec3<bool>(true, true, all(vec2<bool>(false, true)))), vec3<i32>(-1i) * -(global2[_wgslsmith_index_u32(global1.b.x, 10u)] | u_input.c), -198f).b.x);
    var var_1 = Struct_5(Struct_4(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(global1.b.x, 47763u) ^ vec2<u32>(global1.b.x, 4294967295u)), vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(global1.b.x, 1993u)), vec2<u32>(4294967295u, 79341u) & global1.b.zz)), ~_wgslsmith_add_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, u_input.b.x) & vec3<u32>(0u, global1.b.x, 61164u), u_input.b.yyx), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(1594f, -1955f)), ~global1.b), true, Struct_1(_wgslsmith_f_op_vec2_f32(global1.a - global1.a), vec3<u32>(4294967295u, 4644u, u_input.d.x)), vec3<bool>(false, any(vec2<bool>(true, false)), true))), Struct_4(~(~firstLeadingBit(global1.b.zx)), global1.b, Struct_2(Struct_1(global1.a, vec3<u32>(18100u, u_input.d.x, u_input.d.x)), any(vec3<bool>(false, true, true)), Struct_1(global1.a, ~vec3<u32>(u_input.b.x, global1.b.x, 2023u)), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true)))));
    let var_2 = _wgslsmith_dot_vec4_u32(select(~(~(~u_input.b)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4767u, 18664u, var_1.b.b.x, 73749u), vec4<u32>(0u, 40382u, 0u, 4294967295u))), !all(vec3<bool>(var_1.a.c.b, false, var_1.b.c.b))), u_input.b);
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, ~_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), 4294967295u), vec3<u32>(u_input.b.x | (13815u | global1.b.x), ~select(global1.b.x, 0u, true), reverseBits(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x)))));
    global2 = array<vec3<i32>, 10>();
    var var_1 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), vec2<i32>(reverseBits(~1i), -12332i));
    let var_2 = _wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.a << (min(u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(max(u_input.a, vec4<i32>(u_input.c.x, -1589i, u_input.a.x, u_input.c.x)), u_input.a)), max(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, 11866i, u_input.c.x), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-18380i, 7911i, 9587i, u_input.a.x), vec4<i32>(15250i, u_input.a.x, u_input.a.x, 0i)), true), u_input.a)));
    global3 = array<Struct_5, 5>();
    var var_3 = Struct_4(_wgslsmith_div_vec2_u32(var_0.b.yx, vec2<u32>(~_wgslsmith_add_u32(global1.b.x, 39567u), select(1u, ~1u, select(true, false, true)))), reverseBits(vec3<u32>(4294967295u >> (1u % 32u), var_0.b.x, 0u)), func_1(var_0.a.x, var_2.wx));
    var var_4 = ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 1000f, _wgslsmith_f_op_f32(-var_3.c.a.a.x), -722f));
}

