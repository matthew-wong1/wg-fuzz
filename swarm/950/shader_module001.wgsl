struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), 4294967295u <= u_input.a), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), all(vec2<bool>(true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(!(!select(select(var_0.a, vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x), select(var_0.a, var_0.a, false), false)));
    var var_1 = Struct_2(Struct_1(abs(firstTrailingBit(~vec3<i32>(20864i, -2147483647i, 93564i))), 1u >> (u_input.a % 32u), ~max(~13552u, ~u_input.a), max(select(vec3<i32>(-53613i, -2147483647i, 2147483647i), vec3<i32>(0i, -1i, -2147483647i), var_0.a.zzy), ~vec3<i32>(-1i, -2147483647i, -2147483647i)) >> ((~vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 35052u), vec3<u32>(4294967295u, u_input.a, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(vec3<i32>(1i, countOneBits(_wgslsmith_mult_i32(1i, -29353i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, 0i), -48289i)), _wgslsmith_mod_u32(abs(u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, 1u), firstLeadingBit(vec3<u32>(9521u, 31815u, u_input.a)))), u_input.a, _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(1i, -2147483647i, -1i)), vec3<i32>(-1i, -2147483647i, -1i) << (max(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)) % vec3<u32>(32u)))), Struct_1(select(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), select(firstTrailingBit(vec3<i32>(-40818i, -1i, -2147483647i)), vec3<i32>(22147i, -2147483647i, -2147483647i), select(false, true, false)), var_0.a.wwy), _wgslsmith_add_u32(select(select(u_input.a, 1u, var_0.a.x), u_input.a << (u_input.a % 32u), var_0.a.x), u_input.a), _wgslsmith_div_u32(~115312u << (~u_input.a % 32u), (u_input.a >> (1u % 32u)) >> (36456u % 32u)), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -2147483647i)), 1i, ~abs(-87298i))), Struct_1(_wgslsmith_add_vec3_i32(max(vec3<i32>(50340i, -1i, 1i), vec3<i32>(2147483647i, 1i, -4911i)) >> (select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(var_0.a.x, true, false)) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-17845i, -44528i, 0i), vec3<i32>(16918i, 23230i, 5382i))), 21101u, u_input.a, select(firstTrailingBit(vec3<i32>(1i, 67297i, 24268i)), vec3<i32>(1i, 1i, 1i), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2024f, 1000f, -1000f), vec3<f32>(552f, 419f, 764f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(429f, 647f, 450f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(818f, 606f, 788f) * vec3<f32>(-375f, 985f, -1289f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), _wgslsmith_f_op_f32(-673f * _wgslsmith_div_f32(799f, -753f)), _wgslsmith_f_op_f32(1f * -1949f))));
    return ~vec3<i32>(56337i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.d.x, var_1.c.a.x) & vec2<i32>(0i, 30878i), ~vec2<i32>(var_1.a.d.x, var_1.d.a.x))), -var_1.d.d.x);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(reverseBits((vec3<i32>(9798i, -1i, -2147483647i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) | select(vec3<i32>(-13585i, -63432i, -2147483647i), vec3<i32>(-2147483647i, -34446i, 2147483647i), vec3<bool>(false, false, true))), func_3()), u_input.a & u_input.a, 26378u, abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -1i, -440i), select(vec3<i32>(-1i, -12108i, -1i) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(-27717i, -8835i, 13784i), all(vec4<bool>(false, true, false, false))))));
    var var_1 = Struct_2(Struct_1(select(min(vec3<i32>(var_0.d.x, var_0.a.x, var_0.d.x), var_0.d), max(select(var_0.d, vec3<i32>(var_0.d.x, -9381i, var_0.a.x), vec3<bool>(false, false, true)), select(var_0.a, var_0.d, vec3<bool>(false, true, true))), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), _wgslsmith_add_u32(4294967295u, u_input.a), 29713u, max(func_3(), ~vec3<i32>(21382i, -31365i, -2147483647i))), Struct_1(-(~_wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(var_0.a.x, 0i, var_0.d.x))), ~11950u, 1u, var_0.d), Struct_1(-vec3<i32>(-2147483647i, 1i, ~0i), var_0.c, ~firstTrailingBit(1u), min(var_0.d, abs(var_0.d))), var_0);
    var var_2 = !(!(!(all(vec2<bool>(true, false)) & true)));
    let var_3 = Struct_4(vec4<bool>(-6232i >= _wgslsmith_clamp_i32(var_0.d.x << (4294967295u % 32u), ~var_1.d.d.x, ~var_0.d.x), 0i == var_0.d.x, all(vec2<bool>(true, true)), !all(vec2<bool>(true, false))));
    let var_4 = vec4<u32>(4486u, 1u, ~52776u, 4294967295u);
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_4 {
    let var_0 = func_2();
    return Struct_4(var_0.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3) -> Struct_1 {
    var var_0 = ~(_wgslsmith_div_u32(u_input.a, u_input.a) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a.c, u_input.a), vec2<u32>(33901u, ~u_input.a)) % 32u));
    var_0 = 9345u;
    let var_1 = Struct_2(arg_2.b, arg_2.b, Struct_1(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, arg_1.c.x, arg_2.a.d.x), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-9274i, -49655i, 20724i), vec3<i32>(arg_2.c.a.x, arg_2.a.d.x, arg_2.c.a.x), arg_2.a.d), arg_2.b.d)), 1u, 1u, countOneBits(_wgslsmith_mod_vec3_i32(arg_2.c.d << (vec3<u32>(u_input.a, u_input.a, arg_2.b.c) % vec3<u32>(32u)), -arg_2.b.d))), arg_2.c);
    var_0 = firstTrailingBit(64424u << (u_input.a % 32u));
    return var_1.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 41727u, arg_1.d, 37689u), select(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(1u, arg_0.a.b, 0u, arg_0.c.c), ~vec4<u32>(70022u, arg_1.a.c, u_input.a, arg_0.a.b), func_1(Struct_2(Struct_1(vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_1.c.d.x), u_input.a, arg_0.d.b, arg_1.b.d), arg_0.b, Struct_1(arg_0.b.d, 9382u, arg_0.b.b, vec3<i32>(-17040i, 40861i, -2147483647i)), arg_0.b), false, 645f).a.x)) >> (countOneBits(min(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, arg_0.b.b, arg_0.c.c, u_input.a)), vec4<u32>(4294967295u, 1u, arg_0.a.b, 20201u)), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 12360u))) % vec4<u32>(32u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-arg_0.c.a, vec3<i32>(abs(-2147483647i), -arg_1.b.d.x, 0i)), ~var_0.x, _wgslsmith_dot_vec4_u32(var_0, min(max(vec4<u32>(arg_1.a.b, arg_1.d, 0u, 1u), var_0), var_0)), vec3<i32>(~57171i << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.b, 103960u, u_input.a), var_0.zyx) % 32u), abs(~arg_1.a.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.d.x, 20003i), vec2<i32>(-21254i, 16213i)) >> (1u % 32u))), arg_0.a, Struct_1(-max(~vec3<i32>(2147483647i, arg_0.b.a.x, arg_1.c.d.x), arg_1.b.a), arg_0.c.b, 4294967295u, arg_0.b.a), func_4(Struct_4(vec4<bool>(34740u <= var_0.x, false, all(vec3<bool>(false, true, false)), true)), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, 355f, -1093f, 1842f))), vec2<bool>(true, true), ~min(vec2<i32>(arg_1.c.d.x, -21108i), arg_1.b.d.xx)), Struct_3(arg_0.d, func_4(func_1(Struct_2(arg_1.c, Struct_1(arg_1.a.d, arg_0.b.b, var_0.x, vec3<i32>(-59639i, 0i, -2147483647i)), arg_0.d, Struct_1(vec3<i32>(arg_0.c.d.x, arg_0.c.a.x, -43860i), u_input.a, 0u, vec3<i32>(arg_0.b.d.x, -14718i, arg_1.b.a.x))), true, 2062f), Struct_5(vec4<f32>(1968f, -1396f, 381f, 475f), vec2<bool>(false, true), arg_0.c.d.zx), Struct_3(arg_1.a, Struct_1(vec3<i32>(arg_0.c.a.x, arg_0.b.d.x, arg_1.b.d.x), 3031u, 0u, arg_0.d.a), Struct_1(arg_0.c.a, 4294967295u, 0u, arg_0.b.a), 11935u)), arg_0.c, _wgslsmith_mod_u32(var_0.x, arg_1.d) >> (~20146u % 32u))));
    let var_2 = _wgslsmith_mod_vec2_u32(var_0.xx, _wgslsmith_mod_vec2_u32(var_0.yy, var_0.yw | vec2<u32>(var_1.d.b, u_input.a))) | vec2<u32>(40824u, _wgslsmith_mod_u32(4294967295u, ~0u | var_0.x));
    var var_3 = func_1(arg_0, func_1(Struct_2(Struct_1(arg_0.c.a, 43522u, 35012u, arg_0.a.d), func_4(Struct_4(vec4<bool>(true, false, false, true)), Struct_5(vec4<f32>(1000f, 1746f, -1350f, -1000f), vec2<bool>(false, false), arg_1.c.d.xz), arg_1), Struct_1(arg_0.b.d, 57471u, 1u, arg_1.b.a), Struct_1(vec3<i32>(1i, -1i, arg_1.c.a.x), var_2.x, arg_0.a.c, arg_1.c.d)), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1848f)))).a.x & (1u >= var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-455f, 1163f, false)))) + 1858f))));
    return ~(-2147483647i | arg_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    var var_1 = func_5(Struct_2(Struct_1(vec3<i32>(7442i, 0i, 1664i), 4294967295u, reverseBits(28893u), vec3<i32>(1i, 1i, 1i)), func_4(func_1(Struct_2(Struct_1(vec3<i32>(29745i, -52514i, -48099i), u_input.a, u_input.a, vec3<i32>(1i, -46651i, -1i)), Struct_1(vec3<i32>(-52410i, 1i, -21849i), 1u, u_input.a, vec3<i32>(0i, 12777i, 2147483647i)), Struct_1(vec3<i32>(-48560i, 2147483647i, 30150i), u_input.a, u_input.a, vec3<i32>(1i, -1i, -2147483647i)), Struct_1(vec3<i32>(54131i, -13106i, -1i), u_input.a, u_input.a, vec3<i32>(24819i, -1i, -41387i))), false, var_0), Struct_5(vec4<f32>(1007f, var_0, var_0, var_0), vec2<bool>(false, false), vec2<i32>(-1i, -1i)), Struct_3(Struct_1(vec3<i32>(-18827i, 2147483647i, 1i), u_input.a, u_input.a, vec3<i32>(-35549i, -1i, 0i)), Struct_1(vec3<i32>(-14168i, 0i, -1i), u_input.a, u_input.a, vec3<i32>(-18743i, 2147483647i, 0i)), Struct_1(vec3<i32>(39819i, -1i, -1i), 27083u, 0u, vec3<i32>(546i, 0i, 1i)), 24787u)), Struct_1(-vec3<i32>(40974i, -39056i, -842i), ~u_input.a, 32284u, vec3<i32>(-1i, 60274i, -33539i)), func_4(Struct_4(vec4<bool>(true, true, false, false)), Struct_5(vec4<f32>(var_0, 1153f, -1163f, var_0), vec2<bool>(true, false), vec2<i32>(-2147483647i, -2147483647i)), Struct_3(Struct_1(vec3<i32>(1338i, 0i, 24114i), 10333u, 1u, vec3<i32>(-57497i, 0i, 29980i)), Struct_1(vec3<i32>(1i, -1i, -1779i), 6616u, u_input.a, vec3<i32>(-37202i, 26854i, 24917i)), Struct_1(vec3<i32>(2147483647i, 1i, -1i), u_input.a, u_input.a, vec3<i32>(44960i, 1i, -3992i)), u_input.a))), Struct_3(Struct_1(~vec3<i32>(-2147483647i, -8924i, -6683i), 0u, ~u_input.a, ~vec3<i32>(-1i, -4156i, 44346i)), func_4(func_2(), Struct_5(vec4<f32>(-1005f, var_0, 799f, -135f), vec2<bool>(true, false), vec2<i32>(26312i, -2147483647i)), Struct_3(Struct_1(vec3<i32>(2147483647i, 0i, -24974i), 40594u, 26283u, vec3<i32>(1i, -2147483647i, 2268i)), Struct_1(vec3<i32>(59673i, -1i, -42160i), u_input.a, u_input.a, vec3<i32>(-2147483647i, 2147483647i, 19421i)), Struct_1(vec3<i32>(2147483647i, -3111i, -1i), 57016u, 8185u, vec3<i32>(-2147483647i, 1i, 15459i)), 1u)), func_4(Struct_4(vec4<bool>(true, true, true, true)), Struct_5(vec4<f32>(var_0, var_0, var_0, 181f), vec2<bool>(false, false), vec2<i32>(0i, 1i)), Struct_3(Struct_1(vec3<i32>(-37785i, -38738i, 0i), 37021u, 9244u, vec3<i32>(9178i, -1i, 2147483647i)), Struct_1(vec3<i32>(13571i, -2147483647i, 2147483647i), 20788u, 73174u, vec3<i32>(-2147483647i, -1i, -2147483647i)), Struct_1(vec3<i32>(-1i, -2147483647i, -1i), 1u, 4294967295u, vec3<i32>(-9471i, -15793i, -1i)), u_input.a)), u_input.a)) & func_3().x;
    var_1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), ~vec2<i32>(-28175i, -39343i)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(-24868i, -18154i)));
    var_1 = ~(-1i);
    var_1 = min(-5166i, func_4(Struct_4(vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1401f, 1226f, -154f, var_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(593f, var_0, 295f, var_0) * vec4<f32>(var_0, var_0, var_0, 487f))), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<i32>(-1i, -35070i), vec2<i32>(6291i, 2147483647i), vec2<bool>(false, false)) ^ vec2<i32>(-35776i, 0i)), Struct_3(Struct_1(vec3<i32>(-1i, 22808i, 34661i), 1u, min(u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-18371i, -45780i, 1i), vec3<i32>(-26850i, 1i, 3106i))), Struct_1(vec3<i32>(2147483647i, 1i, 1i), u_input.a, _wgslsmith_mod_u32(8687u, u_input.a), vec3<i32>(1i, 1i, 1i)), func_4(func_2(), Struct_5(vec4<f32>(var_0, var_0, var_0, var_0), vec2<bool>(true, false), vec2<i32>(-39548i, 25212i)), Struct_3(Struct_1(vec3<i32>(1i, 20975i, -10482i), 4294967295u, 70695u, vec3<i32>(37960i, 7297i, -14884i)), Struct_1(vec3<i32>(2147483647i, 48645i, 13309i), 0u, u_input.a, vec3<i32>(-21308i, 2147483647i, -7534i)), Struct_1(vec3<i32>(4555i, -12574i, 31359i), 0u, u_input.a, vec3<i32>(-2147483647i, -1i, 672i)), u_input.a)), 1u)).d.x);
    var_1 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-32507i, -41768i, 84423i, 0i) << (min(~vec4<u32>(7430u, 4294967295u, 3290u, u_input.a), vec4<u32>(78827u, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u))), firstTrailingBit(~max(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-47096i, 2147483647i, 1i, 5364i), vec4<i32>(6941i, 2147483647i, 10806i, -57144i), vec4<i32>(38706i, 0i, -9352i, -1i)))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1441f, 1000f)), -148f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(-1045f, 1058f)), true)), _wgslsmith_f_op_f32(trunc(1000f)))), select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(false, false)), true), false), vec2<i32>(_wgslsmith_sub_i32(-20348i, 1i), abs(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -488i), vec2<i32>(1i, 28398i)), _wgslsmith_mod_i32(0i, 5303i)))));
    var var_3 = var_2.a.yyw;
    var_3 = var_2.a.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_2.a), 0u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2.a.x, 369f, 1532f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(239f, -1917f, var_2.a.x, var_3.x)) - _wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(1440f, -147f, 189f, var_0)))))), _wgslsmith_f_op_f32(sign(var_0)), abs(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(u_input.a, 1u)), select(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(1u, 20250u), true))));
}

