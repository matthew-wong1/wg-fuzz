struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = ~vec3<u32>(~(_wgslsmith_mod_u32(1u, arg_0.e) >> (_wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, arg_0.d.x) % 32u)), select(arg_0.e, select(arg_0.e, arg_0.e, true), true), 1u);
    var var_1 = Struct_1(!(!vec2<bool>(arg_0.d.x <= arg_0.d.x, true)), arg_0.b, true, ~arg_0.d, ~(~(~var_0.x) >> (_wgslsmith_mult_u32(var_0.x, 1u >> (arg_0.d.x % 32u)) % 32u)));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, -1i, -7818i, 10251i), vec4<i32>(-2147483647i, -10765i, u_input.a, 1i)), -vec4<i32>(u_input.a, 92727i, 22330i, -37939i)), _wgslsmith_div_i32(u_input.a, ~u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(arg_0.e, var_1.e) % vec2<u32>(32u)), vec2<i32>(11386i, u_input.a) ^ vec2<i32>(2147483647i, -32719i)) >> (arg_0.d.zz % vec2<u32>(32u))), vec2<i32>(u_input.a, -15823i));
    var_1 = Struct_1(var_1.a, -826f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b - var_1.b))), arg_0.b) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, 316f)), var_1.d, ~(~arg_0.d.x));
    let var_3 = Struct_1(!(!(!vec2<bool>(false, var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -275f), arg_0.a.x, vec3<u32>(38360u, max(var_1.d.x, var_0.x) | 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e, var_1.d.x, var_0.x, 4294967295u), vec4<u32>(63116u, arg_0.e, var_1.d.x, 100554u), vec4<u32>(12114u, arg_0.e, arg_0.d.x, 4294967295u)), vec4<u32>(46741u, var_1.e, 1u, var_1.d.x)), abs(vec4<u32>(var_1.e, arg_0.e, var_1.e, var_1.e)) & ~vec4<u32>(0u, arg_0.e, var_1.d.x, var_0.x))), ~5526u);
    return var_1.c;
}

