struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_3(Struct_1(min(vec2<u32>(arg_3.x, ~3185u), vec2<u32>(4294967295u ^ arg_3.x, _wgslsmith_div_u32(46493u, 1u)))), Struct_2(false, vec3<f32>(-341f, _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_2)), true), Struct_2(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, -1000f, arg_2) * vec3<f32>(arg_2, arg_2, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 547f) + vec3<f32>(arg_2, arg_2, arg_2)) * vec3<f32>(522f, arg_2, arg_2))), (arg_2 < arg_2) & !select(false, true, false)), -select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.x, arg_1.x, -7099i), vec4<i32>(arg_1.x, arg_1.x, u_input.c, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 1i, -2147483647i, arg_0.x), vec4<i32>(arg_0.x, -3012i, arg_0.x, -2147483647i)), ~(-28415i), u_input.c), -vec4<i32>(u_input.c, arg_1.x, arg_0.x, u_input.c), vec4<bool>(-1116f > arg_2, true, true, false)), Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -459f, -1057f) * vec3<f32>(arg_2, -1129f, -2337f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, 1239f, 1482f))))), true));
    var_0 = Struct_3(Struct_1(~vec2<u32>(49054u, ~4294967295u)), var_0.b, var_0.c, firstLeadingBit(~(~(-var_0.d))), Struct_2(all(vec2<bool>(any(vec4<bool>(false, var_0.b.a, var_0.c.a, false)), true)), _wgslsmith_f_op_vec3_f32(round(var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.b.x))) > _wgslsmith_f_op_f32(-var_0.b.b.x)));
    var var_1 = u_input.d.xyx;
    let var_2 = Struct_2(var_0.c.a, var_0.b.b, 66642u > arg_3.x);
    var_0 = Struct_3(Struct_1((_wgslsmith_clamp_vec2_u32(arg_3.wz, arg_3.zw, arg_3.wz) ^ (arg_3.yx ^ vec2<u32>(arg_3.x, var_1.x))) >> (~(~vec2<u32>(57052u, 17963u)) % vec2<u32>(32u))), Struct_2(all(vec3<bool>(true, var_0.e.c | true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.e.b - var_2.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.b), vec3<f32>(-536f, var_2.b.x, 651f)))), (true | var_2.a) | select(all(vec4<bool>(var_2.a, var_0.e.c, false, var_0.c.c)), !var_0.c.c, true)), var_0.c, vec4<i32>(~(-_wgslsmith_mult_i32(24059i, var_0.d.x)), ~_wgslsmith_mult_i32(1i, 2147483647i), u_input.c, abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_0.x, arg_0.x), var_0.d.yyw), countOneBits(-34576i), _wgslsmith_mult_i32(arg_0.x, arg_1.x)))), var_2);
    return select(~(countOneBits(firstTrailingBit(var_0.a.a.x)) >> (~(~var_1.x) % 32u)), 13266u, true);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<u32>(0u, ~(~4294967295u), ~arg_1);
    var var_1 = ~49098u;
    var_1 = func_3(vec2<i32>(arg_0, u_input.c) >> ((~u_input.b.xz ^ abs(var_0.xz)) % vec2<u32>(32u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0, -2147483647i)), arg_0) | ~vec2<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -29575i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, u_input.c))), -2869f, u_input.d);
    var_1 = _wgslsmith_clamp_u32(~u_input.d.x, u_input.e, arg_1);
    var var_2 = Struct_3(Struct_1(~vec2<u32>(1u, ~1u)), Struct_2(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1348f * -1000f), _wgslsmith_f_op_f32(1000f - 490f), -1221f) - vec3<f32>(_wgslsmith_f_op_f32(round(187f)), 678f, _wgslsmith_f_op_f32(f32(-1f) * -614f))), select(true, all(vec2<bool>(false, true)), select(false, false, false)) || true), Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-905f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(693f)) + 118f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f - 497f))), true || all(vec2<bool>(false, false))), ~vec4<i32>(-56545i >> (0u % 32u), firstTrailingBit(16461i), i32(-1i) * -2147483647i, -u_input.c) & (vec4<i32>(-1i) * -(vec4<i32>(arg_0, 1i, arg_0, arg_0) & vec4<i32>(1i, 0i, 65521i, 47958i))), Struct_2(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-804f, 493f, 894f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1054f, -221f, 547f) + vec3<f32>(-242f, -871f, -383f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1175f, -201f))), true));
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = !vec2<bool>(all(!vec3<bool>(arg_0, arg_0, arg_1.a)), (4294967295u & ~u_input.b.x) > _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_2.a.x, arg_2.a.x, u_input.a, 1u)), ~u_input.a));
    let var_1 = Struct_3(Struct_1(~vec2<u32>(select(4294967295u, 58305u, false), ~u_input.d.x)), Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, _wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(min(arg_1.b.x, 1144f)))), any(var_0)), Struct_2(!(!var_0.x), arg_1.b, false), ~(vec4<i32>(~5368i, 1i, -7504i, 2147483647i) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, arg_2.a.x, u_input.d.x, u_input.d.x), vec4<u32>(0u, u_input.d.x, 0u, arg_2.a.x)), abs(u_input.d)) % vec4<u32>(32u))), Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1368f, arg_1.b.x))), 750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), !any(!vec3<bool>(false, var_0.x, var_0.x))));
    let var_2 = Struct_3(var_1.a, var_1.b, var_1.c, vec4<i32>(var_1.d.x, abs(var_1.d.x), i32(-1i) * -abs(-27421i), abs((i32(-1i) * -2956i) ^ (-2147483647i ^ var_1.d.x))), Struct_2(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b.x, -1000f, var_1.b.b.x), vec3<f32>(var_1.b.b.x, var_1.e.b.x, var_1.c.b.x)) + _wgslsmith_f_op_vec3_f32(-var_1.b.b))), false));
    let var_3 = u_input.d.yxw;
    var var_4 = var_2.e.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-755f, -771f, 1000f) - vec3<f32>(337f, var_2.e.b.x, 1132f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = select(vec2<bool>(true, !(!arg_1.x)), vec2<bool>(2147483647i >= -(~u_input.c), any(vec4<bool>(any(vec3<bool>(var_0.x, arg_1.x, true)), arg_1.x, any(vec4<bool>(var_0.x, arg_1.x, arg_1.x, false)), true))), select(all(!vec4<bool>(arg_1.x, var_0.x, var_0.x, var_0.x)), true, !(!arg_1.x != var_0.x)));
    var var_1 = func_2(~(~2147483647i) & u_input.c, 4294967295u);
    var_1 = Struct_1(countOneBits(~_wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.d.x, 1u), var_1.a), firstTrailingBit(vec2<u32>(4294967295u, 0u)))));
    let var_2 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(var_0.x, arg_1.x, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1180f, arg_0.x) * arg_0)))), false & var_0.x);
    return Struct_1(vec2<u32>(var_1.a.x, _wgslsmith_sub_u32(~var_1.a.x, _wgslsmith_mult_u32(min(13002u, 4294967295u), var_1.a.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(4294967295u, 0u);
    var_0 = ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.e, u_input.b.x, 537u), u_input.d << ((vec4<u32>(u_input.d.x, u_input.d.x, 17858u, arg_0.x) ^ u_input.d) % vec4<u32>(32u))) ^ _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.yx), 1u, 1911u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-705f, -316f, true))) - 1673f))));
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(all(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(604f, -303f, 351f) * vec3<f32>(-192f, 1000f, -1905f)) + vec3<f32>(1f, 1f, 1f)), false), func_2(1i, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.a, 62736u))))), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), true), all(vec3<bool>(arg_0.x <= arg_0.x, true, u_input.a > arg_0.x))));
    var var_3 = vec2<u32>(arg_0.x, ~_wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(4294967295u), ~arg_0.x), u_input.b.x & 1578u));
    return Struct_2(any(vec2<bool>(true, !any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1758f, -598f, -284f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(815f, 1421f, 1420f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 985f, 704f))))), vec3<bool>(select(false, true, false), true, true)))), true);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_div_i32(-(u_input.c | _wgslsmith_add_i32(arg_2.x, ~arg_2.x)), i32(-1i) * -arg_2.x);
    return countOneBits(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(u_input.c, -11415i), u_input.c, (_wgslsmith_add_i32(i32(-1i) * -32419i, _wgslsmith_sub_i32(u_input.c, 0i)) ^ (u_input.c | 33217i)) & func_6(func_1(vec3<u32>(4294967295u, 21273u, u_input.a) << (vec3<u32>(37711u, 4294967295u, u_input.d.x) % vec3<u32>(32u)), vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.c) & vec4<i32>(u_input.c, -1i, -61159i, -1i)), func_1(vec3<u32>(4294967295u, 24357u, 4294967295u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, 52092i), vec4<i32>(2147483647i, u_input.c, u_input.c, 1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c, 26347i, u_input.c), vec4<i32>(u_input.c, 4927i, -2725i, u_input.c)), -vec4<i32>(u_input.c, 34690i, 29322i, 2147483647i), select(vec4<i32>(u_input.c, -23387i, -1i, u_input.c), vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<bool>(true, false, false, false))), vec3<u32>(u_input.b.x, abs(0u), var_0.x)));
    var_0 = ~abs(u_input.d) | vec4<u32>(var_0.x, ~reverseBits(~var_0.x), 4294967295u >> (_wgslsmith_mult_u32(4294967295u, ~4294967295u) % 32u), _wgslsmith_div_u32(1u, 50820u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f + 2838f) + _wgslsmith_f_op_f32(1000f * -720f)) - -822f)));
    var var_3 = func_1(var_0.zyz, ~(~abs(vec4<i32>(var_1.x, -22261i, 1i, 1i) & vec4<i32>(2147483647i, 51415i, var_1.x, u_input.c))));
    let var_4 = Struct_2(var_0.x < _wgslsmith_add_u32(_wgslsmith_mult_u32(~var_0.x, func_5(vec3<f32>(var_3.b.x, -457f, 305f), vec2<bool>(var_3.c, var_3.c)).a.x), reverseBits(reverseBits(88106u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_3.b - var_3.b))), select(var_0.x, ~(~u_input.d.x), ~u_input.a == var_0.x) < ~28039u);
    let var_5 = Struct_3(func_2(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(0i, 12665i, 0i, var_1.x), vec4<i32>(u_input.c, 1i, 919i, var_1.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(25672i, 39704i, 4274i, u_input.c), vec4<i32>(u_input.c, -2147483647i, var_1.x, 14406i))), u_input.d.x), Struct_2(any(vec4<bool>(true, true, all(vec3<bool>(true, true, var_4.c)), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_4.b.x)), 864f, _wgslsmith_f_op_f32(var_3.b.x + -1814f))), select(any(select(vec4<bool>(false, var_4.a, var_4.c, var_4.a), vec4<bool>(true, var_4.c, false, false), true)), var_4.c, !any(vec2<bool>(false, var_4.c)))), var_4, -(~(~vec4<i32>(u_input.c, var_1.x, 0i, 12672i))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(9226u, var_0.x, u_input.b.x, var_0.x), u_input.d >> (u_input.d % vec4<u32>(32u)), countOneBits(vec4<u32>(44511u, 0u, var_0.x, u_input.e))), max(u_input.d, u_input.d) << (~vec4<u32>(var_0.x, var_0.x, 45770u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), func_1(_wgslsmith_mult_vec3_u32(var_0.wxx, u_input.b), vec4<i32>(abs(48535i) << (_wgslsmith_dot_vec2_u32(u_input.d.wz, vec2<u32>(1u, u_input.b.x)) % 32u), firstLeadingBit(reverseBits(-2147483647i)), ~(-31649i), -select(var_1.x, var_1.x, var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-12739i, vec3<i32>(func_6(func_1(u_input.d.zxx, abs(var_5.d)), func_1(vec3<u32>(var_5.a.a.x, 4294967295u, var_0.x) << (vec3<u32>(0u, u_input.b.x, 52695u) % vec3<u32>(32u)), _wgslsmith_sub_vec4_i32(var_5.d, vec4<i32>(var_5.d.x, var_1.x, 9895i, 0i))), abs(select(var_5.d, vec4<i32>(-2294i, var_1.x, var_5.d.x, -2147483647i), vec4<bool>(var_5.c.c, var_3.a, false, var_5.e.a))), min(_wgslsmith_add_vec3_u32(var_0.zzz, vec3<u32>(var_0.x, 1u, u_input.a)), countOneBits(vec3<u32>(4294967295u, var_5.a.a.x, 8754u)))), ~0i, u_input.c), ~countOneBits(~var_5.a.a), vec3<u32>(4294967295u, 10020u, firstLeadingBit(21098u)), var_0.zy);
}

