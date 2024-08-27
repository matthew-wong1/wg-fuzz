struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1021f, 1000f, -1090f));

var<private> global1: array<vec2<f32>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(u_input.e.wy, u_input.c) <= -u_input.c.x, vec2<bool>(select(true, true, false), any(vec2<bool>(false, false)) | (all(vec2<bool>(true, true)) != true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -621f);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-531f, -645f), global1[_wgslsmith_index_u32(arg_2.x, 8u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-844f, 562f)))) * 1624f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-258f, -921f))))));
    global0 = array<vec3<f32>, 1>();
    var var_1 = var_0;
    global1 = array<vec2<f32>, 8>();
    let var_2 = select(vec3<bool>(arg_1.a, all(vec4<bool>(all(vec2<bool>(arg_0, true)), arg_1.b.x, arg_1.a, true)), !(-u_input.a == _wgslsmith_dot_vec2_i32(u_input.e.xy, u_input.e.yx))), vec3<bool>(!arg_0, any(!(!vec3<bool>(arg_0, arg_0, false))), ~(-u_input.e.x) <= abs(~(-38569i))), select(vec3<bool>(true & select(arg_0, false, arg_0), false, false), vec3<bool>(!(!arg_0), arg_0, var_0 < var_0), !(!(!vec3<bool>(true, arg_1.b.x, arg_0)))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1260f)), -1000f)))), arg_1.b);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(arg_0.a, arg_0.b);
    let var_1 = global1[_wgslsmith_index_u32(21967u >> (_wgslsmith_clamp_u32(1u, 1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))) % 32u), 8u)];
    let var_2 = Struct_1(13147u, u_input.e.x, select(vec3<bool>(any(vec3<bool>(arg_0.b.x, var_0.b.x, arg_0.a)) | arg_0.b.x, all(!vec4<bool>(var_0.b.x, arg_0.b.x, var_0.a, arg_0.a)), true != all(vec3<bool>(true, var_0.b.x, arg_0.a))), select(select(select(vec3<bool>(arg_0.b.x, true, var_0.b.x), vec3<bool>(false, true, var_0.a), vec3<bool>(arg_0.a, false, var_0.b.x)), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), select(false, true, arg_0.a)), select(select(vec3<bool>(arg_0.b.x, true, false), vec3<bool>(arg_0.a, arg_0.b.x, arg_0.a), vec3<bool>(arg_0.a, false, false)), vec3<bool>(var_0.a, true, var_0.b.x), vec3<bool>(arg_0.a, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a, false, var_0.b.x), vec3<bool>(arg_0.b.x, arg_0.a, true), false), vec3<bool>(true, arg_0.b.x, true))), !select(!vec3<bool>(true, arg_0.b.x, arg_0.a), !vec3<bool>(false, var_0.a, var_0.a), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 796f, var_1.x, 787f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1346f, var_1.x, var_1.x) - vec4<f32>(var_1.x, -1000f, -153f, var_1.x)))))), u_input.e.wxz);
    var var_3 = Struct_3(var_0.a, Struct_1(var_2.a, _wgslsmith_clamp_i32(u_input.c.x, reverseBits(0i), _wgslsmith_sub_i32(i32(-1i) * -5551i, ~0i)), var_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(var_2.d.x, -1000f), 382f, _wgslsmith_f_op_f32(min(var_2.d.x, var_2.d.x)))), var_2.e));
    var var_4 = Struct_2(select(select(select(select(vec4<bool>(true, true, arg_0.a, true), vec4<bool>(arg_0.b.x, arg_0.b.x, var_2.c.x, var_0.b.x), vec4<bool>(false, false, false, true)), !vec4<bool>(false, var_2.c.x, true, var_3.b.c.x), true), select(select(vec4<bool>(true, var_2.c.x, true, var_3.b.c.x), vec4<bool>(var_0.b.x, var_0.b.x, true, false), false), select(vec4<bool>(arg_0.a, true, var_3.a, var_3.b.c.x), vec4<bool>(arg_0.b.x, true, var_2.c.x, false), vec4<bool>(var_2.c.x, true, true, var_3.b.c.x)), 4637u == var_2.a), true), vec4<bool>(true, (false & var_2.c.x) || true, true, select(false, var_0.a, false) | arg_0.a), true));
    return Struct_2(vec4<bool>(all(var_2.c), func_2(true, Struct_4(!var_3.a, !vec2<bool>(true, var_4.a.x)), vec2<u32>(var_2.a, ~0u)).b.x, all(!vec2<bool>(var_2.c.x, false)), false));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.b.d;
    var var_1 = min(arg_2.b.a, countOneBits(select(arg_2.b.a, firstLeadingBit(~0u), arg_1.a.x)));
    let var_2 = ~(_wgslsmith_add_u32(arg_2.b.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(16981u, 54425u, 78534u), select(vec3<u32>(1u, arg_2.b.a, 31718u), vec3<u32>(33085u, 1u, arg_2.b.a), arg_1.a.zxz))) | 7499u);
    var var_3 = firstLeadingBit(u_input.e.xyy) >> (vec3<u32>(var_2 | _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, arg_3.a), ~0u), ~reverseBits(~var_2), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_3.a, 0u), var_2) << (var_2 % 32u)) % vec3<u32>(32u));
    global0 = array<vec3<f32>, 1>();
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> Struct_4 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = Struct_2(func_4(Struct_4(true, arg_0.b.c.xx)).a);
    var var_1 = !(!func_4(func_2(var_0.a.x, Struct_4(var_0.a.x, vec2<bool>(true, false)), arg_3.wx)).a.x && var_0.a.x);
    var var_2 = Struct_4(true, vec2<bool>(false, true || (arg_0.a | true)));
    global0 = array<vec3<f32>, 1>();
    return func_2(var_2.b.x, func_2(var_0.a.x & true, Struct_4(var_0.a.x | true, var_0.a.wy), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29582u, 52745u), vec2<u32>(60895u, 1u)), ~14187u)), _wgslsmith_add_vec2_u32(~arg_3.yx, _wgslsmith_mult_vec2_u32((arg_3.yx >> (vec2<u32>(arg_2, 37587u) % vec2<u32>(32u))) & (vec2<u32>(0u, arg_3.x) & arg_3.zy), firstTrailingBit(min(arg_3.zw, arg_3.zy)))));
}

