struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_4,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1482f - -2168f) - arg_1.d.x)) - 351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1255f)))), arg_1.c.x));
    var_0 = 1540f;
    var var_1 = select(select(select(select(select(vec3<bool>(true, arg_1.c.x, arg_1.c.x), vec3<bool>(false, arg_1.a.x, false), arg_1.c.x), vec3<bool>(arg_1.a.x, arg_1.c.x, true), arg_1.a.x | arg_1.a.x), !(!vec3<bool>(true, true, arg_1.a.x)), !(!vec3<bool>(false, arg_1.c.x, arg_1.a.x))), select(select(!vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(false, false, true), any(vec4<bool>(false, true, false, arg_1.a.x))), select(select(vec3<bool>(false, arg_1.c.x, false), vec3<bool>(true, arg_1.a.x, false), arg_1.c.x), select(vec3<bool>(false, arg_1.a.x, true), vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(false, false, arg_1.a.x)), vec3<bool>(false, arg_1.c.x, arg_1.c.x)), false), arg_1.a.x & ((u_input.a.x > 0i) || false)), !vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -566f) >= arg_1.d.x, arg_1.a.x), select(select(vec3<bool>(!arg_1.c.x, false, false), !vec3<bool>(false, true, arg_1.c.x), select(select(vec3<bool>(false, false, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, false)), !vec3<bool>(arg_1.c.x, arg_1.a.x, arg_1.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_1.c.x), vec3<bool>(arg_1.c.x, false, arg_1.a.x)))), vec3<bool>(true, !any(vec3<bool>(arg_1.a.x, arg_1.c.x, arg_1.c.x)), false), true));
    var var_2 = _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, 0i), vec3<i32>(2147483647i, arg_1.e.x, arg_0))), arg_0 ^ (0i ^ arg_1.e.x))), -2147483647i);
    var_1 = vec3<bool>(arg_1.c.x, var_1.x, max(18048i, arg_0 | abs(0i)) > abs(arg_1.e.x));
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(countOneBits(1u), abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16726u, 28937u, arg_1.b), vec4<u32>(28825u, arg_1.b, arg_1.b, arg_1.b)), ~1u, ~1u))), arg_1.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    var var_0 = true;
    var var_1 = abs(arg_0.x);
    var var_2 = func_3(min(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), abs(arg_3.d.e.x)), ~arg_3.b.e.x), arg_3.b) | arg_0.x;
    let var_3 = arg_3.b;
    var_2 = 0u;
    return Struct_4(_wgslsmith_f_op_f32(exp2(arg_3.b.d.x)), var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1752f * _wgslsmith_f_op_f32(f32(-1f) * -2010f)) * _wgslsmith_f_op_f32(-var_3.d.x)), min(arg_1, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, arg_3.d.b, 64617u, arg_3.b.b), vec4<u32>(0u, 1u, arg_1, arg_0.x) | vec4<u32>(1u, var_3.b, 0u, arg_3.d.b))), Struct_1(!select(!vec2<bool>(arg_2, false), select(vec2<bool>(true, true), vec2<bool>(arg_3.a.a.x, arg_3.b.c.x), arg_3.d.a.x), var_3.a.x), _wgslsmith_mod_u32((3720u & arg_0.x) ^ 1u, ~reverseBits(arg_0.x)), arg_3.d.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.a.d.x))), -991f), arg_3.a.e));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> i32 {
    let var_0 = Struct_3(false);
    let var_1 = _wgslsmith_sub_vec2_i32(arg_0.e.e.yy, -_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mod_vec2_i32(u_input.b.yw, arg_0.e.e.xy)), vec2<i32>(4244i, -4819i), ~(arg_0.e.e.xz | u_input.a.zz)));
    let var_2 = Struct_5(abs(arg_0.d), arg_0.e, arg_0, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, arg_0.a, arg_0.b) - vec3<f32>(arg_0.e.d.x, -1000f, arg_0.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 417f, -518f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, 1577f, arg_0.b))))));
    var var_3 = func_2(~select(reverseBits(vec3<u32>(1u, arg_0.e.b, var_2.c.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.b.b, arg_0.d), vec3<u32>(69222u, var_2.a, 1u)), 30381u <= arg_0.e.b) | ~vec3<u32>(1u, 1u, ~0u), 4294967295u, !all(!(!vec4<bool>(false, arg_0.e.c.x, arg_0.e.c.x, arg_0.e.c.x))), Struct_2(arg_0.e, Struct_1(!var_2.b.a, ~39479u, arg_0.e.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-178f, arg_0.c) + vec2<f32>(-1153f, 360f))), vec3<i32>(-73562i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 37913i, -2147483647i, 1i), u_input.b), 23248i << (arg_0.d % 32u))), abs(0i), Struct_1(!select(vec2<bool>(false, var_0.a), vec2<bool>(false, arg_0.e.c.x), vec2<bool>(arg_0.e.c.x, false)), var_2.a, var_2.c.e.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, var_2.b.d.x) * vec2<f32>(arg_0.c, arg_0.b)) * _wgslsmith_f_op_vec2_f32(max(arg_0.e.d, vec2<f32>(1229f, var_2.c.c)))), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(0i, -1i, -43140i)), vec3<i32>(0i, 0i, -2194i)))));
    var_3 = Struct_4(-1326f, -216f, -564f, var_2.a, arg_0.e);
    return _wgslsmith_sub_i32(reverseBits(27952i), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.b.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.e.e.x, u_input.a.x, -27929i, -10396i), vec4<i32>(-10468i, var_1.x, u_input.b.x, arg_0.e.e.x)), ~u_input.b))) & 36117i;
}

