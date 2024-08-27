struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: f32 = 324f;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(false, false, false), vec2<f32>(-769f, 196f))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(true, true, false), vec2<f32>(1066f, 880f))), Struct_2(Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, true, true), vec2<f32>(-158f, 1444f))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, vec3<bool>(false, true, false), vec2<f32>(1558f, -804f))), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(true, false, false), vec2<f32>(-1075f, 1015f))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, vec3<bool>(false, true, false), vec2<f32>(271f, 1000f))), Struct_2(Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(false, true, false), vec2<f32>(-1391f, 819f))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true, vec3<bool>(false, false, true), vec2<f32>(1241f, -106f))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), false, vec3<bool>(false, true, true), vec2<f32>(1324f, -1506f))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), false, vec3<bool>(true, true, false), vec2<f32>(-518f, -131f))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), true, vec3<bool>(true, true, true), vec2<f32>(1000f, 924f))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), true, vec3<bool>(false, true, false), vec2<f32>(422f, -445f))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(true, false, true), vec2<f32>(171f, 817f))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), false, vec3<bool>(true, true, true), vec2<f32>(1246f, -752f))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), false, vec3<bool>(false, true, true), vec2<f32>(405f, -312f))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true, vec3<bool>(false, true, false), vec2<f32>(1762f, 111f))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, vec3<bool>(true, true, false), vec2<f32>(1231f, -1160f))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), true, vec3<bool>(false, false, true), vec2<f32>(617f, -1698f))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(196f)))) != -1332f, vec4<bool>(false, !all(vec2<bool>(true, false)), true, false), vec2<f32>(-1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(479f)) * _wgslsmith_f_op_f32(979f - -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)))), Struct_1(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, true, true)), vec3<bool>(any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(979f)), _wgslsmith_f_op_f32(-1000f + -2963f)))), u_input.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2054f, 525f) - vec2<f32>(204f, -391f)))))));
    var var_2 = Struct_3(Struct_1(var_0.d.a, any(vec3<bool>(var_0.a, true, var_0.d.b)), select(vec3<bool>(any(vec3<bool>(var_0.d.b, false, var_0.d.a.x)), var_0.a, var_0.a && true), var_0.d.c, var_0.d.c), var_0.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.d.x)) + _wgslsmith_f_op_f32(var_0.c.x * 1551f)), _wgslsmith_f_op_f32(select(281f, var_0.c.x, var_0.d.a.x))))), global3[_wgslsmith_index_u32(u_input.a, 18u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.c.x, var_0.d.d.x, var_1.x) * vec4<f32>(var_1.x, var_0.c.x, var_1.x, var_1.x))), vec4<f32>(-679f, _wgslsmith_f_op_f32(-var_1.x), -856f, 203f))))));
    var var_3 = var_2.c.a.b;
    var var_4 = vec3<u32>(1u, 0u, ~arg_0.x) & (arg_0 >> (vec3<u32>(10764u, 1u & _wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(51745u, arg_0.x)), arg_0.x) % vec3<u32>(32u)));
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_4 {
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    let var_0 = false | (_wgslsmith_f_op_f32(trunc(arg_1.a.d.x)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(trunc(arg_1.a.d.x))))));
    let var_1 = Struct_4(~u_input.c >= u_input.c, vec4<bool>(u_input.a == arg_2, false, arg_1.a.b, arg_1.a.a.x), arg_0.d, Struct_1(vec4<bool>(u_input.c <= min(-11624i, u_input.c), !(!arg_3), arg_0.a.x, any(arg_1.a.a.xww)), true, select(vec3<bool>(var_0, select(arg_1.a.c.x, true, false), -1319f <= arg_0.d.x), select(arg_1.a.a.zyw, !vec3<bool>(false, var_0, arg_1.a.b), !vec3<bool>(true, true, var_0)), false), _wgslsmith_f_op_vec2_f32(func_3(~(vec3<u32>(arg_2, arg_2, arg_2) | vec3<u32>(arg_2, 72258u, u_input.b))))), abs(u_input.c));
    let var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -1000f, 640f, arg_1.a.d.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.d.x, -205f, -203f, var_1.c.x), vec4<f32>(arg_0.d.x, -190f, -2358f, 775f), arg_0.a)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.d.x, -221f, -1273f, 1274f), vec4<f32>(408f, -561f, var_1.c.x, arg_0.d.x))))))), global3[_wgslsmith_index_u32(~(~(arg_2 ^ ~arg_2)), 18u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.d.x, var_1.c.x, arg_0.d.x, arg_0.d.x) - vec4<f32>(arg_1.a.d.x, -1000f, arg_0.d.x, 1397f)))))));
    return var_1;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = ~(-1i);
    var var_1 = 27436i;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(max(~vec4<i32>(0i, u_input.c, -11373i, arg_0.b), ~vec4<i32>(arg_3, 4802i, 22174i, arg_2.e)), -vec4<i32>(-2147483647i, -2147483647i, u_input.c, u_input.c) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c, 1i, -2147483647i), vec4<i32>(arg_2.e, arg_0.b, 2903i, -2147483647i)), false), vec4<i32>(_wgslsmith_sub_i32(~u_input.c, 1i), -u_input.c, _wgslsmith_mod_i32(arg_2.e, abs(26022i)), -2147483647i)), ~(-(-arg_2.e ^ ~0i)));
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, 1u), ~u_input.b), 1u, u_input.b, _wgslsmith_clamp_u32(1u, 0u, 1u));
    let var_4 = vec3<i32>(~(_wgslsmith_add_i32(~arg_3, firstLeadingBit(2147483647i)) >> (60511u % 32u)), u_input.c, _wgslsmith_mult_i32(-36527i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, arg_0.a), vec3<i32>(arg_0.a, arg_2.e, -23686i)), -vec3<i32>(-38354i, arg_0.a, arg_2.e))) & ~countOneBits(arg_0.b));
    return arg_2.c.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = !(!select(vec3<bool>(true, true, u_input.c <= 67487i), vec3<bool>(all(global1[_wgslsmith_index_u32(0u, 27u)]), true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(u_input.c, u_input.c, 124f, Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x, vec3<bool>(true, var_0.x, false), vec2<f32>(-709f, 1477f))), Struct_1(vec4<bool>(var_0.x, true, true, false), var_0.x, vec3<bool>(var_0.x, var_0.x, false), vec2<f32>(245f, 262f)), func_2(Struct_1(vec4<bool>(false, var_0.x, var_0.x, true), false, vec3<bool>(true, true, false), vec2<f32>(374f, -541f)), global3[_wgslsmith_index_u32(68297u, 18u)], u_input.a, true), ~1i))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(160f * 143f), _wgslsmith_f_op_f32(round(563f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(991f - -374f))))), 296f)));
    global2 = var_1.x;
    var var_2 = u_input.b;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(753f)))), _wgslsmith_f_op_f32(floor(func_2(func_2(Struct_1(vec4<bool>(var_0.x, false, false, false), var_0.x, vec3<bool>(var_0.x, var_0.x, true), vec2<f32>(var_1.x, var_1.x)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 18u)], 1u, all(vec3<bool>(var_0.x, false, true))).d, global3[_wgslsmith_index_u32(u_input.b, 18u)], u_input.b, var_0.x).d.d.x)), _wgslsmith_f_op_f32(var_1.x - -122f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f - var_1.x)))) + _wgslsmith_f_op_f32(-1465f - 453f)));
    return Struct_1(!(!(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), true))), true, vec3<bool>(all(func_2(func_2(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x, vec3<bool>(true, var_0.x, true), var_3.wy), global3[_wgslsmith_index_u32(0u, 18u)], u_input.b, var_0.x).d, Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x, vec3<bool>(false, var_0.x, var_0.x), var_3.yx)), 1u, false).d.a.wy), all(vec3<bool>(var_0.x, select(var_0.x, var_0.x, var_0.x), 1u != u_input.a)), !(arg_0 < 46248i)), var_3.yz);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(func_1(~(~7320i)).a, !any(select(arg_2.a.c.yz, arg_2.a.a.yy, vec2<bool>(arg_0.c.a.a.x, arg_2.a.a.x))), vec3<bool>(false, -167f != _wgslsmith_f_op_f32(arg_0.d.x * arg_2.a.d.x), false), arg_1.xx));
    let var_1 = abs(~4294967295u);
    var var_2 = var_1;
    var var_3 = Struct_5(-2147483647i, 0i, arg_1.x, Struct_1(!select(vec4<bool>(true, true, false, var_0.a.b), arg_0.a.a, var_1 > var_1), false, arg_2.a.c, arg_1.wz));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(max(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1, 4294967295u), vec3<u32>(u_input.a, 0u, 42843u)), reverseBits(vec3<u32>(var_1, var_1, var_1))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f + var_0.a.d.x)))));
    return Struct_4(var_0.a.b, !var_0.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_2.a.d)))))), _wgslsmith_f_op_vec2_f32(var_0.a.d + _wgslsmith_f_op_vec2_f32(abs(arg_1.yw))), !(select(false, false, false) != (arg_0.c.a.a.x | var_3.d.b)))), Struct_1(var_3.d.a, false, var_0.a.c, _wgslsmith_f_op_vec2_f32(-var_0.a.d)), _wgslsmith_div_i32(countOneBits(0i), ~((i32(-1i) * -1035i) << (var_1 % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(85763u, u_input.a, u_input.b, u_input.b));
    global2 = 275f;
    global1 = array<vec2<bool>, 27>();
    let var_1 = func_5(Struct_3(func_1(-1i | min(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -590f, 1953f, -725f), vec4<f32>(-839f, -710f, 660f, -799f), vec4<bool>(false, true, false, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, -2607f, -595f, 580f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, 2004f, -145f, 1910f))))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), min(var_0.x, u_input.a)) & ~_wgslsmith_dot_vec3_u32(var_0.wwy, var_0.wwz), 18u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2895f, 654f, 1213f, 491f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-733f, -721f, 2075f, -1288f) + vec4<f32>(950f, 555f, 846f, 1617f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-459f, -750f, -328f, -524f)))) + vec4<f32>(-1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(165f))), -174f, _wgslsmith_div_f32(-1076f, _wgslsmith_f_op_f32(sign(-1000f))))), Struct_2(Struct_1(vec4<bool>(func_1(u_input.c).a.x, true, false, true), true, func_2(Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(false, true, true), vec2<f32>(1200f, 468f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), true, vec3<bool>(true, false, false), vec2<f32>(-1672f, -224f))), var_0.x, true).d.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-871f, 1000f))))));
    global0 = _wgslsmith_f_op_f32(-func_2(Struct_1(vec4<bool>(all(var_1.d.a.zzy), var_1.b.x, u_input.c == var_1.e, true), var_1.c.x <= -196f, func_5(Struct_3(var_1.d, vec4<f32>(var_1.d.d.x, 1141f, -202f, 453f), global3[_wgslsmith_index_u32(95160u, 18u)], vec4<f32>(var_1.c.x, var_1.d.d.x, var_1.c.x, 278f)), vec4<f32>(var_1.d.d.x, -1869f, 118f, var_1.d.d.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 2407u), 18u)]).d.a.zyy, vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.d.x), _wgslsmith_div_f32(var_1.d.d.x, -741f))), global3[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 18u)], 4294967295u, any(vec2<bool>(all(var_1.b.zyy), var_1.b.x))).d.d.x);
    global1 = array<vec2<bool>, 27>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(var_1.d, global3[_wgslsmith_index_u32(1u, 18u)], 1u, func_1(u_input.c).b).d.d.x + _wgslsmith_div_f32(-263f, var_1.d.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-529f, 632f), var_1.c), vec2<f32>(var_1.c.x, -330f)))), var_1.d.d.x);
}

