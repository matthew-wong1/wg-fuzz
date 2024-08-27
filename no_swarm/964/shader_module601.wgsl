struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(abs(vec2<u32>(~u_input.a, _wgslsmith_div_u32(~u_input.b.x, u_input.b.x))), 5591i >= ~firstTrailingBit(-1i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(15375i, ~(-35262i)), reverseBits(_wgslsmith_clamp_i32(-1i, -32090i, -38771i))) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 1u), ~vec3<u32>(0u, 0u, 0u)) % 32u), vec3<u32>(u_input.c.x, 38533u, 12464u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1104f + _wgslsmith_f_op_f32(sign(865f)))))), _wgslsmith_f_op_f32(ceil(-920f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1077f, 418f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(f32(-1f) * -502f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-955f))));
    var var_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a, ~var_0.d.x), false, ~2147483647i, vec3<u32>(countOneBits(1u), countOneBits(u_input.a), ~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), var_0, select(!(!vec3<bool>(var_0.b, true, false)), vec3<bool>(true, true, true), all(!vec3<bool>(var_0.b, false, false))), Struct_1(~u_input.d.xx, !(var_0.b | var_0.b), var_0.c, select(reverseBits(vec3<u32>(38208u, u_input.a, 4294967295u)), firstLeadingBit(var_0.d), !var_0.b))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, 139f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 123f, -494f) * vec3<f32>(-370f, var_2.x, -1376f))))))), Struct_1(~var_0.a, all(select(select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(true, var_0.b, var_0.b)), vec3<bool>(var_0.b, var_0.b, false), !var_0.b)), _wgslsmith_sub_i32(select(var_0.c, 1i, !var_0.b), ~(~var_0.c)), vec3<u32>(52472u, var_0.a.x, var_0.d.x)));
    var_3 = Struct_3(Struct_2(var_3.a.c, 1179f, Struct_1(select(vec2<u32>(var_0.d.x, 27507u), min(u_input.d.xz, vec2<u32>(var_0.a.x, u_input.b.x)), any(vec4<bool>(false, var_3.c.b, true, false))), 1u > ~u_input.c.x, -1i, abs(vec3<u32>(4294967295u, 4294967295u, 1u))), !var_3.a.d, Struct_1(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.a.x), var_3.a.e.d.yx, var_0.a)), var_3.c.b | (var_0.b & false), -var_0.c, u_input.b << (var_3.a.c.d % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1159f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_3.b.x, var_3.a.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(750f, var_2.x, var_3.a.b) - vec3<f32>(var_3.a.b, var_3.b.x, var_3.a.b))))), var_3.b)), var_0);
    return var_3.c.d;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(select(max(vec3<i32>(arg_2.c.c, -12924i, arg_2.a.c), vec3<i32>(arg_0, arg_2.c.c, 1i)), -vec3<i32>(-1i, 17947i, 32964i), vec3<bool>(arg_2.a.b, false, arg_2.a.b)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(20891i, arg_2.e.c, arg_2.e.c)), reverseBits(vec3<i32>(arg_2.e.c, arg_2.a.c, 1i)))), firstLeadingBit(arg_0) >> (u_input.b.x % 32u)));
    var var_1 = Struct_2(Struct_1(select(vec2<u32>(firstTrailingBit(u_input.a), ~0u), _wgslsmith_mult_vec2_u32(vec2<u32>(55490u, u_input.a), ~vec2<u32>(6564u, u_input.c.x)), true), true, ~(~_wgslsmith_clamp_i32(arg_0, -5987i, 1i)), vec3<u32>(firstLeadingBit(~u_input.a), 1u, ~_wgslsmith_sub_u32(14920u, u_input.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(368f))) * _wgslsmith_f_op_f32(min(arg_2.b, arg_2.b))))), Struct_1(vec2<u32>(_wgslsmith_div_u32(1u, arg_2.e.a.x), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_1, 0u, u_input.b.x, arg_2.e.a.x))) | ~u_input.c.zy, arg_2.c.b, 1i, reverseBits(u_input.d.wyy)), arg_2.d, arg_2.e);
    var var_2 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_0, var_1.c.c, arg_2.c.c)) ^ vec3<i32>(arg_2.c.c, 0i, arg_2.c.c), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-6847i, -36863i, arg_0)), vec3<i32>(arg_2.a.c, 0i, var_1.a.c))), vec3<i32>(27935i >> (1u % 32u), max(_wgslsmith_clamp_i32(var_1.a.c, 1i, arg_2.c.c), -32666i), 1i)));
    var var_3 = vec3<f32>(-2315f, -1673f, var_1.b);
    var_0 = countOneBits(~((var_1.e.c << (0u % 32u)) & ~(~var_2.x)));
    return all(vec2<bool>(true, true));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(u_input.c.zy, func_4(30172i, ~u_input.a, Struct_2(Struct_1(u_input.b.xx, true, 2147483647i, func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)), Struct_1(u_input.c.yy | u_input.b.yx, true, i32(-1i) * -2147483647i, ~vec3<u32>(0u, 1598u, 31556u)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), Struct_1(u_input.b.xx, true, select(66618i, -44855i, true), abs(u_input.b)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, -5314i, 20401i, 1i)), vec4<i32>(4630i, 0i, -29756i, -765i)), -5993i), abs(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-81230i, 17063i)), ~vec2<i32>(0i, -2147483647i)))), vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.a))), abs(~u_input.d.x), _wgslsmith_sub_u32(u_input.c.x, u_input.a)));
    let var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-38057i, var_0.c, var_0.c, 50353i), vec4<i32>(-2147483647i, 2147483647i, 0i, var_0.c)) >> (reverseBits(var_0.a.x) % 32u), var_0.c), vec2<i32>(var_0.c, _wgslsmith_mod_i32(74182i, var_0.c) ^ (-10457i & var_0.c)));
    return Struct_4(vec3<u32>(~68137u, var_0.a.x, 1u), all(vec4<bool>(!var_0.b && var_0.b, _wgslsmith_f_op_f32(sign(1463f)) < -368f, true, true)), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(~var_1, var_1), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(var_0.c, var_1.x) << (u_input.b.zz % vec2<u32>(32u))))), reverseBits(_wgslsmith_sub_u32(31629u, u_input.b.x)), max(vec3<i32>(~var_0.c & var_1.x, reverseBits(-var_1.x), var_1.x << (~u_input.c.x % 32u)), min(~(-vec3<i32>(4991i, var_0.c, var_1.x)), -(vec3<i32>(var_1.x, -2147483647i, -12473i) >> (var_0.d % vec3<u32>(32u))))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = Struct_5(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.d), vec4<u32>(arg_3.a.x, arg_3.d, 27492u, arg_3.a.x) ^ vec4<u32>(44040u, arg_3.a.x, 0u, arg_1.d)), _wgslsmith_clamp_u32(reverseBits(1u), min(81876u, ~4294967295u), ~(~4294967295u))));
    var var_2 = func_2();
    let var_3 = all(select(arg_2, select(vec3<bool>(all(vec3<bool>(true, true, true)), true & arg_0, arg_3.b), !(!vec3<bool>(arg_3.b, var_0.b, arg_1.b)), any(select(vec2<bool>(arg_3.b, false), arg_2.yy, false))), vec3<bool>(func_2().b, var_2.b || false, arg_1.b)));
    let var_4 = Struct_5(~27431u);
    return arg_3;
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    var var_0 = arg_0.c;
    var var_1 = u_input.c.x > abs(arg_0.a.x);
    var_1 = true;
    var var_2 = vec3<u32>(u_input.a, 0u, func_5(all(!(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), Struct_4(~(~u_input.d.xxx), arg_0.b, ~vec2<i32>(1i, 2332i), arg_0.a.x, vec3<i32>(max(1i, arg_0.c.x), 1i, -1i)), vec3<bool>(true, u_input.d.x >= arg_0.a.x, func_4(var_0.x, 62191u, Struct_2(Struct_1(vec2<u32>(4294967295u, arg_0.a.x), true, 25339i, vec3<u32>(u_input.b.x, u_input.d.x, 89330u)), -1982f, Struct_1(vec2<u32>(u_input.b.x, arg_0.a.x), true, 27320i, u_input.b), vec3<bool>(false, arg_0.b, arg_0.b), Struct_1(vec2<u32>(4294967295u, u_input.b.x), true, var_0.x, vec3<u32>(4294967295u, u_input.a, 1u))))), Struct_4(func_5(true, arg_0, vec3<bool>(arg_0.b, true, true), Struct_4(arg_0.a, arg_0.b, vec2<i32>(0i, 0i), arg_0.d, arg_0.e)).a & firstTrailingBit(vec3<u32>(47986u, 124u, 9360u)), true, ~vec2<i32>(-41014i, 484i), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, 4294967295u, arg_0.a.x, 0u), u_input.d) | func_3().x, vec3<i32>(arg_0.c.x, -var_0.x, _wgslsmith_add_i32(var_0.x, arg_0.c.x)))).a.x);
    var var_3 = -1015f;
    return Struct_2(Struct_1(abs(vec2<u32>(~arg_0.d, arg_0.d)), any(vec2<bool>(arg_0.b, arg_0.b)), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -22405i), var_0.x & var_0.x, var_0.x << (u_input.b.x % 32u)), vec3<u32>(22487u, 27547u, ~arg_0.d >> (_wgslsmith_sub_u32(arg_0.d, 33124u) % 32u))), _wgslsmith_div_f32(-1351f, _wgslsmith_f_op_f32(floor(-256f))), Struct_1(select(~arg_0.a.xx, vec2<u32>(1u, 20644u), vec2<bool>(arg_0.b, true)), func_2().b, _wgslsmith_clamp_i32(-10967i, 6701i, i32(-1i) * -16801i) >> (reverseBits(~var_2.x) % 32u), abs(vec3<u32>(u_input.b.x, u_input.b.x, arg_0.d ^ 4294967295u))), vec3<bool>(~(~var_2.x) > _wgslsmith_mod_u32(func_3().x, abs(arg_0.a.x)), true, any(!(!vec4<bool>(false, arg_0.b, arg_0.b, false)))), Struct_1(func_3().zz, true, -_wgslsmith_sub_i32(-2147483647i, var_0.x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, arg_0.d, u_input.b.x), vec3<u32>(arg_0.d, 26723u, 1849u)), u_input.c)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_u32(~u_input.d, _wgslsmith_div_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(u_input.d, ~u_input.d)));
    let var_1 = func_6(func_5((_wgslsmith_div_u32(15672u, var_0.x) ^ u_input.d.x) >= abs(u_input.a), func_2(), !vec3<bool>(arg_2.b || arg_2.b, true, arg_2.b), func_2()));
    var var_2 = Struct_2(Struct_1(min(vec2<u32>(_wgslsmith_mult_u32(var_1.e.a.x, var_1.a.a.x), 4778u), u_input.d.zx), arg_2.b, countOneBits(_wgslsmith_mod_i32(-var_1.a.c, ~var_1.a.c)), u_input.d.xwz), _wgslsmith_div_f32(657f, -626f), var_1.c, vec3<bool>(!(!(-402f <= var_1.b)), true, arg_2.b), var_1.c);
    let var_3 = arg_2.d;
    var_2 = func_6(arg_2);
    return Struct_5(26138u);
}

