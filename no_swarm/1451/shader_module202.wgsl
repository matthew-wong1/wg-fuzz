struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1610f * 713f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * -922f) - _wgslsmith_f_op_f32(-601f * -121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1627f))), true)) * _wgslsmith_f_op_f32(round(802f))), true));
    let var_1 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-45570i, min(-2147483647i, -1i), select(-2147483647i, 1i, false), firstLeadingBit(0i)) >> (select(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 16237u) << (u_input.a % vec4<u32>(32u)), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 52711u, u_input.a.x, 39385u), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), abs(u_input.a.x), !vec3<bool>(!(71602u == u_input.a.x), true, 28101u >= (1888u << (u_input.a.x % 32u))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_div_f32(548f, 628f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(1000f * var_0)))), vec4<i32>(firstTrailingBit(firstTrailingBit(-23524i)), 6380i, -2147483647i, ~0i));
    let var_2 = select(select(select(select(vec4<bool>(false, false, var_1.c.x, false), !vec4<bool>(var_1.c.x, true, false, false), select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), vec4<bool>(false, var_1.c.x, var_1.c.x, var_1.c.x))), !select(vec4<bool>(false, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, false, var_1.c.x, false), true), true), !(!select(vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false), vec4<bool>(true, true, var_1.c.x, var_1.c.x))), vec4<bool>(false, true, (1u <= var_1.b) || var_1.c.x, var_1.c.x && true)), vec4<bool>((var_1.b >> (~66354u % 32u)) > 0u, _wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, true)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1634f) + _wgslsmith_f_op_f32(-var_1.d.x)), false, var_1.c.x), true);
    let var_3 = select(vec2<bool>(!var_1.c.x, max(_wgslsmith_mod_u32(var_1.b, 0u), ~u_input.a.x) >= max(~u_input.a.x, countOneBits(var_1.b))), select(var_2.yy, var_2.yz, var_2.wy), !var_2.wx);
    return _wgslsmith_div_vec4_i32(vec4<i32>(-var_1.a.x, -(var_1.a.x >> ((0u | u_input.a.x) % 32u)), ~_wgslsmith_dot_vec4_i32(countOneBits(var_1.a), var_1.e), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-46220i, -9693i, 53783i, var_1.a.x), var_1.a), ~vec4<i32>(-2147483647i, -1i, -10757i, var_1.a.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, var_1.e.x, 1i), var_1.e))), -firstLeadingBit(~countOneBits(vec4<i32>(14199i, -1i, var_1.a.x, var_1.a.x))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_2(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, 1i), ~2147483647i, abs(1i), 75108i), func_3()), 4294967295u, !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false)), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-880f * -418f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2093f)), arg_1)))), firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_3(Struct_1(u_input.a.yxz, _wgslsmith_mult_vec2_u32(min(min(u_input.a.ww, u_input.a.xy), _wgslsmith_add_vec2_u32(vec2<u32>(4544u, u_input.a.x), u_input.a.ww)), firstTrailingBit(u_input.a.yy | u_input.a.xw)), _wgslsmith_mod_vec4_u32(~u_input.a, (vec4<u32>(var_0.b, var_0.b, 33365u, var_0.b) & u_input.a) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 98170u, 0u, u_input.a.x), vec4<u32>(46044u, 11147u, 59086u, u_input.a.x)) % vec4<u32>(32u))), all(var_0.c), var_0.c.zy), vec2<bool>(all(vec2<bool>(true, var_0.c.x)), any(var_0.c.xy)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, arg_1, 157f, var_0.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 867f, arg_1, var_0.d.x), vec4<f32>(arg_2, var_0.d.x, arg_2, 777f)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-var_0.e.x, _wgslsmith_mod_i32(var_0.e.x, var_0.a.x), 1i, 1i), -vec4<i32>(~61989i, 65647i, ~32042i, var_0.e.x), ~vec4<i32>(1i, var_0.e.x, var_0.a.x, _wgslsmith_div_i32(0i, -12546i))));
    var var_2 = vec3<u32>(var_0.b, u_input.a.x, _wgslsmith_dot_vec3_u32(var_1.a.c.yzx, ~(~vec3<u32>(u_input.a.x, 4294967295u, 49346u))));
    var var_3 = !(!select(!select(vec4<bool>(var_0.c.x, false, var_0.c.x, false), vec4<bool>(false, var_1.b.x, true, var_1.b.x), var_0.c.x), select(!vec4<bool>(true, true, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, var_1.b.x, true, true), vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(var_1.a.d, var_1.b.x, false, false)), !vec4<bool>(var_1.a.d, true, var_0.c.x, true)), select(!vec4<bool>(false, true, var_1.a.e.x, var_0.c.x), vec4<bool>(true, false, false, var_0.c.x), true)));
    var_3 = select(select(vec4<bool>(var_0.c.x, var_0.c.x, !any(var_0.c.yy), !var_1.b.x), select(vec4<bool>(var_1.a.d, all(vec2<bool>(var_0.c.x, false)), true, var_0.d.x != 174f), !select(vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(false, var_1.a.e.x, var_0.c.x, true), var_3.x), var_0.c.x && (var_1.c.x == var_1.c.x)), var_1.b.x), select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.c.x, var_3.x, var_3.x, var_1.b.x), false), select(vec4<bool>(false, var_3.x, var_0.c.x, false), vec4<bool>(true, true, true, true), !var_3.x), true), select(select(select(vec4<bool>(false, true, false, var_1.b.x), vec4<bool>(var_3.x, var_3.x, var_0.c.x, true), var_3.x), vec4<bool>(true, var_3.x, var_1.a.d, true), any(var_1.b)), select(select(vec4<bool>(true, true, var_1.b.x, var_0.c.x), vec4<bool>(var_0.c.x, false, false, true), vec4<bool>(false, true, var_3.x, var_0.c.x)), !vec4<bool>(var_3.x, var_0.c.x, false, var_1.a.e.x), select(vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(var_1.b.x, var_1.a.d, var_0.c.x, false), var_1.b.x)), vec4<bool>(var_1.a.e.x, var_1.d.x == -2147483647i, var_1.b.x | true, var_0.c.x)), vec4<bool>(true, any(select(var_3.yy, var_1.b, vec2<bool>(false, false))), !var_3.x, any(vec3<bool>(false, var_3.x, true)))), !(!(!vec4<bool>(true, true, true, var_1.a.d))));
    return select(var_1.b, var_3.wz, var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_2.e.x, -42432i), abs(arg_2.a.yy));
    let var_1 = ~vec4<i32>(-var_0.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(arg_2.e.x), -var_0.x), abs(0i)), abs(-23602i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.e.x ^ -1i, arg_2.e.x), min(~arg_2.a.yz, vec2<i32>(var_0.x, 1i))));
    var_0 = _wgslsmith_add_vec2_i32(~min(vec2<i32>(~(-10832i), arg_2.e.x << (347u % 32u)), vec2<i32>(-1i, ~arg_2.a.x)), arg_2.a.ww << (firstLeadingBit(u_input.a.zw) % vec2<u32>(32u)));
    let var_2 = arg_1.c.wzy | arg_0.c.xwz;
    var_0 = ~(~firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), -var_0.x)));
    return arg_2.d;
}

