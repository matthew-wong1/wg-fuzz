struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 1> = array<f32, 1>(387f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = false;
    let var_1 = u_input.b;
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(select(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 30767i), vec2<i32>(u_input.c, u_input.d)), min(vec2<i32>(-1i, u_input.d), vec2<i32>(u_input.d, u_input.c))), abs(vec2<i32>(u_input.c, -14052i)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), -(~vec2<i32>(1i, u_input.d))));
    let var_3 = Struct_2(var_1, max(0u, _wgslsmith_mult_u32(7866u, u_input.b)), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, -2147483647i, u_input.c), vec3<i32>(-1i, var_2.x, u_input.c), vec3<i32>(u_input.c, 38685i, 25897i)) << (select(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(4294967295u, var_1, u_input.b), false) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-18136i, u_input.d, u_input.d), vec3<i32>(u_input.c, -1i, 19570i)) >> (~vec3<u32>(198u, 0u, 8262u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 211f) - vec4<f32>(global0.x, -422f, global1[_wgslsmith_index_u32(var_1, 1u)], -682f)))), -(~var_2.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(492f)), global1[_wgslsmith_index_u32(var_1, 1u)]), -max(var_2.x, var_2.x) & firstLeadingBit(~(-1i))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_1, 1u)])), 156f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, global1[_wgslsmith_index_u32(37472u, 1u)])), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(61140u, 1u)] * 1264f))))));
    let var_4 = vec3<i32>(u_input.c, var_2.x, -20937i);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(19555i, vec3<i32>(func_3(), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 43956i, u_input.c), vec3<i32>(u_input.d, 2147483647i, u_input.c)), u_input.c), func_3() & 0i), abs(reverseBits(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.d, u_input.c)), vec2<i32>(u_input.d, u_input.d)))), -(~_wgslsmith_mult_vec3_i32(-vec3<i32>(-19936i, 0i, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(9997i, u_input.d, u_input.c), vec3<i32>(1i, u_input.c, 2147483647i)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] * global1[_wgslsmith_index_u32(u_input.a, 1u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1354f, 1177f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -268f, -2028f, global1[_wgslsmith_index_u32(u_input.b, 1u)])))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, _wgslsmith_f_op_f32(min(-411f, global0.x)), _wgslsmith_f_op_f32(global0.x * -193f), _wgslsmith_f_op_f32(max(-531f, global1[_wgslsmith_index_u32(u_input.b, 1u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, 300f))), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global0.x, global0.x, global0.x)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(685f, -338f, global0.x, global1[_wgslsmith_index_u32(u_input.b, 1u)]))), vec4<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], 615f, global1[_wgslsmith_index_u32(19081u, 1u)]))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, 572f) - vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], global0.x, -325f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(205f, -209f, -781f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(916f, global1[_wgslsmith_index_u32(28006u, 1u)], -1897f, -1000f)))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)))));
    global1 = array<f32, 1>();
    var var_1 = Struct_3(~min(_wgslsmith_sub_i32(-2147483647i, 0i) ^ var_0.b.x, 0i), select(select(-var_0.b, ~var_0.b, vec3<bool>(true, false, false)), ~(~vec3<i32>(var_0.b.x, var_0.a, 13887i)), vec3<bool>(true, !any(vec2<bool>(true, true)), false)), vec2<i32>(-1i) * -select(var_0.c, var_0.c & vec2<i32>(-2147483647i, var_0.a), true), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-select(vec3<i32>(0i, -2147483647i, var_0.a), vec3<i32>(u_input.d, u_input.d, 2147483647i), vec3<bool>(true, true, true)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, var_0.d.x, 2147483647i), vec3<i32>(-1i, u_input.c, u_input.d))), vec3<i32>(~(~28421i), reverseBits(0i), -var_0.c.x << (reverseBits(u_input.b) % 32u))));
    return Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_div_i32(1i, var_0.d.x << (u_input.b % 32u)), -u_input.d), var_0.d), vec4<f32>(1886f, 1427f, global0.x, 395f), var_1.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-283f, global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<f32>(-229f, 743f))), vec2<f32>(-112f, 1005f)))), 2147483647i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(~45508u, ~1u);
    let var_1 = Struct_1(~firstTrailingBit(vec3<i32>(u_input.d | u_input.d, ~(-20192i), _wgslsmith_sub_i32(-1i, -2147483647i))), _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) * vec4<f32>(-2018f, arg_0.d.x, -1031f, -645f)) - vec4<f32>(_wgslsmith_div_f32(-429f, 1000f), func_2().d.x, _wgslsmith_f_op_f32(max(1841f, -626f)), _wgslsmith_f_op_f32(1138f - -258f))), true)), u_input.d & 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~var_0.x, 1u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-232f, -1129f) * _wgslsmith_f_op_f32(632f + global1[_wgslsmith_index_u32(4294967295u, 1u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, -2134f) + vec2<f32>(717f, -664f)), global0.zz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(656f, -3046f)) - _wgslsmith_f_op_vec2_f32(max(arg_0.b.xz, arg_0.b.yw))))), i32(-1i) * -u_input.c);
    var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_0.x, 81451u), 1u) & var_0.x, var_0.x);
    var_0 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.a), vec2<u32>(~40389u, _wgslsmith_mod_u32(1u, u_input.a))) ^ ~vec2<u32>(u_input.b, u_input.b));
    let var_2 = -vec2<i32>(2147483647i, 0i >> ((u_input.b & firstLeadingBit(u_input.a)) % 32u));
    return Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b), _wgslsmith_clamp_i32(-36906i, -(~(-var_1.e)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2189i, u_input.d), vec2<i32>(1i, var_1.e)), var_1.a.zz), arg_0.a.yy)), vec2<f32>(global0.x, global0.x), abs(u_input.c) & (abs(-var_1.c) | _wgslsmith_div_i32(abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-31615i, 2836i, var_2.x), var_1.a))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = vec2<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))) || (~3171u < ~_wgslsmith_mult_u32(u_input.a, 32884u)), -_wgslsmith_mult_i32(arg_2.c.x, 56645i) > _wgslsmith_mult_i32(-1i, arg_2.a));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2221f - _wgslsmith_f_op_f32(-arg_1)) * -1244f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(162f, _wgslsmith_f_op_f32(-global0.x)) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.b), ~vec2<u32>(0u, u_input.a), select(vec2<bool>(false, false), vec2<bool>(var_1.x, true), var_1.x)), vec2<u32>(countOneBits(11188u), _wgslsmith_clamp_u32(u_input.b, 13058u, 4294967295u))), 1u)]), arg_1, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(126f)) * func_2().d.x))));
    return Struct_1(arg_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.d.x, -1376f, -1000f))))), -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -104f)), 6524i);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = ~_wgslsmith_mult_u32(~(~1u), ~_wgslsmith_div_u32(~36394u, ~u_input.b));
    global1 = array<f32, 1>();
    let var_2 = abs(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, var_1), abs(vec3<u32>(var_1, 68483u, 1u))), 13853u), var_1));
    var_0 = func_5(Struct_1(vec3<i32>(max(~25463i, -2147483647i), abs(24911i), var_0.e), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.d.x)), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(38359i, u_input.d, 37392i), arg_0, arg_2.e, vec2<f32>(1448f, 1000f), 2057i)).b.x * func_5(Struct_1(var_0.a, var_0.b, arg_2.c, var_0.b.xx, var_0.c), -248f, Struct_3(u_input.c, var_0.a, vec2<i32>(arg_2.a.x, arg_2.e), arg_2.a)).b.x), arg_0.x, 235f), ~(select(arg_2.a.x, arg_2.e, false) >> (reverseBits(60326u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(659f)), arg_2.b.x), -_wgslsmith_mult_i32(1i, -2147483647i)), func_2().d.x, Struct_3(36000i, func_5(arg_2, global0.x, Struct_3(~u_input.d, var_0.a, vec2<i32>(arg_2.a.x, u_input.c), arg_2.a)).a, vec2<i32>(min(2147483647i, func_3()), -2147483647i), vec3<i32>(func_5(Struct_1(vec3<i32>(u_input.d, arg_2.c, -46010i), arg_2.b, -2147483647i, arg_2.d, -1i), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 1u)]), Struct_3(-1i, vec3<i32>(u_input.c, var_0.e, -1i), vec2<i32>(u_input.d, arg_2.e), arg_2.a)).a.x, func_2().c, var_0.a.x)));
    return Struct_3(~u_input.c & u_input.d, min(arg_2.a, arg_2.a), select(func_5(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), Struct_3(-1i, ~arg_2.a, firstTrailingBit(arg_2.a.xz), var_0.a)).a.zx, arg_2.a.xy, select(!select(vec2<bool>(false, false), vec2<bool>(arg_1.x, false), false), arg_1, select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), arg_1))), -max(func_2().a, vec3<i32>(-1i, -1254i, var_0.e) & vec3<i32>(u_input.c, -2147483647i, u_input.d)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(89004u), u_input.a, u_input.b), abs(vec3<u32>(66132u, var_2, 5532u))) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 874f, -863f, global0.x), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], 1557f, global0.x))))) + vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] + global0.x), 168f))), vec2<bool>(true, true), func_5(func_4(func_2()), 1175f, Struct_3(_wgslsmith_add_i32(max(-2147483647i, -2147483647i), u_input.c), vec3<i32>(u_input.c | u_input.d, -u_input.c, 24086i), abs(abs(vec2<i32>(2147483647i, u_input.d))), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.c, -5758i), -vec3<i32>(u_input.c, u_input.c, u_input.c)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(32691u, 1u)] + global1[_wgslsmith_index_u32(1u, 1u)])) - -524f) + -1602f), global1[_wgslsmith_index_u32(u_input.a, 1u)]);
    let var_2 = Struct_2(abs(13764u) | firstLeadingBit(~u_input.a), ~u_input.b, func_5(func_2(), 1622f, Struct_3(1i, firstLeadingBit(_wgslsmith_mult_vec3_i32(var_0.b, var_0.d)), func_6(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(46584u, 1u)], -1000f, 1348f))), vec2<bool>(false, false), Struct_1(vec3<i32>(var_0.a, u_input.d, 16730i), vec4<f32>(global0.x, var_1.x, 647f, 408f), -2147483647i, vec2<f32>(-1229f, -642f), var_0.b.x)).d.xx, var_0.d)), vec3<f32>(var_1.x, 1095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1367f)))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_2.d.x))))), _wgslsmith_f_op_f32(-func_4(var_2.c).b.x));
    return Struct_1(firstTrailingBit(vec3<i32>(~18244i, func_4(func_5(Struct_1(var_2.c.a, vec4<f32>(global0.x, var_4, var_4, -1542f), 17171i, global0.xx, u_input.d), -531f, Struct_3(var_0.a, var_3.c.a, var_2.c.a.xz, var_3.c.a))).e, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, var_0.a), u_input.c))), vec4<f32>(1834f, var_1.x, _wgslsmith_f_op_f32(min(-1000f, -159f)), global1[_wgslsmith_index_u32(7943u, 1u)]), 3043i, vec2<f32>(_wgslsmith_f_op_f32(100f - func_4(var_3.c).b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.d.x)))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 1u), u_input.b), 1u)]), -1764f, func_4(func_2()).d.x, -1119f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], 849f, global1[_wgslsmith_index_u32(0u, 1u)]) + var_0.b)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-func_1().b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global0.x, var_0.b.x, 631f) - var_0.b)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, u_input.d, u_input.c | u_input.c), func_4(var_0).a, -countOneBits(-var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(33017u, 1u)]), _wgslsmith_f_op_f32(min(global0.x, var_0.d.x)), true))), var_0.b.x, -1298f, 1300f), -(func_2().e | var_0.a.x) ^ u_input.d, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 1u)]), _wgslsmith_f_op_f32(1588f - -2030f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(713f))))))), func_5(var_0, _wgslsmith_f_op_f32(724f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 1u)]))), Struct_3(var_0.c, vec3<i32>(-1i) * -vec3<i32>(var_0.a.x, var_0.a.x, u_input.c), -min(var_0.a.xy, var_0.a.yz), ~vec3<i32>(-2147483647i, var_0.c, 1i))).e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, reverseBits(11107i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b.x, -858f))), var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(533f))))), 670f, u_input.b & ~u_input.a);
}

