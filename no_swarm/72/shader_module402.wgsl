struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(reverseBits(max(_wgslsmith_add_u32(max(u_input.a, 0u), 0u), 39605u)), reverseBits(_wgslsmith_mod_u32(firstTrailingBit(u_input.a), u_input.a)) << (~u_input.a % 32u), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-698f, arg_0, arg_0) - vec3<f32>(-166f, -842f, -213f)) - vec3<f32>(arg_0, -778f, -1019f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -768f, arg_0)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1.x, var_1.x)) + vec3<f32>(var_1.x, -1571f, 1103f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f * arg_0)), arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 140f, arg_0), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(585f, arg_0, 990f)))) + vec3<f32>(_wgslsmith_f_op_f32(830f - var_1.x), -773f, _wgslsmith_div_f32(1130f, 987f))))));
    var var_2 = Struct_3(Struct_1(vec2<bool>(false, true), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(15404u, 71073u, var_0) % vec3<u32>(32u)), max(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 84171u)), true), min(vec3<u32>(0u, u_input.a, 26718u), min(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(var_0, 14350u, var_0)))), vec3<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false)), true)), vec3<u32>(~(~u_input.a), _wgslsmith_div_u32(0u, 4294967295u), ~u_input.a), _wgslsmith_mult_i32(-14753i, ~(~_wgslsmith_mod_i32(1i, 2809i))));
    let var_3 = Struct_3(Struct_1(select(vec2<bool>(all(vec3<bool>(true, var_2.a.a.x, var_2.a.a.x)), var_0 >= 4294967295u), var_2.a.a, select(vec2<bool>(false, true), var_2.a.a, all(vec4<bool>(false, true, var_2.a.c.x, var_2.a.a.x)))), ~_wgslsmith_clamp_vec3_u32(var_2.b, ~var_2.b, ~var_2.b), vec3<bool>(all(select(vec4<bool>(var_2.a.c.x, false, var_2.a.c.x, false), vec4<bool>(var_2.a.a.x, true, var_2.a.a.x, false), var_2.a.a.x)), var_2.a.c.x || false, all(select(var_2.a.a, vec2<bool>(var_2.a.a.x, var_2.a.c.x), vec2<bool>(var_2.a.c.x, var_2.a.c.x))))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b, select(vec3<u32>(u_input.a, var_2.b.x, var_0), vec3<u32>(49820u, u_input.a, u_input.a), var_2.a.a.x)), vec3<u32>(u_input.a, var_2.b.x, 38081u) << (~vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))), var_2.a.b), u_input.c >> (~(~var_0) % 32u));
    return abs(_wgslsmith_add_u32(~72324u, var_2.b.x));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = vec4<bool>(true, true, _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))), u_input.c >= u_input.b);
    var var_1 = vec3<i32>(~(~0i), max(1i, arg_1), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_1) << (_wgslsmith_mult_vec2_u32(vec2<u32>(84444u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 27896i), vec2<i32>(u_input.c, -29902i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 45054i), vec2<i32>(u_input.c, u_input.b), vec2<i32>(57258i, arg_1))), abs(countOneBits(3367i)), any(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0, u_input.a > 1u))));
    let var_2 = Struct_3(Struct_1(var_0.wy, ~(vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))) | ~(vec3<u32>(u_input.a, 4294967295u, 0u) ^ vec3<u32>(1u, u_input.a, u_input.a)), var_0.xxz), ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, ~u_input.a), func_3(-214f), ~(29202u | u_input.a)), firstLeadingBit(abs(-_wgslsmith_mod_i32(arg_1, var_1.x))));
    var_1 = select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, _wgslsmith_sub_i32(arg_1, -45329i)), vec3<i32>(1i, abs(-47370i), -var_1.x)), vec3<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(24795i, var_2.c)), -var_2.c, true), _wgslsmith_mult_i32(1i & var_1.x, 1i), _wgslsmith_sub_i32(var_1.x >> (0u % 32u), firstLeadingBit(arg_1))), var_0.x) | firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-1i, abs(var_1.x)), -var_2.c, -1i));
    var_1 = countOneBits(countOneBits(countOneBits(abs(vec3<i32>(arg_1, u_input.b, arg_1)))));
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1113f - 408f) * 1047f)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.c, u_input.b), vec3<i32>(u_input.c, arg_1.c, u_input.b)) >> (~arg_3.c % 32u), arg_1.c)).b.yy ^ min(countOneBits(arg_3.a.b.zy | func_2(1327f, -1i).a.b.yy), max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.b.yz, arg_1.b.zz), ~vec2<u32>(1u, 63067u)), vec2<u32>(~arg_3.a.b.x, _wgslsmith_mult_u32(7647u, arg_3.c))));
    var_0 = abs(~(~(~vec2<u32>(115737u, arg_3.c))));
    var var_1 = vec2<bool>(false, !(!all(arg_3.b)));
    let var_2 = -52350i;
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(abs(arg_2), u_input.a, max(arg_3.c, 0u)), arg_1.a.b.x), max(_wgslsmith_div_vec2_u32(~(~arg_1.b.zx), vec2<u32>(firstLeadingBit(16627u), _wgslsmith_div_u32(arg_2, 60970u))), vec2<u32>(~(var_0.x >> (0u % 32u)), 1u)));
    return ~0i;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = vec3<bool>(!all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-974f))))), arg_0 | reverseBits(u_input.c)).a.c.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(601f)));
    return -(-arg_0 >> (~(~abs(arg_1.x)) % 32u));
}