fn func_5(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true), reverseBits(41933u), select(select(func_2(vec3<u32>(0u, 1u, 8707u), 81805u, false, Struct_2(Struct_1(vec2<bool>(true, false), 1165u, vec2<bool>(false, false), vec2<f32>(189f, 1063f), vec3<i32>(arg_0.x, -2147483647i, -1i)), Struct_1(vec2<bool>(true, false), 35117u, vec2<bool>(false, false), vec2<f32>(996f, -1000f), u_input.b.xzy), u_input.a.x, Struct_1(vec2<bool>(true, false), 6571u, vec2<bool>(false, true), vec2<f32>(-597f, -278f), vec3<i32>(-35270i, 57366i, arg_0.x)))).e.c, vec2<bool>(true, true), any(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false), all(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), vec2<f32>(-358f, -1274f), -u_input.a), func_2(vec3<u32>(10244u, min(countOneBits(0u), 4294967295u), 47978u), countOneBits(61107u) << (firstTrailingBit(~62715u) % 32u), 1u != (func_3(arg_0.x, Struct_1(vec2<bool>(false, true), 17853u, vec2<bool>(true, true), vec2<f32>(206f, 232f), u_input.a)) | _wgslsmith_add_u32(256u, 1u)), Struct_2(func_2(select(vec3<u32>(4294967295u, 20976u, 1u), vec3<u32>(4294967295u, 20474u, 1u), false), abs(0u), true, Struct_2(Struct_1(vec2<bool>(false, false), 1u, vec2<bool>(true, false), vec2<f32>(-1121f, 346f), u_input.a), Struct_1(vec2<bool>(false, true), 4294967295u, vec2<bool>(false, true), vec2<f32>(-104f, -1432f), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), 1i, Struct_1(vec2<bool>(false, false), 30882u, vec2<bool>(false, false), vec2<f32>(129f, -730f), u_input.a))).e, Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, true), false), 10908u, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(1083f, 354f), arg_0.yyz >> (vec3<u32>(12620u, 1u, 15883u) % vec3<u32>(32u))), u_input.a.x, Struct_1(func_2(vec3<u32>(4294967295u, 0u, 0u), 1u, false, Struct_2(Struct_1(vec2<bool>(false, false), 80312u, vec2<bool>(true, false), vec2<f32>(-1043f, -1636f), u_input.a), Struct_1(vec2<bool>(true, true), 1835u, vec2<bool>(true, true), vec2<f32>(972f, -217f), vec3<i32>(-2147483647i, 47705i, u_input.b.x)), -9646i, Struct_1(vec2<bool>(true, false), 1594u, vec2<bool>(false, true), vec2<f32>(-687f, -173f), vec3<i32>(-1i, arg_0.x, arg_0.x)))).e.c, _wgslsmith_dot_vec3_u32(vec3<u32>(14026u, 21450u, 1u), vec3<u32>(4294967295u, 23338u, 0u)), func_2(vec3<u32>(4294967295u, 1u, 1u), 0u, false, Struct_2(Struct_1(vec2<bool>(true, true), 1u, vec2<bool>(true, false), vec2<f32>(625f, -702f), arg_0.zxx), Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(true, true), vec2<f32>(-793f, 3051f), u_input.b.wzz), 112i, Struct_1(vec2<bool>(false, true), 0u, vec2<bool>(false, true), vec2<f32>(-247f, 228f), vec3<i32>(arg_0.x, -1i, -1i)))).e.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1317f, 1660f)), vec3<i32>(u_input.c, arg_0.x, arg_0.x)))).e, max(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, 26779i), 1i), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(7632i, 1i), u_input.b.zw, vec2<bool>(false, true)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(0i, u_input.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 20446i), u_input.b.xw, vec2<i32>(-2147483647i, -26866i))))), func_2(~vec3<u32>(1u, 1u, 1u), func_3(u_input.a.x, Struct_1(vec2<bool>(true, true), 4294967295u, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(968f, 580f)), u_input.a)), true, Struct_2(Struct_1(vec2<bool>(false, true), ~1u, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1957f, 653f), vec2<f32>(443f, 308f))), arg_0.wxz), Struct_1(vec2<bool>(true, true), firstTrailingBit(21134u), vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1073f, 265f) * vec2<f32>(1401f, -773f)), vec3<i32>(arg_0.x, 1i, 2147483647i)), u_input.a.x, Struct_1(vec2<bool>(true, true), abs(16793u), vec2<bool>(true, true), vec2<f32>(1597f, 2796f), abs(vec3<i32>(u_input.b.x, u_input.c, u_input.c))))).e);
    let var_1 = var_0.b.a.x;
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.d.x)), -1834f), -562f, _wgslsmith_f_op_f32(select(-406f, var_0.b.d.x, var_0.b.a.x)), var_0.d.b, Struct_1(vec2<bool>(false, all(vec4<bool>(true, var_0.a.c.x, var_0.d.a.x, var_0.d.a.x))), reverseBits(firstLeadingBit(~var_0.d.b)), !select(var_0.b.c, var_0.d.c, var_0.b.c.x), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1288f)), var_0.a.d.x))), -countOneBits(-var_0.b.e)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, -440f, -730f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.b, 1504f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, var_2.b, 1000f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(140f, var_2.c, 1039f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), 723f, _wgslsmith_f_op_f32(var_2.a * -1081f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, var_0.b.d.x, 631f) * vec3<f32>(var_0.d.d.x, var_2.b, -442f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.d.x, var_0.b.d.x, var_0.b.d.x)))))));
    var var_4 = Struct_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.b, 30135u, 16202u << (var_2.d % 32u)), countOneBits(vec3<u32>(4294967295u, 0u, var_0.a.b) ^ vec3<u32>(var_2.d, var_0.d.b, var_0.d.b))), var_2.e, Struct_4(var_0.b.d.x, func_2(firstLeadingBit(~vec3<u32>(36554u, var_0.b.b, 0u)), ~(~1u), !var_2.e.c.x && false, Struct_2(var_2.e, var_2.e, u_input.c, var_0.d)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(493f, var_2.b))), ~(var_0.b.b | 1u) << (1u % 32u), var_0.a), Struct_3(!any(!vec4<bool>(var_0.a.c.x, var_0.b.c.x, false, var_2.e.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, -1181f, var_3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-704f, var_0.b.d.x, var_0.d.d.x))), vec3<f32>(1026f, _wgslsmith_f_op_f32(-1000f + var_2.e.d.x), _wgslsmith_f_op_f32(-var_3.x))))));
    return var_4.d;
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_5(vec4<i32>(-u_input.a.x, ~(-10417i), max(func_4(func_2(vec3<u32>(38313u, 45798u, 22330u), 0u, true, Struct_2(Struct_1(vec2<bool>(false, false), 28167u, vec2<bool>(false, false), vec2<f32>(arg_0, arg_0), vec3<i32>(u_input.a.x, 0i, 5710i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(true, false), vec2<f32>(1000f, arg_0), u_input.a), -1i, Struct_1(vec2<bool>(false, true), 35784u, vec2<bool>(false, false), vec2<f32>(arg_0, arg_0), u_input.a))), ~u_input.a.x), (u_input.b.x << (4294967295u % 32u)) << (~0u % 32u)), 26499i));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-747f, -900f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-232f, 349f)) - arg_0) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1679f))))))), arg_0, 171f, _wgslsmith_mod_u32(~reverseBits(44089u), 1u), Struct_1(select(vec2<bool>(var_0.a, func_2(vec3<u32>(4294967295u, 0u, 33964u), 57244u, false, Struct_2(Struct_1(vec2<bool>(false, true), 35921u, vec2<bool>(var_0.a, true), vec2<f32>(1741f, 760f), u_input.b.xwx), Struct_1(vec2<bool>(false, false), 59491u, vec2<bool>(var_0.a, var_0.a), vec2<f32>(-852f, -1779f), vec3<i32>(u_input.b.x, u_input.c, -1i)), -18907i, Struct_1(vec2<bool>(true, var_0.a), 4294967295u, vec2<bool>(var_0.a, true), vec2<f32>(arg_0, arg_0), vec3<i32>(2147483647i, -2147483647i, u_input.a.x)))).e.c.x), !vec2<bool>(var_0.a, true), vec2<bool>(var_0.a && var_0.a, true)), ~firstLeadingBit(1u), !vec2<bool>(var_0.a, true), func_2(firstTrailingBit(vec3<u32>(1u, 0u, 0u)) >> (select(vec3<u32>(48801u, 24620u, 4294967295u), vec3<u32>(8389u, 0u, 4294967295u), var_0.a) % vec3<u32>(32u)), 1u, var_0.a, Struct_2(Struct_1(vec2<bool>(var_0.a, var_0.a), 46155u, vec2<bool>(var_0.a, true), vec2<f32>(-1738f, 346f), vec3<i32>(u_input.c, u_input.b.x, u_input.b.x)), func_2(vec3<u32>(61028u, 37431u, 6352u), 4294967295u, true, Struct_2(Struct_1(vec2<bool>(false, false), 21452u, vec2<bool>(true, var_0.a), vec2<f32>(479f, arg_0), vec3<i32>(2147483647i, u_input.c, -2477i)), Struct_1(vec2<bool>(var_0.a, var_0.a), 17791u, vec2<bool>(true, true), vec2<f32>(arg_0, 224f), u_input.b.wxz), u_input.c, Struct_1(vec2<bool>(true, var_0.a), 0u, vec2<bool>(var_0.a, true), vec2<f32>(arg_0, 619f), u_input.a))).e, ~0i, func_2(vec3<u32>(31479u, 0u, 72685u), 0u, false, Struct_2(Struct_1(vec2<bool>(false, var_0.a), 1u, vec2<bool>(var_0.a, true), vec2<f32>(arg_0, arg_0), vec3<i32>(u_input.c, u_input.b.x, 1i)), Struct_1(vec2<bool>(var_0.a, var_0.a), 44621u, vec2<bool>(var_0.a, var_0.a), vec2<f32>(arg_0, 1963f), u_input.b.zyx), u_input.b.x, Struct_1(vec2<bool>(var_0.a, var_0.a), 0u, vec2<bool>(var_0.a, false), vec2<f32>(arg_0, arg_0), u_input.a))).e)).e.d, -min(u_input.b.wxx, vec3<i32>(63988i, 2147483647i, u_input.a.x) >> (vec3<u32>(24759u, 4294967295u, 2680u) % vec3<u32>(32u)))));
    return Struct_4(_wgslsmith_f_op_f32(var_1.c + -1206f), 1424f, 307f, reverseBits(var_1.e.b), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-403f - -425f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f - 1133f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1249f))) - -1046f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(553f, 121f, 328f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 1707f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(var_0.x, var_0.x, -159f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, -1241f), vec3<bool>(true, false, true))), vec3<f32>(707f, -557f, 250f))))));
    var var_1 = any(vec2<bool>(true, u_input.a.x < _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(4484i, -2147483647i, u_input.c)))) | ((343f >= var_0.x) && false);
    var var_2 = func_1(_wgslsmith_f_op_f32(var_0.x + -252f));
    let x = u_input.a;
    s_output = StorageBuffer(~(((vec3<u32>(var_2.e.b, var_2.e.b, var_2.e.b) ^ vec3<u32>(51481u, var_2.d, var_2.d)) << (_wgslsmith_add_vec3_u32(vec3<u32>(2653u, 4294967295u, 6487u), vec3<u32>(var_2.d, 60283u, var_2.d)) % vec3<u32>(32u))) >> (vec3<u32>(~var_2.d, 21744u, var_2.e.b ^ var_2.e.b) % vec3<u32>(32u))), 206u ^ ~firstTrailingBit(var_2.e.b ^ var_2.d), _wgslsmith_mult_u32(1u, min(var_2.d, 0u)));
}