fn func_7(arg_0: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(-1849f, 120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1324f)))))) + vec2<f32>(525f, 863f));
    var var_1 = func_5(true, Struct_4(firstTrailingBit(~u_input.b) ^ firstLeadingBit(u_input.b), false, _wgslsmith_div_vec2_i32(func_2().c, -vec2<i32>(0i, -18537i) >> (u_input.d.yz % vec2<u32>(32u))), 1u, _wgslsmith_div_vec3_i32(max(~vec3<i32>(-1i, -1i, -12396i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, 25273i), vec3<i32>(-42649i, -1i, 1i))), vec3<i32>(1i, 1i, 1i))), func_6(func_5(all(vec2<bool>(true, true)), Struct_4(vec3<u32>(u_input.c.x, u_input.d.x, 38873u) | vec3<u32>(arg_0.a, arg_0.a, 32685u), false, ~vec2<i32>(13323i, 39768i), u_input.c.x, func_5(true, Struct_4(vec3<u32>(arg_0.a, u_input.c.x, arg_0.a), false, vec2<i32>(28415i, 2147483647i), arg_0.a, vec3<i32>(17831i, -1i, -27065i)), vec3<bool>(true, false, false), Struct_4(u_input.d.www, false, vec2<i32>(1i, 3234i), 32978u, vec3<i32>(-10180i, 2147483647i, 1i))).e), vec3<bool>(func_5(false, Struct_4(u_input.c, true, vec2<i32>(-26028i, 2147483647i), 0u, vec3<i32>(6281i, 1i, 21357i)), vec3<bool>(false, false, true), Struct_4(u_input.c, false, vec2<i32>(1i, -2147483647i), arg_0.a, vec3<i32>(-2147483647i, 1i, 1i))).b, 4864u == u_input.a, true), func_2())).d, Struct_4(u_input.d.yzy, (0i << (func_2().d % 32u)) >= -2147483647i, -(~vec2<i32>(0i, -18219i)) & _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-9831i, 0i), vec2<i32>(1i, 2147483647i), false), countOneBits(vec2<i32>(1i, -1i)), -vec2<i32>(0i, 1i)), 81528u, ~select(~vec3<i32>(16444i, 0i, -2147483647i), vec3<i32>(2147483647i, 0i, 0i) << (u_input.d.wxx % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    var_1 = Struct_4(min(~vec3<u32>(1u, 0u, 4294967295u) | vec3<u32>(u_input.c.x, arg_0.a, arg_0.a), _wgslsmith_sub_vec3_u32(var_1.a, u_input.b)) ^ vec3<u32>(func_2().a.x, func_1(-19774i, var_1.a.x, Struct_4(u_input.d.zzy, var_1.b, var_1.c, u_input.d.x, var_1.e)).a >> ((17086u ^ var_1.d) % 32u), arg_0.a << (4294967295u % 32u)), true, -((vec2<i32>(-1i) * -var_1.e.zy) ^ var_1.e.xy), var_1.d, -((vec3<i32>(-1i) * -vec3<i32>(0i, 2147483647i, 59246i)) << (vec3<u32>(u_input.a | var_1.d, var_1.a.x, func_6(Struct_4(var_1.a, var_1.b, vec2<i32>(2147483647i, 1978i), u_input.a, var_1.e)).c.a.x) % vec3<u32>(32u))));
    let var_2 = var_0;
    var var_3 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1499f, var_0.x))) * -203f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1420f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_7(func_1(-20907i, u_input.b.x, Struct_4(vec3<u32>(u_input.b.x, u_input.d.x, 1u), true, vec2<i32>(-2147483647i, 631i), 9085u, vec3<i32>(-1i, -2147483647i, 2147483647i))))), -815f))));
}