fn func_1() -> u32 {
    global0 = array<vec3<f32>, 1>();
    var var_0 = func_6(Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), func_5(true, func_4(func_2(false, Struct_4(false, vec2<bool>(false, true)), vec2<u32>(4294967295u, 109141u))), Struct_3(true, Struct_1(4294967295u, u_input.d, vec3<bool>(false, true, false), vec4<f32>(1727f, -242f, 922f, 1567f), u_input.e.yzx)), Struct_1(~0u, u_input.a, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, 516f, 884f, 753f) * vec4<f32>(2546f, 855f, -519f, 763f)), reverseBits(u_input.e.yzw)))), u_input.e.x, max(reverseBits(~(~45739u)), ~(~abs(66251u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(18270u, 4294967295u, 4294967295u, 14376u), vec4<u32>(1u, 44834u, 4294967295u, 8178u))), select(36568u, 1u, true) >> (firstLeadingBit(4294967295u) % 32u), ~14306u, 1u), vec4<u32>(~1u, ~46792u, _wgslsmith_mod_u32(10904u, ~0u), ~(~29145u))));
    global0 = array<vec3<f32>, 1>();
    var var_1 = false;
    let var_2 = countOneBits(u_input.e.xw);
    return ~(~_wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(59453u, 1u, 32376u, 21427u), vec4<u32>(50794u, 4294967295u, 127459u, 34844u))), select(~vec4<u32>(132424u, 125337u, 26729u, 43659u), vec4<u32>(11820u, 19221u, 1u, 25748u), var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-reverseBits(u_input.c.x), -1i) >> (_wgslsmith_mult_u32(~func_1(), ~_wgslsmith_clamp_u32(func_5(true, Struct_2(vec4<bool>(true, true, false, true)), Struct_3(true, Struct_1(28087u, 14944i, vec3<bool>(true, false, false), vec4<f32>(198f, -1089f, 1019f, 1431f), vec3<i32>(2147483647i, u_input.c.x, u_input.b))), Struct_1(0u, -2147483647i, vec3<bool>(true, true, true), vec4<f32>(179f, -1000f, 146f, -897f), vec3<i32>(33832i, u_input.a, 0i))).a, select(1u, 53788u, false), func_5(true, Struct_2(vec4<bool>(false, false, false, false)), Struct_3(false, Struct_1(1u, 80063i, vec3<bool>(false, false, true), vec4<f32>(473f, 1218f, -2241f, -783f), u_input.e.xwy)), Struct_1(20193u, 2147483647i, vec3<bool>(false, true, true), vec4<f32>(1181f, 671f, -1209f, 753f), u_input.e.xzw)).a)) % 32u);
    var var_1 = Struct_4(true || !select(true, func_5(true, Struct_2(vec4<bool>(false, false, true, true)), Struct_3(true, Struct_1(1u, -32378i, vec3<bool>(true, false, false), vec4<f32>(-1108f, 1000f, -203f, -314f), u_input.e.zwx)), Struct_1(0u, u_input.d, vec3<bool>(true, true, false), vec4<f32>(382f, 1586f, 236f, -1000f), vec3<i32>(0i, 71999i, u_input.c.x))).c.x, true), select(func_6(Struct_3(true, Struct_1(53030u, -1i, vec3<bool>(false, false, false), vec4<f32>(778f, -943f, 420f, 224f), vec3<i32>(u_input.d, u_input.d, u_input.e.x))), 35182i, 44329u, ~(~vec4<u32>(65012u, 3321u, 46382u, 38446u))).b, !vec2<bool>(true, func_6(Struct_3(true, Struct_1(59627u, u_input.b, vec3<bool>(false, true, true), vec4<f32>(424f, 1216f, 487f, -854f), vec3<i32>(2147483647i, u_input.e.x, u_input.d))), 16085i, 0u, vec4<u32>(16100u, 0u, 0u, 4294967295u)).b.x), any(vec2<bool>(true, true))));
    let var_2 = Struct_3(var_1.a, func_5(var_1.a, Struct_2(select(!vec4<bool>(var_1.b.x, var_1.a, false, var_1.a), select(vec4<bool>(true, false, var_1.a, false), vec4<bool>(true, var_1.b.x, var_1.b.x, true), var_1.a), -2147483647i > u_input.e.x)), Struct_3(func_4(func_6(Struct_3(var_1.a, Struct_1(0u, u_input.b, vec3<bool>(false, var_1.b.x, false), vec4<f32>(-566f, 409f, -461f, 127f), vec3<i32>(u_input.e.x, u_input.a, u_input.b))), u_input.e.x, 5847u, vec4<u32>(9626u, 0u, 0u, 40584u))).a.x, func_5(false, Struct_2(vec4<bool>(false, var_1.a, false, true)), Struct_3(true, Struct_1(20258u, u_input.c.x, vec3<bool>(var_1.b.x, var_1.b.x, var_1.a), vec4<f32>(111f, 1061f, -404f, 552f), u_input.e.yxw)), Struct_1(30917u, u_input.a, vec3<bool>(true, true, true), vec4<f32>(-904f, 1186f, 349f, -394f), u_input.e.wxx))), Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(61510u, 17520u, 0u)), vec3<u32>(1u, 4084u, 113903u)), _wgslsmith_div_i32(-15306i, -2741i), vec3<bool>(var_1.a, !var_1.b.x, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -894f, -552f, -1378f))), vec4<f32>(1075f, -1100f, -473f, 160f)), vec3<i32>(u_input.c.x, u_input.a, 2147483647i) ^ select(u_input.e.xyw, u_input.e.zyx, false))));
    var var_3 = Struct_2(!(!vec4<bool>(true, true, true & var_2.b.c.x, false)));
    var var_4 = Struct_2(!var_3.a);
    var var_5 = select(!(!vec4<bool>(true, false, var_1.b.x, select(var_4.a.x, false, var_3.a.x))), !var_4.a, any(!vec2<bool>(true, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_div_u32(4294967295u, var_2.b.a)));
}

