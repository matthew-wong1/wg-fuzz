struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_4(Struct_2(-firstTrailingBit(firstTrailingBit(vec3<i32>(-2282i, u_input.c, -21837i))), Struct_1(u_input.c)), Struct_3(Struct_2(~(vec3<i32>(u_input.c, u_input.c, -3875i) << (vec3<u32>(arg_1.x, u_input.b, u_input.b) % vec3<u32>(32u))), Struct_1(i32(-1i) * -3971i)), vec3<bool>(true || select(false, false, false), false, true), Struct_2(select(vec3<i32>(u_input.c, 10848i, u_input.c), vec3<i32>(2147483647i, -1722i, -22447i), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, 1i)))), vec3<i32>(select(1i, u_input.c, false), -countOneBits(u_input.c), _wgslsmith_mult_i32(1i | u_input.c, u_input.c)), Struct_2(-(vec3<i32>(2147483647i, 10810i, u_input.c) ^ vec3<i32>(u_input.c, 2147483647i, u_input.c)), Struct_1(_wgslsmith_add_i32(u_input.c, u_input.c)))), Struct_2(select(-vec3<i32>(u_input.c, u_input.c, u_input.c), countOneBits(~vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(any(vec3<bool>(true, true, true)), false, all(vec4<bool>(true, false, true, true)))), Struct_1(_wgslsmith_div_i32(-u_input.c, i32(-1i) * -1i))), Struct_1(abs(-u_input.c & 0i)), ~vec3<i32>(2147483647i << (u_input.b % 32u), firstTrailingBit(~u_input.c), _wgslsmith_div_i32(-16892i, -42969i)));
    var var_1 = -1i;
    var_1 = 14524i;
    let var_2 = _wgslsmith_div_u32(firstLeadingBit(arg_1.x) >> (arg_1.x % 32u), u_input.b) ^ _wgslsmith_add_u32(u_input.a << (min(max(arg_1.x, 9063u), firstLeadingBit(40434u)) % 32u), arg_1.x);
    var_1 = 1i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-945f, arg_0)), arg_0, all(!vec3<bool>(false, var_0.b.b.x, var_0.b.b.x))))));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.a, arg_1, 1u) | vec3<u32>(1u, arg_1, arg_1)) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 4294967295u), vec3<u32>(0u, u_input.b, u_input.a)), ~arg_1, ~1193u)), vec3<u32>(u_input.b, _wgslsmith_mult_u32(18434u, 56191u), 323u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1047f, -125f)))) - -964f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1900f - 628f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-629f, vec2<u32>(1u, 88768u))))))), _wgslsmith_f_op_f32(723f - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2525f)), -1151f))))));
    let var_2 = Struct_5(Struct_3(arg_0.c, arg_0.b.b, Struct_2(vec3<i32>(~u_input.c, -1i, abs(arg_2.a)), Struct_1(~u_input.c)), _wgslsmith_add_vec3_i32(arg_0.e, firstTrailingBit(arg_0.a.a)), Struct_2(arg_0.e, Struct_1(firstTrailingBit(arg_0.c.b.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(139f - 1000f), _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 697f) + -1000f)), var_1.x), arg_0);
    var var_3 = var_2.e;
    var var_4 = Struct_3(var_3.b.a, select(!select(select(vec3<bool>(var_3.b.b.x, arg_0.b.b.x, false), var_2.e.b.b, vec3<bool>(var_2.a.b.x, var_2.a.b.x, false)), vec3<bool>(true, true, var_3.b.b.x), true), vec3<bool>(var_2.e.b.b.x, arg_0.b.b.x, false), arg_0.b.b.x), Struct_2(-select(arg_0.c.a, abs(vec3<i32>(var_2.a.c.a.x, 16836i, var_3.b.d.x)), true), Struct_1(2508i)), vec3<i32>(firstLeadingBit(u_input.c), abs(var_2.e.a.a.x), arg_3.a), Struct_2(select(arg_0.a.a, vec3<i32>(-1i) * -vec3<i32>(arg_2.a, 1i, arg_3.a), var_3.b.b.x && var_2.a.b.x), arg_0.c.b));
    return ~var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~20020u;
    var var_1 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, 0u, u_input.b)), vec3<u32>(u_input.b, u_input.b, 1968u) | vec3<u32>(u_input.b, u_input.b, u_input.a)), max(vec3<u32>(~7698u, 1u, ~72962u), vec3<u32>(u_input.a & 52394u, abs(u_input.b), func_2(Struct_4(Struct_2(arg_1.a, Struct_1(-19187i)), Struct_3(Struct_2(vec3<i32>(-2147483647i, -9463i, arg_1.b.a), arg_1.b), arg_0.xzz, Struct_2(vec3<i32>(arg_1.a.x, u_input.c, 0i), Struct_1(2848i)), arg_1.a, arg_1), arg_1, arg_1.b, arg_1.a), u_input.b, Struct_1(2147483647i), Struct_1(u_input.c)))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i) ^ -2147483647i, -1i, _wgslsmith_clamp_i32(-1i, 29014i, 1i)), ~countOneBits(arg_1.a)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.a.x, u_input.c & -1i, -2147483647i), -u_input.c ^ _wgslsmith_mod_i32(u_input.c, arg_1.b.a)), -1i, select(-40569i, ~(-2147483647i) ^ countOneBits(arg_1.b.a), true)));
    let var_3 = Struct_5(Struct_3(Struct_2(arg_1.a, Struct_1(reverseBits(var_2))), vec3<bool>(arg_0.x & arg_0.x, true, arg_0.x), Struct_2(min(countOneBits(arg_1.a), arg_1.a), Struct_1(arg_1.a.x)), -(_wgslsmith_mod_vec3_i32(arg_1.a, vec3<i32>(0i, 1i, 0i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 82858u, 16922u), vec3<u32>(var_1.x, u_input.b, u_input.b)) % vec3<u32>(32u))), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(302f, var_1.xy))))) * -1205f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, _wgslsmith_f_op_f32(step(2530f, -465f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1883f, 1000f, -1233f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(-818f, _wgslsmith_f_op_f32(func_3(371f, vec2<u32>(66408u, 4294967295u))), 385f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(204f, -703f, 1000f))))), Struct_4(arg_1, Struct_3(Struct_2(vec3<i32>(arg_1.a.x, u_input.c, u_input.c), Struct_1(1i)), !select(vec3<bool>(false, false, arg_0.x), arg_0.yyz, vec3<bool>(true, arg_0.x, arg_0.x)), Struct_2(arg_1.a >> (vec3<u32>(1u, 48931u, 84037u) % vec3<u32>(32u)), arg_1.b), arg_1.a, arg_1), arg_1, Struct_1(_wgslsmith_dot_vec2_i32(-arg_1.a.yz, arg_1.a.zy << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), reverseBits(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, -30319i))));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_3.d.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1407f, var_3.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1725f, 2244f)), select(arg_0.xz, arg_0.xx, arg_0.zw)))), all(vec3<bool>(arg_0.x & false, var_3.a.b.x, var_3.e.b.b.x))))));
    return Struct_1(max(_wgslsmith_mult_i32(arg_1.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-21864i, 32170i) >> (var_1.zx % vec2<u32>(32u)), -vec2<i32>(var_2, u_input.c))), ~(-58226i)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, arg_1.a, arg_1.a), firstTrailingBit(vec3<i32>(-1i, -2904i, arg_1.a))), ~vec3<i32>(u_input.c, arg_1.a, arg_1.a)), _wgslsmith_sub_vec3_i32(min(-vec3<i32>(u_input.c, -1i, -9786i), ~vec3<i32>(u_input.c, -1i, u_input.c)), select(vec3<i32>(arg_1.a, u_input.c, -41429i) | vec3<i32>(2147483647i, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), ~vec3<i32>(-2147483647i, 17375i, u_input.c)), arg_1);
    var var_1 = Struct_5(Struct_3(Struct_2(-(~var_0.a), Struct_1(-4929i)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, true)), var_0, abs(vec3<i32>(-1i) * -var_0.a), Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -36279i, 1i), var_0.a), u_input.c, 78945i), func_1(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1724f, arg_0.x)) + arg_0.x), _wgslsmith_div_f32(727f, arg_0.x)), arg_0.zx, vec3<f32>(_wgslsmith_f_op_f32(-718f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(-1000f)), arg_0.x), Struct_4(Struct_2(vec3<i32>(2147483647i, select(var_0.b.a, arg_1.a, false), -var_0.b.a), func_1(vec4<bool>(true, true, true, true), Struct_2(vec3<i32>(u_input.c, -10162i, u_input.c), arg_1))), Struct_3(Struct_2(vec3<i32>(-1i, -43710i, arg_1.a), Struct_1(u_input.c)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), Struct_2(vec3<i32>(var_0.b.a, u_input.c, u_input.c) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), Struct_1(u_input.c)), vec3<i32>(1i, u_input.c, _wgslsmith_add_i32(var_0.a.x, 17162i)), var_0), Struct_2(reverseBits(_wgslsmith_mod_vec3_i32(var_0.a, var_0.a)), func_1(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), var_0)), Struct_1(arg_1.a), vec3<i32>(abs(countOneBits(var_0.a.x)), ~_wgslsmith_mult_i32(u_input.c, 0i), u_input.c)));
    var_1 = Struct_5(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(1619f + 131f)), _wgslsmith_f_op_f32(-arg_0.x), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b, 1995f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 611f) - var_1.c))), _wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1652f, 1775f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1577f, 858f, 713f) + vec3<f32>(arg_0.x, -1425f, var_1.d.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -601f, arg_0.x))))))), var_1.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(arg_0.yy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_0.x), vec2<u32>(4294967295u, u_input.b))), -613f))), vec2<bool>(!var_1.e.b.b.x, (!var_1.e.b.b.x || false) & !any(vec4<bool>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)))));
    var_1 = Struct_5(var_1.a, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1.c.x)))), var_1.d, Struct_4(var_0, Struct_3(var_0, var_1.e.b.b, Struct_2(vec3<i32>(var_1.e.c.a.x, -1736i, -1i) ^ var_0.a, arg_1), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_1.a.d.x, u_input.c), var_1.a.e.a), abs(var_1.e.e), false), Struct_2(var_0.a, func_1(vec4<bool>(var_1.e.b.b.x, var_1.a.b.x, var_1.e.b.b.x, false), var_0))), var_0, var_1.a.c.b, var_0.a));
    return func_1(vec4<bool>(!var_1.e.b.b.x, false, false, false), var_0);
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = select(select(vec3<bool>(true, true, -1106f > _wgslsmith_f_op_f32(floor(-1119f))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), true), true), vec3<bool>((arg_0.b.a <= (i32(-1i) * -12759i)) || true, true, (arg_0.a.x <= (u_input.c | 10162i)) | (~u_input.c > arg_0.b.a)), u_input.a <= ~35453u);
    var var_1 = Struct_4(Struct_2(-arg_0.a, func_4(vec3<f32>(-860f, 1326f, -405f), Struct_1(u_input.c >> (u_input.a % 32u)), firstTrailingBit(~vec2<u32>(u_input.a, 6357u)))), Struct_3(Struct_2(min(vec3<i32>(arg_0.a.x, 50950i, 0i), ~arg_0.a), arg_0.b), vec3<bool>(var_0.x, (arg_0.b.a <= u_input.c) && !var_0.x, all(var_0) == false), arg_0, arg_0.a, Struct_2(-(~arg_0.a), Struct_1(u_input.c))), arg_0, Struct_1(_wgslsmith_add_i32(-5702i, arg_0.a.x)), vec3<i32>(_wgslsmith_mod_i32(countOneBits(arg_0.a.x), -u_input.c), _wgslsmith_sub_i32(u_input.c, -2147483647i), u_input.c));
    var_1 = Struct_4(Struct_2(~(~var_1.c.a & (var_1.a.a >> (vec3<u32>(1u, u_input.b, 4294967295u) % vec3<u32>(32u)))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, 1018f, -1600f) - vec3<f32>(-656f, 953f, 668f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(223f, 324f, 920f) - vec3<f32>(-522f, -1586f, 185f))), Struct_1(-7799i), vec2<u32>(14998u, u_input.a) | max(vec2<u32>(u_input.b, 50095u), vec2<u32>(6217u, u_input.b)))), var_1.b, var_1.a, var_1.b.a.b, vec3<i32>(-1i) * -vec3<i32>(0i, ~(-3426i), 1i));
    var_1 = Struct_4(Struct_2(var_1.e, func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(503f, -130f, -1288f), _wgslsmith_div_vec3_f32(vec3<f32>(1073f, -858f, 211f), vec3<f32>(-1195f, 1000f, 177f)))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2122f, -157f, 181f) + vec3<f32>(705f, -132f, 1000f)), var_1.c.b, abs(vec2<u32>(70u, u_input.a))), select(vec2<u32>(u_input.b, u_input.a) & vec2<u32>(3289u, 2633u), ~vec2<u32>(u_input.b, 14439u), var_1.b.b.x))), var_1.b, arg_0, var_1.a.b, countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~var_1.b.e.a, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.b.a, u_input.c, -2147483647i), var_1.a.a)), _wgslsmith_clamp_vec3_i32(arg_0.a, vec3<i32>(arg_0.b.a, 2147483647i, 1i), vec3<i32>(1i, 14064i, u_input.c)))));
    var var_2 = abs(~(~u_input.c));
    return !(!var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = true | func_5(Struct_2(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_0, -2147483647i, u_input.c)), vec3<i32>(0i, var_0, 2147483647i) >> (vec3<u32>(u_input.b, u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.c, var_0, -2147483647i))), func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(605f, -1238f, -1172f), vec3<f32>(1033f, 1404f, 538f))), func_1(vec4<bool>(false, true, false, false), Struct_2(vec3<i32>(-44656i, -5079i, var_0), Struct_1(-2147483647i))), ~vec2<u32>(41266u, u_input.a))));
    let var_2 = Struct_3(Struct_2(~(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -64081i, 21356i), vec3<i32>(-1i, -2147483647i, 4459i)) << (~vec3<u32>(u_input.b, 4294967295u, u_input.a) % vec3<u32>(32u))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, -648f, 330f))), Struct_1(u_input.c), max(vec2<u32>(u_input.b, 1990u) | vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.a)))), !(!select(!vec3<bool>(true, false, var_1), select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, var_1, true), true), vec3<bool>(true, var_1, false))), Struct_2(abs(-vec3<i32>(u_input.c, 21773i, u_input.c)), func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1907f, -338f, -1172f))), Struct_1(-2147483647i), abs(vec2<u32>(u_input.a, u_input.b)) | ~vec2<u32>(u_input.a, u_input.b))), countOneBits(~(vec3<i32>(2147483647i, var_0, 2147483647i) ^ vec3<i32>(u_input.c, -2147483647i, var_0))), Struct_2(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(-51501i, u_input.c, var_0) ^ _wgslsmith_div_vec3_i32(vec3<i32>(48373i, u_input.c, -18198i), vec3<i32>(15574i, -17592i, var_0))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, 448f, 277f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, 246f, -928f))), func_1(vec4<bool>(var_1, var_1, var_1, var_1), Struct_2(vec3<i32>(u_input.c, 1i, 48813i), Struct_1(var_0))), ~(~vec2<u32>(4294967295u, u_input.a)))));
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1293f)) + _wgslsmith_f_op_f32(round(1005f))) - -478f)));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, var_4)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, var_4) + vec2<f32>(var_4, var_4))), _wgslsmith_div_vec2_f32(vec2<f32>(-3294f, var_4), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(765f, var_4), vec2<f32>(-446f, -1389f))))))));
    var var_6 = reverseBits(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 1u), (u_input.a ^ 0u) ^ min(u_input.a, 79519u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, 0i, -3537i), vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))), _wgslsmith_f_op_f32(sign(-1000f))), var_2.a.a.x);
}

