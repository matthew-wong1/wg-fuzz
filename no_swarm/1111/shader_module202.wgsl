struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = vec4<i32>(min(_wgslsmith_mult_i32(~u_input.d | u_input.e.x, 56322i ^ abs(u_input.c)), _wgslsmith_dot_vec3_i32(u_input.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(65440u, u_input.a, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(u_input.b.x >> (u_input.a % 32u), ~u_input.e.x, ~u_input.b.x))), select(countOneBits(~_wgslsmith_mod_i32(u_input.d, -25694i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.b.x, u_input.e.x, u_input.e.x, -2147483647i)), ~select(vec4<i32>(u_input.e.x, u_input.b.x, u_input.e.x, u_input.c), vec4<i32>(u_input.e.x, u_input.e.x, 10934i, 1i), false)), true), 1i, abs(countOneBits(~firstLeadingBit(u_input.d))));
    var var_1 = _wgslsmith_div_vec2_i32(-max(vec2<i32>(-41220i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), u_input.e), vec2<i32>(-u_input.c, select(1i, u_input.d << (u_input.a % 32u), all(vec3<bool>(true, false, true))) ^ ~2147483647i));
    var var_2 = Struct_2(Struct_1(~(~u_input.a) << (abs(max(0u, 71813u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2168f, 611f)), 1f))), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-735f + -1098f) * -666f));
    var_2 = Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_f32(-var_2.c));
    var_1 = _wgslsmith_mult_vec2_i32(u_input.b.zz, countOneBits(reverseBits(u_input.b.xz)));
    return min(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(var_2.a.a, 25236u, 8505u), false), abs(vec3<u32>(48058u, 96293u, var_2.a.a))), reverseBits(~vec3<u32>(0u, 101505u, 1u)), ~(vec3<u32>(var_2.a.a, var_2.a.a, 4294967295u) ^ vec3<u32>(u_input.a, 100362u, u_input.a))), ~abs(vec3<u32>(u_input.a, var_2.a.a, 4294967295u) >> (vec3<u32>(var_2.a.a, var_2.a.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(~(firstLeadingBit(vec3<u32>(1u, u_input.a, 1u)) | abs(vec3<u32>(var_2.a.a, 11477u, u_input.a))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 24480u), vec3<u32>(56230u, var_2.a.a, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 99454u), vec3<u32>(u_input.a, var_2.a.a, u_input.a))) >> ((~vec3<u32>(50786u, 4294967295u, u_input.a) >> (max(vec3<u32>(var_2.a.a, 1u, 7486u), vec3<u32>(0u, 4294967295u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = vec3<i32>(-1i, ~arg_0, -1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b) + _wgslsmith_f_op_f32(max(1147f, arg_3.c)))) * _wgslsmith_f_op_f32(trunc(-237f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c + 588f)))));
    return _wgslsmith_clamp_vec3_u32(abs(abs(~arg_1)), _wgslsmith_sub_vec3_u32(~select(vec3<u32>(4294967295u, arg_1.x, 0u), vec3<u32>(11919u, 110407u, 11963u) & arg_1, select(arg_3.b.yxy, vec3<bool>(true, true, true), true)), select(~min(arg_1, vec3<u32>(arg_3.a.a, arg_3.a.a, arg_3.a.a)), ~(vec3<u32>(0u, 1u, arg_1.x) ^ vec3<u32>(u_input.a, u_input.a, 19855u)), arg_3.b.yxz)), ~vec3<u32>(reverseBits(1u) >> (_wgslsmith_sub_u32(u_input.a, arg_3.a.a) % 32u), 4294967295u, (arg_1.x & 0u) << (1u % 32u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = max(~vec3<u32>(1u, 1u, 1u) ^ (abs(vec3<u32>(u_input.a, 0u, arg_0.a) >> (vec3<u32>(u_input.a, 4294967295u, 14731u) % vec3<u32>(32u))) << (~(~vec3<u32>(18908u, u_input.a, u_input.a)) % vec3<u32>(32u))), ~func_4(u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 70104u) << (vec3<u32>(u_input.a, arg_0.a, 4294967295u) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_0.a, arg_0.a), func_3()), abs(_wgslsmith_mod_i32(0i, u_input.b.x)), Struct_2(Struct_1(u_input.a, -193f), vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(arg_0.b * -1721f))));
    let var_1 = Struct_2(arg_0, vec4<bool>(true, all(vec2<bool>(true, true)), !(0u < _wgslsmith_div_u32(107491u, arg_0.a)), true), arg_0.b);
    let var_2 = vec2<u32>(~(41222u ^ min(var_1.a.a, var_0.x)), _wgslsmith_mod_u32(50058u, 1u << (~var_0.x % 32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, var_1.a.a, var_1.a.a), vec3<u32>(1u, arg_0.a, var_0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, var_1.a.a), abs(var_0.yy))), _wgslsmith_mod_vec2_u32(select(var_0.zz, vec2<u32>(var_1.a.a, var_1.a.a), var_1.b.x), var_0.zz), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xz, var_0.xz), var_0.zx) & vec2<u32>(1u, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(47144u, arg_0.a, 58631u))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1353f, arg_0.b) * _wgslsmith_div_f32(1721f, 765f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))) + _wgslsmith_f_op_f32(-var_1.c)), Struct_2(Struct_1(14748u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))), select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), vec4<bool>(true, !var_1.b.x, arg_0.a != arg_0.a, var_1.b.x), vec4<bool>(!var_1.b.x, var_2.x == 60987u, any(vec3<bool>(var_1.b.x, var_1.b.x, false)), true)), 579f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 1035f))), vec2<f32>(_wgslsmith_f_op_f32(select(-525f, _wgslsmith_f_op_f32(1061f - -639f), true)), _wgslsmith_f_op_f32(step(-871f, _wgslsmith_f_op_f32(-598f + -1714f)))))), vec3<bool>(any(!select(vec3<bool>(true, true, var_1.b.x), var_1.b.zzz, var_1.b.wxx)), var_1.b.x, any(vec2<bool>(u_input.c >= u_input.d, 14554u == var_0.x))), Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), ~(arg_0.a >> (var_1.a.a % 32u))), _wgslsmith_f_op_f32(-arg_0.b)));
    return Struct_1(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 1489f))) * -339f));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = vec3<bool>(true, true, ~(-2147483647i) > (2147483647i & ~(u_input.c | 1i)));
    let var_1 = countOneBits(max(66509u, ~_wgslsmith_add_u32(52973u, arg_0.a)));
    var var_2 = arg_0;
    var_2 = func_2(Struct_1(~4294967295u, _wgslsmith_f_op_f32(-var_2.b)));
    var_2 = func_2(arg_0);
    return vec3<u32>(~19756u, ~(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a, arg_0.a, var_2.a, u_input.a), vec4<u32>(arg_0.a, u_input.a, u_input.a, arg_0.a), vec4<u32>(u_input.a, var_2.a, u_input.a, var_1)), abs(vec4<u32>(1u, var_1, arg_1.x, 0u))) ^ ~54972u), ~(_wgslsmith_add_u32(~u_input.a, ~arg_0.a) | 2428u));
}