fn func_1() -> f32 {
    var var_0 = 2147483647i;
    var_0 = func_5(-2147483647i & func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 14262u, u_input.a)) == ~0u, func_2(-105f, _wgslsmith_mod_i32(0i, u_input.c)), countOneBits(116305u), Struct_2(func_2(-477f, 2147483647i).a, vec3<bool>(true, false, true), ~70377u, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)))), countOneBits(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 5145u, u_input.a, 1u), vec4<u32>(4294967295u, 37705u, u_input.a, 69071u)))));
    var var_1 = ~(28784u << ((75725u ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(20495u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 63823u, u_input.a))) % 32u));
    var var_2 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f + -179f)), u_input.b).a.a, abs(vec3<u32>(~u_input.a, 47854u, u_input.a)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a, select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true), any(vec4<bool>(false, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, u_input.b >= u_input.b, u_input.a > u_input.a, func_2(-995f, 577i).a.c.x), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), true))));
    let var_3 = abs(vec2<i32>(_wgslsmith_div_i32(1i, 1i), _wgslsmith_mod_i32(u_input.b, ~(~(-49556i)))));
    return _wgslsmith_div_f32(-1808f, -197f);
}

fn func_6(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec2<bool>((arg_0.x <= arg_1) != any(vec2<bool>(false, false)), true), _wgslsmith_div_vec3_u32(select(vec3<u32>(71065u, 83424u, 17143u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, false, true)), vec3<u32>(6901u, u_input.a, u_input.a)) ^ _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(46914u, 1u, 65459u), true), _wgslsmith_sub_vec3_u32(vec3<u32>(5835u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a))), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-376f - arg_0.x), -1149f)), 0i).a.c), ~_wgslsmith_sub_vec3_u32(vec3<u32>(7436u, 13882u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a) ^ abs(vec3<u32>(1u, u_input.a, 58660u))), _wgslsmith_sub_i32(u_input.b, -7157i) | -u_input.c);
    let var_1 = func_2(arg_0.x, 0i);
    var_0 = func_2(-1857f, -14293i);
    let var_2 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 1i, var_1.c), vec4<i32>(var_0.c, u_input.c, 52407i, var_0.c)), u_input.c | -3998i) | _wgslsmith_div_vec3_i32(~(~vec3<i32>(-11073i, var_0.c, 34805i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-28634i, u_input.c, u_input.c), vec3<i32>(var_1.c, -15540i, var_0.c))), vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(-1330i, u_input.b) ^ -30019i), var_0.c, -func_2(_wgslsmith_div_f32(arg_1, arg_0.x), -var_0.c).c));
    var_0 = Struct_3(func_2(arg_1, min(func_5(u_input.c, vec4<u32>(var_1.a.b.x, 14624u, var_1.a.b.x, u_input.a)) >> (_wgslsmith_clamp_u32(u_input.a, 0u, var_1.b.x) % 32u), -1i)).a, ~vec3<u32>(~var_0.b.x >> (min(13402u, 1u) % 32u), ~(~var_1.b.x), _wgslsmith_div_u32(countOneBits(37570u), ~111853u)), -11367i & var_2.x);
    return Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1524f) - _wgslsmith_f_op_f32(f32(-1f) * -1404f))), var_2.x).a, vec3<bool>(true == (_wgslsmith_f_op_f32(-arg_1) > 1538f), var_1.a.a.x, true), ~_wgslsmith_div_u32(var_0.a.b.x, 14677u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.a.b.x, 1u), vec3<u32>(0u, 4294967295u, var_0.b.x))), select(select(!(!vec4<bool>(var_0.a.c.x, false, true, var_1.a.a.x)), vec4<bool>(true, !var_1.a.a.x, any(vec4<bool>(var_0.a.c.x, var_1.a.c.x, false, false)), all(vec3<bool>(var_1.a.c.x, true, true))), !select(vec4<bool>(var_1.a.c.x, var_0.a.a.x, false, var_0.a.c.x), vec4<bool>(var_0.a.c.x, var_0.a.a.x, true, var_0.a.c.x), vec4<bool>(false, true, var_1.a.a.x, var_1.a.c.x))), !select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, var_0.a.a.x), select(vec4<bool>(var_1.a.a.x, false, true, false), vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, var_1.a.c.x), var_0.a.c.x), vec4<bool>(var_0.a.c.x, var_0.a.c.x, false, var_1.a.a.x)), vec4<bool>(22405u >= var_1.b.x, false | var_0.a.c.x, any(var_1.a.c.yx), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<f32>(-1532f, _wgslsmith_f_op_f32(sign(324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1831f))), _wgslsmith_f_op_f32(func_1()));
    let var_1 = Struct_1(var_0.d.zz, var_0.a.b, !(!func_6(_wgslsmith_div_vec4_f32(vec4<f32>(530f, 945f, -796f, -916f), vec4<f32>(-392f, -978f, 345f, 1008f)), _wgslsmith_f_op_f32(-881f + -456f)).a.c));
    var var_2 = func_4(~(~(-35472i)) < reverseBits(_wgslsmith_mult_i32(2147483647i, u_input.c)), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2035f))))), ~(-18354i)), min(~u_input.a, firstLeadingBit(var_1.b.x)), var_0);
    var_2 = func_4(all(func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(728f, 1279f, -814f, 1192f), vec4<f32>(1000f, 667f, -1693f, -967f)), vec4<f32>(-1219f, -1049f, 574f, 1000f), func_6(vec4<f32>(1000f, -1020f, 373f, -305f), 1862f).d)), _wgslsmith_f_op_f32(-124f + 157f)).d), Struct_3(var_0.a, select(vec3<u32>(_wgslsmith_sub_u32(21316u, 0u), var_1.b.x, ~2398u), ~_wgslsmith_add_vec3_u32(vec3<u32>(60394u, 22107u, u_input.a), vec3<u32>(3611u, 0u, var_0.c)), select(var_0.b, !var_1.c, all(var_0.d))), -firstLeadingBit(_wgslsmith_mod_i32(0i, u_input.c))), abs(~(~var_1.b.x & ~0u)), var_0);
    var var_3 = false;
    let var_4 = Struct_1(!var_0.a.a, ~(~reverseBits(vec3<u32>(1u, u_input.a, 4294967295u)) >> (vec3<u32>(var_0.c, 1u << (var_1.b.x % 32u), 4294967295u) % vec3<u32>(32u))), vec3<bool>(true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1032f, 312f, 975f, -117f) - vec4<f32>(894f, 108f, -121f, -147f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-735f, -609f, -1964f, -678f), vec4<f32>(-349f, 1754f, -511f, 2120f)) - vec4<f32>(1f, 1f, 1f, 1f))))));
}

