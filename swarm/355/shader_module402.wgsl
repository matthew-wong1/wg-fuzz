struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = vec3<bool>(false, arg_0.x, arg_0.x);
    var_0 = arg_0.xyx;
    var_0 = arg_0.wzw;
    var var_1 = !arg_0.www;
    var_1 = arg_0.zww;
    return -50370i;
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32((vec4<i32>(u_input.a, 40448i, 2147483647i, 0i) & vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)) | ~vec4<i32>(35963i, u_input.a, 1i, -1i), max(firstLeadingBit(vec4<i32>(0i, 10415i, u_input.a, u_input.a)), select(vec4<i32>(u_input.a, 87249i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(199f)), -1125f, _wgslsmith_div_f32(1832f, -1111f), -1317f) - vec4<f32>(1f, 1f, 1f, 1f))), abs(_wgslsmith_mod_i32(~abs(u_input.a), reverseBits(-2147483647i))), -263f);
    var var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_sub_u32(49002u, 47084u)), ~40019u) | ~(~19483u));
    let var_2 = !(!(!(var_0.b.x <= 1f)));
    let var_3 = arg_0;
    let var_4 = Struct_3(_wgslsmith_clamp_u32(1u, var_3.b.x, 4294967295u));
    return ~(~(~(~vec4<u32>(27471u, 22007u, 39618u, var_4.a)))) >> (vec4<u32>(~47461u ^ firstTrailingBit(firstTrailingBit(var_3.b.x)), ~(~1u), abs(~var_1.a), 4294967295u) % vec4<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + _wgslsmith_f_op_f32(sign(-224f))), _wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1)))));
    var var_1 = ~_wgslsmith_sub_vec4_u32(func_3(Struct_2(select(vec4<bool>(arg_3.x, arg_3.x, false, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, false, arg_3.x, arg_3.x)), ~vec2<u32>(1u, 0u))), func_3(Struct_2(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), ~vec2<u32>(30870u, 13732u))));
    var var_2 = vec4<i32>(arg_0, -23777i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, 47409i, 31984i), firstLeadingBit(vec4<i32>(u_input.a, arg_2, 1i, -2147483647i))) << (var_1.x % 32u), 0i) ^ (select(-vec4<i32>(arg_2, 30625i, 17977i, 14944i) ^ vec4<i32>(u_input.a, arg_2, -1i, -42163i), (vec4<i32>(1i, 1i, 2147483647i, -20197i) >> (vec4<u32>(0u, 1u, var_1.x, var_1.x) % vec4<u32>(32u))) | vec4<i32>(arg_0, 15001i, 67558i, arg_2), false) & vec4<i32>(u_input.a & arg_0, -12336i, _wgslsmith_clamp_i32(0i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -48005i), vec2<i32>(u_input.a, -5358i))), func_1(select(vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), true))));
    var_2 = ~(~((vec4<i32>(-1i) * -vec4<i32>(arg_2, var_2.x, arg_0, var_2.x)) ^ firstLeadingBit(vec4<i32>(-13837i, arg_0, 8422i, -18318i))));
    var_1 = ~_wgslsmith_sub_vec4_u32(min(~vec4<u32>(0u, 7468u, 32634u, var_1.x), ~reverseBits(vec4<u32>(0u, 1u, var_1.x, var_1.x))), ~func_3(Struct_2(vec4<bool>(true, arg_3.x, arg_3.x, false), vec2<u32>(var_1.x, var_1.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x)) - vec4<f32>(arg_1, -646f, 705f, 1000f)) - vec4<f32>(_wgslsmith_f_op_f32(-332f + -373f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(var_0.x))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = ~90995u;
    let var_2 = !vec4<bool>(true, false, select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), true), any(vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    let var_3 = Struct_3(~var_1);
    let var_4 = ~65707u;
    return Struct_2(!(!var_2), vec2<u32>(var_4, _wgslsmith_mult_u32(var_3.a, 0u)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<i32>(arg_3.x, -1i);
    let var_1 = select(vec2<bool>(!(!any(vec2<bool>(false, false))), false | arg_1.a.x), arg_1.a.zy, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 75501u, 0u) ^ firstLeadingBit(vec3<u32>(arg_1.b.x, 18869u, 0u)), ~vec3<u32>(8786u, arg_1.b.x, 37725u)) <= ~86156u);
    var var_2 = vec3<i32>(firstLeadingBit(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(19275i, var_0.x, var_0.x, arg_3.x), vec4<i32>(22874i, -52661i, arg_3.x, 0i)), -vec4<i32>(u_input.a, -2147483647i, -2147483647i, 0i))), reverseBits(var_0.x), 1i);
    var var_3 = !func_4(-(~(-var_2.x)), Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(-58726i, arg_3.x, 48848i, 1i), firstLeadingBit(vec4<i32>(var_2.x, 1i, arg_3.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.x, arg_0, arg_0)), ~_wgslsmith_div_i32(u_input.a, u_input.a), arg_0)).a.wx;
    var var_4 = -6072i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 298f;
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i & u_input.a, u_input.a), -vec2<i32>(u_input.a, -u_input.a));
    let var_2 = func_5(-1233f, func_4(u_input.a, Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(-45204i, -65325i, u_input.a, 60908i), vec4<i32>(-1i, u_input.a, u_input.a, 21904i)), _wgslsmith_f_op_vec4_f32(func_2(~(-1i), _wgslsmith_f_op_f32(1378f + -260f), func_1(vec4<bool>(true, false, false, true)), vec2<bool>(true, true))), 2147483647i, -612f)), vec2<f32>(-2328f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(748f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f))))))), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_1), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, var_1)) ^ select(vec2<i32>(u_input.a, 10372i), vec2<i32>(var_1, u_input.a), vec2<bool>(false, true)))));
    let var_3 = var_2.a.x;
    var var_4 = any(func_4(var_1, Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, var_1), vec4<i32>(u_input.a, var_1, 1i, -2147483647i)), vec4<i32>(u_input.a, -91147i, -2147483647i, var_1)), vec4<f32>(-839f, _wgslsmith_div_f32(-686f, 1199f), -482f, _wgslsmith_f_op_f32(-948f - -3214f)), ~countOneBits(var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2538f - 949f))))).a.xww);
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(506f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2375f, _wgslsmith_f_op_f32(f32(-1f) * -1312f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(-1624f, -340f), any(var_2.a.yy))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f + -154f)), _wgslsmith_f_op_f32(trunc(678f)))));
    let var_6 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec4<u32>(34687u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<u32>(4294967295u, var_2.b.x, 4881u)), _wgslsmith_mult_u32(var_2.b.x, var_2.b.x), var_2.b.x), abs(~vec4<u32>(0u, 55978u, var_2.b.x, 67004u)), ~var_2.b.x <= _wgslsmith_sub_u32(var_2.b.x, var_2.b.x))), func_3(Struct_2(!select(var_2.a, vec4<bool>(var_2.a.x, true, var_6, var_3), false), countOneBits(var_2.b))).zxx);
}

