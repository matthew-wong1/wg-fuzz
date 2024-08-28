struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = !vec3<bool>(any(vec2<bool>(arg_1.c, true)), false, arg_0.b.b.x);
    let var_1 = Struct_4(arg_0);
    global0 = array<vec2<f32>, 1>();
    var var_2 = -1017f;
    var var_3 = Struct_4(var_1.a);
    return vec2<bool>(false, var_0.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3.c;
    let var_1 = ~(arg_1.a.x >> (42109u % 32u));
    global0 = array<vec2<f32>, 1>();
    var var_2 = Struct_2(u_input.b ^ _wgslsmith_sub_vec4_u32(arg_1.a >> (~arg_1.a % vec4<u32>(32u)), ~arg_1.a | vec4<u32>(27745u, arg_1.a.x, 48025u, 35852u)), Struct_1(37013i, select(func_3(Struct_2(vec4<u32>(1u, arg_1.a.x, 0u, arg_2.a), arg_1.b), Struct_5(41108u, vec3<f32>(1654f, -1101f, arg_2.b.x), var_0)), vec2<bool>(true, true), !arg_1.b.b), all(select(vec3<bool>(false, true, true), select(vec3<bool>(arg_3.c, false, true), vec3<bool>(true, false, arg_1.b.b.x), arg_1.b.b.x), arg_2.c))));
    var var_3 = abs(u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-528f - arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(633f, -1401f), _wgslsmith_f_op_f32(arg_2.b.x * -868f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_3(~u_input.b.x, reverseBits(~abs(vec4<i32>(88302i, 15058i, 57387i, u_input.a.x))), abs(u_input.a.zyy) | ~firstLeadingBit(u_input.a.ywz), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-147f)) + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1886f, arg_0)), _wgslsmith_f_op_f32(select(-962f, arg_0, arg_2)))))));
    var var_1 = Struct_2(vec4<u32>(u_input.b.x, ~1u, 31528u, 79334u) | _wgslsmith_mod_vec4_u32(u_input.b, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 4294967295u, u_input.b.x, 67821u), u_input.b, vec4<u32>(var_0.a, 6343u, var_0.a, 4294967295u)))), arg_1);
    var_0 = Struct_3(25890u, abs(u_input.a), var_0.b.xxz, ~_wgslsmith_mult_i32(-arg_1.a & -41252i, -1i), _wgslsmith_div_f32(329f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.a.yzy, Struct_2(vec4<u32>(u_input.b.x, 1u, var_1.a.x, 4294967295u), var_1.b), Struct_5(u_input.b.x, vec3<f32>(var_0.e, 357f, arg_0), arg_2), Struct_1(-51963i, arg_1.b, var_1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = Struct_2(vec4<u32>(var_0.a, 27949u, ~920u, var_0.a), Struct_1(abs(firstTrailingBit(_wgslsmith_sub_i32(var_1.b.a, -9960i))), vec2<bool>(arg_2, false), var_1.b.c));
    let var_3 = arg_0;
    return Struct_4(var_2);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> vec3<f32> {
    global0 = array<vec2<f32>, 1>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(u_input.a.zyw, Struct_2(vec4<u32>(u_input.b.x, 2731u, 18309u, 4294967295u), Struct_1(u_input.a.x, arg_1.xz, arg_1.x)), Struct_5(26911u, vec3<f32>(-226f, -541f, -939f), arg_1.x), Struct_1(arg_0, arg_1.xx, arg_1.x))))) * _wgslsmith_f_op_f32(-285f - 597f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -1000f))), Struct_1(~arg_2, select(arg_1.xx, !vec2<bool>(arg_1.x, arg_1.x), true), true), true);
    var var_1 = ~vec4<i32>(((2147483647i | var_0.a.b.a) & _wgslsmith_div_i32(var_0.a.b.a, u_input.a.x)) & var_0.a.b.a, ~arg_2, _wgslsmith_div_i32((u_input.a.x >> (4294967295u % 32u)) >> ((var_0.a.a.x << (var_0.a.a.x % 32u)) % 32u), u_input.a.x), arg_2);
    var_0 = Struct_4(var_0.a);
    global0 = array<vec2<f32>, 1>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f * 659f) - -526f), _wgslsmith_f_op_f32(abs(1126f)), _wgslsmith_f_op_f32(f32(-1f) * -286f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = array<vec2<f32>, 1>();
    let var_0 = arg_2;
    global0 = array<vec2<f32>, 1>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 855f, 1000f)))))));
    let var_2 = all(vec2<bool>(!(!var_0.c), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), func_4(292f, func_4(1000f, Struct_1(2147483647i, vec2<bool>(arg_3, arg_2.b.x), true), true).a.b, u_input.a.x <= -49166i).a.b, arg_3).a.b.c));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.ywx, Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(6081u, arg_1.a, 0u, 50531u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), arg_2), Struct_5(~arg_1.a, vec3<f32>(-895f, 715f, arg_1.b.x), arg_2.a > arg_2.a), func_4(_wgslsmith_f_op_f32(-var_1.x), Struct_1(-17528i, arg_2.b, var_2), false).a.b))), Struct_1(-1i, !arg_2.b, arg_3 && var_2), !(!all(!vec4<bool>(false, arg_1.c, false, var_2)))).a.b;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> vec2<f32> {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1693f));
    let var_1 = 50797i ^ (max(-_wgslsmith_mod_i32(2147483647i, 64924i), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 159f, arg_1)), Struct_5(arg_0.a.x, vec3<f32>(var_0, -2660f, arg_1), arg_2.x), func_4(var_0, Struct_1(-1i, vec2<bool>(false, false), arg_2.x), true).a.b, !arg_2.x).a) | ~_wgslsmith_div_i32(max(0i, -2147483647i), firstTrailingBit(-6280i)));
    let var_2 = _wgslsmith_f_op_f32(846f * 1131f);
    let var_3 = Struct_3(arg_0.a.x >> (arg_0.a.x % 32u), ~vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, countOneBits(u_input.a.x)), -abs(var_1), i32(-1i) * -1i, var_1), _wgslsmith_sub_vec3_i32(~vec3<i32>(-25160i, _wgslsmith_add_i32(8510i, -1i), select(var_1, var_1, true)), firstTrailingBit(vec3<i32>(-2147483647i, -21394i, u_input.a.x) << (~vec3<u32>(arg_0.a.x, u_input.b.x, arg_0.a.x) % vec3<u32>(32u)))), var_1, 1265f);
    return vec2<f32>(-997f, -419f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_6(Struct_2(u_input.b ^ u_input.b, func_5(_wgslsmith_f_op_vec3_f32(func_1(u_input.a.x, select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), countOneBits(0i), 1925f)), Struct_5(u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1464f, -443f, -1996f)), true), func_4(_wgslsmith_f_op_f32(-468f + -147f), Struct_1(u_input.a.x, vec2<bool>(false, true), true), select(true, false, true)).a.b, true)), _wgslsmith_f_op_f32(floor(-885f)), select(vec2<bool>(select(true, u_input.a.x <= 22627i, true), func_3(Struct_2(u_input.b, Struct_1(u_input.a.x, vec2<bool>(true, false), false)), Struct_5(43025u, vec3<f32>(-2197f, -719f, 274f), false)).x), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))))));
    global0 = array<vec2<f32>, 1>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i ^ _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(11587i)), 35637i) & -firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, -1i << (u_input.b.x % 32u)));
    global0 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-18201i, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 1u)])))), select(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(~46498u, u_input.b.x), select(u_input.b.wy, ~u_input.b.xz, func_4(var_0.x, Struct_1(var_1, vec2<bool>(true, false), false), false).a.b.b)), vec2<bool>(false, false)));
}

