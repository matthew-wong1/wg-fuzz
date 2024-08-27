struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(300f, 1000f, any(vec3<bool>(true, false, false)))))), _wgslsmith_f_op_f32(select(651f, _wgslsmith_div_f32(-779f, _wgslsmith_f_op_f32(select(-307f, -1206f, true))), !(u_input.a.x == 63530u)))), min(u_input.b, ~countOneBits(0i)), Struct_1(-vec3<i32>(u_input.b, 21931i, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(1f + -388f), 1342f), u_input.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-396f, -776f)), 1000f)), _wgslsmith_add_i32(u_input.b, _wgslsmith_sub_i32(u_input.b ^ _wgslsmith_mod_i32(0i, -7995i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -2147483647i, u_input.b))))));
    var var_1 = 1000f;
    var var_2 = var_0;
    var_1 = _wgslsmith_f_op_f32(348f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1730f)));
    var var_3 = u_input.b;
    return var_2.c.c <= u_input.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = !(!select(vec3<bool>(select(arg_0.a, true, true), arg_0.a, arg_0.a), !select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, arg_0.a, true)), vec3<bool>(arg_0.a, true, all(vec3<bool>(arg_0.a, arg_0.a, true)))));
    var_0 = select(vec3<bool>(var_0.x, false, any(!(!vec3<bool>(false, var_0.x, var_0.x)))), vec3<bool>(func_3(), true, !select(false, u_input.b != 17888i, var_0.x)), (true | !(arg_0.a & true)) != true);
    let var_1 = select(vec4<bool>(var_0.x, !(arg_1.c == abs(0u)), var_0.x, all(select(select(vec4<bool>(false, true, arg_0.a, false), vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, arg_0.a, arg_0.a)), !vec4<bool>(arg_0.a, arg_0.a, var_0.x, arg_0.a), select(vec4<bool>(arg_0.a, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_0.a, false), var_0.x)))), select(select(vec4<bool>(true, all(vec4<bool>(arg_0.a, false, false, true)), 0u == arg_1.c, !var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(true, var_0.x, arg_0.a, var_0.x), !arg_0.a), var_0.x != any(vec4<bool>(false, false, var_0.x, true))), select(!vec4<bool>(true, false, var_0.x, true), !select(vec4<bool>(arg_0.a, var_0.x, var_0.x, false), vec4<bool>(arg_0.a, false, false, arg_0.a), var_0.x), true), true), true);
    var_0 = var_1.wxw;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(-40580i, 43655i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, ~arg_1.a.x, firstLeadingBit(-7466i)), _wgslsmith_mult_i32(abs(u_input.b), u_input.b))) >> (u_input.a.x % 32u);
    return arg_1.d;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_1(-((vec3<i32>(5391i, 0i, 35383i) & vec3<i32>(3258i, u_input.b, -1i)) << (~vec3<u32>(u_input.c, u_input.c, 37225u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 1u, ~arg_2), ~u_input.a.yxx) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(true), Struct_1(~vec3<i32>(u_input.b, u_input.b, 3752i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, arg_1))), firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, arg_0.a) * vec2<f32>(arg_0.b, arg_0.b))))))), abs(~arg_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-486f, arg_1))))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(false), Struct_1(vec3<i32>(-33708i, -1i, u_input.b), vec2<f32>(arg_1, arg_0.a), 37389u, vec2<f32>(1000f, arg_0.b)))).x, _wgslsmith_f_op_f32(floor(arg_1)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, arg_0.b, var_0.b.x) - vec3<f32>(arg_0.a, arg_1, -1720f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.d.x, 1459f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, -685f, arg_1)))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + -1563f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f - var_0.b.x) * _wgslsmith_f_op_f32(-arg_1)), -815f)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, arg_1, arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(606f, var_1.x, 1119f) - vec3<f32>(227f, arg_0.a, var_0.d.x)), false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), var_1.x, _wgslsmith_f_op_f32(select(396f, _wgslsmith_f_op_f32(-arg_1), true))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2338f, -581f, var_1.x))), vec3<f32>(arg_0.a, 565f, -1486f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b, var_0.b.x, 1385f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1587f, 352f, _wgslsmith_f_op_f32(select(-514f, var_1.x, true)))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(false), var_0)).x, 127f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-549f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.d.x))))));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b), ~(~abs(i32(-1i) * -1i)), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) * vec2<f32>(270f, arg_0.b)))), 0u, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-var_0.d)))), var_0.a.x << (23308u % 32u));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = ~arg_0.c.a;
    var var_1 = max(u_input.a.ywy, vec3<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.a.zzz, u_input.a.xyw), ~_wgslsmith_clamp_u32(countOneBits(u_input.c), abs(4822u), u_input.c)));
    let var_2 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), func_3()), vec3<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), arg_0.c.b.x > arg_0.c.b.x), true), vec3<bool>(select(select(true, true, false), true, select(var_1.x != 4294967295u, true, select(true, true, true))), true, _wgslsmith_f_op_f32(trunc(1851f)) > -1438f), vec3<bool>(any(vec3<bool>(true, true, true)) | !(var_0.x <= 8906i), false, !(arg_0.d < 28235i)));
    let var_3 = func_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-arg_0.c.d.x), var_2.x))), arg_0.c.c);
    var_1 = ~(select(firstLeadingBit(firstTrailingBit(vec3<u32>(12213u, var_3.c.c, u_input.a.x))), vec3<u32>(var_3.c.c, 44695u, var_3.c.c) >> (~u_input.a.wyw % vec3<u32>(32u)), vec3<bool>(false, select(var_2.x, true, true), false & var_2.x)) << (u_input.a.zxx % vec3<u32>(32u)));
    return Struct_1(~_wgslsmith_clamp_vec3_i32(max(firstLeadingBit(var_3.c.a), func_1(var_3.a, var_3.a.a, 4294967295u).c.a), _wgslsmith_sub_vec3_i32(arg_0.c.a >> (u_input.a.wwx % vec3<u32>(32u)), vec3<i32>(1i, 0i, arg_0.c.a.x)), _wgslsmith_add_vec3_i32(arg_0.c.a, vec3<i32>(1i, var_0.x, 2147483647i)) | _wgslsmith_clamp_vec3_i32(arg_0.c.a, arg_0.c.a, arg_0.c.a)), arg_0.c.b, func_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_dot_vec2_u32(~u_input.a.wz, var_1.xy)).c.c & arg_0.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-var_3.a.b))));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.b, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32((vec4<i32>(0i, u_input.b, 15844i, -47218i) ^ vec4<i32>(arg_0, -11369i, arg_1.a.x, u_input.b)) << (select(vec4<u32>(u_input.c, 0u, 1u, arg_1.c), vec4<u32>(2084u, 0u, u_input.c, arg_1.c), true) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.b, arg_0, 16568i, -25257i))), vec4<i32>(-1i | arg_1.a.x, arg_1.a.x, arg_0 & -18218i, reverseBits(u_input.b)) << (vec4<u32>(arg_1.c | arg_1.c, 2374u ^ u_input.a.x, 0u, ~4294967295u) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-1800f * arg_1.b.x);
    let var_2 = !func_3();
    let var_3 = func_1(func_1(Struct_2(1000f, arg_1.d.x), -1088f, 8229u << (func_1(Struct_2(-817f, arg_1.b.x), arg_1.d.x, u_input.c).c.c % 32u)).a, func_4(func_1(Struct_2(_wgslsmith_f_op_f32(1000f - 2459f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f + arg_1.b.x)), ~arg_1.c)).d.x, 96485u);
    var_1 = _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(true), func_4(var_3))).x, _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(-var_3.c.b.x)))));
    return func_1(var_3.a, var_3.c.b.x, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.c, var_3.c.c, 35334u), vec3<u32>(u_input.a.x, 1u, arg_1.c)) << (var_3.c.c % 32u)) & ((~var_3.c.c | ~40933u) ^ 1u)).a;
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false))), !vec3<bool>(-90453i < arg_0.b, func_3(), select(true, true, false)), select(vec3<bool>(select(false, true, true), all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    let var_1 = firstTrailingBit(u_input.a.xxw);
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(609f, -306f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 669f, arg_0.a.b))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.a.a, arg_0.c.d.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-830f, -743f, 305f) + vec3<f32>(1000f, -1000f, 206f)) * vec3<f32>(-1189f, -571f, 1600f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(895f, arg_0.a.a, 1000f) * vec3<f32>(1089f, arg_0.c.b.x, -286f))))));
    var var_4 = arg_0.c.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(702f - _wgslsmith_f_op_f32(sign(-973f))), arg_0.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_3(func_5(u_input.b, func_4(func_1(Struct_2(-502f, 882f), -1298f, 63570u))), ~(-u_input.b), Struct_1(~vec3<i32>(u_input.b, -16824i, u_input.b) ^ vec3<i32>(2147483647i, 2147483647i, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(904f, 1146f))), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, 1000f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1256f, 203f), vec2<f32>(1363f, 982f)))), _wgslsmith_mod_i32(-(~u_input.b), u_input.b)));
}

