struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-569f)), 382f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1029f), vec2<f32>(-843f, 1000f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, 246f))))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, 0u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(u_input.c, 4294967295u))), 5953i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(404f + -419f), -1660f, _wgslsmith_f_op_f32(377f + -1651f), -168f)) + vec4<f32>(928f, _wgslsmith_f_op_f32(sign(-321f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1002f + 634f) - _wgslsmith_f_op_f32(ceil(716f))), 999f)), !vec4<bool>(!all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(178f, -2199f, var_0.e.x)))) + -254f)));
    var var_2 = var_0;
    var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * 858f), 1643f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_0.d.x * -681f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1)), -834f)))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_2.b, var_0.b, var_2.b) | ~var_2.b, var_2.b), -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1496f + var_2.a.x)), -1178f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_div_f32(var_1, var_2.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-478f)))))), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) == -1125f, false, var_0.e.x));
    let var_3 = var_0;
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1.a.x, arg_0.a.x, arg_1.e.x)))))));
    var var_1 = vec4<f32>(arg_0.d.x, 2028f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_3)), arg_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(394f * -121f), 1947f, !arg_0.e.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1669f)))));
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_2, ~(arg_0.b & u_input.b), 0u, abs(~45924u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 55241u, u_input.c, arg_0.b), vec4<u32>(4294967295u, 27297u, 4294967295u, arg_0.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, arg_0.b, 25602u, arg_1.b), vec4<u32>(4294967295u, 1u, arg_1.b, 8059u) >> (vec4<u32>(0u, arg_2, arg_0.b, 0u) % vec4<u32>(32u))), reverseBits(~vec4<u32>(arg_0.b, 34399u, arg_2, arg_0.b)))), abs(vec4<u32>(1u, ~min(arg_2, 57445u), ~(~u_input.b), arg_2)));
    let var_3 = vec3<bool>(!any(vec2<bool>(any(arg_1.e.xx), false)), any(arg_1.e.wy), any(arg_1.e.yw));
    var_0 = _wgslsmith_f_op_f32(arg_1.a.x + 1543f);
    return arg_1.c;
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1649f, -111f) + vec2<f32>(1000f, -1189f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, -1318f)), 2147483647i == u_input.d)) - vec2<f32>(1f, 1f))), 1u, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1006f, -133f) * vec2<f32>(-283f, 429f))), ~1u, func_3(vec4<i32>(-34512i, u_input.d, -2147483647i, u_input.d)), vec4<f32>(1571f, _wgslsmith_f_op_f32(min(-325f, -1103f)), _wgslsmith_f_op_f32(499f * -427f), _wgslsmith_f_op_f32(round(-1703f))), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, -673f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1228f, 271f)))), 33550u, -(~23350i), vec4<f32>(-923f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_div_f32(-866f, 541f)), vec4<bool>(false, true, true, any(vec2<bool>(true, true)))), ~firstLeadingBit(u_input.c) >> (45470u % 32u), 1f), vec4<f32>(_wgslsmith_f_op_f32(1002f - -179f), _wgslsmith_f_op_f32(f32(-1f) * -585f), -561f, -1000f), vec4<bool>(true | !any(vec4<bool>(true, true, true, true)), false, !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.d.ww, var_0.a)))), !var_0.e.x)), ~arg_0.x, _wgslsmith_clamp_i32(firstLeadingBit(~u_input.d), abs(-u_input.d & (1i >> (arg_0.x % 32u))), _wgslsmith_mult_i32(1i, -var_0.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x + -1877f), -194f, _wgslsmith_f_op_f32(var_0.a.x + var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(step(var_0.d, vec4<f32>(-795f, 860f, var_0.a.x, 1970f))))), !vec4<bool>(any(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x)), false, true, true))), vec4<bool>(true, true, true, true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, -434f), var_0.d.wy, var_1.e.zz)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.d.yw + var_1.d.xw))), 2835f < var_1.d.x)))), 76747u, firstLeadingBit(-7128i), vec4<f32>(var_1.d.x, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(select(vec4<bool>(var_0.e.x, false, true, true), var_0.e, var_0.e), !select(vec4<bool>(var_1.e.x, var_0.e.x, false, false), vec4<bool>(var_0.e.x, true, false, true), var_1.e.x || var_0.e.x), select(!vec4<bool>(true, var_1.e.x, var_1.e.x, var_1.e.x), var_1.e, vec4<bool>(true, true, true, true))));
    var var_3 = var_2;
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.a)))), ~_wgslsmith_sub_u32(var_2.b, var_2.b), var_0.c ^ _wgslsmith_mult_i32(~54943i, firstTrailingBit(var_1.c >> (var_0.b % 32u))), vec4<f32>(_wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1716f, var_1.d.x), 493f))), _wgslsmith_f_op_f32(round(var_2.a.x)), 1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, var_0.d.x)))), vec4<bool>(!all(var_2.e) == var_1.e.x, var_3.e.x, any(var_0.e.yww), var_2.e.x));
    return var_3.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_2.xx;
    let var_1 = vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-434f + _wgslsmith_f_op_f32(floor(arg_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, 463f, arg_0.e.x & (-506f > arg_1.d.x))) - _wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.a.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(arg_3.x, arg_3.x), arg_0.e.x)))));
    var var_2 = 1u;
    let var_3 = _wgslsmith_div_i32(~((1i >> (1u % 32u)) & func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c, arg_2.x, u_input.d, -45597i), vec4<i32>(u_input.d, -1i, 59529i, 1i)))), 58281i);
    var var_4 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(6180u, arg_0.b), vec2<u32>(80346u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, u_input.a), vec2<u32>(29966u, 0u))) << ((firstLeadingBit(vec2<u32>(0u, 0u)) ^ abs(vec2<u32>(7930u, arg_1.b))) % vec2<u32>(32u)), vec2<u32>(u_input.a, _wgslsmith_sub_u32(select(arg_0.b, 1u, arg_0.e.x), 18296u)));
    return -174f;
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(886f, 496f), vec2<f32>(490f, 910f))))), firstLeadingBit(u_input.b), u_input.d, _wgslsmith_f_op_vec4_f32(func_2(countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.a, 1u)))), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false)), true)), Struct_1(vec2<f32>(-1158f, _wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(vec4<u32>(u_input.a, 52590u, u_input.c, 4294967295u)))).x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(16441u, u_input.a)), vec2<u32>(~u_input.b, ~1u)), u_input.d, _wgslsmith_f_op_vec4_f32(func_2(~max(vec4<u32>(u_input.b, u_input.b, 50672u, 17117u), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.b)))), vec4<bool>(true, true, true, true)), min(~vec3<i32>(u_input.d, -u_input.d, _wgslsmith_clamp_i32(-1i, u_input.d, -17367i)), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(-39686i, -1i, u_input.d)) ^ max(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(-2147483647i, -13908i, 1i)))), vec3<f32>(1540f, 161f, -228f)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, _wgslsmith_div_f32(-582f, -163f)))), u_input.a, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, -1533f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(420f, var_0))))), countOneBits(min(u_input.b, u_input.c)), u_input.d, vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(min(-1000f, var_0)), var_0), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), Struct_1(vec2<f32>(var_0, _wgslsmith_f_op_f32(round(var_0))), 1u, -1i, vec4<f32>(_wgslsmith_f_op_f32(327f + -937f), var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), vec4<bool>(true, true, true, true)), 4294967295u, _wgslsmith_f_op_f32(-var_0)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(~vec4<u32>(64261u, u_input.a, 886u, u_input.a)))).x, -796f, 243f, -361f), !vec4<bool>(true, all(vec3<bool>(false, true, true)) || false, select(false, all(vec2<bool>(false, false)), true), true));
    let var_2 = ~firstTrailingBit(-(_wgslsmith_div_i32(u_input.d, var_1.c) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b, var_1.b, 4294967295u), vec4<u32>(u_input.a, 129638u, 5090u, var_1.b)) % 32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(~vec4<u32>(80655u, var_1.b, u_input.c, 0u) >> (vec4<u32>(4294967295u, 16610u, var_1.b, 37175u) % vec4<u32>(32u)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f + var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1338f + -797f) - _wgslsmith_f_op_f32(func_5(Struct_1(var_1.d.xw, 0u, -25609i, vec4<f32>(var_1.d.x, -287f, -1241f, var_1.a.x), var_1.e), Struct_1(var_1.a, 2583u, u_input.d, vec4<f32>(var_1.a.x, var_1.d.x, var_0, 718f), vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.e.x)), vec3<i32>(0i, -1i, u_input.d), vec3<f32>(var_1.a.x, var_1.a.x, -2121f))))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1312f, _wgslsmith_f_op_f32(var_1.a.x - 641f))), var_0, true)))));
    let var_4 = ~reverseBits(vec4<i32>(var_2, func_4(Struct_1(vec2<f32>(432f, 776f), 0u, u_input.d, var_1.d, vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x)), var_1, ~4294967295u, _wgslsmith_f_op_f32(max(var_0, -211f))), var_2, _wgslsmith_sub_i32(0i, 18740i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, -21880i, 0i, u_input.d), vec4<i32>(-35595i, 769i, -1i, u_input.d))));
    return select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, -4605i, reverseBits(1423i) << (var_1.b % 32u)), vec3<i32>(2147483647i, -49809i, select(_wgslsmith_mod_i32(-16011i, var_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_1.c, 2147483647i), vec3<i32>(var_4.x, var_4.x, 33820i)), var_1.e.x))), vec3<i32>(var_2, var_4.x, -19471i), !select(var_1.e.xwy, !select(vec3<bool>(false, true, var_1.e.x), vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), vec3<bool>(false, var_1.e.x, var_1.e.x)), all(!var_1.e.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~func_1());
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.b, u_input.c << (~u_input.b % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(53002u, u_input.b, u_input.a, 4294967295u)), vec4<u32>(~14100u, 60450u, 1u ^ u_input.b, 1u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(47454u, 0u), max(~u_input.a, 0u))))).xyz;
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(799f, 537f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1031f * 830f), var_1.x))))));
    let var_2 = 1f;
    let var_3 = -_wgslsmith_div_i32(-45871i, _wgslsmith_dot_vec2_i32(abs(var_0.zy), var_0.xx) << (~(~2614u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, -1472f, -936f, 2188f) + vec4<f32>(-314f, var_2, -1563f, 1221f)) + vec4<f32>(var_1.x, 1000f, var_2, var_2)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec4_f32(func_2(min(vec4<u32>(35014u, u_input.a, u_input.b, 4294967295u), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u)))).x)));
}

