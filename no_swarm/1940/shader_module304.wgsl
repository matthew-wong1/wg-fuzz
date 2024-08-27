struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_4(firstLeadingBit(~max(vec2<u32>(arg_0.a.d, u_input.a.x), u_input.c.zx) << ((vec2<u32>(arg_2, 30104u) & _wgslsmith_mult_vec2_u32(u_input.c.xz, u_input.c.xy)) % vec2<u32>(32u))), select(1u <= _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), !arg_0.c.x, select(true, arg_3.x, arg_0.a.a.x)) | arg_0.a.a.x);
    var var_1 = max(-_wgslsmith_add_i32(min(max(u_input.b.x, 26175i), -2147483647i), countOneBits(~7993i)), arg_0.d.x);
    var_1 = i32(-1i) * -(arg_0.b.x ^ 1i);
    let var_2 = arg_0.a.b;
    var var_3 = Struct_4(var_0.a, all(select(vec4<bool>(659f <= var_2, true, !arg_0.a.a.x, all(arg_0.c)), arg_0.a.a, arg_0.c)));
    return all(vec3<bool>(var_3.b, true, false));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> bool {
    var var_0 = Struct_1(select(!(!vec4<bool>(arg_3, arg_1, true, arg_1)), vec4<bool>(_wgslsmith_f_op_f32(arg_0 + 1861f) >= arg_0, false || all(vec4<bool>(arg_3, arg_1, arg_3, arg_1)), false, true), true), arg_0, -795f, 54008u);
    let var_1 = Struct_3(Struct_1(!(!select(vec4<bool>(var_0.a.x, false, arg_1, true), vec4<bool>(arg_3, arg_3, var_0.a.x, true), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(-1173f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(944f)) - _wgslsmith_f_op_f32(-1115f - arg_0))), ~u_input.a.x), vec2<i32>(~(-7711i >> (1u % 32u)), ~firstLeadingBit(arg_2.x)) | reverseBits(arg_2.zx), !var_0.a, ~(vec4<i32>(-1i) * -select(vec4<i32>(19722i, 2147483647i, arg_2.x, 0i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i), var_0.a)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.c))), 1956f, 13050u);
    var var_2 = Struct_5(abs(~1i));
    let var_3 = Struct_5(u_input.b.x);
    return var_0.a.x;
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_4(u_input.a.zy, func_4(-344f, func_3(Struct_3(Struct_1(vec4<bool>(false, false, false, true), -1186f, 148f, arg_0.x), vec2<i32>(u_input.b.x, 31845i) & vec2<i32>(-2147483647i, 50364i), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), -vec4<i32>(u_input.b.x, -291i, u_input.b.x, 8048i)), 2147483647i, _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zz), vec2<bool>(true, true)), min(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), abs(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)) && true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -3032f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-551f * -1000f)))) * -706f), 1213f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1522f))), _wgslsmith_f_op_f32(step(839f, -1425f)), true)), 882f);
    var var_2 = ~reverseBits(abs(min(var_0.a.x, var_0.a.x)));
    var var_3 = Struct_1(select(select(select(select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, false, false, true), var_0.b), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), !vec4<bool>(var_0.b, true, var_0.b, false)), vec4<bool>(true, var_0.b, !var_0.b, var_0.b), false), !(!select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, true, true, var_0.b), false)), !(!(var_0.a.x > u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a));
    var_2 = abs(var_0.a.x);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), var_1.ww)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_2(!(!arg_2), ~_wgslsmith_div_vec4_u32((vec4<u32>(u_input.c.x, 0u, u_input.c.x, 0u) ^ vec4<u32>(u_input.a.x, 5202u, u_input.a.x, 73228u)) | (vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, u_input.a.x) | vec4<u32>(u_input.a.x, 1u, 99007u, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, u_input.c.x, 57550u, 1u))));
    let var_1 = u_input.b.x;
    var_0 = Struct_2(arg_1.x, reverseBits(~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 2530u, 30396u, 46733u), vec4<u32>(var_0.b.x, u_input.c.x, u_input.c.x, var_0.b.x)), countOneBits(vec4<u32>(67537u, var_0.b.x, 20860u, 24926u)))));
    var_0 = Struct_2(arg_2, vec4<u32>(_wgslsmith_add_u32(~u_input.a.x << (var_0.b.x % 32u), u_input.a.x), _wgslsmith_mod_u32(var_0.b.x, ~22452u), u_input.a.x, _wgslsmith_sub_u32(~min(u_input.a.x, var_0.b.x), ~max(var_0.b.x, 0u))));
    var_0 = Struct_2(arg_3.x, vec4<u32>(var_0.b.x, u_input.a.x, u_input.c.x, 89640u));
    return Struct_3(Struct_1(select(select(!vec4<bool>(arg_3.x, true, true, true), !vec4<bool>(var_0.a, true, true, false), vec4<bool>(true, false, arg_3.x, var_0.a)), select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(true, false, false, true), !vec4<bool>(arg_1.x, true, false, arg_3.x)), vec4<bool>(true, arg_3.x, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(645f - arg_0.x) * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(755f, arg_0.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1073f, arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x))))), max(0u, ~u_input.a.x)), _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.zx)), vec2<i32>(u_input.b.x, 1i), ~u_input.b.yz << ((var_0.b.yy & vec2<u32>(104603u, u_input.a.x)) % vec2<u32>(32u))) << (vec2<u32>(0u, 53887u) % vec2<u32>(32u)), !select(select(vec4<bool>(var_0.a, arg_1.x, var_0.a, true), select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(var_0.a, arg_3.x, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(arg_2, arg_2, var_0.a, arg_2)), !select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(var_0.a, true, arg_2, arg_1.x), arg_2), vec4<bool>(arg_2, select(arg_3.x, var_0.a, arg_2), true, all(arg_1))), ~vec4<i32>(37427i, var_1, -1i, abs(reverseBits(0i))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 255f))))), arg_1.zx);
    var_0 = 0u;
    var_0 = ~4294967295u;
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(arg_1.xy, arg_1.xz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1))), _wgslsmith_f_op_vec2_f32(func_2(~vec3<u32>(1u, u_input.a.x, u_input.c.x)))))), vec3<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, true)), !(arg_0 & !arg_0), arg_0), all(!vec3<bool>(true, all(vec4<bool>(true, arg_0, true, true)), true)), !select(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), arg_0), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, arg_0), !arg_0), !select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), true)));
    return func_5(vec2<f32>(-751f, 1368f), select(vec3<bool>(func_4(429f, any(var_2.a.a.www), arg_2.xzw, true), func_3(func_5(arg_1.yz, vec3<bool>(false, true, false), var_2.a.a.x, vec2<bool>(var_2.a.a.x, var_2.a.a.x)), arg_2.x, var_2.a.d & u_input.a.x, vec2<bool>(true, arg_0)), any(select(vec4<bool>(false, arg_0, arg_0, var_2.c.x), vec4<bool>(var_2.a.a.x, true, arg_0, var_2.c.x), arg_0))), var_2.a.a.yxy, false), var_2.c.x, vec2<bool>(arg_0, var_2.c.x)).a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = ~min(firstTrailingBit(~u_input.a.wz >> (u_input.a.xy % vec2<u32>(32u))), ~select(u_input.a.xy, vec2<u32>(526u, u_input.a.x), arg_1.x) ^ _wgslsmith_mult_vec2_u32(select(vec2<u32>(36139u, u_input.c.x), u_input.c.xy, false), u_input.a.zx));
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(93640u, 15240u)), _wgslsmith_dot_vec4_u32(abs(u_input.a), ~u_input.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)) - func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.c)), !vec3<bool>(arg_0.a.x, true, arg_1.x), all(arg_1.xx), select(arg_0.a.zw, arg_1.xz, vec2<bool>(arg_1.x, arg_0.a.x))).a.c), arg_0.c)) + _wgslsmith_f_op_f32(f32(-1f) * -357f));
    var var_3 = false;
    var var_4 = ~_wgslsmith_mult_i32(1i, abs(func_5(vec2<f32>(-711f, arg_0.c), vec3<bool>(false, false, false), false, vec2<bool>(arg_1.x, true)).b.x) << (var_0.x % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 896f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_1(!select(select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, true, var_0, false), true), select(!vec4<bool>(true, var_0, true, false), !vec4<bool>(false, var_0, var_0, var_0), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0))), any(vec4<bool>(false, false, true, var_0)) & !var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(var_0, vec3<f32>(-1158f, 528f, -697f), vec4<i32>(u_input.b.x, u_input.b.x, 0i, 14350i)), !vec3<bool>(var_0, true, var_0), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -26870i, u_input.b.x), vec4<i32>(u_input.b.x, 36606i, -6343i, u_input.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1473f)), _wgslsmith_div_f32(274f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f + 147f))))), 307f, 1u >> (abs(u_input.a.x) % 32u));
    var var_2 = u_input.b.x;
    var_2 = _wgslsmith_mult_i32(~(-min(1i, u_input.b.x)), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.c))))), !var_1.a.zzx, func_5(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, -813f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.c) + vec2<f32>(-1688f, 820f))), !func_5(vec2<f32>(var_1.b, var_1.c), var_1.a.wxx, var_0, vec2<bool>(true, var_1.a.x)).a.a.yyx, any(func_1(var_1.a.x, vec3<f32>(789f, 1231f, var_1.b), vec4<i32>(-1i, u_input.b.x, -1i, 2147483647i)).a), select(vec2<bool>(false, true), var_1.a.yy, true)).a.a.x, func_1(var_0, vec3<f32>(func_1(true, vec3<f32>(-342f, -416f, var_1.b), vec4<i32>(-18906i, u_input.b.x, u_input.b.x, 1i)).c, -1150f, _wgslsmith_div_f32(1270f, 611f)), vec4<i32>(u_input.b.x, 1i, 34433i & u_input.b.x, u_input.b.x)).a.ww).d.x);
    let var_3 = Struct_2(var_0, _wgslsmith_clamp_vec4_u32(~u_input.a, u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(u_input.a.x), ~4294967295u, 12639u, reverseBits(64124u)), u_input.a)));
    var var_4 = abs(u_input.b.xz);
    let var_5 = vec3<f32>(1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-104f, -944f))), -1023f);
    let var_6 = func_1(var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5)), var_5, var_1.a.x))), firstTrailingBit(~(vec4<i32>(u_input.b.x, var_4.x, 32921i, 55762i) & vec4<i32>(-1901i, u_input.b.x, u_input.b.x, -2147483647i)) & vec4<i32>(var_4.x ^ u_input.b.x, _wgslsmith_clamp_i32(0i, 4338i, 13599i), -2147483647i, ~37258i)));
    var var_7 = vec2<i32>(var_4.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yxy);
}

