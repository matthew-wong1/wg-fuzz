struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    var var_0 = 1186f;
    let var_1 = Struct_2(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1241f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(825f, 672f) - -135f) * _wgslsmith_f_op_f32(-1433f * 1f)), 1547f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.yww) * _wgslsmith_f_op_vec3_f32(-var_1.a.xwy))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-561f, var_1.a.x, var_1.a.x, 727f), var_1.a)), var_1.a)))))));
    var var_3 = Struct_5(var_1, vec4<bool>(true, true, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), abs(countOneBits(u_input.b)) <= ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1374f, -1430f, 244f, 1477f), var_1.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, -1106f, -1040f, var_2.b.x) * vec4<f32>(var_2.a.x, var_2.a.x, var_2.b.x, 197f)) * var_1.a))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b + var_2.b)))));
    var var_4 = -272f;
    return false;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = 608f;
    var var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1619f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), -648f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1263f * -1115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2152f - arg_0) - -538f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f + arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0)), arg_0)));
    var var_2 = Struct_3(var_1.a);
    let var_3 = !vec4<bool>(all(vec2<bool>(true, func_3())), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false, any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    var var_4 = !(!vec2<bool>(false, var_3.x));
    return !(!select(true | any(var_3.yzz), true, !var_3.x));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-arg_0.a.a.b.x));
    let var_1 = _wgslsmith_mult_u32(~reverseBits(39219u), u_input.a.x);
    return Struct_3(Struct_1(arg_0.a.a.b.wwy, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1395f, -189f)), -606f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(183f)))), -627f, _wgslsmith_div_f32(-993f, _wgslsmith_f_op_f32(-arg_0.a.a.b.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    var var_0 = -2147483647i;
    var var_1 = arg_0;
    var_0 = -(~_wgslsmith_sub_i32(1i, reverseBits(-1i)) >> (1u % 32u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.x, -1805f, _wgslsmith_f_op_f32(379f * -879f), _wgslsmith_f_op_f32(arg_1.a.b.x * -835f)) * arg_1.a.b))));
    var_0 = _wgslsmith_dot_vec2_i32(~max(min(~vec2<i32>(-2147483647i, u_input.d), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(arg_0, u_input.c))), ~vec2<i32>(-1i, arg_2)), min(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(u_input.c, arg_0))) & max(firstTrailingBit(abs(vec2<i32>(arg_0, -9633i))), select(-vec2<i32>(-2147483647i, -29973i), select(vec2<i32>(1i, 6141i), vec2<i32>(-1i, -2147483647i), false), func_3())));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2333f, 883f, 1462f, -770f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, 463f, 1087f, 203f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-964f, 1000f, 1527f, -2638f), vec4<f32>(932f, 1081f, -1035f, -1347f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 255f, -337f, 869f) + vec4<f32>(432f, -1484f, -1689f, 394f)), true))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-183f)) - _wgslsmith_f_op_f32(floor(var_0.x)));
    var var_2 = firstTrailingBit(~(u_input.a.yw >> (firstLeadingBit(vec2<u32>(9015u, 51048u)) % vec2<u32>(32u))) << (u_input.a.yw % vec2<u32>(32u)));
    var_2 = u_input.a.yy;
    var var_3 = vec2<bool>(min(58747u >> (select(u_input.a.x, 0u, false) % 32u), u_input.b) <= u_input.a.x, -2147483647i < (i32(-1i) * -u_input.d));
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    var var_5 = Struct_4(func_4(_wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-16849i, -10335i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(-2147483647i, 0i) >> ((vec2<u32>(var_2.x, 68412u) >> (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))), func_1(Struct_4(Struct_3(Struct_1(var_0.yxw, var_0)))), 7158i));
    let var_6 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.a.b.x) + _wgslsmith_f_op_f32(var_1 + var_5.a.a.b.x))), var_1), var_5.a.a.a.x);
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~max(select(-vec3<i32>(-28893i, 5833i, u_input.d), vec3<i32>(-19142i, u_input.c, u_input.d), select(vec3<bool>(false, true, true), vec3<bool>(var_3.x, var_3.x, true), var_3.x)), ~(~vec3<i32>(40807i, -23092i, u_input.c))), u_input.a.zy, abs(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(16601i, u_input.d)), vec2<i32>(max(-1i, u_input.c), -8316i | u_input.c), vec2<i32>(-1i, ~u_input.d))));
}

