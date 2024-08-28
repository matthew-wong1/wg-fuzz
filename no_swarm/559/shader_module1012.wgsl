struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> bool {
    var var_0 = abs(_wgslsmith_mod_u32(u_input.a ^ ~u_input.a, ~u_input.b.x));
    var_0 = ~_wgslsmith_mod_u32(u_input.a, ~(select(u_input.b.x, 1u, true) << (~u_input.a % 32u)));
    var_0 = 1u;
    return _wgslsmith_div_f32(888f, _wgslsmith_f_op_f32(f32(-1f) * -1431f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -919f), -969f)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = abs(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(1i, 19985i, -1i, 55966i))), min(vec4<i32>(-6190i, -26581i, 25294i, 2147483647i), vec4<i32>(-29427i, -54125i, -48029i, 2147483647i)) & (vec4<i32>(-1i, 32629i, 3769i, 74557i) << (vec4<u32>(u_input.b.x, 14547u, arg_0.b, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(1i, 1i)));
    let var_2 = arg_0;
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, firstLeadingBit(2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 4636i, var_1.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, 36289i, var_1.x))), countOneBits(~0i))), vec3<i32>(var_1.x, _wgslsmith_div_i32(var_1.x, _wgslsmith_mod_i32(~0i, ~(-8926i))), ~(-1i)));
    var var_3 = Struct_1(select(select(arg_0.a, vec2<bool>(var_0.a.x, true), true), select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(var_2.a.x, true), !var_0.a.x), select(select(arg_0.a, var_0.a, arg_0.a.x), var_0.a, vec2<bool>(var_2.a.x, arg_0.a.x)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a.x), arg_0.a, var_0.a), true)), select(!select(arg_0.a, vec2<bool>(true, true), var_2.a), !(!var_2.a), arg_0.a)), 27330u);
    return 15686i;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = 2147483647i;
    let var_1 = Struct_1(select(!vec2<bool>(!arg_0, arg_0), select(vec2<bool>(arg_0, func_2()), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)), vec2<bool>(false, true), true), false == arg_0), arg_0), u_input.b.x);
    var_0 = abs(1i);
    var var_2 = abs(func_3(Struct_1(vec2<bool>(all(vec3<bool>(true, arg_0, true)), !var_1.a.x), firstLeadingBit(88210u))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(173f)))) + 591f), _wgslsmith_div_f32(_wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2144f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-670f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1295f * -2123f))))));
    return -reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-4268i, -1i), -39449i)) << (_wgslsmith_dot_vec3_u32(abs(~abs(vec3<u32>(u_input.a, u_input.a, var_1.b))), _wgslsmith_div_vec3_u32(countOneBits(abs(vec3<u32>(4294967295u, 4294967295u, u_input.b.x))), _wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, 31281u, u_input.b.x), vec3<u32>(var_1.b, u_input.a, 4294967295u)), max(vec3<u32>(1u, 4294967295u, var_1.b), vec3<u32>(var_1.b, 20850u, 0u))))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(~(~(-vec4<i32>(-10066i, 0i, 1i, -36889i))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 14336i, 1i), vec3<i32>(-65730i, -44884i, -7303i)), 1i, 1i, countOneBits(16777i)), vec4<i32>(1i, 1i, 1i, 1i))) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -3883i, 1i), vec4<i32>(-34912i, -59331i, -14205i, 1i)))), ~countOneBits(vec4<i32>(-9974i, -2147483647i, 0i, 1i)));
    let var_1 = Struct_1(vec2<bool>(var_0.x >= _wgslsmith_add_i32(~(-8517i), func_1(false)), false), 2194u);
    let var_2 = Struct_1(!var_1.a, _wgslsmith_mult_u32(~var_1.b, u_input.b.x));
    let var_3 = Struct_1(var_1.a, _wgslsmith_sub_u32(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_2.b, var_1.b), vec3<u32>(78578u, 1u, var_1.b))) | ~(~var_2.b), 1u));
    let var_4 = Struct_1(select(!select(var_2.a, vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(var_3.a.x, false), var_3.a)), !select(!var_3.a, var_2.a, vec2<bool>(true, true)), !all(var_2.a)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ vec2<u32>(~var_1.b, min(9214u, _wgslsmith_div_u32(var_4.b, 67311u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-906f, -495f, 1322f), vec3<f32>(-717f, -1000f, -1000f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-828f, 111f, -666f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, 1181f, -578f) - vec3<f32>(330f, 1752f, -1338f))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-242f - 1000f), _wgslsmith_f_op_f32(-1330f + -554f), 1319f)))));
}

