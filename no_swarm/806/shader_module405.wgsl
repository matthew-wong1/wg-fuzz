struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> vec3<i32> {
    let var_0 = select(select(~max(vec4<u32>(u_input.c, 0u, u_input.c, 1u), max(vec4<u32>(0u, 6651u, 9890u, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, 1u))), vec4<u32>(u_input.c, ~72833u, abs(u_input.c), 4294967295u), false || all(vec3<bool>(true, true, true))), ~(vec4<u32>(u_input.c, 74332u, _wgslsmith_dot_vec3_u32(vec3<u32>(172u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 44329u, u_input.c)), _wgslsmith_mod_u32(21307u, u_input.c)) << ((firstTrailingBit(vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c)) & reverseBits(vec4<u32>(19188u, u_input.c, u_input.c, u_input.c))) % vec4<u32>(32u))), vec4<bool>(true, true, true, true));
    var var_1 = var_0;
    var var_2 = ~var_0 ^ _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.x, 84723u), _wgslsmith_mult_u32(var_1.x, var_1.x)), u_input.c, _wgslsmith_div_u32(max(1u, 1u), var_1.x), ~max(1u, 4294967295u)), var_0);
    var_1 = ~max(vec4<u32>(_wgslsmith_mod_u32(24260u, ~var_1.x), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(var_0, var_0)), var_0.x, ~_wgslsmith_mod_u32(var_1.x, 4294967295u)), abs(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, 1554u, 44760u), vec4<u32>(66537u, 137354u, var_0.x, var_2.x)), var_0)));
    var var_3 = ~var_0;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 53726i, arg_0.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 0i), vec3<i32>(-1724i, -3187i, u_input.b.x))), arg_1.x, u_input.a << (firstLeadingBit(var_2.x) % 32u)), ~vec3<i32>(countOneBits(u_input.b.x), arg_0.a.x >> (1u % 32u), -1i)), arg_0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(u_input.b.x, -2147483647i, abs(-u_input.a)));
    var_0 = Struct_1(func_3(Struct_1(var_0.a), vec3<i32>(~(-18534i), max(i32(-1i) * -12171i, -8245i), -(u_input.b.x ^ 56463i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-505f)))) * 2580f)));
    return Struct_1(-var_0.a);
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = u_input.b.x;
    var var_2 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_3 = func_2();
    return vec4<bool>(true && all(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), arg_0.x >= u_input.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1016f * 909f), _wgslsmith_f_op_f32(-483f + _wgslsmith_f_op_f32(trunc(-1987f)))) == _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-257f)))))), true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, 1i), vec3<i32>(883i, u_input.a, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, u_input.b.x), u_input.b)))));
    var var_1 = _wgslsmith_clamp_i32(reverseBits(u_input.a | var_0.a.x), u_input.b.x, u_input.a);
    let var_2 = select(vec3<i32>(i32(-1i) * -11911i, _wgslsmith_mult_i32(~1i, firstTrailingBit(-12226i)), _wgslsmith_div_i32(-25578i, -var_0.a.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a), ~var_0.a.x), u_input.a, 0i), any(select(arg_0.xy, vec2<bool>(arg_0.x, true), arg_0.x))) | u_input.b;
    var var_3 = vec4<u32>(~(u_input.c ^ 1u), u_input.c, ~u_input.c, u_input.c);
    var_3 = _wgslsmith_add_vec4_u32(~(~min(vec4<u32>(5705u, 9397u, var_3.x, 4294967295u), vec4<u32>(38648u, var_3.x, 61521u, 4294967295u)) >> (countOneBits(~vec4<u32>(0u, 4294967295u, u_input.c, var_3.x)) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_mult_u32(u_input.c, var_3.x), 1u, 1u, ~49345u) & countOneBits(vec4<u32>(var_3.x, 1u, 7932u ^ var_3.x, ~0u)));
    return u_input.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = abs(select(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(u_input.c, u_input.c, 1u)), select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(30804u, u_input.c, u_input.c), false))), ~u_input.c, (-arg_0.a.x < 39478i) | any(vec4<bool>(true, true, true, true))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = func_5(Struct_1(_wgslsmith_mult_vec3_i32(min(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.a, -18143i, u_input.a)), u_input.b), func_4(vec3<bool>(true, true, true), func_1(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))))));
    let var_2 = true;
    var var_3 = var_1;
    var_0 = abs(firstLeadingBit(u_input.c));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(418f, 1209f, -478f, -295f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, 713f, 137f, 471f) - vec4<f32>(1283f, 1214f, -497f, -859f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, 406f, 406f, -880f) + vec4<f32>(1304f, -1283f, 888f, -735f))))), var_2 || !var_2)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, 958f, -2171f, 711f)), vec4<f32>(-492f, -1392f, -511f, _wgslsmith_f_op_f32(max(546f, 1994f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1438f + -1641f), _wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(step(1998f, 880f)), 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1803f, -1012f, -578f, -1131f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, 1422f, 758f, 531f)))))));
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, -620f, 442f, 1661f), vec4<f32>(1000f, var_4.x, var_4.x, var_4.x), vec4<bool>(var_2, var_2, true, var_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 151f, -217f, -1011f) + vec4<f32>(var_4.x, 1481f, var_4.x, var_4.x)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, 165f, var_4.x, 559f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.x, var_4.x, var_4.x, -1165f)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 290f, -150f, var_4.x) + vec4<f32>(813f, 498f, 209f, var_4.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, 976f, var_4.x, 1198f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x))))));
    var_3 = func_2();
    var_3 = func_5(Struct_1(var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.b.x, func_3(var_1, var_3.a, var_4.x).x, min(1i, var_3.a.x)) ^ func_3(var_1, vec3<i32>(-1i, -27782i, -25214i) | u_input.b, _wgslsmith_f_op_f32(-var_4.x)), ~(~u_input.c), ~_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(16971u, u_input.c), vec2<u32>(15625u, u_input.c))), max(~vec2<u32>(u_input.c, 20219u), ~vec2<u32>(u_input.c, u_input.c))));
}

