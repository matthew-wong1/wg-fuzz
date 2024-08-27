struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = Struct_3(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) & ~vec2<u32>(89934u, u_input.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(6864u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 44426u))), Struct_1(~(~abs(vec3<i32>(-24241i, -2073i, 2147483647i))), vec4<u32>(countOneBits(52472u), 1u, ~1u, max(u_input.a, 15979u)) & vec4<u32>(firstTrailingBit(1u), max(u_input.a, 11511u), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1071f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(max(1000f, 1024f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - 1210f) - -559f) + var_1.b.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_1.b.c), _wgslsmith_f_op_f32(var_0.x + -1219f))), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1323f, var_1.c, var_0.x, var_1.c), vec4<f32>(-1000f, var_0.x, var_1.b.c, -971f)))))))));
    var var_2 = Struct_4(-1014f, Struct_1(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(u_input.e.ywy, vec3<i32>(var_1.b.a.x, 56169i, -1i)), ~(~var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.c))) - -910f)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_dot_vec4_u32(var_1.b.b, vec4<u32>(min(14072u, 4294967295u), firstLeadingBit(u_input.a), 1u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-947f, var_0.x)))) - var_0.x)), -u_input.e.xwx, var_1);
    return 29949u;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    var var_0 = any(arg_2.a.yz);
    var var_1 = Struct_3(vec2<u32>((func_3(vec4<bool>(true, arg_2.a.x, true, arg_2.a.x), vec2<bool>(false, arg_2.a.x)) & 0u) ^ arg_1.x, firstLeadingBit(1u)), Struct_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.c.x), ~u_input.e.xyy), ~(~min(vec4<u32>(46709u, arg_3, arg_2.b, 0u), vec4<u32>(arg_2.b, 0u, 1u, 1u))), _wgslsmith_f_op_f32(278f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1077f)), _wgslsmith_f_op_f32(trunc(arg_2.c)))))), arg_2.c);
    var var_2 = -443f;
    var var_3 = var_1.b;
    var var_4 = Struct_2(select(vec3<bool>(false, !(var_3.a.x > var_1.b.a.x), var_1.b.c == -509f), vec3<bool>(all(arg_2.a.xy), true, true && arg_2.a.x), !select(!arg_2.a, vec3<bool>(arg_2.a.x, true, true), arg_2.a.x)), 6566u & (_wgslsmith_clamp_u32(min(arg_2.b, arg_3), ~var_3.b.x, ~1u) | firstTrailingBit(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c + -1952f), _wgslsmith_f_op_f32(ceil(var_3.c))))));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1196f)) * _wgslsmith_div_f32(var_1.c, -504f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.c)), -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f * var_1.b.c) - arg_2.c), -888f)), Struct_1(var_1.b.a, ~var_1.b.b, var_4.c), arg_2, ~var_1.b.a, Struct_3(~(~(~vec2<u32>(arg_1.x, arg_1.x))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) + _wgslsmith_f_op_f32(round(-631f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    var var_0 = arg_1.b.a.x <= (-7237i << (arg_0.b.b.x % 32u));
    let var_1 = u_input.b;
    var var_2 = vec3<u32>(1256u, _wgslsmith_sub_u32(~(~47445u), arg_1.b.b.x), firstTrailingBit(max(u_input.a, arg_0.e.a.x | 0u)) << (~1u % 32u));
    var var_3 = Struct_5(arg_1, firstLeadingBit(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(47573i, -46698i, u_input.d)), vec3<i32>(~arg_1.b.a.x, func_2(4294967295u, arg_1.b.b.yww, arg_0.c, var_2.x).b.a.x, ~arg_0.d.x))));
    let var_4 = 1008f;
    return -34633i != _wgslsmith_sub_i32(countOneBits(0i << ((var_2.x >> (1u % 32u)) % 32u)), select(30662i, 26693i, !func_2(arg_1.a.x, var_3.a.b.b.xzw, Struct_2(vec3<bool>(false, false, arg_0.c.a.x), arg_0.c.b, 2429f), arg_0.b.b.x).c.a.x));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -120f), 404f))));
    var var_1 = abs(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.d, u_input.b), u_input.e.wyw), ~(-1i)));
    let var_2 = Struct_2(select(vec3<bool>(all(vec2<bool>(true, true)), true, func_4(func_2(0u, vec3<u32>(4294967295u, u_input.a, arg_0), Struct_2(vec3<bool>(false, arg_2, arg_2), 1u, -1020f), 1731u), Struct_3(vec2<u32>(u_input.a, 1u), Struct_1(vec3<i32>(u_input.c.x, u_input.b, arg_1), vec4<u32>(4294967295u, 41338u, 11696u, u_input.a), 928f), 2167f), u_input.e.zwx)), !(!(!vec3<bool>(arg_2, false, false))), vec3<bool>(!arg_2, !arg_2, u_input.e.x >= _wgslsmith_mod_i32(-1i, u_input.e.x))), _wgslsmith_mult_u32(func_2(min(0u, 8458u) << (u_input.a % 32u), firstLeadingBit(~vec3<u32>(0u, 4294967295u, u_input.a)), func_2(~arg_0, ~vec3<u32>(4294967295u, 25174u, 4294967295u), Struct_2(vec3<bool>(arg_2, arg_2, true), 1661u, -652f), _wgslsmith_div_u32(u_input.a, 42665u)).c, arg_0).b.b.x, _wgslsmith_dot_vec3_u32(func_2(u_input.a, vec3<u32>(30394u, 1581u, u_input.a), Struct_2(vec3<bool>(arg_2, arg_2, false), u_input.a, -618f), 0u).b.b.wzw, ~vec3<u32>(arg_0, 26137u, u_input.a)) | 97577u), -397f);
    var var_3 = vec3<i32>(1i, 25138i, ~(abs(_wgslsmith_mult_i32(arg_1, u_input.d)) ^ _wgslsmith_mult_i32(arg_1, abs(-30748i))));
    let var_4 = vec3<f32>(-556f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_2.c, var_2.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c))), !func_4(func_2(var_2.b, vec3<u32>(u_input.a, var_2.b, 4294967295u), var_2, var_2.b), func_2(20616u, vec3<u32>(52641u, var_2.b, 30535u), Struct_2(vec3<bool>(false, true, var_2.a.x), arg_0, -1131f), u_input.a).e, max(vec3<i32>(var_3.x, 0i, arg_1), u_input.e.yyx)))), _wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(trunc(-686f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1442f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 814f;
    let var_1 = _wgslsmith_add_i32(u_input.c.x, min(~(-21497i), _wgslsmith_dot_vec3_i32(~u_input.c, _wgslsmith_sub_vec3_i32(u_input.e.yzz, u_input.e.xwx))));
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -975f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_u32(46658u, 1u), -86355i, select(false, false, false))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(952f * -348f)))))));
    let var_2 = ~(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(18604u, ~abs(4294967295u), 39364u, ~_wgslsmith_add_u32(u_input.a, 1u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-579f, 1f)) * -221f)));
    var_0 = -922f;
    var_0 = 1170f;
    var var_3 = select(vec4<bool>(true, true, true, true), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), true), vec4<bool>(~u_input.b == (i32(-1i) * -1i), true, true, true), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, true, false), true))), func_2(abs(var_2.x), ~var_2.ywy, Struct_2(vec3<bool>(true, false, false), var_2.x, _wgslsmith_f_op_f32(387f * 2406f)), reverseBits(~0u)).c.a.x || false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 484f) * _wgslsmith_f_op_f32(f32(-1f) * -504f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f + 369f)))), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1418f)), _wgslsmith_f_op_f32(f32(-1f) * -291f), 1f, 563f)), 0u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, 691f, 450f) - vec3<f32>(-263f, -338f, -1984f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1290f, -1241f, -300f), vec3<f32>(1000f, 358f, 163f)))))))));
}