fn func_2() -> vec2<f32> {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1545f))))), -572f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-146f, -2356f, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * 1027f));
    var var_2 = Struct_1(select(vec2<bool>(false, func_3(Struct_1(vec2<bool>(false, true), 1000f, true, vec3<u32>(9834u, 17942u, 0u), 13640u))), !vec2<bool>(true, all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(441f, 1492f))), ((i32(-1i) * -u_input.a) | 2147483647i) > _wgslsmith_dot_vec4_i32(-vec4<i32>(-6358i, var_0, u_input.a, -2147483647i), max(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, 1i, u_input.a, u_input.a), vec4<i32>(2147483647i, -52402i, -2147483647i, u_input.a)), -vec4<i32>(var_0, u_input.a, var_0, u_input.a))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(63472u, 4294967295u, ~4294967295u), ~vec3<u32>(1u, 1u, 1u), vec3<u32>(firstLeadingBit(89489u), min(37880u, 37654u), reverseBits(0u))), ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 101439u), vec2<u32>(27492u, 1u)) ^ reverseBits(1u))));
    var var_3 = Struct_1(vec2<bool>(true, var_2.a.x), _wgslsmith_f_op_f32(-var_2.b), any(!(!vec3<bool>(false, var_2.c, false))) || true, select(reverseBits(select(vec3<u32>(0u, 51177u, 0u) ^ vec3<u32>(1u, var_2.e, 69140u), _wgslsmith_sub_vec3_u32(var_2.d, var_2.d), 1000f != var_2.b)), var_2.d, vec3<bool>(var_2.c, !var_2.c, true & any(vec3<bool>(var_2.a.x, false, false)))), select(abs(var_2.e), 101127u, !select(false, false, true)) >> (59617u % 32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, var_2.b))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(787f, 159f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, -799f), vec2<f32>(var_2.b, var_2.b))))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.x;
    var_0 = 2322f;
    return Struct_1(!(!vec2<bool>(select(true, true, false), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(-arg_0.x), false, _wgslsmith_div_vec3_u32(~countOneBits(reverseBits(vec3<u32>(4092u, 0u, 4294967295u))), vec3<u32>(select(17948u, 4294967295u, true), 209u, firstLeadingBit(1u)) & reverseBits(max(vec3<u32>(4294967295u, 22870u, 22881u), vec3<u32>(75967u, 4294967295u, 48225u)))), reverseBits(abs(~1u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(!vec2<bool>(false, (21569i ^ u_input.a) >= -10196i), _wgslsmith_f_op_f32(f32(-1f) * -829f), true, vec3<u32>(1u, 1u, 1u), select(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(19866u, 23247u, 0u), vec3<u32>(34503u, 12209u, 38757u)), 1u)), 1u, true));
    var var_1 = 53580i ^ u_input.a;
    var_1 = max(-reverseBits(~reverseBits(u_input.a)), -(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(45727i, 1241i)), ~vec2<i32>(-30861i, -2147483647i)) & ~_wgslsmith_add_i32(14292i, 2260i)));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(func_2()));
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b)))), true, var_2.d, ~(~var_2.d.x));
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2()).x;
    var var_1 = arg_3;
    var_1 = Struct_1(vec2<bool>(func_1().c || (1i < (0i ^ u_input.a)), max(-2147483647i, -42497i) != u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -339f), var_1.c | any(vec3<bool>(func_1().a.x, arg_0.c && false, arg_3.b >= -1804f)), arg_1.d, ~(~(_wgslsmith_dot_vec3_u32(arg_1.d, vec3<u32>(1u, var_1.e, 4294967295u)) >> ((arg_1.e & arg_3.d.x) % 32u))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1411f, 692f, -1674f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(269f, 1000f, -761f)))), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(717f, -460f, var_2.b)))))));
    return var_1.d.x | arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -483f);
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.a), -2147483647i, u_input.a), ~_wgslsmith_sub_i32(u_input.a, min(33976i, ~(-18911i))), u_input.a & (u_input.a | ~1i));
    var var_2 = Struct_1(vec2<bool>(false, (1u <= firstTrailingBit(43598u)) | (any(vec2<bool>(true, true)) | true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-391f, -769f) - -724f), true, vec3<u32>(func_5(func_1(), Struct_1(vec2<bool>(true, true), 1073f, true, _wgslsmith_clamp_vec3_u32(vec3<u32>(87233u, 0u, 52181u), vec3<u32>(9196u, 4294967295u, 1u), vec3<u32>(20540u, 4294967295u, 58344u)), 86044u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, true))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), true), 1231f, true, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 62191u, 0u), vec3<u32>(0u, 17069u, 1u)), ~2220u)), ~func_1().d.x >> (~(~0u) % 32u), _wgslsmith_sub_u32(~(~7174u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1936u, 1675u), vec2<u32>(88015u, 0u))))), _wgslsmith_mod_u32(1u, 68588u));
    var_2 = func_1();
    var_1 = _wgslsmith_clamp_vec3_i32(~(~(countOneBits(vec3<i32>(-4799i, -2147483647i, 39997i)) & -vec3<i32>(var_1.x, 1i, u_input.a))), -abs(vec3<i32>(-2147483647i, -1i, var_1.x)) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.d.x, 1u, var_2.e), vec4<u32>(0u, 12073u, 24489u, 0u)), _wgslsmith_sub_u32(1u, var_2.e), abs(firstTrailingBit(12748u))) % vec3<u32>(32u)), firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_1.x, -2147483647i, var_1.x)), vec3<i32>(u_input.a, var_1.x, -26515i) | vec3<i32>(var_1.x, u_input.a, var_1.x)))));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2.e, 4294967295u) & var_2.d, ~vec3<u32>(4294967295u, 0u, 53386u))));
}

