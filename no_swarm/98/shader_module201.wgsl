struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(global0.a);
    var var_1 = Struct_2(Struct_1((-1i ^ (u_input.c << (u_input.b % 32u))) >= max(max(7840i, 36556i), u_input.c), _wgslsmith_f_op_f32(ceil(var_0.a.b))));
    let var_2 = var_0;
    let var_3 = (select(!var_2.a.a | !var_2.a.a, all(select(vec3<bool>(true, false, true), vec3<bool>(false, global0.a.a, var_0.a.a), vec3<bool>(false, var_0.a.a, false))), !any(vec3<bool>(false, global0.a.a, true))) || !(!var_0.a.a)) & (_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(min(u_input.b, u_input.a), u_input.a >> (u_input.a % 32u))) >= 0u);
    let var_4 = var_2.a.a;
    return var_2.a.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = max(~(_wgslsmith_mult_u32(select(arg_1.x, 0u, arg_2.a), _wgslsmith_mod_u32(u_input.b, arg_1.x)) << (_wgslsmith_div_u32(15728u, 86189u) % 32u)), ~countOneBits(_wgslsmith_dot_vec3_u32(arg_1, abs(vec3<u32>(u_input.a, arg_1.x, u_input.a)))));
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, 1055f)))) + arg_0.b), false));
    global0 = Struct_2(arg_0);
    return ~(-1855i);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    global0 = arg_2;
    global0 = arg_2;
    global0 = Struct_2(arg_2.a);
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1025f, -876f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.b, arg_2.a.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global0.a.b) + vec2<f32>(899f, global0.a.b))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.b + arg_2.a.b), arg_2.a.b)))));
    return min(max(vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(64u, u_input.a)), reverseBits(vec2<u32>(6980u, u_input.b))), ~(~93432u), ~11977u), max(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.b, 7392u) ^ vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<u32>(43240u ^ u_input.b, u_input.a, ~u_input.b))), ~(~vec3<u32>(reverseBits(1u), ~0u, 0u >> (u_input.b % 32u))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    global0 = Struct_2(global0.a);
    var var_0 = global0.a;
    let var_1 = -1i;
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 21317u, 0u, arg_1.x) & vec4<u32>(u_input.b, arg_1.x, 45988u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_1.x, 0u, u_input.a), vec4<u32>(u_input.b, 47974u, 1u, arg_1.x))), vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), ~arg_1.x, u_input.a, 4294967295u)) << (vec4<u32>(~1u, _wgslsmith_mult_u32(~u_input.a, arg_1.x), 1u, 1u) % vec4<u32>(32u));
    return Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f * _wgslsmith_div_f32(global0.a.b, -673f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), var_0.b))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = func_5(vec4<bool>(arg_0, global0.a.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1202f))), true, false), max(func_4(global0.a.b, func_2(Struct_1(arg_0, -1101f), vec3<u32>(31904u, u_input.b, arg_3.x), global0.a, select(vec4<bool>(true, global0.a.a, false, true), vec4<bool>(true, arg_0, arg_0, false), arg_0)), Struct_2(Struct_1(arg_0, arg_1.x))), ~(abs(vec3<u32>(u_input.a, 0u, arg_3.x)) ^ vec3<u32>(4294967295u, u_input.b, u_input.b))), -u_input.c);
    global0 = Struct_2(func_5(vec4<bool>(true, true, u_input.c == -arg_2.x, arg_0), reverseBits(vec3<u32>(arg_3.x << (4294967295u % 32u), ~arg_3.x, ~arg_3.x)), 1i).a);
    global0 = func_5(vec4<bool>(true, any(!select(vec3<bool>(true, arg_0, global0.a.a), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), !arg_0, global0.a.a), _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x, 1u, 0u), vec3<u32>(~min(13419u, 0u), 26639u, ~arg_3.x)), reverseBits(0i));
    global0 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1526f, 847f), arg_1.x))));
    global0 = func_5(vec4<bool>(arg_0, !func_5(select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, global0.a.a, global0.a.a, true), vec4<bool>(false, arg_0, true, true)), ~vec3<u32>(arg_3.x, arg_3.x, 1u), _wgslsmith_clamp_i32(42156i, -21894i, -22542i)).a.a, arg_0, global0.a.a), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.x, u_input.b, 1u) & vec3<u32>(29007u, arg_3.x, 19022u), select(vec3<u32>(35888u, 26057u, u_input.b), vec3<u32>(1u, 44303u, arg_3.x), arg_0), vec3<u32>(u_input.a, arg_3.x, 50084u)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_3.x, u_input.b, u_input.b)), firstLeadingBit(~vec3<u32>(4294967295u, 25643u, u_input.b)))), u_input.c);
    return Struct_1(arg_0, _wgslsmith_f_op_f32(max(global0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(162f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(vec4<bool>(false, false, global0.a.a, arg_2.a.a), vec3<u32>(u_input.b, 4294967295u, 30718u), u_input.c).a.b)), 1556f), firstTrailingBit(~max(vec2<i32>(15644i, u_input.c), vec2<i32>(0i, 38606i))) << (_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.a, u_input.b) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))), vec2<u32>(u_input.a | u_input.b, 0u)) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(31132u, 4294967295u), _wgslsmith_add_u32(15324u, u_input.a), u_input.a, 4294967295u), ~(~vec4<u32>(u_input.b, 26564u, u_input.b, u_input.a)))));
    var var_1 = func_5(select(!vec4<bool>(var_0.a, true, 2147483647i > u_input.c, false), select(select(vec4<bool>(true, true, global0.a.a, true), select(vec4<bool>(true, false, var_0.a, arg_2.a.a), vec4<bool>(false, arg_2.a.a, true, true), true), !vec4<bool>(false, global0.a.a, arg_2.a.a, false)), vec4<bool>(global0.a.a, true, arg_0.b < arg_0.b, true), func_1(any(vec4<bool>(true, arg_0.a, global0.a.a, global0.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(974f, -316f) * vec2<f32>(arg_1, arg_2.a.b)), -vec2<i32>(-2147483647i, 0i), vec2<u32>(u_input.b, u_input.a)).a), !arg_0.a), ~func_4(var_0.b, i32(-1i) * -u_input.c, func_5(vec4<bool>(arg_2.a.a, false, true, global0.a.a), vec3<u32>(35372u, u_input.b, 1u), firstLeadingBit(u_input.c))), _wgslsmith_sub_i32(u_input.c & _wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c));
    var_1 = Struct_2(func_5(!vec4<bool>(arg_0.a, func_5(vec4<bool>(var_1.a.a, false, var_1.a.a, arg_2.a.a), vec3<u32>(4294967295u, 4294967295u, 26342u), 0i).a.a, u_input.c == u_input.c, any(vec2<bool>(arg_2.a.a, false))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(49193u, 0u, u_input.a), select(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, 4294967295u, 16050u), true), ~vec3<u32>(11890u, 1u, 20002u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 1u)), vec3<u32>(u_input.a, u_input.a, u_input.b))), u_input.c & 0i).a);
    var_0 = arg_2.a;
    var_0 = Struct_1(!func_1(firstLeadingBit(u_input.c) <= u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, -481f) + vec2<f32>(1118f, var_0.b))), abs(abs(vec2<i32>(u_input.c, u_input.c))), ~(~vec2<u32>(0u, u_input.a))).a, var_0.b);
    return func_5(!vec4<bool>(var_0.a, true, all(select(vec2<bool>(var_0.a, var_1.a.a), vec2<bool>(true, arg_0.a), vec2<bool>(global0.a.a, true))), all(!vec4<bool>(var_0.a, false, arg_2.a.a, var_1.a.a))), vec3<u32>(firstTrailingBit(u_input.b | u_input.b), _wgslsmith_sub_u32(countOneBits(u_input.a), ~(1u >> (0u % 32u))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(48784u, u_input.b)), select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, u_input.a), vec2<bool>(arg_0.a, var_1.a.a)))), 53932i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(all(!vec2<bool>(true, global0.a.a)), vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(-global0.a.b)), vec2<i32>(u_input.c, ~reverseBits(1i)), vec2<u32>(0u, ~u_input.a) ^ (~vec2<u32>(1u, u_input.b) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(43353u, u_input.b)))), global0.a.b, Struct_2(Struct_1(any(vec4<bool>(global0.a.a, global0.a.a, global0.a.a, global0.a.a)), _wgslsmith_f_op_f32(sign(global0.a.b)))));
    var_0 = func_6(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))))), func_6(func_5(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, var_0.a.a), vec4<bool>(false, false, global0.a.a, var_0.a.a)), !vec4<bool>(false, var_0.a.a, false, var_0.a.a), var_0.a.a), vec3<u32>(countOneBits(50421u), u_input.b, _wgslsmith_mult_u32(u_input.a, 12448u)), u_input.c).a, _wgslsmith_f_op_f32(func_6(Struct_1(global0.a.a, -1621f), _wgslsmith_div_f32(var_0.a.b, global0.a.b), Struct_2(Struct_1(false, var_0.a.b))).a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + var_0.a.b))), func_6(func_5(!vec4<bool>(false, var_0.a.a, true, false), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b)), ~(-64042i)).a, _wgslsmith_f_op_f32(round(-507f)), func_5(select(vec4<bool>(true, false, global0.a.a, true), vec4<bool>(true, global0.a.a, global0.a.a, var_0.a.a), vec4<bool>(global0.a.a, false, global0.a.a, var_0.a.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, 1u), vec3<u32>(0u, 47104u, u_input.b)), -1i))));
    global0 = func_5(select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.a, true, true, global0.a.a), vec4<bool>(global0.a.a, true, true, true)), vec4<bool>(true, global0.a.a, true, true), !vec4<bool>(false, global0.a.a, global0.a.a, false)), vec4<bool>(!(true | var_0.a.a), !var_0.a.a | true, global0.a.a, false), vec4<bool>(true || (global0.a.a | var_0.a.a), global0.a.a, var_0.a.a, !global0.a.a)), select(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a), vec3<u32>(u_input.a, 18805u, 17982u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.b, 0u, 63556u), vec3<u32>(1u, u_input.a, u_input.b))), _wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(0u, 50942u, u_input.a)), vec3<u32>(u_input.a, 61432u, u_input.b)), !select(select(vec3<bool>(true, true, global0.a.a), vec3<bool>(global0.a.a, var_0.a.a, var_0.a.a), true), select(vec3<bool>(global0.a.a, false, false), vec3<bool>(global0.a.a, false, true), vec3<bool>(false, var_0.a.a, var_0.a.a)), select(vec3<bool>(true, false, var_0.a.a), vec3<bool>(true, true, false), global0.a.a))), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-858f, global0.a.b)));
    var var_2 = func_5(vec4<bool>(true, func_5(!select(vec4<bool>(var_0.a.a, global0.a.a, var_0.a.a, global0.a.a), vec4<bool>(global0.a.a, true, global0.a.a, var_0.a.a), true), vec3<u32>(u_input.a >> (0u % 32u), firstTrailingBit(u_input.b), _wgslsmith_mult_u32(u_input.b, 11640u)), u_input.c << (~u_input.b % 32u)).a.a, false, global0.a.a), reverseBits(min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(11595u, u_input.b, 16854u), vec3<u32>(3463u, 1u, 0u), vec3<u32>(4294967295u, u_input.a, 7711u)), func_4(540f, _wgslsmith_add_i32(u_input.c, u_input.c), Struct_2(global0.a)))), ~u_input.c);
    var_2 = func_5(vec4<bool>(false, !any(vec2<bool>(var_2.a.a, var_2.a.a)), func_1(any(vec4<bool>(true, global0.a.a, var_2.a.a, global0.a.a)) & false, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, global0.a.b) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-637f, var_1), vec2<f32>(var_1, -917f)))), vec2<i32>(u_input.c, ~u_input.c), ~vec2<u32>(u_input.b, 23744u)).a, func_6(Struct_1(any(vec3<bool>(false, true, false)), var_0.a.b), _wgslsmith_f_op_f32(-func_1(false, vec2<f32>(116f, -1000f), vec2<i32>(u_input.c, 25683i), vec2<u32>(1u, u_input.a)).b), Struct_2(var_0.a)).a.a), countOneBits(countOneBits(vec3<u32>(~1u, u_input.a | u_input.b, ~u_input.b))), u_input.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b)), global0.a.b, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, 741f, 1364f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f - -402f) - _wgslsmith_f_op_f32(ceil(-142f))), 309f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_0.a.b, var_0.a.b), vec3<f32>(-149f, var_1, 388f)))))), !global0.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, firstTrailingBit(~max(~u_input.c, -1i)), countOneBits(u_input.c));
}

