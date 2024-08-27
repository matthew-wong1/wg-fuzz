struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 19997u, 1u);

var<private> global1: u32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x) * -421f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(1350f * 1044f), all(vec2<bool>(true, false)))) + arg_2.a.x)));
    global1 = _wgslsmith_mult_u32(~42978u, ~max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.c.b.c.ywy, arg_2.c.b.c.yxw), ~vec3<u32>(1u, arg_2.c.b.c.x, 13631u)), ~(u_input.a.x | var_0)));
    global1 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(reverseBits(arg_2.c.b.c), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_2.d.x, 61614u, 65691u, u_input.a.x), vec4<u32>(4294967295u, 1u, 45697u, global0.x)), vec4<u32>(var_0, 4294967295u, u_input.a.x, arg_2.c.b.c.x)), vec4<u32>(0u, global0.x, ~22842u, var_0 << (1u % 32u)))));
    global0 = vec3<u32>(~_wgslsmith_clamp_u32(9297u, arg_2.c.b.c.x, ~var_0) & 4294967295u, 1u, ~4294967295u);
    return arg_2.c.c.x;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(123f - _wgslsmith_f_op_f32(-858f - 2579f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1226f - _wgslsmith_f_op_f32(f32(-1f) * -271f)) - _wgslsmith_f_op_f32(func_3(true, -vec2<i32>(38919i, -2147483647i), Struct_3(vec4<f32>(1258f, 1666f, 1000f, 1158f), Struct_1(vec4<i32>(arg_0, 19225i, arg_0, arg_0), vec2<i32>(37885i, arg_0), vec4<u32>(0u, 65712u, arg_2, 5527u)), Struct_2(var_0, Struct_1(vec4<i32>(arg_0, arg_0, -2147483647i, arg_0), vec2<i32>(arg_0, 33743i), vec4<u32>(arg_1.x, 55646u, 51033u, 0u)), vec2<f32>(-1714f, -989f)), vec2<u32>(u_input.a.x, 45854u))))), _wgslsmith_f_op_f32(sign(2153f)), 695f), Struct_1(-vec4<i32>(arg_0 & arg_0, -arg_0, arg_0 >> (0u % 32u), firstLeadingBit(77249i)), firstTrailingBit(countOneBits(abs(vec2<i32>(-27798i, 2147483647i)))), reverseBits(~vec4<u32>(arg_2, 0u, u_input.a.x, 22925u)) | abs(vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, u_input.a.x))), Struct_2(-1039f != _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(floor(-920f))), Struct_1(~(~vec4<i32>(arg_0, 1i, arg_0, -13317i)), vec2<i32>(-47688i, ~(-30551i)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(32781u, 4799u, 0u, 43680u)), vec4<u32>(global0.x, 0u, arg_2, 6576u) & vec4<u32>(11991u, u_input.a.x, arg_1.x, arg_1.x), ~vec4<u32>(4294967295u, arg_1.x, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(704f * 138f), 558f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1360f, -592f), vec2<f32>(1557f, 2415f))))), vec2<u32>(u_input.a.x, arg_2));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.c.c);
    var var_3 = true;
    var var_4 = ~vec4<u32>(_wgslsmith_mult_u32(arg_2, _wgslsmith_add_u32(101945u ^ arg_2, abs(var_1.c.b.c.x))), (var_1.b.c.x << ((u_input.a.x << (1u % 32u)) % 32u)) | ~arg_2, arg_2, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(18255u, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(global0.x, u_input.a.x))), ~(~var_1.b.c.x), ~4294967295u | _wgslsmith_clamp_u32(var_1.c.b.c.x, 0u, 9903u)));
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = func_2(-17538i, vec2<u32>(~_wgslsmith_add_u32(24188u, arg_1.d.x), _wgslsmith_sub_u32(~arg_1.d.x, arg_1.b.c.x)) | arg_1.d, ~1u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - _wgslsmith_f_op_vec4_f32(exp2(arg_1.a))))), Struct_1(abs(_wgslsmith_div_vec4_i32(var_0.a, arg_1.b.a)) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, global0.x, 58911u), _wgslsmith_mult_vec4_u32(vec4<u32>(94725u, var_0.c.x, global0.x, arg_1.c.b.c.x), vec4<u32>(6392u, u_input.a.x, 102393u, 1u))) % vec4<u32>(32u)), vec2<i32>(~abs(arg_0), arg_0), abs(vec4<u32>(4294967295u, var_0.c.x, 4294967295u, global0.x)) ^ _wgslsmith_add_vec4_u32(arg_1.b.c, ~arg_1.c.b.c)), Struct_2(!arg_2 & (arg_1.a.x == _wgslsmith_f_op_f32(-arg_1.c.c.x)), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.b.a.x, var_0.a.x, var_0.b.x, arg_1.b.b.x), vec4<i32>(arg_1.c.b.b.x, var_0.b.x, -34733i, -33700i)), vec2<i32>(var_0.b.x >> (15684u % 32u), ~arg_0), countOneBits(vec4<u32>(42361u, var_0.c.x, global0.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.ww - arg_1.c.c) - arg_1.c.c))), vec2<u32>(~22936u, 1u));
    let var_2 = var_1;
    var_0 = func_2(var_2.c.b.a.x, ~vec2<u32>(var_2.b.c.x, 1u), ~select(~(~32532u), (arg_1.b.c.x ^ global0.x) | u_input.a.x, !all(vec2<bool>(false, false))));
    var_0 = Struct_1(~(-_wgslsmith_add_vec4_i32(var_1.c.b.a, var_0.a)), ~(_wgslsmith_mult_vec2_i32(arg_1.b.b, var_2.b.a.wx) | -vec2<i32>(var_0.a.x, -2147483647i)) >> (vec2<u32>(~var_0.c.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.d.x, u_input.a.x), 83386u)) % vec2<u32>(32u)), var_0.c);
    return func_2(-1i, ~_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(arg_1.b.c.x, var_2.d.x)), ~var_1.c.b.c.zz), _wgslsmith_div_u32(var_1.d.x, ~(~var_2.b.c.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.b.c.x, var_1.b.c.x, 46907u), var_2.b.c))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = ~(~vec3<u32>(~_wgslsmith_mult_u32(arg_1, 31600u), abs(~1u), ~arg_2.c.x));
    let var_0 = _wgslsmith_mult_vec3_i32(select(~vec3<i32>(2147483647i, arg_2.b.x, -21690i), select(vec3<i32>(-arg_0.x, arg_2.a.x & 34412i, -arg_0.x), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.a.x, arg_3.x, arg_3.x), -vec3<i32>(arg_0.x, arg_3.x, 2147483647i)), true), false), abs(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.yzy, arg_3.www), _wgslsmith_div_vec3_i32(arg_3.zwz, vec3<i32>(arg_3.x, 1i, arg_0.x)), ~arg_0))));
    global0 = _wgslsmith_add_vec3_u32(arg_2.c.xwz, vec3<u32>(_wgslsmith_sub_u32(~(global0.x & 0u), arg_1), ~(~u_input.a.x | ~arg_1), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_2.c.zyw, ~arg_2.c.zwx))));
    var var_1 = any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, false)), !any(vec2<bool>(false, true))));
    var var_2 = -556f;
    return func_1(_wgslsmith_sub_i32(abs(arg_2.a.x), 54746i), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(397f, -465f, 1820f, 842f) * vec4<f32>(-925f, -699f, -1436f, 2879f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, 1575f, 1113f, 915f)))), arg_2, Struct_2(-1i == arg_2.a.x, func_1(countOneBits(-1i), Struct_3(vec4<f32>(-2002f, 320f, -505f, -301f), arg_2, Struct_2(true, arg_2, vec2<f32>(383f, -1000f)), vec2<u32>(1u, 59012u)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1208f, 580f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, 804f) - vec2<f32>(-2325f, -1554f)))), vec2<u32>(~4294967295u, u_input.a.x)), any(vec3<bool>(!any(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)) && select(false, true, false), true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = select(vec2<bool>(arg_0.c.a, ~select(4294967295u, 0u, true) > abs(~global0.x)), vec2<bool>(false, (!arg_0.c.a && (arg_0.c.a & true)) | true), all(select(!(!vec4<bool>(arg_3.x, true, false, false)), vec4<bool>(true, false, 274f < arg_2, arg_0.c.a), all(vec4<bool>(arg_3.x, true, arg_0.c.a, true)))));
    var var_2 = true;
    let var_3 = func_1(i32(-1i) * -firstTrailingBit(var_0 & arg_0.c.b.b.x), arg_0, _wgslsmith_div_f32(arg_1.x, arg_0.a.x) <= -721f);
    var var_4 = ~(~(~u_input.a.x));
    return Struct_1(~(-vec4<i32>(2147483647i, var_0 | var_0, _wgslsmith_dot_vec4_i32(arg_0.b.a, vec4<i32>(-26612i, -94030i, -17080i, var_3.a.x)), 34496i)), var_3.a.yw, max(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.c.b.c.x, global0.x, 668u), arg_0.b.c)), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(arg_0.b.c.x, global0.x, 11127u), _wgslsmith_mult_u32(4891u, arg_0.c.b.c.x), ~arg_0.b.c.x, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(any(!vec2<bool>(select(false, false, true), true)), func_5(Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(611f, 1000f, -825f, 123f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 360f, 1000f, -480f))), true)), func_4(~vec3<i32>(44064i, 41129i, -2147483647i), _wgslsmith_mult_u32(1u, 18316u), func_1(1i, Struct_3(vec4<f32>(1000f, -1086f, -2060f, -814f), Struct_1(vec4<i32>(28892i, -52949i, -63430i, -6554i), vec2<i32>(26568i, 9421i), vec4<u32>(30655u, 1u, 4294967295u, u_input.a.x)), Struct_2(false, Struct_1(vec4<i32>(59809i, 0i, 62670i, 2006i), vec2<i32>(-65495i, -1i), vec4<u32>(61115u, 22310u, u_input.a.x, global0.x)), vec2<f32>(-539f, 554f)), vec2<u32>(u_input.a.x, 12116u)), false), -vec4<i32>(-2147483647i, 1i, -15712i, 2147483647i)), Struct_2(true, func_2(-3593i, global0.zy, global0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -391f)))), vec2<u32>(func_4(vec3<i32>(-1i, 9638i, -17931i), u_input.a.x, Struct_1(vec4<i32>(-1i, 24713i, 2195i, -44391i), vec2<i32>(3708i, 1i), vec4<u32>(u_input.a.x, 0u, 124217u, 1u)), vec4<i32>(22363i, 2147483647i, 1i, -2147483647i)).c.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -889f, 1143f, -494f) * vec4<f32>(224f, -516f, -1148f, 636f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(504f)))), _wgslsmith_f_op_f32(sign(-381f))), vec2<bool>(true, true)), vec2<f32>(1205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1273f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)))));
    var var_1 = Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(528f, -884f))) * var_0.c));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(any(vec2<bool>(var_0.a, true)), vec2<i32>(var_1.b.b.x, 2147483647i), Struct_3(vec4<f32>(var_0.c.x, var_0.c.x, var_1.c.x, var_0.c.x), var_1.b, Struct_2(true, var_0.b, var_1.c), u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1145f))), _wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x - -137f), -360f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, var_1.c.x, 986f, -2305f) - vec4<f32>(331f, var_1.c.x, 1079f, -705f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, 1000f, var_1.c.x, -449f)) - vec4<f32>(-758f, -947f, var_1.c.x, 639f)))), var_0.b, Struct_2(var_1.a, var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(-1000f, 398f))))), global0.zy);
    var var_3 = var_2.c;
    var var_4 = var_1.b.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