fn func_1() -> bool {
    let var_0 = true;
    var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1467f, 1000f))) + -866f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-213f, 462f, var_0)))), !all(!vec4<bool>(false, var_0, var_0, var_0)))));
    var var_2 = (abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, u_input.a, 23590u), vec3<u32>(1u, 62177u, u_input.a))) & (vec3<u32>(97955u >> (u_input.a % 32u), ~u_input.a, 0u) << (~vec3<u32>(0u, 78144u, 23013u) % vec3<u32>(32u)))) << (select(_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.a, var_1.a, 9275u) << (vec3<u32>(1u, 13457u, 50072u) % vec3<u32>(32u))), func_5(func_2(Struct_1(4294967295u, var_1.b)), abs(vec2<u32>(0u, u_input.a)))), _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(49979u), 0u ^ var_1.a, abs(var_1.a)), ~reverseBits(vec3<u32>(1u, var_1.a, u_input.a))), var_0 && all(select(vec2<bool>(false, true), vec2<bool>(true, true), var_0))) % vec3<u32>(32u));
    let var_3 = ~(-min(vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.c), u_input.c << (4294967295u % 32u), ~(-37721i), u_input.b.x), vec4<i32>(i32(-1i) * -26439i, 1i, u_input.b.x, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 6842i))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1364f, var_1.b, 1628f, -149f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-504f, var_1.b, var_1.b, -752f), vec4<f32>(var_1.b, var_1.b, -1000f, 167f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, var_1.b, 1360f, 2105f) * vec4<f32>(-2563f, 1251f, 986f, -371f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, 257f, var_1.b, var_1.b), vec4<f32>(837f, 667f, var_1.b, -1272f), false)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, var_1.b, -895f, 496f))))) * vec4<f32>(var_1.b, 1210f, _wgslsmith_f_op_f32(-var_1.b), -1278f));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(vec3<bool>(true, true, true)), ((func_1() & (4294967295u >= u_input.a)) || (false || all(vec4<bool>(true, true, true, false)))) & true, !((u_input.c | abs(-2147483647i)) <= 35393i), any(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true)));
    var var_1 = u_input.a;
    let var_2 = u_input.b.x;
    let var_3 = func_2(func_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1715f)))).b;
    let var_4 = u_input.a;
    let var_5 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(18998i, -57881i, -6182i, 2147483647i), min(~vec4<i32>(-1i, 0i, var_2, 1i), select(vec4<i32>(-1i, -13110i, 5827i, 1i), vec4<i32>(u_input.e.x, var_2, u_input.e.x, u_input.e.x), vec4<bool>(true, true, true, var_0.x))), var_0.x) & vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, u_input.d), i32(-1i) * -2147483647i), _wgslsmith_mult_i32(var_2, _wgslsmith_dot_vec2_i32(u_input.e, u_input.b.xz)), 0i, var_2), ~(vec4<i32>(-1i) * -max(vec4<i32>(var_2, u_input.b.x, -2147483647i, var_2), vec4<i32>(var_2, 2075i, -2147483647i, u_input.e.x))));
    let var_6 = firstTrailingBit(_wgslsmith_sub_i32(select(0i, -var_5.x, var_0.x | false), u_input.b.x) & var_5.x);
    var var_7 = Struct_2(Struct_1(_wgslsmith_div_u32(countOneBits(u_input.a), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-850f)), _wgslsmith_f_op_f32(-var_3))))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -611f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec3<u32>(var_4, var_7.a.a, 4294967295u) << (vec3<u32>(50131u, u_input.a, u_input.a) % vec3<u32>(32u))))), -vec3<i32>(2147483647i, var_6 | 1i, min(-20993i, var_6)) ^ ~(~abs(vec3<i32>(1i, u_input.b.x, var_2))), 61744u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-221f, -884f))), var_7.a.b), firstLeadingBit(_wgslsmith_dot_vec3_i32(max(var_5.xyz, ~u_input.b), u_input.b)));
}

