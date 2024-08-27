struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = Struct_1(76510u);
    global0 = false;
    let var_1 = _wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1408f)))))));
    let var_2 = abs(firstLeadingBit(select(firstLeadingBit(vec2<u32>(75842u, 56020u) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u))), ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), all(vec3<bool>(arg_0, false, arg_0)))));
    var var_3 = !arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1, var_1)))))) - -878f);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    global0 = all(vec2<bool>(true, _wgslsmith_div_i32(~(-29701i), select(11932i, 25747i, false)) < 2147483647i));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(any(vec2<bool>(true, true)), 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1043f))) + _wgslsmith_f_op_f32(-arg_1.x)))), arg_0, firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(62731u, 4294967295u, 38433u, 5963u), vec4<u32>(arg_0.a, 1u, 0u, 46533u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.a, u_input.a, arg_0.a), vec4<u32>(arg_0.a, u_input.a, u_input.a, u_input.a))) << (vec4<u32>(u_input.a & u_input.a, u_input.a, arg_0.a << (arg_0.a % 32u), u_input.a) % vec4<u32>(32u))));
    let var_2 = var_1.c.xy;
    global0 = true;
    return _wgslsmith_div_u32(6536u, ~12869u) ^ select(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(33129u, var_1.c.x), var_2)), ~(~1u), true);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = select(select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false), true), select(all(vec4<bool>(true, true, false, false)), true, any(vec4<bool>(true, true, false, true)))), select(vec3<bool>(select(false, true, true), arg_2.x == 0u, false), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true), any(vec3<bool>(false, false, false)) && true)), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), any(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, any(vec4<bool>(false, false, true, true))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_1.a > 225f, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true))), vec3<bool>(true & all(vec2<bool>(false, true)), false, select(any(vec2<bool>(true, false)), true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    var var_1 = -_wgslsmith_mod_vec4_i32(~reverseBits(select(vec4<i32>(8469i, 2147483647i, 7592i, 0i), vec4<i32>(-2147483647i, 44648i, 36320i, 6318i), vec4<bool>(true, var_0.x, false, false))), ~abs(~vec4<i32>(-8291i, -18319i, 0i, 0i)));
    var var_2 = Struct_1(arg_0);
    var var_3 = vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(floor(arg_1.a)), -516f);
    let var_4 = !(!var_0.yz);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = abs(_wgslsmith_dot_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(7188u, arg_0.c.x), vec2<u32>(arg_2.c.x, 0u))), select(vec2<u32>(4294967295u, arg_0.b.a), arg_0.c.xw, select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    var var_2 = firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_1, arg_1));
    let var_3 = select(!vec2<bool>((arg_0.b.a << (70749u % 32u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(40594u, arg_2.c.x, arg_2.b.a, 0u), arg_2.c), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, arg_1.x != var_2.x), true)), false);
    var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u >> (arg_2.c.x % 32u), ~arg_0.b.a), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.x, 98670u, 47976u), vec3<u32>(u_input.a, 55114u, 40504u)) | ~vec3<u32>(arg_0.c.x, 28561u, 1u)));
    return func_4(27427u, func_4(21770u, func_4(0u, func_4(arg_0.c.x, func_4(u_input.a, Struct_2(arg_0.a, Struct_1(1u), arg_2.c), vec2<u32>(arg_2.b.a, 0u)), arg_2.c.zx), _wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_0.b.a, arg_0.c.x), vec2<u32>(arg_2.c.x, 4390u), vec2<bool>(var_3.x, true)), arg_2.c.xy)), vec2<u32>(_wgslsmith_add_u32(~u_input.a, 0u ^ arg_0.c.x), u_input.a)), arg_2.c.ww);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-9482i, -41863i))), firstTrailingBit(min(18830i, 2147483647i))) | 2147483647i;
    global0 = true;
    let var_1 = vec2<bool>(all(vec4<bool>(true || all(vec3<bool>(true, true, false)), !any(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, true)), true && (arg_0.b.a <= 1u))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))) & true);
    var var_2 = var_1.x;
    var var_3 = ~vec3<i32>(abs(firstTrailingBit(2147483647i) << (select(4294967295u, 56406u, true) % 32u)), ~28576i, -1i);
    return func_4(~arg_0.b.a | u_input.a, Struct_2(_wgslsmith_f_op_f32(-arg_0.a), func_5(func_5(func_5(Struct_2(-100f, arg_0.b, arg_0.c), vec4<i32>(1i, var_3.x, -1049i, var_3.x), Struct_2(arg_0.a, Struct_1(9081u), arg_0.c)), -vec4<i32>(-1i, -20888i, 18357i, var_3.x), func_4(4294967295u, Struct_2(-1000f, Struct_1(u_input.a), arg_0.c), arg_0.c.yw)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, 0i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, var_3.x)), arg_0).b, func_4(~func_2(arg_0.b, vec3<f32>(arg_0.a, arg_0.a, 890f)), arg_0, abs(arg_0.c.wz)).c), arg_0.c.yw);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = -118f;
    var_0 = _wgslsmith_f_op_f32(abs(-2049f));
    var var_1 = func_6(func_5(func_4(func_2(Struct_1(53898u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-765f, 1078f, 578f))), Struct_2(_wgslsmith_f_op_f32(893f + 360f), Struct_1(25870u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, arg_0.a, 0u), vec4<u32>(9294u, 1u, 8995u, u_input.a))), select(vec2<u32>(arg_0.a, 6207u) & vec2<u32>(arg_0.a, 51321u), ~vec2<u32>(arg_0.a, arg_0.a), vec2<bool>(true, false))), vec4<i32>(1i, 1i, 1i, 1i), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1535f)) - -496f), arg_0, firstLeadingBit(~vec4<u32>(66180u, arg_0.a, 4294967295u, u_input.a)))));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, -1171f)))), _wgslsmith_f_op_f32(var_1.a - var_1.a), var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, 344f))));
    var var_3 = func_5(func_6(func_5(Struct_2(_wgslsmith_f_op_f32(floor(674f)), arg_0, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 13340u, var_1.c.x, 0u), var_1.c)), select(vec4<i32>(-1i, 11016i, 17959i, -17685i), vec4<i32>(1i, 2147483647i, -39068i, 4172i), all(vec3<bool>(true, false, false))), func_6(Struct_2(658f, Struct_1(14667u), var_1.c)))), vec4<i32>(~2147483647i, -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-2147483647i, 0i), vec2<i32>(-7567i, 2147483647i)), vec2<i32>(-1i, 14697i)), -1i), firstLeadingBit(-2147483647i)), Struct_2(451f, func_5(Struct_2(334f, arg_0, ~vec4<u32>(u_input.a, var_1.c.x, 95694u, 4294967295u)), vec4<i32>(-1i) * -vec4<i32>(1i, -4072i, 1i, -24481i), Struct_2(_wgslsmith_f_op_f32(step(var_2.x, 1000f)), arg_0, ~vec4<u32>(u_input.a, 1u, 7305u, u_input.a))).b, min(var_1.c, var_1.c))).b;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u) & vec3<u32>(u_input.a, 91202u, 79252u), vec3<u32>(u_input.a, 1u << (u_input.a % 32u), ~37167u)));
    let var_1 = select(vec4<u32>(max(_wgslsmith_dot_vec2_u32(var_0.yx & vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(var_0.xx, var_0.yy)), u_input.a), u_input.a, func_1(Struct_1(u_input.a)), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(var_0.x, 47492u, 0u), vec3<u32>(u_input.a, var_0.x, var_0.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, u_input.a)))), vec4<u32>(u_input.a, u_input.a, var_0.x, _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, var_0.x), 0u))), true);
    var var_2 = ~_wgslsmith_add_i32(-2147483647i, -1i);
    let var_3 = abs(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-144f, 1085f, true)) - _wgslsmith_f_op_f32(-897f * 905f)) - _wgslsmith_f_op_f32(floor(-441f)))), _wgslsmith_add_vec3_u32(vec3<u32>(27534u, func_2(Struct_1(19457u), vec3<f32>(952f, -301f, 1000f)), 1u) ^ ~_wgslsmith_sub_vec3_u32(var_1.yyy, var_1.wxw), vec3<u32>(var_3 | u_input.a, u_input.a, var_1.x) >> (~countOneBits(vec3<u32>(8271u, var_0.x, var_1.x)) % vec3<u32>(32u))));
}

