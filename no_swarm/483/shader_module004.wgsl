struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = ~99667u;
    let var_1 = -(~_wgslsmith_div_i32(abs(u_input.a.x), u_input.b ^ -6410i));
    let var_2 = -9629i > var_1;
    let var_3 = Struct_2(u_input.a);
    var var_4 = var_3.a.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f - arg_0)) - arg_0))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = -1000f;
    let var_1 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 0u, 11133u), vec3<u32>(2435u, 1u, 0u), !(!vec3<bool>(arg_0, arg_0, true))), firstLeadingBit(vec3<u32>(80299u, _wgslsmith_mod_u32(12258u, 10913u), abs(5279u)))) << (~77881u % 32u);
    var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(trunc(-2915f)))));
    var var_2 = ~_wgslsmith_sub_i32(u_input.b, 1i) & ~u_input.b;
    var var_3 = vec3<i32>(26449i, ~_wgslsmith_dot_vec2_i32(u_input.a.yz, ~vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(var_1, 12911u) % vec2<u32>(32u))), u_input.a.x);
    return Struct_2(vec3<i32>(-1i) * -vec3<i32>(-var_3.x, var_3.x, -41975i));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = select(vec4<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), false, true, select(false, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !any(vec2<bool>(false, false)))), !vec4<bool>(false, !(arg_1.x >= arg_3), all(vec3<bool>(true, true, true)), true), true);
    var var_1 = select(vec3<bool>(!var_0.x, true, any(vec3<bool>(arg_1.x < 15523u, all(var_0.xzw), all(vec2<bool>(var_0.x, var_0.x))))), select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wyz, vec3<bool>(var_0.x || true, any(var_0), all(select(var_0, vec4<bool>(true, var_0.x, false, var_0.x), var_0.x)))), var_0.x);
    var var_2 = Struct_1(select(vec3<bool>(_wgslsmith_div_i32(2147483647i, arg_0.x) < u_input.b, var_1.x, true), !(!vec3<bool>(var_0.x, false, true)), var_0.x), countOneBits(~_wgslsmith_sub_u32(5360u, firstLeadingBit(arg_3))), 14383u);
    let var_3 = Struct_1(vec3<bool>(var_0.x, !((arg_1.x & var_2.c) > (arg_3 << (var_2.b % 32u))), _wgslsmith_f_op_f32(step(-158f, 2163f)) == 215f), 6032u, _wgslsmith_mod_u32(countOneBits(arg_3), ~26344u));
    var var_4 = ~(arg_3 << (arg_3 % 32u));
    return Struct_2(countOneBits(u_input.a));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = func_4(~_wgslsmith_add_vec3_i32(u_input.a, -(~u_input.a)), vec4<u32>(~(~_wgslsmith_div_u32(14973u, 90056u)), 1u, _wgslsmith_sub_u32(43649u, 3010u) >> (~(~1u) % 32u), 0u), func_2(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), 0u);
    var_0 = func_2(true);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0));
    var_0 = func_4(vec3<i32>(44518i, -(~firstLeadingBit(0i)), _wgslsmith_dot_vec3_i32(select(var_0.a, u_input.a, vec3<bool>(false, true, true)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), firstTrailingBit(~vec3<i32>(var_0.a.x, 1i, -526i)))), abs(abs(vec4<u32>(max(1u, 4294967295u), 0u, 1u, 83403u << (1u % 32u)))), func_4(vec3<i32>(u_input.b, 0i, ~_wgslsmith_add_i32(u_input.a.x, var_0.a.x)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25142u), vec2<u32>(16579u, 23819u)), ~1u, ~1u) | max(vec4<u32>(33434u, 73787u, 42268u, 19407u), abs(vec4<u32>(4294967295u, 1u, 0u, 1u))), Struct_2((var_0.a ^ vec3<i32>(2147483647i, -5105i, 1i)) << (vec3<u32>(1u, 47942u, 4294967295u) % vec3<u32>(32u))), (firstTrailingBit(32839u) ^ 101409u) << (max(1u, 0u) % 32u)), firstLeadingBit(11110u));
    var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(0i, abs(var_0.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.a.x, -1i, -3172i), vec4<i32>(2147483647i, var_0.a.x, u_input.b, u_input.a.x)), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, var_0.a.x), vec4<i32>(-2147483647i, u_input.b, 30376i, u_input.b), vec4<bool>(false, false, true, false))), vec4<i32>(-1i, -15696i, _wgslsmith_clamp_i32(u_input.b, var_0.a.x, 1i), _wgslsmith_add_i32(u_input.a.x, var_0.a.x))), 55093i));
    return func_4(vec3<i32>(u_input.a.x, u_input.b | var_0.a.x, 838i), vec4<u32>(1u, 1u, 1u, 1u), func_2(any(vec2<bool>(true, true))), 1u);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(684f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-937f)), -788f)))));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(~0u, 9554u >> (arg_3.c % 32u), ~min(firstTrailingBit(1u), arg_3.c)), arg_3.c, _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(70969u, arg_3.b), 4294967295u & arg_3.b), 4294967295u), ~arg_3.c);
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-540f)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(-199f * _wgslsmith_div_f32(989f, var_0.x))))) < 307f;
    var_2 = true;
    return arg_0;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2116f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f - -695f) + _wgslsmith_f_op_f32(1000f - 1236f))))));
    var var_1 = !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true));
    var var_2 = 1037f;
    let var_3 = !(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), true)));
    var_1 = any(select(select(vec2<bool>(any(vec4<bool>(true, false, false, var_3.x)), var_3.x), !vec2<bool>(var_3.x, false), select(select(var_3.xz, vec2<bool>(true, true), vec2<bool>(var_3.x, var_3.x)), vec2<bool>(true, var_3.x), select(var_3.yx, vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, true)))), !var_3.zz, _wgslsmith_add_u32(4294967295u, reverseBits(arg_0.x)) > arg_0.x));
    return 48457i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2295f, 1000f)));
    var var_1 = vec2<i32>(28496i ^ func_6(~(~vec3<u32>(1u, 56279u, 0u)), func_5(Struct_2(u_input.a), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), func_1(vec2<f32>(-1527f, 211f)), Struct_1(vec3<bool>(false, true, true), 4294967295u, 4294967295u))), func_6(~firstTrailingBit(vec3<u32>(1669u, 4294967295u, 7404u)), Struct_2(countOneBits(u_input.a))));
    let var_2 = abs(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_add_u32(11128u, 6543u), 7713u, reverseBits(398u), _wgslsmith_clamp_u32(1u, 31380u, abs(5339u))), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true), -15182i != u_input.a.x), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))));
    let var_3 = -1i;
    let var_4 = vec2<bool>(true, true);
    let var_5 = vec4<i32>(func_5(func_2(any(var_4) == all(vec4<bool>(false, var_4.x, var_4.x, var_4.x))), !select(select(vec3<bool>(var_4.x, true, false), vec3<bool>(false, false, var_4.x), var_4.x), !vec3<bool>(var_4.x, var_4.x, var_4.x), select(var_4.x, var_4.x, false)), func_2(!(!var_4.x)), Struct_1(vec3<bool>(select(false, var_4.x, var_4.x), var_4.x, true), abs(~var_2.x), 9545u)).a.x, ~var_1.x, ~var_1.x, countOneBits(i32(-1i) * -47588i));
    var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -348f), -787f), vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -891f, var_4.x)), _wgslsmith_f_op_f32(trunc(111f)))))).a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(855f))) - -297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f - 508f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-563f - -245f) + _wgslsmith_f_op_f32(f32(-1f) * -654f))), -1794f));
}

