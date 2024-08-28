struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true & any(vec3<bool>(false, true, false)), true), false));
    let var_1 = all(!(!(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), var_0))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-786f + _wgslsmith_div_f32(-107f, _wgslsmith_div_f32(-1962f, 1633f))), _wgslsmith_f_op_f32(select(1f, -805f, var_1)), _wgslsmith_f_op_f32(trunc(-967f))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = 1u >> (_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, u_input.a), min(~_wgslsmith_sub_u32(14022u, arg_0), _wgslsmith_mult_u32(1u, u_input.a))) % 32u);
    var var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(~var_1.a, _wgslsmith_mult_vec4_i32(var_1.a, min(vec4<i32>(33952i, u_input.c, 1i, 18210i), var_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(-1325f, var_1.b.x, arg_2.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(func_3(u_input.c, vec4<u32>(arg_0, u_input.d, arg_0, arg_0)))))), -(~u_input.c) | _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-23232i, u_input.c), select(1i, ~(-15846i), var_1.e.x)), !vec4<bool>(all(select(vec4<bool>(false, true, var_1.d.x, var_1.d.x), vec4<bool>(var_1.e.x, arg_2.d.x, arg_1.x, var_1.d.x), arg_1.x)), false, false, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec2<bool>(arg_2.d.x, !any(select(var_1.d.xyw, vec3<bool>(false, false, arg_1.x), arg_1.x))));
    var_1 = Struct_1(abs(~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, var_2.c, arg_2.c, arg_2.c)), var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1375f, var_2.b.x, var_2.b.x))) * vec3<f32>(-137f, var_2.b.x, -771f)) + _wgslsmith_f_op_vec3_f32(-var_2.b))), i32(-1i) * -1i, !(!select(arg_2.d, vec4<bool>(var_1.d.x, var_2.e.x, var_1.d.x, arg_2.e.x), select(var_2.d, var_2.d, var_1.d))), vec2<bool>(!all(!arg_2.d), true));
    let var_3 = var_2.b.x;
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = -768f;
    let var_1 = select(vec4<bool>(true, false, !all(vec3<bool>(true, true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(true, true, true, true), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, func_2(8206u, vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec3<f32>(var_0, var_0, 450f), 26688i, vec4<bool>(false, false, false, false), vec2<bool>(true, true))), true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), !vec4<bool>(true, select(true, true, false), true, any(vec4<bool>(true, true, false, false)))));
    var var_2 = Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 11660i), vec2<i32>(u_input.c, 16383i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 11949i), vec3<i32>(12436i, u_input.c, u_input.c)), _wgslsmith_add_i32(-2147483647i, 1i), _wgslsmith_mult_i32(u_input.c, u_input.c)) & abs(select(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), var_1))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, var_0, 707f)) + vec3<f32>(var_0, -389f, var_0)) + vec3<f32>(_wgslsmith_f_op_f32(select(-375f, 688f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1147f), var_0)))), ~u_input.c, vec4<bool>(true | (max(1u, u_input.b.x) == (u_input.b.x << (16518u % 32u))), var_1.x, all(var_1.yxw), var_1.x), var_1.wz);
    let var_3 = ~(~max(~7681u, ~0u) << (~u_input.b.x % 32u));
    let var_4 = false;
    return Struct_2(_wgslsmith_div_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(var_3, 58196u, 47495u, 4294967295u))) | ~select(vec4<u32>(7331u, u_input.a, u_input.d, 10345u), vec4<u32>(4294967295u, 42142u, var_3, 60973u), var_2.e.x), reverseBits(~min(vec4<u32>(u_input.a, 0u, 34820u, 0u), vec4<u32>(var_3, var_3, u_input.d, var_3)))), Struct_1(-vec4<i32>(0i, 1i, ~28839i, 1i), _wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.b)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_2.a.x, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 33456i), var_2.a.xxz, vec3<i32>(var_2.a.x, u_input.c, u_input.c))), var_2.a.zxw), select(vec4<bool>(any(vec3<bool>(false, true, var_2.e.x)), true, func_2(u_input.a, vec2<bool>(false, var_4), Struct_1(var_2.a, var_2.b, 21908i, vec4<bool>(false, var_4, var_2.d.x, true), var_2.e)), true), vec4<bool>(func_2(1u, var_2.d.wz, Struct_1(var_2.a, var_2.b, var_2.c, var_1, vec2<bool>(false, true))), true, 27923i > var_2.c, var_4), !(!var_1.x)), vec2<bool>(true, false)), var_2.d.xy, var_1.xy);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(func_1().b.a, ~(-vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, u_input.c, -2147483647i) << (arg_1 % vec4<u32>(32u)))), arg_0.b.b, ~_wgslsmith_mult_i32(-(-2147483647i >> (arg_1.x % 32u)), -2147483647i), select(arg_0.b.d, arg_0.b.d, !(!any(arg_0.b.d))), !select(!select(arg_0.d, vec2<bool>(arg_0.d.x, true), arg_0.b.e.x), arg_0.d, !(!arg_0.d.x)));
    var var_1 = var_0;
    var var_2 = arg_0.b.a;
    let var_3 = var_1.d.zwy;
    var var_4 = arg_0.a.xwx;
    return !var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>((i32(-1i) * -1i) ^ -u_input.c, 4770i | u_input.c, u_input.c, _wgslsmith_mod_i32(-1i, 4555i) << (u_input.b.x % 32u)) >> (vec4<u32>(~reverseBits(u_input.b.x), 0u, ~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 3475u, u_input.a), vec3<u32>(u_input.d, 3734u, u_input.b.x)) | 14311u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-268f, -140f, 1000f), vec3<f32>(-715f, 154f, -1957f)) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-480f, 671f, 1263f), _wgslsmith_div_vec3_f32(vec3<f32>(1006f, 1000f, 351f), vec3<f32>(1261f, -639f, -523f)))))), select(u_input.c, u_input.c, !all(vec3<bool>(true, true, true))), func_4(func_1(), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(6191u, u_input.d, 88648u, 0u), vec4<u32>(u_input.d, 18629u, u_input.a, u_input.d)), vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a) & vec4<u32>(1877u, 1u, 16370u, 24022u)), vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), u_input.a, u_input.a, 0u))), vec2<bool>(any(vec2<bool>(true, false)) || true, true));
    var var_1 = _wgslsmith_sub_vec3_u32(~firstTrailingBit(u_input.b), select(~(vec3<u32>(31924u, u_input.a, u_input.d) ^ u_input.b), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.d, u_input.b.x, u_input.b.x)), vec3<u32>(1u, 0u, u_input.b.x) >> (u_input.b % vec3<u32>(32u))), !var_0.d.x & true) << (firstTrailingBit(u_input.b) % vec3<u32>(32u)));
    var_1 = ~(u_input.b ^ u_input.b);
    var var_2 = ~countOneBits(~firstLeadingBit(abs(var_1.zy)));
    let var_3 = func_1().b;
    var var_4 = _wgslsmith_mult_vec3_u32(~vec3<u32>(reverseBits(~u_input.d), 1u, u_input.a), ~(~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(1907u, var_2.x, u_input.d))));
    var var_5 = ~u_input.b;
    var_5 = vec3<u32>(u_input.d | ~(~_wgslsmith_add_u32(u_input.d, var_4.x)), 32779u, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b ^ vec3<u32>(u_input.d, _wgslsmith_mult_u32(u_input.b.x, 0u), 4294967295u)));
}

