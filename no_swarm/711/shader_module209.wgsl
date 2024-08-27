struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = !(!vec2<bool>((u_input.a & 1u) >= 2440u, _wgslsmith_sub_i32(962i, arg_0) >= (arg_0 << (35237u % 32u))));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1702f, -602f, arg_1.x))), vec3<f32>(arg_2.b.x, 1267f, -583f)))), vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(round(2011f))))), vec4<i32>(arg_2.a.x << (firstLeadingBit(u_input.a) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, 1i, 1i), vec4<i32>(arg_2.a.x, -1i, arg_2.a.x, arg_2.a.x)) << (_wgslsmith_mod_u32(u_input.a, 0u) % 32u), -1i, abs(-6016i)) >> (((~vec4<u32>(u_input.b, 63568u, 0u, 0u) & ~vec4<u32>(4294967295u, u_input.a, u_input.b, 60179u)) >> (reverseBits(~vec4<u32>(u_input.b, u_input.b, 0u, 75634u)) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_2);
    let var_2 = Struct_3(Struct_2(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(-548f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-229f)), _wgslsmith_f_op_f32(-arg_1.x), var_0.x))), firstTrailingBit(~var_1.b | -vec4<i32>(arg_2.a.x, var_1.c.a.x, 1i, arg_2.a.x)), Struct_1(~var_1.b.zx, vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c.b.x, arg_1.x)), _wgslsmith_div_f32(655f, arg_1.x), 722f, _wgslsmith_f_op_f32(trunc(arg_1.x))))), u_input.a, var_1.c);
    var var_3 = all(vec2<bool>(!any(vec2<bool>(true, true)), false));
    let var_4 = ~countOneBits(-select(vec4<i32>(0i, -1i, 0i, arg_0) & var_1.b, vec4<i32>(var_2.c.a.x, var_1.c.a.x, -20368i, 0i), all(vec3<bool>(var_0.x, true, var_0.x))));
    return _wgslsmith_f_op_vec3_f32(-var_2.c.b.zwy);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = arg_1;
    return Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0), _wgslsmith_f_op_vec3_f32(step(arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(func_3(var_0, _wgslsmith_f_op_vec2_f32(arg_0.xx + vec2<f32>(arg_0.x, -968f)), Struct_1(vec2<i32>(var_0, -73676i), vec4<f32>(arg_0.x, -977f, arg_0.x, arg_0.x))))), vec3<f32>(-609f, arg_0.x, arg_0.x))), vec4<i32>(~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, -2581i), -vec2<i32>(-32210i, 13223i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -11171i, var_0) | vec3<i32>(var_0, arg_1, var_0), vec3<i32>(52574i, arg_1, arg_1)), _wgslsmith_sub_i32(min(~arg_1, -2147483647i), countOneBits(-var_0)), firstTrailingBit(~arg_1)), Struct_1(reverseBits(firstLeadingBit(vec2<i32>(43135i, -16775i))) >> (~select(vec2<u32>(arg_3, 62758u), vec2<u32>(arg_3, 20932u), arg_2.x) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_i32(-22345i, var_0), vec2<f32>(1510f, arg_0.x), Struct_1(vec2<i32>(27427i, var_0), vec4<f32>(-322f, -1673f, arg_0.x, 650f)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1380f)) + 429f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) - arg_0.x), 144f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(~vec4<u32>(~arg_0.b, ~60466u, ~(~56472u), firstTrailingBit(9318u) ^ ~37580u), vec4<u32>(_wgslsmith_sub_u32(arg_0.b, arg_2), abs(~u_input.b), ~(~arg_0.b), 4294967295u), all(vec2<bool>(select(arg_3.x, true, arg_3.x), true)) | true);
    var var_1 = false;
    var var_2 = arg_0;
    var var_3 = Struct_3(func_2(var_2.a.a, var_2.c.a.x >> (_wgslsmith_clamp_u32(66292u, ~1u, arg_1.b) % 32u), vec3<bool>(arg_3.x, arg_3.x, false), ~(~abs(arg_2))), var_2.b, func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b.x, arg_1.c.b.x, -479f)))))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1671f, -786f, arg_0.c.b.x), arg_0.c.b.wzy)), arg_0.a.c.b.wzz), var_2.c.a.x, select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, false, true), !vec3<bool>(arg_3.x, false, arg_3.x)), var_0.x).b.x, vec3<bool>(true, arg_3.x, all(arg_3)), ~1u).c);
    var var_4 = Struct_1((var_3.a.c.a << (_wgslsmith_div_vec2_u32(var_0.yz >> (var_0.yx % vec2<u32>(32u)), vec2<u32>(0u, arg_2)) % vec2<u32>(32u))) >> (var_0.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_0.a.c.b, _wgslsmith_f_op_vec4_f32(arg_0.c.b + arg_0.c.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-266f, arg_0.a.a.x, 786f, 962f), arg_1.a.c.b) - var_2.c.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(676f, 1000f, -838f, var_3.a.a.x), vec4<f32>(-898f, var_2.c.b.x, -1000f, arg_1.a.c.b.x))))));
    return arg_1.c;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(min(-1311f, -1050f)), _wgslsmith_f_op_f32(f32(-1f) * -219f), -678f), abs(2147483647i), vec3<bool>(true, true, true), 8272u >> (u_input.a % 32u)), ~(~_wgslsmith_div_u32(u_input.a, 62047u)), Struct_1(vec2<i32>(~1i, 1i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(152f, -687f, 747f, 1877f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, 287f, 1255f, -398f)))))), Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(132f, -813f, -1362f), vec3<f32>(-453f, -251f, 998f), true))), -25184i, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(56613u, u_input.b, 45829u), vec3<u32>(1u, 1u, u_input.a))), 25735u, Struct_1(vec2<i32>(-9982i, _wgslsmith_mult_i32(-10831i, 1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1521f, 309f, -225f, 196f), vec4<f32>(-974f, 824f, -2325f, 443f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(325f, 208f, 465f, -547f) - vec4<f32>(1820f, -299f, 519f, -169f)), vec4<bool>(true, false, false, true))))), u_input.b, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, -22154i), vec4<i32>(var_0.a.x, -10547i, var_0.a.x, var_0.a.x)), _wgslsmith_div_i32(22472i, -71755i), -var_0.a.x), max(~vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), countOneBits(vec4<i32>(1i, var_0.a.x, -50137i, 8093i)))), max(var_0.a.x, abs(var_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_4(Struct_3(Struct_2(vec3<f32>(var_0.b.x, 1233f, var_0.b.x), vec4<i32>(0i, var_0.a.x, -2147483647i, var_0.a.x), Struct_1(vec2<i32>(var_0.a.x, 42705i), var_0.b)), u_input.b, Struct_1(var_0.a, vec4<f32>(var_0.b.x, 296f, var_0.b.x, var_0.b.x))), Struct_3(Struct_2(var_0.b.zyz, vec4<i32>(var_0.a.x, 12007i, 2147483647i, var_0.a.x), Struct_1(var_0.a, var_0.b)), 37380u, Struct_1(var_0.a, vec4<f32>(-253f, 2880f, 1900f, -709f))), u_input.b, vec2<bool>(false, false)).b) * _wgslsmith_f_op_vec4_f32(-var_0.b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(func_4(Struct_3(Struct_2(vec3<f32>(var_0.b.x, var_0.b.x, 446f), vec4<i32>(-20260i, var_0.a.x, var_0.a.x, 29301i), Struct_1(vec2<i32>(var_0.a.x, 0i), var_0.b)), u_input.a, Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), vec4<f32>(205f, var_0.b.x, var_0.b.x, var_0.b.x))), Struct_3(Struct_2(var_0.b.yzw, vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, var_0.a.x), Struct_1(vec2<i32>(2333i, 0i), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), u_input.a, Struct_1(vec2<i32>(-11065i, var_0.a.x), var_0.b)), 0u, vec2<bool>(true, false)).b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b), var_0.b)))));
    var_0 = Struct_1(~(-var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2192f, var_0.b.x, false)), _wgslsmith_f_op_f32(trunc(var_0.b.x))) * var_0.b.x), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -397f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.b.zxw), any(vec2<bool>(true, false)))), 1i, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), 25569i >= var_0.a.x), select(1u, _wgslsmith_add_u32(u_input.b, u_input.b), true)).a.x, _wgslsmith_f_op_f32(var_0.b.x * -507f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)) * _wgslsmith_f_op_f32(select(var_0.b.x, -757f, true)))));
    var_0 = Struct_1(firstLeadingBit(vec2<i32>(34915i, var_0.a.x)), func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(min(var_0.b.xzx, vec3<f32>(1158f, var_0.b.x, var_0.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, -51467i, -1i, 1i), vec4<i32>(var_0.a.x, var_0.a.x, 45499i, -20721i)), func_2(vec3<f32>(var_0.b.x, 813f, -1104f), 2147483647i, vec3<bool>(false, false, true), 0u).c), ~(u_input.b ^ u_input.a), Struct_1(var_0.a, _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(371f, 1693f, -839f, var_0.b.x)))), Struct_3(func_2(vec3<f32>(846f, -1917f, var_0.b.x), var_0.a.x | var_0.a.x, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), u_input.b), u_input.a, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1457f, -1366f, -1400f, -169f)))), abs(firstLeadingBit(u_input.a)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), true)).b);
    var var_1 = false;
    return func_2(_wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 159f, var_0.b.x)), ~_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), vec3<bool>(true, true, true), ~(~4248u)).a), abs(0i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.b, 49639u) == ~59811u), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true)), !vec3<bool>(true, var_0.a.x <= 51231i, true)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(_wgslsmith_div_vec2_i32(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -22922i), vec2<bool>(true, false)), vec2<i32>(-8974i, 8438i)), firstTrailingBit(select(vec2<i32>(-28184i, 1i), vec2<i32>(-1i, 18918i), false)), !any(vec3<bool>(true, true, false))) >> ((max(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 16910u) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))) >> (~countOneBits(vec2<u32>(0u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1257f, 1273f)), _wgslsmith_f_op_f32(-1000f + -292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f * 692f)), 2970f)));
    let var_1 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))));
    var var_2 = Struct_1(var_0.a, var_0.b);
    var var_3 = Struct_3(func_1(), u_input.b, func_2(_wgslsmith_f_op_vec3_f32(max(var_2.b.zwy, _wgslsmith_div_vec3_f32(vec3<f32>(1960f, 999f, var_2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, 455f, -449f))))), ~(i32(-1i) * -1i), !var_1, _wgslsmith_mod_u32(~(u_input.b ^ 4294967295u), _wgslsmith_div_u32(~1u, u_input.a))).c);
    var var_4 = Struct_3(var_3.a, _wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(var_3.b, var_3.b) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), reverseBits(vec2<u32>(u_input.a, 4294967295u)), select(select(var_1.zx, vec2<bool>(true, false), false), vec2<bool>(var_1.x, true), !var_1.yx)), abs(vec2<u32>(select(u_input.b, u_input.b, false), ~89402u))), func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_0.b.x, var_2.b.x) + vec3<f32>(-430f, -461f, -2931f)), vec4<i32>(var_0.a.x, var_3.a.b.x, var_0.a.x, var_2.a.x), var_3.a.c), min(_wgslsmith_mod_u32(var_3.b, u_input.a), 22789u), Struct_1(vec2<i32>(var_2.a.x, -70145i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_3.c.b.x, 385f, -630f) * var_3.c.b))), Struct_3(func_1(), u_input.b, var_3.c), ~4294967295u | _wgslsmith_clamp_u32(u_input.b, 92522u, 15631u), select(select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), any(var_1.yy)), vec2<bool>(var_1.x, var_1.x), true)));
    var_4 = Struct_3(Struct_2(var_3.c.b.xwz, firstTrailingBit(~min(var_3.a.b, vec4<i32>(var_3.a.c.a.x, 0i, 0i, -28448i))), var_3.a.c), _wgslsmith_mod_u32(~(~(~var_3.b)), ~var_4.b), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.xxy)), vec3<f32>(var_0.b.x, var_4.a.a.x, -3019f))), _wgslsmith_mod_i32(var_0.a.x, 0i), var_1, var_3.b).c);
    var_2 = func_4(Struct_3(func_1(), 27229u, Struct_1(vec2<i32>(_wgslsmith_sub_i32(var_0.a.x, -1i), -2147483647i | var_2.a.x), var_0.b)), Struct_3(var_3.a, var_3.b, func_4(Struct_3(Struct_2(vec3<f32>(var_0.b.x, var_2.b.x, 1929f), vec4<i32>(var_2.a.x, var_4.c.a.x, 2147483647i, 0i), Struct_1(var_2.a, var_2.b)), var_3.b, Struct_1(var_2.a, var_0.b)), Struct_3(func_2(var_3.a.c.b.yxz, var_4.c.a.x, var_1, var_3.b), ~u_input.a, var_3.a.c), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4.b, 0u, var_4.b), vec3<u32>(4294967295u, var_3.b, 58631u)), ~vec3<u32>(42875u, var_4.b, var_4.b)), var_1.xy)), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(27402u, 1u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(32850u, u_input.b, u_input.b), vec3<u32>(0u, 1u, u_input.b)), vec3<u32>(4294967295u, 14724u, var_3.b))), !select(var_1.zz, vec2<bool>(var_1.x, 4294967295u > var_4.b), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i | func_2(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.a.x * 1272f), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(abs(var_2.b.x))), -var_0.a.x, var_1, 1u).b.x, _wgslsmith_f_op_f32(-var_3.c.b.x));
}

