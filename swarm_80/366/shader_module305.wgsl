struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = arg_1 ^ vec4<i32>(-7646i, u_input.a, arg_1.x, countOneBits(u_input.a ^ 21841i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(880f * arg_0))), -_wgslsmith_sub_vec4_i32(~arg_1, vec4<i32>(~arg_1.x, -1i, 1i, -6859i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1547f, -664f, false))))), abs(abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, 23890u, arg_2.x), vec3<u32>(arg_2.x, 11610u, 4294967295u), vec3<u32>(1u, 0u, 0u)))));
    var var_2 = !select(vec4<bool>(!(var_1.c && false), var_1.c & all(vec3<bool>(false, var_1.c, var_1.c)), false, false), select(vec4<bool>(false, all(vec2<bool>(true, var_1.c)), all(vec4<bool>(false, true, var_1.c, var_1.c)), true), select(select(vec4<bool>(false, true, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, false), vec4<bool>(false, var_1.c, true, var_1.c)), vec4<bool>(true, false, false, false), vec4<bool>(var_1.c, true, var_1.c, false)), var_1.c), !vec4<bool>(false, true, true, !var_1.c));
    var var_3 = arg_2.x;
    var_0 = (var_1.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_2.x), _wgslsmith_mult_u32(var_1.d.x, arg_2.x), abs(arg_2.x), ~11573u), min(~vec4<u32>(3219u, var_1.d.x, var_1.d.x, 30059u), ~vec4<u32>(1u, 53106u, var_1.d.x, var_1.d.x))) % vec4<u32>(32u))) | min(vec4<i32>(-1i, var_1.b.x, var_1.b.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, u_input.a, var_0.x, 69015i) >> (vec4<u32>(14595u, var_1.d.x, 11501u, var_1.d.x) % vec4<u32>(32u)), vec4<i32>(25229i, arg_1.x, var_0.x, arg_1.x) ^ arg_1) >> (~vec4<u32>(84407u, var_1.d.x, var_1.d.x, var_1.d.x) % vec4<u32>(32u)));
    return var_1.d.zx;
}

