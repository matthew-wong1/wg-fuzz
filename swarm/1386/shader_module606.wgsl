struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_div_f32(615f, -1006f), var_0, var_0), vec4<f32>(_wgslsmith_div_f32(var_0, -383f), var_0, _wgslsmith_f_op_f32(var_0 - -479f), -944f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, true, false))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2065f) - _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(721f, 955f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-160f, 1455f, true)) + var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, var_0))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(502f, var_0, -954f, var_0));
    let var_2 = -116f;
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_0, var_2, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_0, var_1.x, 671f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-219f, 847f, -102f, 1286f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), -1089f, var_1.x, var_0))));
    return _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 1u, u_input.a.x)), ~u_input.a.xxy & u_input.a.zwx);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(~u_input.a.yzw, func_3()), firstTrailingBit(reverseBits(34700u) & ~arg_2.x)), firstTrailingBit(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)), any(vec4<bool>(!arg_1, false, true, any(vec3<bool>(false, true, arg_1)))) | true, arg_1);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~(_wgslsmith_dot_vec2_u32(arg_2, u_input.a.xy) & arg_2.x), var_0.a ^ ~(~4294967295u), arg_2.x), arg_0, _wgslsmith_f_op_f32(-767f * 559f), false, !(2147483647i != var_0.b.x));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1508f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - var_1.c))), !(!(var_1.b.x > -2147483647i))))));
    let var_3 = Struct_5(Struct_1(~firstTrailingBit(_wgslsmith_clamp_u32(var_1.a, var_1.a, 0u)), (arg_0 | _wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(arg_0.x, var_0.b.x, var_0.b.x), var_0.b)) & _wgslsmith_add_vec3_i32(abs(var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(50781i, arg_0.x, var_1.b.x), var_0.b)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1093f, 773f))))), false, arg_1), Struct_4(var_1.c, !select(select(vec4<bool>(true, true, var_0.d, false), vec4<bool>(var_1.d, var_0.e, var_1.d, false), arg_1), !vec4<bool>(arg_1, var_0.d, var_1.e, false), !var_0.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, -1912f), vec2<f32>(-965f, 1484f))) * vec2<f32>(1297f, var_0.c)) * vec2<f32>(var_0.c, 586f)), _wgslsmith_dot_vec2_u32(~u_input.a.yx, vec2<u32>(~u_input.a.x, u_input.a.x ^ var_1.a)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.b.x, var_1.b.x), max(arg_0.x, -13209i) | -1i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_2, -996f), vec3<f32>(-268f, var_2, 728f))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.c * -1183f), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))), ~vec2<u32>(min(min(4294967295u, 45274u), firstTrailingBit(arg_2.x)), _wgslsmith_sub_u32(var_1.a, arg_2.x) << (0u % 32u)), vec3<f32>(-182f, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_1.c - 225f)), var_1.c));
    var var_4 = var_3.b.b;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-174f, 1040f)), arg_0.c, _wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_f_op_f32(arg_0.c - arg_1.b.a)))))));
    var var_1 = arg_1.c.yy;
    var_1 = arg_1.b.c;
    var_1 = var_0.yz;
    var var_2 = (arg_1.a.d && arg_1.a.d) || func_2(-_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.a.b.x, arg_0.b.x, 2147483647i), arg_1.a.b), !(all(vec3<bool>(arg_0.e, arg_1.a.e, arg_0.e)) && true), vec2<u32>(firstTrailingBit(arg_1.b.d) >> (14827u % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x & arg_1.d.x)));
    return _wgslsmith_f_op_f32(min(-1872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c)))))) <= var_1.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = -vec2<i32>(arg_0.x, 1i);
    var var_2 = u_input.a;
    var var_3 = ~(-17203i);
    let var_4 = arg_0.xxy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 480f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1247f, 1853f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - -359f)))));
    var_0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(abs(8785i), 2147483647i, -1i, firstLeadingBit(2147483647i)), select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(false, true)), true), !func_1(Struct_1(u_input.a.x, vec3<i32>(0i, -22022i, 2147483647i), -180f, false, false), Struct_5(Struct_1(u_input.a.x, vec3<i32>(-2147483647i, 1i, 59163i), 1720f, false, true), Struct_4(749f, vec4<bool>(false, false, true, true), vec2<f32>(468f, -1460f), u_input.a.x, -1i), vec3<f32>(-1024f, -501f, -770f), vec2<u32>(6173u, u_input.a.x), vec3<f32>(219f, 241f, -510f)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), func_1(Struct_1(22122u, vec3<i32>(-1i, 0i, -2147483647i), -107f, true, true), Struct_5(Struct_1(u_input.a.x, vec3<i32>(-2147483647i, 2623i, -2147483647i), -1860f, false, false), Struct_4(269f, vec4<bool>(true, false, false, false), vec2<f32>(-552f, -241f), 0u, 0i), vec3<f32>(454f, 1446f, -468f), u_input.a.wz, vec3<f32>(2824f, -1000f, 995f)))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))))), _wgslsmith_mult_i32(countOneBits(1i), ~(-select(34187i, -1i, false))), select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-776f + 1000f))))))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-366f)), 1f), -(~vec2<i32>(_wgslsmith_sub_i32(-36134i, 36914i), ~1i)));
}

