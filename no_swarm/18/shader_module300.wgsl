struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    return 154f;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: bool) -> i32 {
    return firstTrailingBit(reverseBits(arg_2) | u_input.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = arg_2.b.x;
    let var_1 = !any(!(!(!arg_2.b)));
    var var_2 = select(arg_3, arg_3, !var_1);
    var_2 = -func_3(_wgslsmith_f_op_f32(func_2(-vec3<i32>(-14415i, u_input.a, 32612i), select(select(vec2<bool>(var_1, arg_2.b.x), arg_2.b.xy, arg_2.b.yy), !vec2<bool>(true, var_0), vec2<bool>(true, var_0)))), arg_2.c, -3946i, true);
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~2074u, ~arg_2.c), ~arg_2.c);
    return true;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = arg_1 && false;
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -248f), -762f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1159f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1023f, -1241f))))), -493f), !select(!(!vec3<bool>(arg_1, true, false)), select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, var_0), var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, arg_1, var_0), var_0), select(vec3<bool>(var_0, true, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(var_0, false, arg_1))), select(select(vec3<bool>(var_0, arg_1, true), vec3<bool>(var_0, arg_1, var_0), false), vec3<bool>(arg_1, var_0, arg_1), any(vec2<bool>(var_0, var_0)))), ~(~4294967295u));
    return 4294967295u;
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = firstLeadingBit(1u);
    var_0 = arg_0 >> (0u % 32u);
    let var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, _wgslsmith_sub_u32(arg_0, 8915u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-706f)), _wgslsmith_div_f32(-507f, 1058f), _wgslsmith_f_op_f32(f32(-1f) * -855f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, -944f, 912f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -779f)), vec3<bool>(false, true, true)))), vec4<f32>(-1612f, -411f, -1955f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<i32>(-2147483647i, -1i, u_input.a), vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(625f)))), _wgslsmith_f_op_f32(f32(-1f) * -402f))), vec3<i32>(-26092i, func_3(-1242f, arg_0 & 30019u, i32(-1i) * -1i, true), _wgslsmith_sub_i32(-10146i >> (var_1.x % 32u), firstLeadingBit(17817i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-755f, _wgslsmith_f_op_f32(-1120f * 1812f)))))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.d.x, ~abs(abs(-15334i)), -4064i), -abs(vec3<i32>(2147483647i, 2147483647i, firstTrailingBit(-3995i))));
    var_0 = -2147483647i;
    var var_1 = false;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.a.b)), vec4<f32>(227f, 1021f, arg_0, arg_3.a.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1.a.b)))) * vec4<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1068f, arg_0, false)), func_5(28579u).a.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.a.x, arg_3.b.x), arg_1.b))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true && any(vec3<bool>(true, false, false))), vec3<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), !func_1(vec2<i32>(-53924i, u_input.a), arg_1.b, Struct_3(arg_1.a.b, vec3<bool>(false, false, false), 0u), 2147483647i), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), 1u);
    var var_3 = (countOneBits(~25056i) << ((var_2.c ^ ~(var_2.c & 4294967295u)) % 32u)) ^ (1i >> (var_2.c % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1496f, _wgslsmith_f_op_f32(-arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_6(1000f, func_5(func_4(-vec4<i32>(u_input.a, u_input.a, -60418i, 13191i), func_1(vec2<i32>(u_input.a, 1i), -882f, Struct_3(vec4<f32>(1062f, 1442f, -574f, -198f), vec3<bool>(false, false, false), 1u), 19862i))), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))) & min(firstLeadingBit(vec2<i32>(u_input.a, -4417i)), abs(vec2<i32>(-1242i, u_input.a))), func_5(9951u).a)), 314f);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(845f)), var_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(955f, _wgslsmith_f_op_f32(f32(-1f) * -446f), -1149f, _wgslsmith_f_op_f32(sign(-197f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -488f, -1473f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1233f, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), abs(~(-(~vec3<i32>(u_input.a, 0i, -3407i)))));
    var var_2 = ~1u;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(1944f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-822f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(var_1.b.x))))), var_1.b, var_0.x, vec3<i32>(u_input.a, u_input.a, var_1.d.x));
    var var_3 = firstLeadingBit(var_1.d.zy);
    var var_4 = vec3<bool>(all(!vec3<bool>(true, var_1.b.x != -1221f, true)), (select(true, true, true) & true) && true, any(vec4<bool>(true, true, select(false, true, false) || true, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(-var_1.c))));
    var var_5 = ~vec2<u32>(select(1u, 1u, any(vec4<bool>(false, false, var_4.x, true))), ~4294967295u);
    var var_6 = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.x, var_5.x, var_5.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_5.x, var_5.x), func_4(vec4<i32>(-4962i, 30932i, -2147483647i, -32211i), true))), ~(~vec4<u32>(var_5.x, var_5.x, var_5.x, 15579u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(12520u, 0u, var_5.x, 4294967295u), vec4<u32>(var_5.x, 1u, var_5.x, 1u)) % vec4<u32>(32u))))).a;
    var var_7 = vec3<bool>(false, var_4.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.b)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_6.b)), vec4<f32>(_wgslsmith_f_op_f32(min(469f, 426f)), _wgslsmith_f_op_f32(-var_1.a.x), -1389f, var_6.a.x)))), vec3<u32>(~var_5.x, var_5.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(9111u, var_5.x), vec2<u32>(27040u, 80758u), vec2<u32>(4294967295u, 75604u)), ~vec2<u32>(var_5.x, var_5.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_5.x, var_5.x, 4294967295u, 23674u), vec4<u32>(21122u, 27341u, var_5.x, 1620u), vec4<bool>(true, var_4.x, var_4.x, false)), vec4<u32>(0u, var_5.x, var_5.x, var_5.x)))), vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 23266u), vec2<u32>(var_5.x, 39912u)) << (52756u % 32u), var_5.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_5.x, var_5.x, 66389u), vec3<u32>(~var_5.x, abs(var_5.x), var_5.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_5.x, 47923u), 5950u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_5.x, var_5.x, 1u), vec4<u32>(var_5.x, var_5.x, 21515u, 1u))), ~max(vec4<u32>(4294967295u, 29406u, var_5.x, 4294967295u), vec4<u32>(var_5.x, 4616u, 57995u, var_5.x))), 47989u), 4514u ^ (var_5.x ^ _wgslsmith_sub_u32(~4294967295u, var_5.x)));
}

