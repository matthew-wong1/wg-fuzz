struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_1(countOneBits(~firstTrailingBit(~vec3<u32>(u_input.a, 39792u, 2300u))));
    var var_1 = Struct_2(select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), arg_0.x <= arg_0.x), select(-405f <= _wgslsmith_f_op_f32(ceil(-993f)), true, ~var_0.a.x != 57656u)), Struct_1(var_0.a ^ _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, var_0.a.x, var_0.a.x)), vec3<u32>(0u, 117593u, var_0.a.x))), arg_0.x, var_0);
    var_1 = Struct_2(!(!vec4<bool>(false, any(vec4<bool>(var_1.a.x, true, true, var_1.a.x)), true, true)), var_0, -57049i, var_0);
    var_1 = Struct_2(select(select(select(select(vec4<bool>(false, var_1.a.x, true, true), var_1.a, var_1.a.x), vec4<bool>(false, var_1.a.x, true, true), select(var_1.a.x, var_1.a.x, var_1.a.x)), select(var_1.a, !var_1.a, var_1.a), select(select(vec4<bool>(var_1.a.x, true, false, true), var_1.a, var_1.a), var_1.a, vec4<bool>(var_1.a.x, true, var_1.a.x, true))), vec4<bool>(!var_1.a.x, var_1.a.x, !all(var_1.a.yw), false), var_1.a), var_0, arg_0.x, Struct_1(reverseBits(firstLeadingBit(vec3<u32>(0u, 51581u, var_0.a.x)))));
    var var_2 = -arg_0;
    return ~_wgslsmith_div_vec3_u32(~abs(vec3<u32>(4294967295u, 0u, var_1.d.a.x) & var_1.d.a), ~(~(~vec3<u32>(var_0.a.x, 26531u, 45364u))));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(max(firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(~vec3<u32>(17051u, 7546u, 7250u))), ~func_3(vec2<i32>(1i, 1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) & ~(~vec3<u32>(25198u, firstTrailingBit(u_input.a), ~0u));
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(var_0.x), u_input.a) | var_0.x;
    var var_2 = any(!select(vec2<bool>(true, false), vec2<bool>(true, true), (var_1 <= 0u) & any(vec2<bool>(true, false))));
    var var_3 = ~(firstTrailingBit(vec2<u32>(var_1, 4294967295u) << (var_0.zy % vec2<u32>(32u))) << (~countOneBits(min(var_0.yx, vec2<u32>(23229u, u_input.a))) % vec2<u32>(32u)));
    var_0 = vec3<u32>(var_1, ~(~_wgslsmith_mod_u32(30081u, u_input.a)) >> (3089u % 32u), ~0u);
    return _wgslsmith_mod_u32(36080u, var_3.x ^ ~var_0.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(~(_wgslsmith_mult_vec3_u32(vec3<u32>(26865u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 6034u)) ^ max(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 4294967295u, 0u)))), firstTrailingBit(vec4<u32>(4294967295u, 31319u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(73009u, u_input.a, u_input.a))), 0u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_1.xzy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 2174f, 1748f) - _wgslsmith_f_op_vec3_f32(arg_1.wxy + vec3<f32>(761f, -150f, -708f))))));
    var_1 = vec3<f32>(-734f, _wgslsmith_f_op_f32(round(378f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    let var_2 = Struct_3(var_0.a, vec4<u32>(~11353u, 1u, func_2(-2373f), u_input.a));
    var var_3 = true;
    return var_0.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(!select(vec4<bool>(all(arg_2.a), true, all(vec4<bool>(true, arg_2.a.x, arg_2.a.x, true)), arg_2.a.x), arg_2.a, arg_2.a), arg_1, _wgslsmith_add_i32(min(arg_2.c, arg_2.c), ~(-1i)) ^ arg_2.c, func_1(_wgslsmith_clamp_i32(-2147483647i, arg_2.c, -1i), vec4<f32>(-187f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f * 998f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f * 1717f)))));
    var var_1 = _wgslsmith_div_f32(385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + 105f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-531f)))));
    var var_2 = arg_2.d;
    var var_3 = -var_0.c;
    var_2 = Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 4294967295u, var_2.a.x)) << (vec3<u32>(~u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a), arg_2.b.a.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(31827u, _wgslsmith_sub_u32(12571u, var_2.a.x)), ~reverseBits(arg_3.a.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.a.x, arg_1.a.x, 4294967295u), vec3<u32>(arg_2.d.a.x, arg_3.a.a.x, 4294967295u)))));
    return Struct_2(vec4<bool>(select(all(arg_0.yx) | arg_0.x, true, true), arg_2.b.a.x > var_2.a.x, false, true), var_0.b, _wgslsmith_mod_i32(21019i, -2147483647i), Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, arg_1.a.x), firstLeadingBit(var_0.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<bool>(!any(vec2<bool>(true, true)), (1u >= _wgslsmith_add_u32(47033u, u_input.a)) | true, (true || (u_input.a <= 25092u)) & true, true == (_wgslsmith_f_op_f32(step(193f, -413f)) < _wgslsmith_f_op_f32(max(1233f, 667f)))), func_1((i32(-1i) * -6255i) << (~(~0u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, -2144f, 1844f, -690f) * vec4<f32>(430f, -142f, -143f, -726f))))), Struct_2(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), false, true), Struct_1((vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(1u, 1u, u_input.a)) | abs(vec3<u32>(u_input.a, 0u, u_input.a))), firstTrailingBit(1i) | (i32(-1i) * -20152i), Struct_1(select(firstTrailingBit(vec3<u32>(u_input.a, 0u, 2228u)), vec3<u32>(u_input.a, u_input.a, u_input.a), true))), Struct_3(Struct_1(~vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec4<u32>(func_1(-1i, vec4<f32>(-1000f, -522f, -1388f, -2525f)).a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 131985u, 1u)), ~u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 57576u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), ~4294967295u)));
    var var_1 = Struct_3(func_4(vec4<bool>(true, true, var_0.a.x, true), var_0.d, Struct_2(vec4<bool>(37321u < u_input.a, !var_0.a.x, var_0.a.x && false, var_0.a.x), var_0.b, ~abs(var_0.c), Struct_1(vec3<u32>(30459u, 1u, var_0.b.a.x))), Struct_3(var_0.b, ~select(vec4<u32>(u_input.a, 1u, u_input.a, 106030u), vec4<u32>(0u, u_input.a, u_input.a, 1144u), false))).b, ~vec4<u32>(_wgslsmith_mult_u32(1u, max(10109u, u_input.a)), ~func_1(var_0.c, vec4<f32>(-328f, -1044f, 879f, -776f)).a.x, u_input.a, var_0.b.a.x << (12576u % 32u)));
    let var_2 = func_4(vec4<bool>(all(vec2<bool>(true, true)), !var_0.a.x, true, var_0.a.x), var_0.b, Struct_2(var_0.a, func_4(!vec4<bool>(false, var_0.a.x, false, var_0.a.x), func_4(!var_0.a, Struct_1(vec3<u32>(0u, u_input.a, var_0.d.a.x)), Struct_2(var_0.a, var_0.b, -11170i, Struct_1(vec3<u32>(4294967295u, var_1.a.a.x, 1u))), Struct_3(Struct_1(vec3<u32>(var_1.a.a.x, 1u, var_0.b.a.x)), var_1.b)).b, func_4(select(vec4<bool>(true, false, var_0.a.x, true), var_0.a, var_0.a), Struct_1(vec3<u32>(var_0.d.a.x, var_1.a.a.x, 25338u)), func_4(var_0.a, Struct_1(var_0.d.a), var_0, Struct_3(Struct_1(var_0.d.a), vec4<u32>(29280u, var_1.b.x, 28445u, var_1.a.a.x))), Struct_3(Struct_1(var_0.d.a), var_1.b)), Struct_3(Struct_1(var_1.a.a), abs(var_1.b))).b, ~(~(2147483647i & var_0.c)), Struct_1(countOneBits(vec3<u32>(66607u, var_0.b.a.x, 1u)))), Struct_3(Struct_1(vec3<u32>(4294967295u, var_1.b.x, func_4(var_0.a, Struct_1(var_0.b.a), var_0, Struct_3(Struct_1(vec3<u32>(var_1.a.a.x, 4294967295u, 12496u)), vec4<u32>(4294967295u, var_0.d.a.x, u_input.a, var_1.b.x))).b.a.x)), _wgslsmith_sub_vec4_u32(var_1.b, ~vec4<u32>(65801u, var_1.a.a.x, var_0.d.a.x, var_0.b.a.x) ^ (var_1.b << (var_1.b % vec4<u32>(32u))))));
    let var_3 = var_2.b.a.x;
    var_1 = Struct_3(func_1(firstLeadingBit(-1i), vec4<f32>(1f, 1f, 1f, 1f)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, vec2<i32>(-5871i & -_wgslsmith_sub_i32(var_2.c, var_2.c), var_2.c), var_3, _wgslsmith_div_vec4_u32(~(~(~var_1.b)), _wgslsmith_add_vec4_u32(~max(vec4<u32>(16211u, 26334u, var_3, var_0.d.a.x), vec4<u32>(var_3, 0u, var_2.b.a.x, var_2.d.a.x)), _wgslsmith_mod_vec4_u32(abs(var_1.b), vec4<u32>(var_0.b.a.x, var_0.d.a.x, 2079u, 42982u)))), ~vec4<i32>(_wgslsmith_sub_i32(~(-1i), 1i), ~(-11687i), 16000i, var_2.c));
}

