struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    return -u_input.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<bool>(arg_0.a.b, !arg_3.a.b, (1u | arg_3.b) < _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 21129u), vec3<u32>(arg_3.b, 24780u, arg_0.b)), reverseBits(_wgslsmith_div_u32(arg_3.b, arg_3.b))));
    var_0 = vec3<bool>(arg_3.a.b, arg_3.b < arg_3.b, !all(vec4<bool>(true, !arg_0.a.b, all(var_0.xz), var_0.x & arg_0.d)));
    let var_1 = Struct_3(Struct_1(arg_1.x, arg_3.a.b & arg_3.d), ~arg_0.b, -1498f, all(!select(!arg_3.e.yw, vec2<bool>(arg_0.d, false), arg_0.e.xx)), arg_3.e);
    let var_2 = -_wgslsmith_div_vec2_i32(~arg_2.yx, -reverseBits(~arg_2.wx));
    var var_3 = (var_1.b | (_wgslsmith_mod_u32(arg_0.b >> (var_1.b % 32u), _wgslsmith_add_u32(43669u, var_1.b)) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(55990u, 13866u), countOneBits(4294967295u)) % 32u))) & reverseBits(_wgslsmith_dot_vec2_u32(u_input.a >> ((vec2<u32>(1u, 26203u) & u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)));
    return min(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mult_u32(arg_0.b, var_1.b)), ~var_1.b), 7987u);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = max(abs(~u_input.a), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a & u_input.a, firstTrailingBit(vec2<u32>(1u, u_input.a.x)) ^ vec2<u32>(select(18690u, u_input.a.x, true), 1u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * -661f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.a + arg_0.b))));
    var var_2 = Struct_4(select(select(select(!vec4<bool>(false, false, arg_0.d.b, true), select(vec4<bool>(false, arg_0.a.b, arg_0.d.b, false), vec4<bool>(arg_0.d.b, false, arg_0.d.b, arg_0.a.b), arg_0.a.b), arg_0.d.b), select(vec4<bool>(true, false, arg_0.a.b, false), select(vec4<bool>(arg_0.a.b, arg_0.d.b, true, arg_0.d.b), vec4<bool>(arg_0.a.b, arg_0.d.b, true, arg_0.a.b), arg_0.d.b), true), arg_0.a.b), !(!(!vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.d.b))), !vec4<bool>(all(vec2<bool>(false, arg_0.a.b)), true, arg_0.a.b, any(vec3<bool>(arg_0.d.b, false, false)))), arg_0.c);
    return func_4(Struct_3(arg_0.d, firstTrailingBit(u_input.a.x) ^ abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1303f)))), var_0.x >= 30257u, vec4<bool>(true, var_2.a.x, true, var_2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 485f, 1428f, arg_0.a.a) * vec4<f32>(arg_0.a.a, arg_0.a.a, 107f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1598f, -1262f, arg_0.a.a, 663f) * vec4<f32>(868f, arg_0.a.a, 1000f, arg_0.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1259f, 1058f, 929f, 1100f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, 1195f, -1000f, -948f), vec4<f32>(arg_0.d.a, arg_0.d.a, arg_0.b, arg_0.b))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, 535f, arg_0.a.a, -1000f) * vec4<f32>(arg_0.b, arg_0.a.a, -1400f, arg_0.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, arg_0.a.a, arg_0.a.a, arg_0.b) + vec4<f32>(arg_0.a.a, 1050f, -311f, -872f)))))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, ~func_3()), arg_0.c, firstLeadingBit(-8012i), -44437i), Struct_3(arg_0.a, _wgslsmith_sub_u32(~0u ^ var_0.x, var_0.x | (u_input.a.x << (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.a)) + -931f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b)))), !(true != select(false, false, var_2.a.x)), var_2.a));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(func_2(Struct_2(Struct_1(310f, arg_0), 584f, 2147483647i, Struct_1(-886f, true)), abs(33653i)), func_2(Struct_2(Struct_1(-479f, arg_0), -1000f, u_input.b, Struct_1(-1738f, arg_0)), 2147483647i)), ~(~(~vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_1 = countOneBits(u_input.b);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(1f * -543f), any(!vec2<bool>(false, arg_0)) && (true & all(vec2<bool>(true, arg_0)))), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 24499u), 72622u), 4294967295u, 16588u), -659f, all(vec2<bool>(true, true)), !select(select(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, true, true, false), false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, false, true, false)), !vec4<bool>(arg_0, false, arg_0, false)), vec4<bool>(arg_0 & arg_0, !arg_0, true, arg_0), select(vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(false, arg_0, arg_0, arg_0), false & arg_0)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_2.c), arg_0), ~var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), any(select(var_2.e.zw, var_2.e.zx, vec2<bool>(true, true))), var_2.e);
    let var_4 = Struct_4(select(!select(vec4<bool>(arg_0, var_2.d, true, arg_0), vec4<bool>(var_2.e.x, true, true, false), !var_3.e), var_3.e, !(!var_2.d)), ~firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.b), vec3<i32>(u_input.b, var_1, -2147483647i)), 1i)));
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~((7272u | u_input.a.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 62252u, 1u, 973u), vec4<u32>(42816u, u_input.a.x, 43980u, u_input.a.x)) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(-1000f * -1000f))), _wgslsmith_f_op_f32(func_1(true))))));
    var_1 = -1029f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2007f)) < _wgslsmith_f_op_f32(select(-560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f + _wgslsmith_div_f32(-1634f, -1547f)) * -332f), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    var_0 = u_input.a.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-629f * 1000f), -1057f)), var_2), 959f, -10675i, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1595f)))))), (!var_2 && true) && true));
    var_1 = var_3.d.a;
    var var_4 = var_3.d.b;
    let var_5 = !select(vec2<bool>(all(vec4<bool>(true, true, true, var_2)) & all(vec3<bool>(true, var_3.d.b, var_2)), -991f <= _wgslsmith_f_op_f32(round(-673f))), vec2<bool>(!(!var_3.d.b), true), !(!(!vec2<bool>(var_3.a.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(min(abs(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 119241u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 26438u, 35378u), vec3<u32>(13887u, u_input.a.x, 1u))), 44686u, _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 0u), vec4<u32>(1u, 4294967295u, u_input.a.x, 1u))), _wgslsmith_mod_u32(88928u, 1u)));
}

