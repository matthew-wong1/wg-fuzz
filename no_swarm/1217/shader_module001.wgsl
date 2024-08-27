struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = Struct_2(vec3<u32>(abs(31028u | (u_input.d | u_input.d)), reverseBits(12104u), ~_wgslsmith_mult_u32(u_input.c.x | 47209u, 1u)));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, arg_1), -2147483647i);
    var_1 = Struct_2(_wgslsmith_div_vec3_u32(~vec3<u32>(abs(6951u), 8539u, u_input.c.x | u_input.e), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(26116u, var_1.a.x, var_1.a.x), var_1.a, ~vec3<u32>(167467u, 1u, u_input.d)), vec3<u32>(33637u, 1746u & u_input.d, 41155u), ~vec3<u32>(9249u, 12900u, u_input.d))));
    var var_3 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-879f, 1253f, -918f), vec3<f32>(-375f, 369f, arg_0.x))) - vec3<f32>(1000f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(1790f, arg_0.x, arg_0.x))), true)))), 1i >= var_2, 26418u, arg_0);
    return !select(select(vec2<bool>(var_3.c, any(vec2<bool>(var_3.c, true))), vec2<bool>(any(vec2<bool>(var_3.c, true)), var_3.c), vec2<bool>(!var_3.c, any(vec4<bool>(false, var_3.c, var_3.c, true)))), vec2<bool>(true, !(false | var_3.c)), !(!(var_3.c | false)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), ~arg_0.a.x != arg_0.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), false), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1428f, 1935f, arg_2.x) - _wgslsmith_f_op_vec3_f32(-arg_2.yxz)), ~(u_input.b << (u_input.a % 32u))));
    var var_1 = arg_2.ywy;
    var var_2 = Struct_1(arg_2.yww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1299f - arg_1.x), -704f, func_3(arg_2.yzw, -3452i).x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(360f + var_1.x)))), !select(true, firstTrailingBit(46263i) <= _wgslsmith_mult_i32(u_input.b, u_input.b), true), _wgslsmith_add_u32(reverseBits(u_input.d), u_input.e), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, var_1.x)), _wgslsmith_f_op_f32(1185f * arg_2.x), 900f) * arg_2.ywy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.xxx) + arg_2.zxz), select(select(!vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(false, true, var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), !vec3<bool>(true, false, var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false)), true))));
    var var_3 = 58617u;
    let var_4 = Struct_2(max(u_input.c, _wgslsmith_mod_vec3_u32(abs(~arg_0.a), ~vec3<u32>(4294967295u, u_input.a, 76608u) >> (min(u_input.c, vec3<u32>(62694u, u_input.a, var_2.d)) % vec3<u32>(32u)))));
    return 7449i >> (var_2.d % 32u);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = vec3<bool>(true, !(any(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, true), arg_0)) | all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), arg_0))), _wgslsmith_mod_i32(u_input.b, u_input.b) >= 1i);
    return vec2<i32>(-1i, func_2(Struct_2(~select(u_input.c, u_input.c, vec3<bool>(var_0.x, true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-576f, -897f), vec2<f32>(-100f, 1023f), vec2<bool>(arg_0, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1041f), 234f), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -12798i)) > _wgslsmith_clamp_i32(u_input.b, u_input.b, -63113i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(min(-1001f, _wgslsmith_f_op_f32(-1121f + 288f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(853f, 473f) + _wgslsmith_f_op_f32(-610f + -803f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1848f) + -2269f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(vec3<u32>(abs(min(arg_3.a.x, 0u)), ~(~(0u << (u_input.a % 32u))), 8128u));
    var_0 = arg_3;
    let var_1 = ~(36642u >> (~(u_input.c.x << (_wgslsmith_clamp_u32(var_0.a.x, 0u, 12685u) % 32u)) % 32u));
    var_0 = Struct_2(firstLeadingBit(arg_3.a) << (vec3<u32>(~u_input.d, min(24777u, arg_3.a.x), u_input.a) % vec3<u32>(32u)));
    let var_2 = arg_3;
    return _wgslsmith_f_op_f32(step(1329f, 140f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    let var_1 = Struct_1(vec3<f32>(-498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1259f))), _wgslsmith_div_f32(-466f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - -662f) - 235f))), vec3<f32>(_wgslsmith_f_op_f32(step(-2065f, _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_1(false), Struct_2(u_input.c))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(357f - 524f), _wgslsmith_f_op_f32(abs(1171f)))), _wgslsmith_f_op_f32(-836f - _wgslsmith_f_op_f32(f32(-1f) * -432f)))), 753f), false, var_0, vec3<f32>(949f, -511f, 201f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_4(select(vec4<bool>(var_1.c, true, true, true), vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<bool>(true, true, var_1.c, false)), select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.c)), -vec2<i32>(-6585i, 1i), Struct_2(u_input.c)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(397f + var_1.b.x), _wgslsmith_f_op_f32(round(var_1.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, 911f) * vec2<f32>(var_1.a.x, -191f)) * _wgslsmith_f_op_vec2_f32(max(var_1.e.xz, vec2<f32>(1406f, -540f)))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 908f, var_1.c))))), _wgslsmith_f_op_f32(func_4(select(vec4<bool>(!var_1.c, all(vec2<bool>(false, true)), true, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, var_1.c, var_1.c, true), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, true))), vec2<bool>(true, !var_1.c), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(16180i, 1i), -vec2<i32>(u_input.b, 50382i)), vec2<i32>(u_input.b, func_1(var_1.c).x)), Struct_2(~vec3<u32>(1u, var_0, 0u)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1451f)) * 1247f);
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.zx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, -111f) * vec2<f32>(-1014f, var_2.x))))))));
    var var_4 = Struct_2(~(u_input.c << (_wgslsmith_clamp_vec3_u32(vec3<u32>(14408u, 23826u, var_1.d), vec3<u32>(4294967295u, var_0, 1u), u_input.c) % vec3<u32>(32u))) >> (vec3<u32>(~(~60074u), abs(max(var_0, u_input.e)), var_0) % vec3<u32>(32u)));
    var_2 = vec2<f32>(-1989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1081f))));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_5.b.x), reverseBits(var_0), firstTrailingBit(u_input.b), 0u);
}

