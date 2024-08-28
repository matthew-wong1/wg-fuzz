struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-841f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1332f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1403f, 405f)), -1000f) - _wgslsmith_f_op_f32(sign(-1302f))))), _wgslsmith_f_op_f32(func_3())));
    let var_1 = 38050i;
    let var_2 = vec4<i32>(~firstTrailingBit(u_input.a | 4885i) & -43870i, 18616i, countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(max(0i, 0i), arg_0), _wgslsmith_mult_i32(~27053i, -u_input.a))), ~u_input.a);
    let var_3 = Struct_1(u_input.b == (~1u & u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1606f, _wgslsmith_f_op_f32(select(var_0, var_0, true)), _wgslsmith_f_op_f32(var_0 - var_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, var_0, -189f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-909f, 1000f, -1338f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, -968f))))), select(!vec2<bool>(true, any(vec4<bool>(false, false, true, false))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_clamp_u32(u_input.b | u_input.b, u_input.b, ~min(~92890u, firstTrailingBit(1u))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true))));
    return max(var_3.d, countOneBits(u_input.b));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    let var_0 = arg_1;
    var var_1 = select(arg_1.e.xy, vec2<bool>(true, func_2(~arg_3) == _wgslsmith_mult_u32(~u_input.b, u_input.b | 0u)), arg_1.e.zw);
    var var_2 = u_input.a;
    var var_3 = 15479u;
    var var_4 = arg_1;
    return 0u;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i | (-38044i | u_input.a), -(-1i | u_input.a), u_input.a, select(u_input.a, u_input.a, false)), vec4<i32>(-1i) * -reverseBits(max(vec4<i32>(-36764i, -2147483647i, u_input.a, 54296i), vec4<i32>(0i, 23973i, 1i, 15846i))));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -1348f, 531f)) - arg_0.b)))), arg_0.c, 5530u, !(!(!arg_0.e)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(325f, var_1.b.x, 493f, -1417f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-159f, arg_0.b.x, arg_0.b.x, var_1.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -168f, var_1.b.x, 792f) + vec4<f32>(451f, -1433f, -1479f, 1044f))))))));
    var var_3 = Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.x, 698f, var_2.x), arg_0.b))), arg_0.e.zww))), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~_wgslsmith_sub_u32(u_input.b, 1u), 2112u), ~abs(vec3<u32>(arg_0.d, var_1.d, 10442u))), vec4<bool>(false, !any(vec3<bool>(arg_0.c.x, true, true)), !(!arg_0.e.x), var_1.a));
    var_0 = -(countOneBits(-vec4<i32>(-1i, -2147483647i, 2147483647i, -36952i)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(60798u, var_3.d, arg_0.d, var_1.d), vec4<u32>(43700u, 4294967295u, arg_0.d, u_input.b)) << (vec4<u32>(~var_3.d, 77810u, 1u, abs(var_3.d)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return -vec3<i32>(~1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, 25171i, u_input.a), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), -_wgslsmith_mod_i32(var_0.x, 2147483647i)) ^ vec3<i32>(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a, u_input.a), vec3<i32>(u_input.a, var_0.x, -23279i))), -u_input.a, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(2147483647i, -2147483647i, 1i >> ((firstTrailingBit(4294967295u) | abs(u_input.b)) % 32u));
    var_0 = abs(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, -1i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, var_0.x), i32(-1i) * -28396i) | u_input.a, countOneBits(-4277i) >> (u_input.b % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)), -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(f32(-1f) * -2186f)));
    var_0 = func_4(Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1463f, var_1.x), _wgslsmith_div_f32(-475f, var_1.x), _wgslsmith_f_op_f32(var_1.x + 147f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, var_1.x, var_1.x))))), vec2<bool>(-1005f < _wgslsmith_f_op_f32(-var_1.x), func_1(vec4<u32>(u_input.b, 60968u, 9575u, 48437u), Struct_1(true, vec3<f32>(243f, var_1.x, var_1.x), vec2<bool>(false, true), u_input.b, vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false), 0i) == max(20046u, 20388u)), ~u_input.b, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), select(false, true, false)))));
    var_0 = ~(-(~(-firstLeadingBit(vec3<i32>(36181i, u_input.a, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(35402i), _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(21545u, 43835u), vec2<u32>(1u, u_input.b)), ~vec2<u32>(u_input.b, 4294967295u), vec2<bool>(false, false)), vec2<u32>(1u, 1u) >> (max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u))) & ~u_input.b, var_1.x, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(u_input.a, 23042i)), ~vec2<i32>(1i, u_input.a)), vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, 1i))));
}

