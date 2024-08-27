struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(910f, 452f) + vec2<f32>(-937f, 246f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1026f, -969f), vec2<f32>(1682f, 1689f), vec2<bool>(arg_1, true))))), vec2<f32>(-1014f, 569f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2275f, -660f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1635f, 1562f))))));
    var var_1 = vec3<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(44833u, 0u), ~1u), _wgslsmith_clamp_u32(~31068u, 11974u, ~19481u))), ~_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(1u, 1987u, 4294967295u), vec3<u32>(59598u, 50479u, 29828u), arg_1)), ~vec3<u32>(1u, 1u, 1u)), 4294967295u);
    var var_2 = arg_1;
    let var_3 = -(~firstLeadingBit(abs(vec4<i32>(arg_0, arg_0, arg_0, -62125i)))) | -firstTrailingBit(firstLeadingBit(firstLeadingBit(vec4<i32>(-2147483647i, arg_0, 0i, -29065i))));
    let var_4 = ~(~(-((var_3 << (vec4<u32>(var_1.x, var_1.x, 12401u, 3923u) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(4294967295u, 4294967295u, var_1.x, var_1.x)) % vec4<u32>(32u)))));
    return ~(var_3 | min(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, arg_0, var_3.x, -1i)), var_3), vec4<i32>(var_3.x, -var_4.x, 1i, -32567i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(~(~max(vec2<u32>(0u, 14670u), vec2<u32>(4294967295u, 3433u))), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(85060u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 35705u))), 16254u), vec2<u32>(1u, 40273u)), vec2<u32>(1u, 1u), !vec2<bool>(false, countOneBits(arg_2.c.x) <= firstTrailingBit(arg_3.c.x)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(585f * arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_1) * arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1278f + arg_1))), -1580f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2059f, -652f, arg_1) - vec3<f32>(-392f, 1499f, 199f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -768f) + vec3<f32>(arg_1, 435f, arg_1))), vec3<f32>(-344f, arg_1, arg_1))));
    let var_3 = Struct_1(vec2<i32>(-(~(~(-56075i))), firstLeadingBit(arg_0.c.x)), firstLeadingBit(-(i32(-1i) * -12081i)), arg_0.c >> ((vec4<u32>(~0u, var_0.x, countOneBits(var_0.x), var_0.x) >> (vec4<u32>(reverseBits(var_0.x), firstTrailingBit(var_0.x), var_0.x, firstLeadingBit(4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), max(~vec4<u32>(var_0.x, 28432u, var_0.x, var_0.x), select(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), false))) & _wgslsmith_clamp_u32(1u, 4294967295u, var_0.x), 15558u);
    return vec2<i32>(u_input.c, reverseBits(arg_0.c.x));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(func_4(Struct_1(arg_0, -_wgslsmith_sub_i32(arg_0.x, -1i), vec4<i32>(~(-2147483647i), reverseBits(arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-28092i, u_input.b, 1i), vec3<i32>(arg_0.x, u_input.c, arg_0.x)), arg_0.x)), -274f, Struct_1(abs(u_input.a), 0i, func_3(countOneBits(0i), all(vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), Struct_1(-vec2<i32>(-30190i, -1380i), select(_wgslsmith_div_i32(7762i, u_input.c), 1i, true), vec4<i32>(arg_0.x, i32(-1i) * -32018i, -arg_0.x, 17841i))), _wgslsmith_mod_i32(~(~arg_0.x), ~2147483647i), vec4<i32>(~_wgslsmith_mult_i32(~1i, -u_input.b), ~(2147483647i & (arg_0.x ^ 1i)), -u_input.c, abs(1i)));
    var var_1 = Struct_1(~arg_0, 2323i << (1u % 32u), vec4<i32>(-2243i, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec3_i32(var_0.c.xxw, var_0.c.xxy)), _wgslsmith_mod_i32(-u_input.c, -7559i)), _wgslsmith_mult_i32(-var_0.b, ~1i) >> (59561u % 32u), var_0.b | (min(-44365i, -1i) >> (1u % 32u))));
    let var_2 = Struct_1(-_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, var_1.c.x), _wgslsmith_dot_vec3_i32(var_1.c.wyz, vec3<i32>(46769i, -1i, -34626i)))), -29279i, vec4<i32>(select(var_0.c.x, -2147483647i, any(vec3<bool>(true, true, true))), -1i, -2147483647i, 0i));
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(floor(1000f));
    return Struct_1(~vec2<i32>(-2147483647i, var_1.c.x), 2147483647i, ~func_3(-(~(-1i)), false, vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(abs(arg_0.a), _wgslsmith_dot_vec4_i32(arg_0.c, abs(vec4<i32>(10238i, -44601i, arg_0.b, _wgslsmith_add_i32(34873i, arg_0.b)))), (vec4<i32>(u_input.c, _wgslsmith_mult_i32(arg_1, u_input.b), -2147483647i ^ u_input.b, ~19481i) << (vec4<u32>(countOneBits(4294967295u), ~1u, 1u, _wgslsmith_add_u32(0u, 4294967295u)) % vec4<u32>(32u))) | arg_0.c);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_0.b, ~u_input.c, arg_0.a.x), -u_input.c), ~vec2<i32>(arg_0.c.x, func_2(select(vec2<i32>(arg_1, var_0.a.x), vec2<i32>(var_0.a.x, arg_0.a.x), vec2<bool>(true, arg_2))).c.x));
    var var_2 = vec3<u32>(1u, 1u, 1u);
    let var_3 = arg_0;
    var var_4 = var_2.x;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(715f, 276f, -913f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-272f, 964f, -1094f), vec3<f32>(1002f, -238f, -764f), vec3<bool>(true, arg_1, true)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(122f)), _wgslsmith_f_op_f32(-402f - -863f), _wgslsmith_f_op_f32(322f * -614f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(740f, -1315f, -778f), vec3<f32>(-1399f, 2399f, -1624f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1848f - -1395f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - 444f))), _wgslsmith_f_op_f32(abs(-1360f)), var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1717f, -734f, 1541f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, -246f, 1266f)), vec3<f32>(var_0.x, var_0.x, var_0.x), arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1777f + var_0.x), 208f, _wgslsmith_f_op_f32(sign(122f))))));
    var var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(572f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x)))), var_0.x) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1171f, 495f)), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))))));
    return ~102240u;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(51288u, 1u, _wgslsmith_div_u32(reverseBits(0u), select(1u, 18043u, true)))), vec3<u32>(0u, 1u, func_6(func_5(func_2(vec2<i32>(u_input.c, u_input.c)), -46246i, true), any(vec3<bool>(true, true, true)) == true)));
    var_0 = vec3<u32>(~(~var_0.x), ~var_0.x & ~_wgslsmith_clamp_u32(var_0.x, var_0.x, ~21379u), ~firstTrailingBit(var_0.x));
    var_0 = (firstTrailingBit(reverseBits(vec3<u32>(0u, 0u, var_0.x)) >> (vec3<u32>(4294967295u, var_0.x, 36420u) % vec3<u32>(32u))) ^ select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), ~vec3<u32>(0u, var_0.x, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), ~vec3<u32>(76188u, var_0.x, var_0.x)), vec3<bool>(false, true, true))) ^ vec3<u32>(min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(21151u, var_0.x, var_0.x)), vec3<u32>(43016u, 0u, 86729u)), ~20926u), 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_0.x), ~var_0.xz), 4294967295u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-212f, -2125f, -730f, 888f), vec4<f32>(-521f, 676f, 2323f, 1817f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-535f, -415f, -1608f, -1000f)))))));
    var_0 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(59918u, var_0.x, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), vec3<u32>(28267u, 0u, 0u))) | _wgslsmith_add_vec3_u32(~abs(vec3<u32>(var_0.x, var_0.x, 1u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(2679u, var_0.x, var_0.x), vec3<u32>(var_0.x, 27361u, var_0.x)))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-883f + -1189f) - _wgslsmith_f_op_f32(-1295f * -817f)))), 1067f, 160f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1106f, 1f, 1022f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, -513f, 975f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 1743f, 442f)))), true)));
    let var_2 = min(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 48335u, 22208u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)) | (~vec4<u32>(0u, 1u, 0u, 2720u) ^ firstTrailingBit(vec4<u32>(18009u, 0u, 0u, 1u))), vec4<u32>(1347u, 1u, func_1(), countOneBits(~4294967295u))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(min(5322u, 1u), 0u << (0u % 32u)), 72447u, select(29719u, ~0u, false), min(76517u, firstLeadingBit(20176u)))));
    var var_3 = -22269i;
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(var_2.x, var_2.x), (var_2.x & var_2.x) << (~var_2.x % 32u), var_2.x | 1u) >> (var_2.wzw % vec3<u32>(32u)), ~(~vec3<u32>(abs(54608u), 4294967295u, ~28723u)));
    let var_5 = 4294967295u;
    let var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-196f)))), 424f, _wgslsmith_f_op_f32(-928f + 1219f), var_1.x));
    var var_7 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(var_6.zxz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-963f, var_1.x, var_1.x), vec3<f32>(var_6.x, var_6.x, -257f)))))));
    var_7 = vec3<f32>(var_7.x, _wgslsmith_f_op_f32(ceil(var_6.x)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(i32(-1i) * -14876i) >> (max(firstLeadingBit(1561u), ~var_2.x) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(797f, var_6.x, true))))))), _wgslsmith_sub_u32(~countOneBits(_wgslsmith_clamp_u32(var_4.x, 0u, 0u)), ~(~func_1())), ~var_2);
}

