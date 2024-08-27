struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1690f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global0.a);
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(0i, firstTrailingBit(~_wgslsmith_add_i32(u_input.a.x, -28278i)), firstTrailingBit(_wgslsmith_mod_i32(-27437i, u_input.b.x) | (i32(-1i) * -60295i)), u_input.a.x), -u_input.a);
    let var_2 = max(vec4<u32>(39694u, min(max(~0u, 1u), _wgslsmith_clamp_u32(45555u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 2499u), vec3<u32>(0u, 0u, 77110u)), _wgslsmith_mod_u32(4294967295u, 39820u))), abs(~23246u), ~1u), ~(~firstTrailingBit(vec4<u32>(29909u, 1u, 0u, 1u)) | vec4<u32>(_wgslsmith_clamp_u32(11155u, 5014u, 0u), countOneBits(48419u), max(49634u, 4294967295u), 44656u)));
    var var_3 = arg_2;
    global0 = Struct_1(global0.a);
    return ~(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(14225u, var_2.x))) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_2.x), 84361u), ~vec2<u32>(52681u, 44474u)) % 32u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(true && (594u > func_3(false, vec2<f32>(global0.a, global0.a), Struct_1(arg_0.a))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), 5145u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(10344u, 1u, 1u, 0u), vec4<u32>(27836u, 1u, 75691u, 29355u))));
    let var_2 = Struct_1(1f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a)))) == _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a)));
    global0 = var_2;
    return Struct_1(var_2.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_2);
    return func_2(Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f * var_0.a) + _wgslsmith_f_op_f32(trunc(arg_2.a))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = abs(select(vec3<u32>(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(19933u, 4294967295u, 3510u, 136491u), vec4<u32>(1u, 1u, 4294967295u, 0u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41565u), vec2<u32>(14086u, 1u)), _wgslsmith_clamp_u32(8920u, 4294967295u, 0u)), _wgslsmith_clamp_u32(1u, 96225u, _wgslsmith_div_u32(37367u, 4294967295u))), vec3<u32>(~_wgslsmith_mod_u32(0u, 39936u), ~(~12854u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28908u), vec2<u32>(58820u, 65852u))), vec3<bool>(any(vec3<bool>(arg_0, false, arg_0)), any(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), arg_0)), (true & arg_0) && arg_0)));
    var var_1 = func_4(!vec4<bool>(var_0.x > 1u, arg_0, arg_0, _wgslsmith_mod_i32(u_input.c, 0i) != -u_input.c), func_4(!vec4<bool>(all(vec3<bool>(true, false, true)), arg_0 & arg_0, arg_0, all(vec2<bool>(true, false))), func_4(vec4<bool>(false, 3608u > var_0.x, arg_0, arg_0), Struct_1(_wgslsmith_f_op_f32(-global0.a)), Struct_1(_wgslsmith_f_op_f32(-arg_2.a))), arg_1), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.a)))) * -672f)));
    let var_2 = _wgslsmith_mod_i32(-max(-1i, abs(-2147483647i) & select(-51302i, u_input.b.x, arg_0)), -2147483647i);
    global0 = func_4(select(select(!(!vec4<bool>(arg_0, true, arg_0, true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), any(!vec4<bool>(true, arg_0, true, arg_0))), !vec4<bool>(true && arg_0, !arg_0, arg_0, var_1.a <= 918f), false), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f + -449f) * 1422f)))), func_2(arg_1));
    var var_3 = func_4(select(!vec4<bool>(!arg_0, !arg_0, arg_0, arg_0 & arg_0), vec4<bool>(u_input.c != (u_input.a.x | u_input.b.x), _wgslsmith_f_op_f32(-global0.a) <= _wgslsmith_f_op_f32(sign(-1034f)), true, arg_0), true), arg_1, Struct_1(590f));
    return var_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~firstTrailingBit(4294967295u)), 12346u, func_5(false, func_4(vec4<bool>(true, true, true, true), Struct_1(-1217f), func_2(Struct_1(819f))), func_4(vec4<bool>(true, true, true, true), func_2(Struct_1(269f)), Struct_1(945f)))), ~vec3<u32>(1u, ~22534u, 4294967295u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(var_0.x, ~_wgslsmith_mod_u32(44262u, var_0.x), func_3(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -990f)), Struct_1(global0.a))), 8818u, firstTrailingBit(var_0.x));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(136f)))) + 1322f)))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-373f, -1699f), -908f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -629f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f) * _wgslsmith_f_op_f32(global0.a - global0.a))));
    return Struct_1(525f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_1(708f);
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -705f) * vec2<f32>(-944f, 375f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(2095f, 1054f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, -270f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1266f, _wgslsmith_f_op_f32(max(-355f, 1915f))))), select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true))));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u))) << (select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -204f) < _wgslsmith_f_op_f32(193f - var_0.x))) % vec2<u32>(32u));
    let var_2 = Struct_1(-447f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.x << (firstLeadingBit(var_1.x) % 32u), 14704u), countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 46205u)), 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, global0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(2331f, global0.a), vec2<f32>(-731f, var_2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0.a) - vec2<f32>(648f, -779f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(787f, -653f)))))), u_input.b.x);
}

