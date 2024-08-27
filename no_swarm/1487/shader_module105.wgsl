struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(i32(-1i) * -u_input.b.x, vec2<i32>(select(u_input.b.x, u_input.b.x, false), u_input.b.x >> (48849u % 32u)), ~vec3<u32>(u_input.a, 4294967295u, 1u) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 13956u), vec3<u32>(1u, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(772f, -806f, 759f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1048f, 970f, -750f), vec3<f32>(-460f, 1176f, 1147f)))), -vec4<i32>(1i, -40082i, 57464i, u_input.b.x)), 0i, 10137u, true), Struct_1(firstTrailingBit(~0i), (select(u_input.b.yy, vec2<i32>(-2344i, u_input.b.x), vec2<bool>(true, false)) << (vec2<u32>(67160u, u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a, 13285u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 34296u) % vec3<u32>(32u))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, -1471f, -790f) * vec3<f32>(1694f, 873f, -733f))), ~(-(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 2591i) ^ vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_1(u_input.b.x, u_input.b.yy, max(~select(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 30289u), vec3<bool>(true, true, false)), vec3<u32>(4294967295u, ~u_input.a, ~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2251f, -1628f, -1156f) + vec3<f32>(-505f, -256f, -441f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(230f, 1015f, -1334f))))), vec4<i32>(_wgslsmith_sub_i32(min(1i, 0i), u_input.b.x), u_input.b.x << (u_input.a % 32u), u_input.b.x, ~_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.xx))));
    var_0 = Struct_3(var_0.a, Struct_1(_wgslsmith_clamp_i32(-1i, max(u_input.b.x, ~(-60151i)), -8460i), vec2<i32>(~(-1i ^ var_0.c.a), i32(-1i) * -u_input.b.x), vec3<u32>(95622u, var_0.a.c, 3789u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f + var_0.c.d.x) * _wgslsmith_f_op_f32(-1413f + var_0.a.a.d.x)), -1252f, var_0.a.a.d.x), _wgslsmith_mult_vec4_i32(-abs(var_0.a.a.e), vec4<i32>(-58587i, 1i, var_0.a.b ^ u_input.b.x, u_input.b.x))), Struct_1(var_0.c.b.x, _wgslsmith_clamp_vec2_i32(~(u_input.b.zx ^ var_0.c.e.xy), _wgslsmith_mult_vec2_i32(~var_0.c.b, abs(vec2<i32>(-2147483647i, var_0.c.e.x))), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, u_input.b.x)), vec2<i32>(u_input.b.x, 22277i))), var_0.a.a.c, _wgslsmith_div_vec3_f32(var_0.a.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(347f, var_0.a.a.d.x, 2375f) * var_0.b.d))), -min(-var_0.a.a.e, var_0.b.e)));
    let var_1 = var_0.a;
    var_0 = Struct_3(var_0.a, Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b.x, 1i, -2147483647i), vec3<i32>(var_0.c.b.x, var_0.b.b.x, var_0.a.b)), abs(u_input.b.xy >> (var_1.a.c.zy % vec2<u32>(32u))), vec3<u32>(u_input.a, ~_wgslsmith_clamp_u32(var_1.c, 39251u, 1u), u_input.a), vec3<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(394f + 109f)))), abs(var_1.a.e)), var_1.a);
    let var_2 = Struct_3(Struct_2(Struct_1(var_1.b, var_1.a.b & u_input.b.zz, select(var_1.a.c, var_0.c.c, false) | vec3<u32>(45684u, 0u, u_input.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.d.x, -360f, var_0.c.d.x) * var_1.a.d))), var_1.a.e), _wgslsmith_sub_i32(reverseBits(var_0.b.e.x), abs(_wgslsmith_div_i32(0i, -55964i))), _wgslsmith_mult_u32(countOneBits(27512u) | abs(var_0.c.c.x), _wgslsmith_mod_u32(~0u, ~var_1.a.c.x)), select(var_1.d & true, u_input.a > u_input.a, var_1.d) | true), Struct_1(u_input.b.x, firstLeadingBit(var_0.c.b), vec3<u32>(var_1.c, abs(1u), 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.d.x + 363f))), -453f, 339f), vec4<i32>(-countOneBits(-1i), 1i, -36997i << ((89180u >> (var_1.a.c.x % 32u)) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(var_1.a.b.x, 1i)), -u_input.b.zx))), Struct_1(~(-(~63299i)), var_0.a.a.b & vec2<i32>(-var_0.a.b, var_0.c.a), abs(var_0.c.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1765f, var_0.b.d.x, 1000f))), vec4<i32>(_wgslsmith_div_i32(~var_1.b, u_input.b.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_1.a.a), vec2<i32>(2147483647i, -18868i)), (var_0.a.a.e.x & var_1.b) & -var_1.a.b.x, var_0.a.b)));
    return _wgslsmith_f_op_f32(exp2(var_0.a.a.d.x)) > 1444f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = select(true, func_3(), true);
    var_0 = true;
    var var_1 = firstTrailingBit(arg_0.c.x) ^ firstLeadingBit(arg_0.c.x);
    var_0 = select(!any(vec2<bool>(false, false)), !(!(506f <= arg_0.d.x)), true) != select(true, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !(!(arg_0.c.x == u_input.a)));
    let var_2 = firstLeadingBit(0u);
    return Struct_2(arg_0, abs(-33349i), 30112u, false);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(2036f)), var_0.b.d.x, -430f);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-547f)), var_0.a.a.d.x);
    var var_3 = Struct_3(func_2(Struct_1(~reverseBits(0i), vec2<i32>(arg_2.b.a, 0i) & vec2<i32>(var_0.c.b.x, u_input.b.x), vec3<u32>(_wgslsmith_sub_u32(arg_1.c, 1u), 4294967295u << (u_input.a % 32u), arg_2.a.c), vec3<f32>(arg_1.a.d.x, -1558f, _wgslsmith_f_op_f32(abs(651f))), arg_1.a.e)), Struct_1(u_input.b.x, arg_1.a.b, ~arg_2.b.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) + _wgslsmith_f_op_f32(-199f * var_2)), var_1.x, -1234f), vec4<i32>(-4708i, -14987i, _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_add_i32(0i, arg_1.a.a)), _wgslsmith_div_i32(2147483647i, ~0i))), arg_1.a);
    return Struct_2(func_2(Struct_1(~(-17488i), vec2<i32>(~(-1i), _wgslsmith_sub_i32(1i, var_3.a.a.e.x)), firstTrailingBit(_wgslsmith_sub_vec3_u32(arg_2.b.c, vec3<u32>(0u, 0u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(702f, var_1.x, arg_1.a.d.x) + arg_2.a.a.d)), var_0.a.a.e)).a, _wgslsmith_add_i32(arg_2.c.e.x, 38366i), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.b.c.x, arg_0, 1u, var_0.b.c.x), ~(vec4<u32>(13851u, 0u, 1u, var_0.c.c.x) >> (vec4<u32>(12756u, 105113u, 42195u, u_input.a) % vec4<u32>(32u)))) << (var_3.c.c.x % 32u), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f + -353f) - var_3.b.d.x) != _wgslsmith_f_op_f32(f32(-1f) * -270f)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(arg_1, arg_1.a, func_2(func_2(func_2(func_4(u_input.a, Struct_2(arg_1.a, 0i, 9553u, true), Struct_3(Struct_2(arg_1.a, 1097i, u_input.a, false), arg_1.a, Struct_1(-1943i, vec2<i32>(u_input.b.x, arg_2), vec3<u32>(1u, 33882u, 1u), arg_1.a.d, vec4<i32>(arg_2, arg_1.a.e.x, u_input.b.x, u_input.b.x)))).a).a).a).a);
    let var_1 = vec4<u32>(16054u, 27615u, firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.c.c ^ vec3<u32>(arg_1.c, u_input.a, var_0.a.a.c.x), ~vec3<u32>(0u, u_input.a, arg_1.c)) | firstLeadingBit(select(11450u, u_input.a, arg_0))), var_0.b.c.x);
    var var_2 = func_4(0u, var_0.a, var_0).a;
    var var_3 = arg_1.a.e.xwz;
    let var_4 = _wgslsmith_mod_u32(0u, max(~1u, ~(_wgslsmith_div_u32(var_0.a.c, 1014u) & 1u)));
    return Struct_1(~0i, reverseBits(~(-vec2<i32>(u_input.b.x, var_3.x) << (vec2<u32>(var_4, var_0.a.c) % vec2<u32>(32u)))), ~arg_1.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1836f, var_0.c.d.x, 149f), vec3<f32>(-479f, var_0.a.a.d.x, var_2.d.x)) * vec3<f32>(-1149f, arg_1.a.d.x, _wgslsmith_f_op_f32(-var_2.d.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.a.d.x, var_0.c.d.x), -799f, -483f))), ~func_4(22812u, func_4(26673u, var_0.a, Struct_3(Struct_2(arg_1.a, -2147483647i, var_2.c.x, arg_0), Struct_1(u_input.b.x, vec2<i32>(var_0.a.b, 12092i), var_1.yww, vec3<f32>(arg_1.a.d.x, var_0.c.d.x, -695f), var_0.c.e), Struct_1(-14645i, vec2<i32>(arg_2, var_3.x), vec3<u32>(var_2.c.x, 39309u, var_0.b.c.x), vec3<f32>(1372f, 1828f, arg_1.a.d.x), vec4<i32>(var_2.b.x, -21110i, 2147483647i, var_0.c.e.x)))), Struct_3(Struct_2(arg_1.a, 6272i, var_4, var_0.a.d), func_2(arg_1.a).a, func_4(1u, arg_1, var_0).a)).a.e);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(~(~_wgslsmith_sub_u32(u_input.a, 1u)) < u_input.a, func_4(_wgslsmith_mult_u32(62207u, 82875u >> (firstLeadingBit(u_input.a) % 32u)), func_2(Struct_1(_wgslsmith_mod_i32(u_input.b.x, 1i), u_input.b.yz, vec3<u32>(4294967295u, 27054u, 7211u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-695f, -190f, 817f) * vec3<f32>(2396f, -437f, -715f)), vec4<i32>(3525i, -2147483647i, u_input.b.x, u_input.b.x) ^ vec4<i32>(49529i, -24159i, -57066i, -1i))), Struct_3(func_2(func_2(Struct_1(u_input.b.x, u_input.b.xy, vec3<u32>(0u, 4294967295u, 101729u), vec3<f32>(340f, 251f, -977f), vec4<i32>(0i, -54092i, 0i, 23874i))).a), func_2(Struct_1(u_input.b.x, u_input.b.xx, vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<f32>(2217f, -1610f, -892f), vec4<i32>(-2147483647i, -1i, -1i, 2147483647i))).a, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, -58608i, u_input.b.x), vec4<i32>(24094i, u_input.b.x, 44458i, u_input.b.x)), u_input.b.yz, ~vec3<u32>(u_input.a, 1u, 67235u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, -915f, -200f)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -4767i, u_input.b.x, u_input.b.x), vec4<i32>(-19405i, u_input.b.x, u_input.b.x, -1i))))), u_input.b.x, vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), ~u_input.a == 60693u));
    var var_1 = select(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.c.x, 50906u), vec4<u32>(1u, var_0.c.x, u_input.a, 1u)), u_input.a, ~0u, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c)), countOneBits(vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, 1u) ^ vec4<u32>(7622u, var_0.c.x, 4294967295u, 3920u))), vec4<u32>(~10219u, var_0.c.x, _wgslsmith_mult_u32(countOneBits(0u), u_input.a), ~abs(var_0.c.x)), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), func_4(~4294967295u, func_2(var_0), Struct_3(Struct_2(Struct_1(var_0.b.x, u_input.b.xz, vec3<u32>(var_0.c.x, u_input.a, var_0.c.x), var_0.d, var_0.e), u_input.b.x, var_0.c.x, false), Struct_1(35830i, vec2<i32>(u_input.b.x, 15934i), var_0.c, var_0.d, var_0.e), var_0)).d, true)) >> (vec4<u32>(4294967295u, ~firstTrailingBit(func_4(4294967295u, Struct_2(Struct_1(u_input.b.x, u_input.b.xx, vec3<u32>(u_input.a, var_0.c.x, 4294967295u), vec3<f32>(var_0.d.x, 1127f, var_0.d.x), var_0.e), var_0.b.x, 81181u, true), Struct_3(Struct_2(Struct_1(u_input.b.x, vec2<i32>(0i, var_0.b.x), vec3<u32>(u_input.a, 4294967295u, u_input.a), var_0.d, vec4<i32>(-49654i, var_0.b.x, 0i, 0i)), -1i, var_0.c.x, false), Struct_1(u_input.b.x, vec2<i32>(u_input.b.x, -9638i), vec3<u32>(0u, 0u, var_0.c.x), vec3<f32>(var_0.d.x, 385f, var_0.d.x), var_0.e), Struct_1(u_input.b.x, vec2<i32>(0i, var_0.e.x), vec3<u32>(u_input.a, 32200u, 4294967295u), vec3<f32>(1000f, var_0.d.x, 1130f), vec4<i32>(20702i, 2147483647i, 2147483647i, -8627i)))).a.c.x), 4294967295u, max(_wgslsmith_add_u32(0u, 1u ^ u_input.a), ~0u | var_0.c.x)) % vec4<u32>(32u));
    var var_2 = u_input.a;
    let var_3 = Struct_3(Struct_2(func_4(4294967295u, Struct_2(var_0, var_0.e.x, u_input.a, all(vec3<bool>(true, true, false))), Struct_3(Struct_2(var_0, 7416i, 4294967295u, false), var_0, func_2(Struct_1(-23609i, var_0.e.xy, vec3<u32>(u_input.a, 0u, u_input.a), var_0.d, var_0.e)).a)).a, -17530i, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.c.x), firstTrailingBit(var_1.zy)), 44947u, all(vec4<bool>(true, true, true, true))), true), func_2(var_0).a, Struct_1(u_input.b.x, -reverseBits(var_0.b), _wgslsmith_sub_vec3_u32(var_1.xyy >> (var_0.c % vec3<u32>(32u)), var_0.c), func_2(var_0).a.d, -(~(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -31344i) << (vec4<u32>(u_input.a, 1u, 1u, 21537u) % vec4<u32>(32u))))));
    var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(var_3.a.c, ~0u), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, var_3.c.c.x, 4294967295u), vec4<u32>(50702u, u_input.a, 11516u, var_3.a.a.c.x))), max(~(~vec4<u32>(var_3.c.c.x, u_input.a, 660u, 4294967295u)), ~(~vec4<u32>(var_0.c.x, 4294967295u, 4294967295u, var_0.c.x)))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    var var_2 = Struct_3(func_4(_wgslsmith_add_u32(_wgslsmith_mod_u32(12297u, u_input.a), abs(firstLeadingBit(1u))), func_2(Struct_1(-2147483647i, abs(vec2<i32>(u_input.b.x, -1i)), func_2(var_0).a.c, vec3<f32>(var_1.d.x, 636f, 686f), var_1.e)), Struct_3(func_4(reverseBits(0u), Struct_2(var_0, -33325i, u_input.a, true), Struct_3(Struct_2(var_0, var_0.e.x, 7451u, true), Struct_1(var_1.e.x, u_input.b.yy, vec3<u32>(9139u, var_1.c.x, 0u), vec3<f32>(-758f, var_0.d.x, 1181f), vec4<i32>(-10751i, -51648i, -1i, 2147483647i)), Struct_1(u_input.b.x, vec2<i32>(var_1.e.x, var_1.a), var_0.c, vec3<f32>(1476f, var_1.d.x, 159f), var_1.e))), Struct_1(1i, u_input.b.xx, abs(vec3<u32>(var_1.c.x, 1u, u_input.a)), vec3<f32>(var_0.d.x, -1000f, -562f), -vec4<i32>(1i, -2147483647i, -13222i, 0i)), var_0)), Struct_1(_wgslsmith_div_i32(-1i, var_0.b.x), max(u_input.b.yx, _wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.e.x, -13760i), _wgslsmith_mult_vec2_i32(var_0.b, var_0.e.wx))), ~var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.x, var_0.d.x, var_0.d.x))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.x, var_1.d.x, -449f))))), -(_wgslsmith_mult_vec4_i32(var_0.e, var_0.e) & var_0.e)), var_0);
    var_2 = Struct_3(func_2(var_2.b), Struct_1(i32(-1i) * -(~var_0.e.x), firstTrailingBit(var_0.b) & _wgslsmith_add_vec2_i32(vec2<i32>(var_1.e.x, 6147i) | vec2<i32>(12434i, u_input.b.x), u_input.b.yz), func_4(40123u, Struct_2(Struct_1(u_input.b.x, u_input.b.zz, vec3<u32>(45224u, u_input.a, 35928u), var_0.d, var_2.a.a.e), 0i, ~0u, func_3()), Struct_3(func_2(Struct_1(var_1.e.x, var_2.a.a.e.zy, vec3<u32>(0u, var_2.a.c, 79398u), var_2.c.d, var_2.b.e)), Struct_1(0i, u_input.b.zx, var_2.a.a.c, var_0.d, var_0.e), Struct_1(15723i, var_2.c.b, var_1.c, vec3<f32>(958f, var_2.a.a.d.x, -1303f), var_0.e))).a.c, _wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_0.d.x, var_1.d.x))), select(-var_1.e, var_0.e, var_2.a.d)), func_1());
    var_2 = Struct_3(func_2(Struct_1(44003i, var_0.b, func_2(Struct_1(var_0.b.x, var_2.a.a.b, vec3<u32>(4294967295u, var_0.c.x, 62646u), vec3<f32>(var_1.d.x, var_0.d.x, -377f), var_1.e)).a.c, vec3<f32>(600f, _wgslsmith_f_op_f32(-var_0.d.x), -589f), firstTrailingBit(var_2.b.e | vec4<i32>(var_2.a.a.e.x, var_0.a, -40251i, var_0.e.x)))), func_2(func_5(true, Struct_2(func_4(1u, Struct_2(var_0, u_input.b.x, var_0.c.x, true), Struct_3(var_2.a, var_2.b, var_0)).a, u_input.b.x, var_0.c.x & var_1.c.x, u_input.a < 60574u), var_1.a, vec2<bool>(func_2(var_2.b).d, true))).a, Struct_1(func_2(func_5(func_2(Struct_1(-56988i, vec2<i32>(var_1.e.x, 1i), var_0.c, var_0.d, vec4<i32>(-2147483647i, 1i, -224i, -35569i))).d, Struct_2(Struct_1(-2147483647i, vec2<i32>(0i, 17747i), vec3<u32>(var_2.c.c.x, 4294967295u, 42503u), vec3<f32>(837f, -1000f, -1237f), vec4<i32>(-2147483647i, -2147483647i, 38966i, -2147483647i)), -1i, 0u, var_2.a.d), var_2.a.b, !vec2<bool>(false, var_2.a.d))).a.b.x, var_1.e.zw, (vec3<u32>(43912u, 4294967295u, var_2.a.a.c.x) << (max(vec3<u32>(var_0.c.x, var_1.c.x, var_0.c.x), var_0.c) % vec3<u32>(32u))) << (var_0.c % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(var_2.a.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d))), vec4<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.e.zwx, var_0.e.xxw), var_1.e.x), var_0.a, -firstTrailingBit(var_1.b.x))));
    let var_3 = Struct_3(var_2.a, var_0, func_4(~(~u_input.a), Struct_2(var_0, -3571i, u_input.a, false), Struct_3(var_2.a, Struct_1(-var_1.e.x, -vec2<i32>(0i, -2147483647i), ~vec3<u32>(15363u, 45567u, 60763u), var_0.d, reverseBits(var_0.e)), func_5(false, func_4(var_2.c.c.x, Struct_2(var_2.b, u_input.b.x, 27254u, false), Struct_3(var_2.a, var_0, var_0)), var_0.e.x << (var_1.c.x % 32u), vec2<bool>(true, true)))).a);
    var var_4 = var_2.a.d;
    var var_5 = Struct_3(Struct_2(Struct_1(var_2.a.b, vec2<i32>(-38546i, _wgslsmith_mod_i32(-2147483647i, var_3.b.b.x)), ~_wgslsmith_sub_vec3_u32(var_1.c, vec3<u32>(var_1.c.x, 1u, var_2.b.c.x)), var_3.b.d, ~var_1.e), _wgslsmith_div_i32(-1i, select(i32(-1i) * -34396i, _wgslsmith_add_i32(var_1.e.x, var_0.e.x), false)), var_2.b.c.x, true), func_4(var_1.c.x, var_2.a, Struct_3(func_4(~4294967295u, Struct_2(var_2.a.a, u_input.b.x, 0u, var_3.a.d), Struct_3(Struct_2(var_2.c, var_0.b.x, u_input.a, false), Struct_1(10266i, vec2<i32>(0i, -2147483647i), vec3<u32>(18361u, var_2.b.c.x, var_3.a.c), var_2.c.d, vec4<i32>(var_0.b.x, 2147483647i, var_2.a.a.e.x, var_3.c.e.x)), Struct_1(15110i, var_2.b.b, var_0.c, var_3.c.d, vec4<i32>(var_1.a, -9665i, -60265i, var_0.a)))), var_2.a.a, func_2(var_0).a)).a, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d.yx, var_3.a.a.d.x, var_2.b.c.zy, select(~var_1.c.x, func_4(_wgslsmith_sub_u32(countOneBits(var_1.c.x), ~var_2.a.c), var_2.a, var_3).c, var_5.a.d), vec3<u32>(_wgslsmith_mod_u32(var_1.c.x, _wgslsmith_div_u32(~var_3.a.c, var_3.c.c.x)), ~(~abs(var_0.c.x)), 0u));
}