fn func_2() -> i32 {
    let var_0 = ~(~vec2<u32>(10052u, countOneBits(0u)) >> (func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(429f - -1000f))), vec4<i32>(firstLeadingBit(u_input.a), ~u_input.a, u_input.a, ~u_input.a), min(max(vec3<u32>(1u, 11964u, 4294967295u), vec3<u32>(1u, 1u, 16345u)), abs(vec3<u32>(41513u, 63922u, 23073u)))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(-989f, -816f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(var_1, -278f)), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, -38920i), i32(-1i) * -32545i), u_input.a, ~countOneBits(u_input.a), _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(0i, u_input.a))), all(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true)), countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), abs(vec3<u32>(1u, 29591u, var_0.x))), ~(~vec3<u32>(1510u, 1u, var_0.x)))));
    var var_3 = Struct_1(687f, var_2.b, _wgslsmith_f_op_f32(max(442f, -1317f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-622f)))) - _wgslsmith_f_op_f32(-var_1)), vec3<u32>(var_0.x, ~(~_wgslsmith_clamp_u32(var_2.d.x, var_2.d.x, 44380u)), ~abs(~var_2.d.x)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-1170f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a)))), -var_3.b, !(!all(vec3<bool>(false, false, var_2.c))), vec3<u32>(_wgslsmith_add_u32(1u, var_0.x), var_0.x, var_0.x));
    return -(~(var_3.b.x >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_3.d.x, 1u)) % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) * _wgslsmith_f_op_f32(floor(305f))) + -673f), _wgslsmith_f_op_f32(-arg_0.a), !(28537u != _wgslsmith_clamp_u32(1287u, 63161u, arg_0.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2039f))));
    var var_3 = ~(-arg_0.b);
    var var_4 = func_2();
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(arg_0.a, abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(9552i, -13748i, u_input.a, -3433i) << (~vec4<u32>(arg_0.d.x, 4294967295u, arg_0.d.x, arg_0.d.x) % vec4<u32>(32u)), abs(arg_0.b | arg_0.b))), !(arg_0.d.x == _wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x)), select(arg_0.d | ~firstTrailingBit(arg_0.d), ~arg_0.d, select(select(!vec3<bool>(true, arg_0.c, false), vec3<bool>(arg_0.c, false, true), arg_0.c), select(select(vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(true, false, false)), !vec3<bool>(arg_0.c, arg_0.c, arg_0.c), !vec3<bool>(true, arg_0.c, arg_0.c)), !vec3<bool>(true, arg_0.c, arg_0.c))));
    let var_1 = Struct_1(-510f, arg_0.b, func_1(func_1(func_1(var_0, true, arg_0, ~vec4<i32>(-41249i, -1i, var_0.b.x, u_input.a)), any(vec4<bool>(var_0.c, false, true, false)), func_1(Struct_1(-754f, vec4<i32>(arg_0.b.x, -1i, var_0.b.x, 21654i), arg_0.c, vec3<u32>(arg_0.d.x, 21165u, var_0.d.x)), true, arg_0, vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), abs(_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b))), !(true || !var_0.c), var_0, vec4<i32>(u_input.a, arg_0.b.x, -62006i, arg_0.b.x)).c, _wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(40169u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22951u, arg_0.d.x, 4294967295u, var_0.d.x), vec4<u32>(var_0.d.x, 18874u, var_0.d.x, arg_0.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 0u, 58878u, 1u), vec4<u32>(arg_0.d.x, var_0.d.x, arg_0.d.x, var_0.d.x))), 4294967295u)));
    var var_2 = var_1;
    let var_3 = func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))))), -(~abs(var_0.b)), true, var_1.d), true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -269f), var_2.b, true, var_0.d), -vec4<i32>(~_wgslsmith_dot_vec3_i32(var_2.b.wwy, arg_0.b.wzx), var_2.b.x, _wgslsmith_add_i32(28329i, var_2.b.x) << (0u % 32u), reverseBits(_wgslsmith_mod_i32(arg_0.b.x, -24781i))));
    let var_4 = ~4114u;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, 345f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(533f, var_0.a) * vec2<f32>(var_1.a, 560f))))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1067f, arg_0.a, arg_3.x))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_0.a, 775f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1418f, arg_3.x, -985f), vec3<f32>(arg_3.x, -319f, 1025f))))));
    let var_1 = 1u;
    var var_2 = abs(-arg_0.b.xyx);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 1887f, false))) - _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = 88053u;
    return arg_2.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(34838u, ~(firstLeadingBit(56208u) << (max(0u, 0u) % 32u)), firstTrailingBit(~max(1u, 32919u)));
    let var_1 = ~(~(~var_0.x) ^ ~_wgslsmith_sub_u32(select(var_0.x, 33707u, true), var_0.x));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(827f, 1383f, all(vec4<bool>(true, var_0.x <= 1u, select(true, true, false), true))))));
    let var_3 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(59978u, var_0.x), func_5(Struct_1(-1129f, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), true, firstLeadingBit(vec3<u32>(28989u, var_1, var_1))), all(vec2<bool>(true, true)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(40667u, 0u, 11590u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(var_1, var_0.x, 59492u))), _wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_1(-875f, vec4<i32>(u_input.a, 1i, 1i, 78975i), true, vec3<u32>(var_1, var_1, var_1)), false, Struct_1(-1361f, vec4<i32>(u_input.a, u_input.a, -18085i, -1i), true, vec3<u32>(var_0.x, 62901u, var_1)), vec4<i32>(2147483647i, -29374i, u_input.a, 2147483647i))))));
    let var_4 = Struct_1(-520f, _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a ^ -213i, u_input.a, _wgslsmith_div_i32(u_input.a, -1i), func_1(Struct_1(1269f, vec4<i32>(u_input.a, 1i, -28998i, 0i), false, vec3<u32>(var_0.x, 1u, var_3.x)), true, Struct_1(-228f, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), true, vec3<u32>(var_0.x, 0u, 35912u)), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)).b.x), vec4<i32>(0i, u_input.a, 1i, -4746i) | firstTrailingBit(vec4<i32>(-59237i, -2147483647i, 1i, 2147483647i)), vec4<bool>(true, -2147483647i > u_input.a, true, false)), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(16273i, -1i, u_input.a, -35751i), vec4<i32>(-1i, -22057i, u_input.a, u_input.a), vec4<i32>(1103i, -1i, 16699i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(346f, _wgslsmith_f_op_f32(floor(-703f)))) == func_1(Struct_1(-1074f, -vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), true, vec3<u32>(var_3.x, 1u, 1u)), any(vec4<bool>(false, false, true, true)), Struct_1(-1000f, -vec4<i32>(1i, 2147483647i, u_input.a, 31986i), true, vec3<u32>(var_1, 12950u, 28796u)), vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-69895i, u_input.a), vec2<i32>(-16838i, u_input.a)), 1i)).a, reverseBits(~reverseBits(vec3<u32>(1u, var_1, 9657u)) | countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, 1u), vec3<u32>(var_0.x, var_1, 32303u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(firstTrailingBit(31180u) << (abs(0u) % 32u)), var_1));
}