fn func_1(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(~u_input.a.zyw, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 1u, 26221u, 50728u), false & arg_1, select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), true)), Struct_1(u_input.a.yzy, u_input.a.zy, _wgslsmith_sub_vec4_u32(vec4<u32>(19058u, 0u, u_input.a.x, 4294967295u), u_input.a), arg_1, func_2(56042u, -512f, 1831f)), Struct_2(vec4<i32>(14118i, arg_0, 449i, 0i), u_input.a.x, vec3<bool>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(198f, 458f), vec2<f32>(-2158f, 740f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, -1i, arg_0), vec4<i32>(47122i, arg_0, -56185i, arg_0), vec4<i32>(-32179i, 0i, arg_0, arg_0))))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(905f + -428f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_1 = firstTrailingBit(reverseBits(~min(vec4<i32>(arg_0, 18956i, arg_0, arg_0) ^ vec4<i32>(arg_0, 0i, -41424i, 0i), -vec4<i32>(-42741i, -15051i, 8652i, arg_0))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(949f)))), 318f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(313f, 536f), vec2<f32>(var_0.x, -1204f))))), vec2<bool>(func_2(u_input.a.x, var_0.x, var_0.x).x, !any(vec3<bool>(false, arg_1, arg_1)) || false)));
    var var_2 = Struct_3(Struct_1(vec3<u32>(~abs(u_input.a.x), ~1u, u_input.a.x), u_input.a.yx, vec4<u32>(1u, u_input.a.x ^ abs(4294967295u), 0u, _wgslsmith_mod_u32(14109u, u_input.a.x) & _wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, 13610u))), false, !vec2<bool>(true, var_0.x == -248f)), select(vec2<bool>(false || (true || arg_1), all(!vec3<bool>(arg_1, true, arg_1))), func_2(min(u_input.a.x, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), 2460f, 274f), func_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(114636u, u_input.a.x, u_input.a.x), vec3<u32>(1u, 1u, 4294967295u))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f * var_0.x) * var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -513f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -566f, -443f, var_0.x), vec4<f32>(-1430f, -1294f, var_0.x, -1129f)))))), ~(~(var_1 ^ _wgslsmith_div_vec4_i32(var_1, vec4<i32>(1i, 1i, -24914i, 53707i)))));
    let var_3 = Struct_1(max(~_wgslsmith_sub_vec3_u32(abs(var_2.a.c.yzw), var_2.a.a), ~(_wgslsmith_mod_vec3_u32(var_2.a.a, vec3<u32>(var_2.a.a.x, 1u, u_input.a.x)) << (_wgslsmith_mod_vec3_u32(var_2.a.c.xwy, vec3<u32>(53339u, 1u, 0u)) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(50007u, var_2.a.c.x)), ~_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(var_2.a.a.x, u_input.a.x)), ~select(vec2<u32>(var_2.a.c.x, u_input.a.x), vec2<u32>(24997u, u_input.a.x), vec2<bool>(arg_1, false))), vec4<u32>(68835u, 4294967295u, _wgslsmith_sub_u32(countOneBits(37762u), ~(u_input.a.x >> (4294967295u % 32u))), countOneBits(var_2.a.b.x)), true, var_2.a.e);
    return min(17688u, 69693u) >= u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(!vec4<bool>(func_1(2147483647i, false), select(true, false, true), true, all(vec2<bool>(false, false)))), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), select(any(vec4<bool>(true, true, false, true)), true, u_input.a.x <= u_input.a.x))));
    let var_1 = Struct_2(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(56136i, 1i, -29860i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-46262i, -46235i), vec2<i32>(2147483647i, 0i)), 4828i, ~0i)), abs(1i), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -23036i, 1i, -842i), vec4<i32>(0i, 1i, 51752i, 27790i)), _wgslsmith_add_i32(~2147483647i, 1i))), u_input.a.x, select(select(!(!vec3<bool>(var_0.x, false, true)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, true)), !var_0.x), select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, false), var_0.x), false), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, !var_0.x)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1125f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(613f, -1042f)), vec2<f32>(-922f, -1721f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1554f, 683f) - vec2<f32>(-317f, 318f))))), func_3() >> (~select(u_input.a, ~vec4<u32>(u_input.a.x, 75344u, 23527u, 4294967295u), vec4<bool>(false, true, false, var_0.x)) % vec4<u32>(32u)));
    let var_2 = select(!select(vec4<bool>(true, true, 0u > u_input.a.x, true), vec4<bool>(true, any(vec4<bool>(false, var_1.c.x, var_0.x, true)), any(vec3<bool>(var_0.x, var_1.c.x, true)), var_0.x), true), !select(vec4<bool>(true, all(vec4<bool>(var_0.x, var_0.x, var_1.c.x, var_0.x)), all(var_1.c), true), select(!vec4<bool>(true, var_1.c.x, var_0.x, var_1.c.x), select(vec4<bool>(false, var_1.c.x, false, var_0.x), vec4<bool>(var_1.c.x, var_1.c.x, var_0.x, true), vec4<bool>(var_1.c.x, true, var_1.c.x, var_0.x)), true), !select(vec4<bool>(var_0.x, var_1.c.x, var_1.c.x, false), vec4<bool>(false, var_0.x, var_1.c.x, var_0.x), var_0.x)), select(vec4<bool>(true, (var_1.c.x && true) | var_0.x, (var_0.x & false) & (var_0.x & var_1.c.x), false), !(!vec4<bool>(var_1.c.x, var_1.c.x, true, false)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<u32>(var_1.b, var_1.b, u_input.a.x), vec2<u32>(1u, u_input.a.x), vec4<u32>(0u, 40375u, u_input.a.x, u_input.a.x), true, var_0), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a.zx, vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a.x), false, var_0), var_1)).x > _wgslsmith_f_op_f32(round(var_1.d.x))));
    let var_3 = select(~(~0u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.a.x), var_0.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.a.x | u_input.a.x), 1u, countOneBits(firstLeadingBit(26231u))), vec3<u32>(countOneBits(0u), ~1u, ~u_input.a.x) << (u_input.a.zyz % vec3<u32>(32u)));
    var var_4 = Struct_3(Struct_1(abs(~_wgslsmith_mult_vec3_u32(u_input.a.xxx, u_input.a.zwx)), vec2<u32>(u_input.a.x, 0u), vec4<u32>(~4294967295u, var_1.b, max(0u, ~u_input.a.x), 0u), true, select(!(!var_0), var_2.xz, var_0.x)), var_1.c.xy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -622f, 334f, -806f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 249f, 687f, 310f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, -1856f, var_1.d.x)))), vec4<f32>(_wgslsmith_div_f32(var_1.d.x, var_1.d.x), 1000f, -181f, _wgslsmith_div_f32(_wgslsmith_div_f32(713f, var_1.d.x), 853f))), firstTrailingBit(var_1.a) ^ max(func_3(), vec4<i32>(~(-1i), var_1.a.x, ~var_1.e.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.c.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_4.c.x)))), ~(~u_input.a), ~var_4.a.b.x);
}

