struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<u32> {
    var var_0 = -10057i;
    let var_1 = -272f;
    let var_2 = Struct_1(select((1u & min(arg_0.c.x, arg_0.c.x)) <= 4294967295u, arg_0.e.a, arg_0.e.a), vec3<f32>(_wgslsmith_f_op_f32(min(806f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(303f, 2289f)))), -1156f, arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(-111f - -296f), -2767f, -1392f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -970f, _wgslsmith_f_op_f32(round(-449f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(346f, 435f, 1279f), vec3<f32>(var_1, var_1, arg_0.e.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -798f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(457f * var_1))), var_1), select(vec3<bool>(arg_0.e.a, 335f <= arg_0.e.b.x, !arg_0.e.a), vec3<bool>(true, select(arg_0.e.a, arg_0.e.a, false), arg_0.e.a), vec3<bool>(true, arg_0.e.a, arg_0.e.a)))), arg_0.e.e);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-208f, 529f, arg_0.e.a)), var_2.e.x))))));
    var var_4 = vec4<u32>(_wgslsmith_add_u32(arg_0.d.x, ~arg_0.d.x) | ~5037u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.x, 4532u, 0u), max(~vec3<u32>(4294967295u, 32154u, arg_0.c.x), max(arg_0.d, vec3<u32>(1u, 44547u, arg_0.d.x)))), 0u, ~(~arg_0.c.x));
    return vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, var_4.x, 79927u, arg_0.c.x)), ~vec4<u32>(0u, var_4.x, 94897u, var_4.x) >> ((vec4<u32>(35810u, var_4.x, arg_0.c.x, 9284u) | vec4<u32>(arg_0.c.x, var_4.x, arg_0.c.x, 1u)) % vec4<u32>(32u))), 2420u >> (var_4.x % 32u)), firstTrailingBit(~_wgslsmith_sub_u32(var_4.x, ~arg_0.c.x)), ~1u);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = arg_2;
    var var_1 = Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + 601f), -425f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1062f) + vec2<f32>(337f, arg_2)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(872f, arg_2), vec2<f32>(arg_2, 113f)))))))), ~_wgslsmith_add_vec3_u32(func_3(Struct_2(-124f, vec2<f32>(arg_2, -993f), vec3<u32>(89u, arg_1, arg_1), vec3<u32>(17016u, arg_1, arg_1), Struct_1(false, vec3<f32>(-1000f, arg_2, 765f), vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_2, -1000f, -375f), vec2<f32>(arg_2, arg_2))), 1i), vec3<u32>(~arg_1, _wgslsmith_mult_u32(2157u, arg_1), 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32((vec3<u32>(7455u, arg_1, 0u) >> (vec3<u32>(arg_1, arg_1, 0u) % vec3<u32>(32u))) & min(vec3<u32>(29249u, arg_1, arg_1), vec3<u32>(arg_1, arg_1, arg_1)), ~(~vec3<u32>(1u, 0u, 965u))), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(31671u, 0u, 1u), vec3<u32>(arg_1, arg_1, arg_1)))), Struct_1(!((arg_1 >= 4294967295u) & (arg_2 > arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(370f, arg_2, arg_2))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, arg_2))), true)), vec3<f32>(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(abs(122f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-171f, -989f)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -141f) - vec2<f32>(arg_2, 378f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1285f, -728f)), any(vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, -455f) - vec2<f32>(986f, -1308f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2)), var_1.e.b.x)), _wgslsmith_f_op_f32(min(-1003f, 260f)), all(select(vec4<bool>(false, var_1.e.a, var_1.e.a, false), vec4<bool>(var_1.e.a, false, var_1.e.a, var_1.e.a), vec4<bool>(var_1.e.a, true, true, false)))))), false));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -1158f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, _wgslsmith_f_op_f32(max(370f, -1247f)))))), var_1.d, ~(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(55164u, 39242u, 45150u)), ~vec3<u32>(37726u, var_1.c.x, 4294967295u), vec3<u32>(var_1.c.x, 1u, 42469u)) | _wgslsmith_add_vec3_u32(func_3(Struct_2(263f, vec2<f32>(var_1.e.d.x, -399f), var_1.c, vec3<u32>(var_1.c.x, 52405u, 0u), Struct_1(var_1.e.a, vec3<f32>(-278f, var_1.a, 289f), var_1.e.b, var_1.e.b, var_1.e.e)), arg_0), firstLeadingBit(vec3<u32>(1u, 0u, 1u)))), Struct_1(any(!(!vec2<bool>(var_1.e.a, var_1.e.a))), _wgslsmith_f_op_vec3_f32(exp2(var_1.e.d)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_2), arg_2), var_1.e.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * var_1.b)), _wgslsmith_f_op_vec2_f32(var_1.e.c.yy - _wgslsmith_f_op_vec2_f32(var_1.e.e * var_1.b))))));
    let var_2 = !(!vec3<bool>(11110i <= -u_input.e.x, var_1.e.a, any(!vec3<bool>(var_1.e.a, var_1.e.a, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)) < _wgslsmith_f_op_f32(var_1.b.x + var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -874f), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.c.x), 551f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.x)) * _wgslsmith_f_op_f32(exp2(arg_1.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, arg_1.c.x))))), reverseBits(_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(1u, 7074u, arg_0), arg_1.a), ~vec3<u32>(arg_0, arg_0, arg_0))), ~vec3<u32>(arg_0, arg_0, 52222u) | _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0, arg_0), ~vec3<u32>(arg_0, arg_0, 27272u)), Struct_1(true, _wgslsmith_f_op_vec3_f32(floor(arg_1.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, arg_1.e.x, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.e.x, arg_1.c.x, -469f), arg_1.b))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x - arg_1.d.x), _wgslsmith_f_op_f32(round(864f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-687f, arg_1.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_1.e.x, -1013f), _wgslsmith_f_op_f32(1220f - arg_1.e.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.xz) + _wgslsmith_f_op_vec2_f32(arg_1.d.zy - vec2<f32>(arg_1.d.x, -865f)))), (abs(vec3<u32>(28404u, 4294967295u, arg_0)) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(25695u, arg_0, arg_0), vec3<u32>(1u, arg_0, 35538u), vec3<u32>(arg_0, arg_0, 8961u)), vec3<u32>(~func_3(Struct_2(865f, vec2<f32>(1335f, arg_1.b.x), vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(17422u, 34708u, 1u), arg_1), u_input.b.x).x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 80181u), ~vec4<u32>(arg_0, 0u, arg_0, arg_0)), _wgslsmith_mult_u32(arg_0, 7166u ^ arg_0)), arg_1));
    var var_1 = var_0.b.e;
    let var_2 = arg_1;
    var var_3 = var_0.c.e;
    var_1 = var_2;
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f))))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_vec2_f32(exp2(var_1.b.yx)), vec3<u32>(func_3(Struct_2(var_2.c.x, vec2<f32>(var_1.b.x, -301f), var_0.c.c, var_0.c.c, Struct_1(false, var_2.c, vec3<f32>(-1482f, 1000f, arg_1.e.x), var_2.b, vec2<f32>(-191f, 290f))), 2147483647i).x, ~firstLeadingBit(var_0.c.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43969u, arg_0), var_0.b.c.zy), _wgslsmith_dot_vec2_u32(var_0.b.d.yz, var_0.c.d.xz))), vec3<u32>(var_0.b.d.x, ~var_0.b.d.x, var_0.c.d.x), arg_1), var_0.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b.x, -906f, -244f) + vec3<f32>(arg_0.c.e.b.x, arg_0.b.a, arg_0.a))), vec3<f32>(499f, _wgslsmith_f_op_f32(378f + arg_0.c.a), _wgslsmith_f_op_f32(888f + arg_0.b.e.c.x)))))));
    return func_4(arg_1.x, func_4(~arg_1.x, arg_0.c.e).b.e).b.e;
}

