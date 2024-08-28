struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32) -> vec2<u32> {
    global1 = arg_0.b.x;
    return _wgslsmith_div_vec2_u32(~vec2<u32>(abs(_wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(61718u, 1u, arg_0.a.x))), u_input.d), firstTrailingBit(arg_0.c.xz));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(-910f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - _wgslsmith_f_op_f32(-arg_1)))))));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, 1129f, false)) - arg_1), _wgslsmith_f_op_f32(abs(arg_1)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))))));
    var_1 = Struct_3(arg_1);
    var var_2 = arg_2;
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, var_1.a) + vec4<f32>(var_1.a, -718f, arg_1, 261f)) * _wgslsmith_div_vec4_f32(vec4<f32>(319f, arg_1, -509f, var_1.a), vec4<f32>(arg_1, -942f, -2352f, -279f))) - vec4<f32>(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_div_f32(-829f, arg_1), arg_1, _wgslsmith_f_op_f32(arg_1 - -345f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, arg_1, 383f, arg_1)) * vec4<f32>(arg_1, arg_1, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 696f, var_1.a, arg_1), vec4<f32>(-244f, var_1.a, arg_1, arg_1)) - vec4<f32>(arg_1, var_1.a, arg_1, -813f)), true)), false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_1.a, 1522f, var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1513f, -279f, var_1.a, 1919f), vec4<f32>(453f, 601f, arg_1, var_1.a)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, 614f, 2202f))), !(!select(vec4<bool>(false, var_2.c, var_2.c, arg_2.c), vec4<bool>(false, false, true, arg_2.c), vec4<bool>(true, arg_2.c, var_2.c, var_2.c)))))));
}

