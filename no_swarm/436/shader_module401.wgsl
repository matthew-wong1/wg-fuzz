struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-932f, 1228f), vec4<i32>(1i, 2147483647i, 44804i, -29465i));

var<private> global1: array<vec4<i32>, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = Struct_3(-469f, 4294967295u, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-38783i, u_input.d) & select(vec2<i32>(6807i, arg_0), global0.b.xz, arg_1), vec2<i32>(-1i) * -global0.b.wx), -arg_0), arg_1);
    let var_1 = select(vec2<bool>(false | !var_0.d, select(true, arg_1, true)), !select(!(!vec2<bool>(var_0.d, arg_1)), !(!vec2<bool>(var_0.d, true)), vec2<bool>(!var_0.d, arg_1)), !(!(!(!vec2<bool>(false, var_0.d)))));
    let var_2 = abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, u_input.c, _wgslsmith_sub_u32(8428u, u_input.c), 20926u), u_input.b, ~u_input.b));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, var_0.a) - vec2<f32>(2141f, global0.a.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, var_0.a), vec2<f32>(744f, var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_0, max(arg_0, u_input.d), firstLeadingBit(65i), -16025i >> (var_2.x % 32u))), _wgslsmith_add_vec4_i32(abs(abs(global0.b)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(-51338i, var_0.c, global0.b.x, arg_0)))), global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(abs(u_input.b.wxx), ~u_input.b.xyz), var_0.b, !any(vec4<bool>(false, true, arg_1, var_0.d))), 9u)]));
    var var_3 = -_wgslsmith_add_vec4_i32(select(select(vec4<i32>(var_0.c, -24606i, var_0.c, arg_0), vec4<i32>(-12113i, u_input.d, -1727i, global0.b.x), var_0.d), global0.b, var_2.x == 1u), -(~vec4<i32>(-21039i, arg_0, u_input.d, 0i))) | vec4<i32>(-countOneBits(-12872i), _wgslsmith_mod_i32(_wgslsmith_div_i32(min(-13294i, 0i), -var_0.c), u_input.d), 1i, countOneBits(~_wgslsmith_dot_vec2_i32(global0.b.xw, global0.b.zz)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) + global0.a.x);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_2(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(func_3(-31332i, !all(vec4<bool>(false, false, true, false))))), ~vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-42056i, global0.b.x), global0.b.zy), 86055i, -33309i) >> (vec4<u32>(u_input.a >> (13505u % 32u), u_input.a, _wgslsmith_clamp_u32(abs(u_input.c), min(0u, 1u), u_input.a), select(u_input.b.x, u_input.c, any(vec2<bool>(true, false)))) % vec4<u32>(32u)));
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    let var_0 = ~29630u;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-9763i, false)), _wgslsmith_f_op_f32(step(global0.a.x, 1411f))), global0.a.x)), vec4<i32>(-1i, _wgslsmith_div_i32(reverseBits(59440i), _wgslsmith_sub_i32(29866i, min(-36090i, 0i))), global0.b.x, _wgslsmith_mod_i32(global0.b.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(5129i, 97637i, -2147483647i, -2147483647i), global0.b), vec4<i32>(global0.b.x, global0.b.x, -1i, u_input.d)))));
    return select(vec3<u32>(_wgslsmith_add_u32(1u, select(4294967295u, 1u, true)), ~select(14842u, 4726u, true), ~u_input.c), ~(~firstLeadingBit(vec3<u32>(u_input.c, u_input.b.x, u_input.c))), !vec3<bool>(false, u_input.a <= u_input.a, true)) >> (~(~(~(~u_input.b.yzx))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x))))))), firstTrailingBit(u_input.a), countOneBits(2147483647i), true);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_2.yx), vec4<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(205i, firstLeadingBit(u_input.d)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global0.b.wyy, _wgslsmith_mod_vec3_i32(global0.b.xzy, global0.b.ywy)), vec3<i32>(~arg_0.c, firstLeadingBit(49486i), _wgslsmith_clamp_i32(-1i, arg_0.c, global0.b.x))), select(-31587i, u_input.d >> (arg_0.b % 32u), !(arg_0.b <= arg_0.b))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-225f, arg_0.a), global0.a, vec2<bool>(true, arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, global0.a.x)) * vec2<f32>(-1344f, 745f)))), global1[_wgslsmith_index_u32(u_input.b.x, 9u)]);
    global1 = array<vec4<i32>, 9>();
    var var_0 = _wgslsmith_mod_i32(-2147483647i, arg_0.c);
    global1 = array<vec4<i32>, 9>();
    return Struct_2(global0.a, min(~global1[_wgslsmith_index_u32(7141u, 9u)], vec4<i32>(-1i, arg_0.c, arg_0.c, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.d, 0i)), global0.b.yy))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-809i, -2769i, _wgslsmith_sub_i32(global0.b.x, 50116i)), _wgslsmith_sub_vec3_i32(arg_1.wxz, arg_2.b.yxy));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(-abs(global0.b.yzz), -arg_1.ywy)), arg_2.b.xxz);
    let var_2 = global0.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.x, 172f))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-350f)))))), -2175f, -727f);
    global1 = array<vec4<i32>, 9>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, global0.a.x)))))), !any(select(select(vec2<bool>(false, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, true)), vec2<bool>(var_2, false), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), var_2))), arg_2.b.x, ~(~19753u));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = false;
    var var_1 = func_6(vec3<u32>(arg_0.b, 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, 4294967295u)), ~vec2<u32>(arg_0.b, u_input.b.x)), abs(_wgslsmith_add_u32(arg_2, 66736u)))), firstTrailingBit(-firstTrailingBit(firstLeadingBit(global0.b))), func_5(func_4(func_2() << (firstLeadingBit(vec3<u32>(23446u, arg_0.b, u_input.b.x)) % vec3<u32>(32u)), 2147483647i), !any(!vec3<bool>(true, false, arg_0.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(549f, 2224f, arg_0.a)))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(select(528f, -1039f, false)), _wgslsmith_f_op_f32(sign(946f))), true)), _wgslsmith_f_op_f32(ceil(global0.a.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(788f, var_1.a.x), global0.a)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(723f * -1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 1518f), var_1.a)), global0.b);
    let var_3 = Struct_1(vec2<f32>(518f, func_5(func_4(~u_input.b.yxw, _wgslsmith_add_i32(var_1.c, -53196i)), !(var_1.a.x <= 825f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1258f, -1332f, 1002f) + vec3<f32>(var_2.a.x, 1474f, var_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - var_2.a.x)).a.x), !(!var_1.b), var_1.c, reverseBits(11043u) & arg_0.b);
    var var_4 = 1u;
    return min(reverseBits(select(~(-2328i), ~2147483647i, false)), 21048i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), _wgslsmith_f_op_vec2_f32(-global0.a))))), !((false | (u_input.c >= 58445u)) & false), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~(-8141i), _wgslsmith_add_i32(0i, u_input.d), u_input.d << (u_input.c % 32u)), global0.b.x, func_1(Struct_3(global0.a.x, 0u, global0.b.x, true), global0.b.x, countOneBits(1u))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.b.wyx, vec3<i32>(u_input.d, -6575i, 10570i)) >> (~4294967295u % 32u), -1i)), 18429u);
    let var_1 = _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(var_0.d | min(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(var_0.d, 1u, var_0.d, 1u)), func_6(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 11712u)), global0.b >> (u_input.b % vec4<u32>(32u)), func_5(Struct_3(var_0.a.x, u_input.b.x, 1i, false), var_0.b, vec3<f32>(-115f, 161f, var_0.a.x), var_0.a.x)).d), 9u)], min(global0.b, vec4<i32>(u_input.d, u_input.d, i32(-1i) * -global0.b.x, ~_wgslsmith_add_i32(u_input.d, 0i))));
    let var_2 = max(vec3<u32>(~(~(~0u)), 4294967295u, (u_input.c ^ ~var_0.d) ^ _wgslsmith_mod_u32(4294967295u, u_input.a)), vec3<u32>(~u_input.c, countOneBits(~1u), ~4294967295u));
    var_0 = Struct_1(global0.a, any(vec2<bool>(var_0.b, !var_0.b)), -2147483647i, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wwz, ~(~func_5(func_4(u_input.b.zwy, var_0.c), true, vec3<f32>(2934f, global0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-1460f + 1334f)).b), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 46450u), vec3<u32>(1u, var_0.d, var_0.d)), firstLeadingBit(vec3<u32>(1u, 10513u, var_2.x))) ^ firstTrailingBit(select(var_2, vec3<u32>(var_2.x, var_0.d, var_2.x), var_0.b)), var_2 | select(~var_2, vec3<u32>(20961u, 0u, 4294967295u), var_0.b), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_2.x), var_2.zx), 0u, func_6(var_2, vec4<i32>(-12600i, global0.b.x, 17602i, 1i), Struct_2(vec2<f32>(global0.a.x, var_0.a.x), global0.b)).d))));
}

