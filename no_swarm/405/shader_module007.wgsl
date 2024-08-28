struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, arg_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1281f, -1000f)), arg_0.a) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1047f, arg_0.a), vec2<f32>(arg_0.a, arg_0.a)))))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(465f, arg_0.a))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, arg_0.a)))))));
    var var_1 = -14928i;
    var_1 = arg_1;
    let var_2 = true;
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-174f, -179f))), 1106f), arg_0.a), 1316f);
    return _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), abs(reverseBits(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(81602u, 4052u, 0u)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1392f + _wgslsmith_div_f32(-1265f, -607f))));
    var var_1 = _wgslsmith_dot_vec3_u32(~max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(100645u, 23027u, 57610u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(~57560u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18916u, 57493u, 57110u), vec4<u32>(4294967295u, 55440u, 4294967295u, 43264u)), max(34761u, 1u)), max(func_3(Struct_1(var_0.a), 2147483647i), ~vec3<u32>(1u, 0u, 45595u))));
    var_1 = firstTrailingBit(~(~1u) ^ _wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(0u, 21171u, 1u), 1u), ~firstTrailingBit(0u)));
    var_1 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 84141u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var_1 = 30315u;
    return var_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<u32>((26254u << (arg_0.x % 32u)) ^ arg_2.x, arg_0.x, ~arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(416f)));
    var var_2 = arg_0.x;
    let var_3 = arg_1;
    let var_4 = func_2(false);
    return var_3;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~1u), 1u, 12156u), vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 30980u, 1u, 54013u), vec4<u32>(1u, 22713u, 0u, 19916u), vec4<bool>(false, true, true, true)), vec4<u32>(32621u, 6750u, 0u, 18150u)), 33821u, firstTrailingBit(4294967295u))), func_2(!all(vec4<bool>(true, true, true, true))), ~vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - -1496f);
    let var_2 = vec2<u32>(~(~(~(~16558u))), ~(~(~12087u | select(0u, 1u, false))));
    let var_3 = vec4<u32>(var_2.x, countOneBits(~(var_2.x >> (var_2.x % 32u)) << (firstTrailingBit(firstTrailingBit(1u)) % 32u)), _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(14853u, 86907u, var_2.x, var_2.x), vec4<u32>(var_2.x, 0u, 1u, 23367u)), ~vec4<u32>(0u, 30775u, var_2.x, 11542u)), firstTrailingBit(~vec4<u32>(20398u, var_2.x, var_2.x, var_2.x))) >> (_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x)), 1u)) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x) << (var_2 % vec2<u32>(32u)), vec2<u32>(51848u, var_2.x) | var_2) << (~1u % 32u), abs(_wgslsmith_mult_u32(0u, var_2.x)) | select(~var_2.x, var_2.x, true)));
    let var_4 = _wgslsmith_sub_vec3_i32(max(-vec3<i32>(u_input.a.x, 2147483647i, arg_1), u_input.a.yxz), vec3<i32>(_wgslsmith_div_i32(-8769i, arg_1), u_input.c, 1i) << (~(var_3.yww << (vec3<u32>(var_2.x, var_3.x, var_2.x) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_mod_i32(-u_input.a.x, 0i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -5429i), 42005i, u_input.c) << ((_wgslsmith_div_u32(52306u, var_3.x) << (countOneBits(var_3.x) % 32u)) % 32u), _wgslsmith_div_i32(-38273i, _wgslsmith_mult_i32(0i, u_input.b.x)));
    return ~firstTrailingBit(~vec2<u32>(4294967295u, 32120u) ^ vec2<u32>(_wgslsmith_sub_u32(var_2.x, 0u), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1278f, 1000f, -1256f, -1391f)), ~(-1i)) << (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) ^ func_3(func_2(true), -_wgslsmith_dot_vec2_i32(-vec2<i32>(-51969i, u_input.a.x), vec2<i32>(35433i, u_input.c))).zz;
    let var_1 = Struct_1(650f);
    var var_2 = var_0.x;
    var var_3 = vec4<i32>(u_input.b.x ^ u_input.b.x, 0i, u_input.b.x, abs(-_wgslsmith_dot_vec3_i32(u_input.a.zyx, vec3<i32>(-16302i, 1i, 6103i))));
    let var_4 = Struct_1(-914f);
    let var_5 = abs(vec2<i32>(-1i) * -vec2<i32>(abs(33234i), 0i));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_1.a)), _wgslsmith_f_op_f32(-1f), var_1.a, -2100f);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.zy);
}