fn func_2() -> bool {
    var var_0 = vec2<u32>(u_input.d, u_input.d);
    let var_1 = Struct_4(vec2<u32>(~firstLeadingBit(firstTrailingBit(var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.d, 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1188f)) - _wgslsmith_f_op_f32(f32(-1f) * -1170f)))), Struct_2(vec4<u32>(var_0.x, ~u_input.d, u_input.d >> (42413u % 32u), 55327u), u_input.a, true, _wgslsmith_mult_vec4_i32(-u_input.c, ~vec4<i32>(33640i, u_input.c.x, u_input.e.x, u_input.b))))), _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(109527u, u_input.d, var_0.x), vec3<u32>(1u, 23479u, var_0.x)), var_0.x, var_0.x), vec3<u32>(1u, ~(~111409u), var_0.x)), _wgslsmith_f_op_f32(1742f * _wgslsmith_f_op_f32(trunc(-934f))), max(u_input.a, ~_wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec3_i32(u_input.c.yxx, vec3<i32>(u_input.b, u_input.a, 0i)))));
    var_0 = vec2<u32>(1u, 11230u);
    var_0 = _wgslsmith_sub_vec2_u32(abs(var_1.c.yz), ~vec2<u32>(_wgslsmith_mod_u32(5065u, u_input.d), ~var_0.x)) >> (var_1.a % vec2<u32>(32u));
    var_0 = vec2<u32>(120149u, 4294967295u);
    return any(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) || true, false, any(vec4<bool>(true, false, all(vec4<bool>(true, false, false, true)), select(true, true, true))), var_0.x == (func_1(var_1, vec2<bool>(false, false), var_1.e).x << (114359u % 32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(-(arg_1.e | 0i)), -2147483647i, select(-u_input.b, _wgslsmith_div_i32(28930i, -37116i), true) | _wgslsmith_mod_i32(arg_1.e, arg_3.e), -1i), _wgslsmith_sub_vec4_i32(max(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, arg_1.e), arg_1.e >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e, 1i, 5392i, 10043i), vec4<i32>(2147483647i, 52455i, u_input.c.x, 1i)), firstTrailingBit(u_input.e.x)), vec4<i32>(-arg_3.e, arg_3.e, _wgslsmith_dot_vec2_i32(vec2<i32>(-20548i, arg_3.e), vec2<i32>(arg_1.e, arg_3.e)), -arg_1.e)), firstLeadingBit(-(~vec4<i32>(arg_1.e, u_input.a, arg_1.e, arg_1.e)))));
    let var_1 = arg_3;
    var var_2 = ~(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(1u), 4294967295u, _wgslsmith_add_u32(0u, var_1.a.x), 0u & arg_0), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3.c, vec3<u32>(0u, 41007u, 26086u)), 70278u, u_input.d, _wgslsmith_add_u32(0u, 36881u))) | ~(~(~vec4<u32>(14872u, 4294967295u, 30107u, 13877u))));
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, 32714u, var_1.c.x, var_2.x) ^ vec4<u32>(1u, var_1.c.x, var_1.a.x, 31249u)) | vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 53502u, 50821u, 0u))), firstTrailingBit(func_1(Struct_4(vec2<u32>(var_2.x, 10397u), vec4<f32>(-1000f, -305f, arg_1.d, arg_1.b.x), vec3<u32>(u_input.d, var_2.x, arg_0), arg_1.d, arg_1.e), vec2<bool>(true, false), var_1.e).x), ~1u);
    var_0 = u_input.c;
    return _wgslsmith_f_op_f32(-544f * _wgslsmith_f_op_f32(floor(arg_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(~u_input.d, Struct_4(~vec2<u32>(0u, 63245u) | func_1(Struct_4(vec2<u32>(u_input.d, 5947u), vec4<f32>(-686f, -164f, -1359f, 2093f), vec3<u32>(53447u, 1u, u_input.d), -1593f, 1i), vec2<bool>(false, true), u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), -807f, -858f, _wgslsmith_f_op_f32(151f + -1678f)), vec3<u32>(u_input.d | u_input.d, _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), ~61745u), _wgslsmith_f_op_f32(-1000f * -1264f), 1i), vec4<bool>(func_2(), true, false, 972f > _wgslsmith_f_op_f32(step(1016f, 478f))), Struct_4(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), min(4294967295u, u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(-1643f * 329f), _wgslsmith_f_op_f32(round(-1384f)), -873f, _wgslsmith_f_op_f32(step(858f, -859f))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 41745u, u_input.d), vec3<u32>(u_input.d, 58385u, u_input.d)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, 0u, 27508u))), -875f, u_input.c.x))));
    var var_1 = u_input.c.ywx;
    let var_2 = var_0.a;
    global1 = 329f;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1092f));
    var var_4 = Struct_1(vec3<i32>(-3682i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, u_input.b, u_input.c.x), vec4<i32>(var_1.x, -1i, var_1.x, u_input.a)) ^ firstTrailingBit(_wgslsmith_mult_i32(-22362i, 0i))));
    var var_5 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.a)), _wgslsmith_f_op_f32(min(var_3.a, var_3.a))))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(91668u, Struct_4(vec2<u32>(_wgslsmith_add_u32(u_input.d, u_input.d), abs(u_input.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, 1865f, var_5.x)), vec4<f32>(var_0.a, var_3.a, -1548f, 449f))), vec3<u32>(~51291u, _wgslsmith_clamp_u32(0u, u_input.d, 0u), 4294967295u), var_0.a, firstLeadingBit(-2147483647i)), select(vec4<bool>(false, any(vec4<bool>(false, false, false, false)), true, true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))), Struct_4(select(vec2<u32>(1u, u_input.d), vec2<u32>(65560u, u_input.d), vec2<bool>(false, false)) & abs(vec2<u32>(u_input.d, 83492u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-759f, var_0.a, var_3.a, -1285f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(301f, var_0.a, -855f, 344f)))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), ~vec3<u32>(u_input.d, 0u, u_input.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a))), var_4.a.x))), var_4.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, 1357f)), vec2<f32>(var_5.x, var_3.a))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1076f, -133f), vec2<f32>(var_5.x, var_0.a), true)), vec2<f32>(1436f, -1212f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.a, var_5.x))))))), firstTrailingBit(var_4.a.x), _wgslsmith_f_op_f32(min(468f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_5.x + -816f), _wgslsmith_f_op_f32(-var_3.a))))))));
}