fn func_1() -> f32 {
    var var_0 = func_5(func_4(~10612u, Struct_1(func_2(u_input.b.x, 21098u, _wgslsmith_f_op_f32(960f * -182f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(452f, -307f, 556f), vec3<f32>(-626f, -1000f, 608f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, -2316f, -450f)), vec3<f32>(-252f, -1000f, 1110f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 586f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1327f, -168f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, 953f))))), ~abs(vec2<u32>(1u, 1u)));
    var_0 = Struct_1(false == var_0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(var_0.c)))), var_0.d, vec3<f32>(var_0.e.x, -1001f, _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(select(-1392f, var_0.c.x, true)), true))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1465f * 522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2327f * _wgslsmith_f_op_f32(var_0.b.x * -1000f)) * -204f)));
    var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(floor(1719f)), func_4(~select(2587u, 39364u, var_0.a), Struct_1(func_4(1u, Struct_1(false, var_0.b, vec3<f32>(var_0.e.x, var_0.d.x, var_0.c.x), vec3<f32>(-383f, var_0.e.x, var_0.b.x), vec2<f32>(-938f, var_0.d.x))).c.e.a, _wgslsmith_f_op_vec3_f32(-var_0.d), _wgslsmith_f_op_vec3_f32(-var_0.d), vec3<f32>(var_0.c.x, var_0.c.x, -1962f), vec2<f32>(var_0.e.x, var_0.e.x))).b, Struct_2(608f, func_4(4294967295u, func_5(Struct_3(-1000f, Struct_2(-1000f, vec2<f32>(-715f, 539f), vec3<u32>(4294967295u, 0u, 55671u), vec3<u32>(4294967295u, 0u, 0u), Struct_1(var_0.a, var_0.c, var_0.d, vec3<f32>(var_0.b.x, var_0.c.x, var_0.b.x), var_0.b.yx)), Struct_2(var_0.e.x, vec2<f32>(-1434f, -390f), vec3<u32>(21788u, 4294967295u, 57177u), vec3<u32>(1u, 1u, 0u), Struct_1(true, vec3<f32>(715f, -518f, 341f), vec3<f32>(385f, 254f, var_0.e.x), var_0.d, vec2<f32>(-1368f, var_0.c.x)))), vec2<u32>(7084u, 4294967295u))).b.b, vec3<u32>(countOneBits(4294967295u), _wgslsmith_add_u32(7811u, 44575u), func_4(0u, Struct_1(false, vec3<f32>(-1272f, -2118f, var_0.d.x), vec3<f32>(1184f, var_0.d.x, -519f), vec3<f32>(-109f, -1494f, var_0.e.x), vec2<f32>(706f, var_0.e.x))).c.c.x), vec3<u32>(1u, 1u, 1u), Struct_1(true, vec3<f32>(var_0.d.x, var_0.c.x, var_0.c.x), var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(-2174f, -1000f, 620f), vec3<f32>(var_0.c.x, var_0.b.x, -529f)), var_0.b.yz))), vec2<u32>(~(~abs(0u)), 1u));
    var_0 = func_5(Struct_3(1178f, func_4(firstTrailingBit(~4294967295u), func_4(1u, Struct_1(true, var_0.d, var_0.b, var_0.d, vec2<f32>(var_0.b.x, var_0.d.x))).b.e).b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(576f, -725f)) - _wgslsmith_f_op_f32(-var_0.e.x)), vec2<f32>(var_0.b.x, var_0.d.x), countOneBits(vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 12141u), vec3<u32>(27131u, 0u, 34664u), vec3<u32>(60476u, 46059u, 4294967295u))), Struct_1(true, vec3<f32>(var_0.e.x, 140f, -732f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2182f, var_0.b.x, var_0.d.x) * var_0.c), var_0.c, _wgslsmith_f_op_vec2_f32(trunc(var_0.e))))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, 0u)) & min(select(vec2<u32>(1u, 1u), vec2<u32>(32726u, 0u), false), select(vec2<u32>(0u, 4294967295u), vec2<u32>(51423u, 4294967295u), vec2<bool>(var_0.a, var_0.a))), vec2<u32>(1u, ~_wgslsmith_add_u32(22961u, 40297u))));
    let var_1 = all(select(select(select(select(vec3<bool>(var_0.a, false, false), vec3<bool>(false, var_0.a, true), vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(false, true, true), !vec3<bool>(true, var_0.a, false)), select(select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, var_0.a, false), false), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, true, false)), vec3<bool>(var_0.a, var_0.a, true)), !var_0.a | var_0.a), !select(!vec3<bool>(var_0.a, true, var_0.a), !vec3<bool>(var_0.a, false, true), var_0.a), select(select(!vec3<bool>(var_0.a, true, true), !vec3<bool>(var_0.a, false, var_0.a), !var_0.a), select(!vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, false), true), vec3<bool>(all(vec2<bool>(false, false)), !var_0.a, var_0.a & var_0.a))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(683f))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = arg_0.e;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-func_4(_wgslsmith_mod_u32(_wgslsmith_div_u32(46456u, arg_0.c.x), 24042u ^ arg_3.x), func_5(func_4(arg_3.x, Struct_1(false, vec3<f32>(arg_0.a, arg_0.b.x, arg_0.b.x), var_0.c, vec3<f32>(arg_0.e.d.x, 197f, arg_0.a), var_0.c.zx)), ~arg_3.yx)).a), vec2<f32>(-350f, var_0.e.x), arg_0.d, ~arg_3.zxx, Struct_1(!func_4(~arg_3.x, Struct_1(false, arg_0.e.d, arg_0.e.b, vec3<f32>(arg_0.a, arg_0.a, 1000f), vec2<f32>(arg_0.a, -1376f))).c.e.a, var_0.c, _wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(_wgslsmith_f_op_f32(round(-500f)), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.a), func_5(Struct_3(arg_0.a, arg_0, Struct_2(815f, var_0.e, arg_3.wxx, vec3<u32>(arg_0.c.x, 87042u, 56078u), Struct_1(false, var_0.c, arg_0.e.b, arg_0.e.b, arg_0.b))), arg_0.d.yy).c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, arg_0.e.c.x, -164f) * vec3<f32>(-760f, -363f, -353f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1236f, var_0.b.x), vec2<f32>(var_0.e.x, 1000f)))))));
    return Struct_3(-887f, func_4(_wgslsmith_div_u32(arg_3.x, ~var_1.c.x), func_4(4294967295u, Struct_1(all(vec2<bool>(false, true)), vec3<f32>(var_1.b.x, -948f, 258f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1740f, var_0.b.x, arg_0.e.b.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, -2816f, var_0.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, arg_0.a)))).c.e).b, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -1468f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146f + -509f)), _wgslsmith_f_op_f32(select(-1769f, _wgslsmith_f_op_f32(abs(719f)), select(false, false, true)))), max(~vec3<u32>(71795u, 1u, 100692u), vec3<u32>(~0u, ~4294967295u, ~1u)), abs(func_3(Struct_2(-602f, vec2<f32>(104f, 1200f), vec3<u32>(0u, 16745u, 15722u), vec3<u32>(1u, 67707u, 36835u), Struct_1(false, vec3<f32>(590f, -2169f, 1170f), vec3<f32>(658f, 1000f, -516f), vec3<f32>(-564f, 1000f, 313f), vec2<f32>(-480f, -886f))), u_input.e.x)), Struct_1(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, -173f, 1666f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-976f, -1124f, 345f), vec3<f32>(1404f, 106f, -421f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2484f, 489f) * vec3<f32>(1051f, -2470f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1341f, -342f, 382f), vec3<f32>(-1522f, 1205f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, -387f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1596f))))), u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.d.x, 1i, countOneBits(u_input.b.x), 2147483647i) & vec4<i32>(-28439i, 1i, u_input.b.x, u_input.c), ~firstTrailingBit(-vec4<i32>(u_input.a.x, 2147483647i, u_input.c, u_input.c)), vec4<i32>(u_input.e.x, u_input.d.x, 6057i, -(~u_input.d.x))), vec4<u32>(22078u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, ~37202u, ~0u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(2430u, 12951u))), _wgslsmith_clamp_u32((63465u << (0u % 32u)) & _wgslsmith_clamp_u32(9546u, 40428u, 21431u), 0u, 1u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(788f, var_0.b.e.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.a))) * 1431f));
    let var_2 = Struct_1(var_0.c.e.a || all(select(!vec3<bool>(var_0.c.e.a, false, false), select(vec3<bool>(var_0.b.e.a, var_0.b.e.a, var_0.b.e.a), vec3<bool>(var_0.c.e.a, true, var_0.c.e.a), var_0.c.e.a), var_0.b.e.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_4(75551u, var_0.b.e).b.e.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -232f, var_0.c.b.x)))) + var_0.b.e.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.e.b + var_0.c.e.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.e.c, var_0.b.e.b) * func_5(Struct_3(-1497f, var_0.c, var_0.c), var_0.b.d.zy).b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.e.d + _wgslsmith_f_op_vec3_f32(abs(var_0.c.e.b)))), _wgslsmith_f_op_vec2_f32(select(var_0.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.a, var_0.b.e.e.x), vec2<f32>(var_1, var_1), false))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(105f, -904f)))), !var_0.b.e.a)));
    var var_3 = !vec2<bool>(func_5(Struct_3(554f, Struct_2(var_0.c.a, vec2<f32>(var_0.c.a, var_0.c.e.e.x), var_0.c.d, var_0.c.c, Struct_1(var_0.c.e.a, vec3<f32>(var_2.d.x, var_1, var_1), vec3<f32>(-1647f, var_0.a, 292f), var_2.d, var_0.b.e.b.yx)), var_0.b), ~var_0.c.d.yz).d.x >= _wgslsmith_f_op_f32(-116f - _wgslsmith_f_op_f32(-var_2.c.x)), false);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(var_0.c.b.x)), _wgslsmith_f_op_vec2_f32(sign(var_0.c.e.c.xy)), vec3<u32>(~(~(var_0.b.c.x & 39387u)), _wgslsmith_clamp_u32((12405u << (var_0.b.d.x % 32u)) ^ func_4(0u, Struct_1(true, vec3<f32>(1203f, -1072f, var_2.d.x), vec3<f32>(182f, var_2.c.x, var_1), vec3<f32>(var_1, -1748f, 1000f), var_0.c.e.d.yx)).b.d.x, var_0.c.c.x, 4294967295u), 16370u), _wgslsmith_add_vec3_u32(var_0.b.c, ~var_0.b.c), Struct_1(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_0.b.e.a, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, 1463f, var_1) * vec3<f32>(var_2.e.x, 501f, 1251f))) - var_0.c.e.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.c.x, -2169f, var_0.a))))), var_2.d, vec2<f32>(-1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f - var_0.a)))));
    var var_5 = !vec4<bool>(true, false, !var_4.e.a, all(select(vec3<bool>(var_4.e.a, var_0.c.e.a, var_4.e.a), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) & func_2(9092i, ~0u, var_1));
    var_5 = vec4<bool>(false, 628f <= var_0.b.a, false, (false || func_2(max(u_input.e.x, u_input.a.x), ~var_4.c.x, -225f)) && !select(var_3.x, var_4.b.x == -1464f, var_4.d.x < var_4.d.x));
    let var_6 = var_4.e.d;
    let var_7 = _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.a.yz, min(u_input.e.yy, u_input.d.xz)), _wgslsmith_mult_i32(u_input.c, i32(-1i) * -51026i)), vec2<bool>(var_3.x, firstTrailingBit(var_0.c.d.x) == _wgslsmith_mod_u32(47836u, var_4.c.x))), u_input.d.zy);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, ~(~(-firstLeadingBit(var_7))), 0i, ~(abs(_wgslsmith_mod_u32(1u, 58067u)) ^ var_0.c.d.x));
}

