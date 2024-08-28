struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(12589u, u_input.c) & vec2<u32>(u_input.b, u_input.c)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(45930u, u_input.c), reverseBits(vec2<u32>(71117u, u_input.c)))), _wgslsmith_clamp_i32(39525i, u_input.a.x, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -537f)), vec2<f32>(_wgslsmith_f_op_f32(step(665f, 665f)), -1691f)))));
    var var_1 = countOneBits(select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.c, u_input.c) >> (vec3<u32>(u_input.b, u_input.b, var_0.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(var_0.a, u_input.b, 12353u) & vec3<u32>(1u, var_0.a, u_input.b))), (max(vec3<u32>(u_input.b, var_0.a, 1u), vec3<u32>(u_input.c, 4294967295u, 19007u)) & ~vec3<u32>(var_0.a, 0u, 25836u)) >> (~(vec3<u32>(u_input.c, 4294967295u, var_0.a) ^ vec3<u32>(var_0.a, 8139u, u_input.c)) % vec3<u32>(32u)), !(4294967295u == ~var_0.a)));
    var_1 = ~(vec3<u32>(var_0.a & var_0.a, u_input.b, var_0.a) | ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, var_0.a, 4294967295u) | vec3<u32>(4294967295u, var_0.a, var_1.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 17735u, 50790u), vec3<u32>(38186u, 0u, 0u))));
    let var_2 = Struct_1(u_input.a.x, 25659u, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.x)), 1000f), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), false != all(vec3<bool>(true, false, true))), true), ~(~1u >> (select(20725u, u_input.b, true) % 32u)) <= 10269u);
    let var_3 = false;
    return 1u;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = (vec3<i32>(_wgslsmith_add_i32(-1i, -65278i), ~abs(arg_0), -u_input.e.x ^ firstTrailingBit(u_input.e.x)) >> (vec3<u32>(134704u, u_input.c, u_input.c) % vec3<u32>(32u))) & vec3<i32>(-12882i, select(u_input.d, 1i, true), -1i);
    var var_1 = Struct_2(u_input.b >> (min(abs(_wgslsmith_div_u32(u_input.b, u_input.b)), func_3()) % 32u), -reverseBits(2355i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-894f, 704f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, 181f) - vec2<f32>(1971f, -2082f)) + vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(1000f + 1567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2937f - -793f))), true)));
    return vec4<bool>(!(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(-660f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.x - -187f)))) <= -1742f, all(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x));
    let var_1 = arg_1.d.x;
    return select(!select(select(!vec4<bool>(true, true, false, arg_1.e), func_2(arg_0.x), !vec4<bool>(false, arg_1.d.x, true, true)), vec4<bool>(arg_1.e, true, !var_1, true), arg_1.d), select(select(arg_1.d, vec4<bool>(var_1 & var_1, true, true, all(vec3<bool>(arg_1.d.x, arg_1.e, false))), select(all(arg_1.d.wx), all(vec4<bool>(var_1, false, true, arg_1.e)), var_1 && arg_1.d.x)), vec4<bool>(true, arg_1.e, all(vec3<bool>(var_1, false, arg_1.d.x)), all(arg_1.d)), false), arg_1.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = vec4<i32>(~(-5199i), arg_0.a, ~(-1i), ~(~(~select(1i, 83956i, arg_2.d.x))));
    let var_1 = Struct_2(4294967295u, _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_2.a, u_input.e.x, 2147483647i, -28739i), vec4<i32>(-11784i, arg_2.a, arg_1.a, var_0.x)), -vec4<i32>(arg_0.a, arg_0.a, var_0.x, 2147483647i)) | var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1533f, -574f)))))));
    var var_2 = firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, _wgslsmith_mult_i32(abs(u_input.a.x), _wgslsmith_sub_i32(arg_1.a, var_0.x)), -60788i), select(~_wgslsmith_div_vec3_i32(var_0.xwz, var_0.xwx), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_1.b, -5255i, arg_0.a)), var_0.xxz & var_0.wxx), true)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.x)));
    var_2 = vec3<i32>(-2147483647i, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, ~_wgslsmith_mult_i32(var_0.x, 42242i)), vec3<i32>(-_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(arg_0.a, 1i, -1i, var_2.x)), arg_2.a, -46750i)));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.b, firstLeadingBit(u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -509f), -1685f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-931f))))));
    var var_1 = Struct_2(17306u, _wgslsmith_mult_i32(1i, -69741i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(var_0.c.x, -1116f)), var_0.c)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -398f, 410f, 988f) - vec4<f32>(-1640f, 1000f, -1562f, 926f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, -2094f, var_1.c.x, 414f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, var_0.c.x, 1154f, var_1.c.x)) - vec4<f32>(-622f, 1000f, var_1.c.x, -273f)))), select(true, all(vec2<bool>(true, true)) && all(vec2<bool>(false, true)), true))));
    let var_3 = u_input.e;
    let var_4 = Struct_1(u_input.d, func_4(Struct_1(0i, max(30973u, ~20613u), var_1.c, !func_1(vec3<i32>(var_0.b, var_3.x, 8056i), Struct_1(2147483647i, var_0.a, vec2<f32>(var_2.x, var_1.c.x), vec4<bool>(true, true, true, false), false)), all(vec4<bool>(true, true, true, true))), Struct_1(-4754i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39947u, u_input.c, var_0.a), vec3<u32>(var_1.a, var_0.a, 29826u)), ~11188u, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), var_1.c.x), vec4<bool>(true, true, true, true), false), Struct_1(2699i, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 8208u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_2.x) + vec2<f32>(var_2.x, var_2.x)) * vec2<f32>(var_1.c.x, var_0.c.x)), vec4<bool>(true, false, true, 21820i == var_1.b), !func_2(1i).x), -631f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_1.c.x), var_0.c)))), select(func_2(1i), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false), vec4<bool>(!func_1(vec3<i32>(var_3.x, 21291i, 6507i), Struct_1(16809i, 36664u, var_1.c, vec4<bool>(false, true, true, false), false)).x, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), false, true)), true);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-598f - var_1.c.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-262f)), var_4.c.x, -1000f, var_4.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -644f, var_1.c.x, -166f)))), !select(var_4.d, var_4.d, var_4.e)))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(628f, var_4.c.x)) * _wgslsmith_f_op_f32(951f * var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(exp2(var_2.x))) * _wgslsmith_f_op_f32(-var_0.c.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1333f, var_1.c.x)) + var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, var_2.x, var_2.x, var_1.c.x) - vec4<f32>(-666f, var_2.x, 637f, -1039f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2184f, -213f, var_0.c.x, var_1.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(758f, 1151f, -344f, var_2.x) * vec4<f32>(216f, -1170f, 470f, 436f))))), 21747u << (max(_wgslsmith_add_u32(var_0.a, 4294967295u) ^ (var_4.b & 131165u), func_3()) % 32u), ~vec4<u32>(u_input.b, 46105u, _wgslsmith_mult_u32(~u_input.c, select(var_0.a, 22368u, var_4.e)), _wgslsmith_mult_u32(countOneBits(1u), firstLeadingBit(var_4.b))), -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - 1177f), _wgslsmith_f_op_f32(-1000f - -1938f), _wgslsmith_f_op_f32(var_4.c.x - 331f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1612f), 238f) + var_2.yzx)));
}

