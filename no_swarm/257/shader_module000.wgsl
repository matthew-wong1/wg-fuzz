struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_5(Struct_1(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -19532i, -18536i), vec4<i32>(29394i, 57093i, 0i, -36782i)), 1i, -5383i)), abs((i32(-1i) * -14982i) >> (~u_input.b.x % 32u)), ~vec2<u32>(~9410u, ~u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, -1849f))))))), _wgslsmith_f_op_f32(sign(1731f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))));
    var var_2 = Struct_2(_wgslsmith_mod_i32(firstLeadingBit(-29523i), 18673i), abs(u_input.b), var_0.a, var_0.a, Struct_1(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(88327i, -42020i, var_0.a.a.x)), -var_0.a.a), _wgslsmith_add_i32(-1i, 1i), vec2<u32>(firstLeadingBit(u_input.a << (u_input.b.x % 32u)), 4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.c.x), vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_div_vec2_f32(var_0.a.d, _wgslsmith_f_op_vec2_f32(step(var_0.a.d, _wgslsmith_f_op_vec2_f32(var_0.a.d - var_0.a.d))))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_mult_i32(-9274i, countOneBits(-1263i)) | var_0.a.a.x, var_2.b, Struct_1(-select(var_2.d.a, var_2.c.a, vec3<bool>(true, false, false)), ~(var_0.a.a.x & 0i), vec2<u32>(18474u, _wgslsmith_clamp_u32(var_2.d.c.x, var_0.a.c.x, var_2.c.c.x)), var_0.a.d), var_2.d, Struct_1(~vec3<i32>(-1i, var_2.a, var_2.c.a.x), var_2.d.a.x, ~vec2<u32>(var_2.d.c.x, var_2.c.c.x), _wgslsmith_f_op_vec2_f32(ceil(var_2.c.d)))));
    let var_4 = vec2<bool>(any(!vec4<bool>(false, any(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false)), true)), any(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false))));
    return -var_3.a.d.b;
}

fn func_2() -> Struct_5 {
    var var_0 = countOneBits(~(vec2<u32>(~u_input.b.x, u_input.a) & vec2<u32>(90420u, u_input.b.x)));
    var var_1 = _wgslsmith_mult_i32(0i, 15208i) & _wgslsmith_mult_i32(-20069i, 1i | -(-2147483647i >> (u_input.b.x % 32u)));
    var_0 = u_input.b.xy;
    var var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_mult_i32(1i, -15225i), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(58227u, u_input.b.x, var_0.x, 39464u)), ~u_input.b), Struct_1(vec3<i32>(-1i, 60406i, -31129i) << (u_input.b.zzx % vec3<u32>(32u)), func_3(), u_input.b.ww, vec2<f32>(1000f, 441f)), Struct_1(-vec3<i32>(-2147483647i, 2972i, -42179i), _wgslsmith_div_i32(-1i, -1i), _wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.b.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(1533f, -247f) - vec2<f32>(1498f, -2197f))), Struct_1(countOneBits(vec3<i32>(-2147483647i, -38255i, -24762i)), 1i, vec2<u32>(16870u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-583f, -1246f) * vec2<f32>(-1365f, 1989f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, -1000f, _wgslsmith_div_f32(-459f, -2236f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1583f, -749f, 1264f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, 1056f, 399f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-546f, -1043f), vec2<f32>(111f, 445f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 309f, true))), -337f)));
    let var_3 = reverseBits(_wgslsmith_mult_vec2_i32(var_2.a.a.d.a.xy, _wgslsmith_clamp_vec2_i32(select(var_2.a.a.e.a.yy, vec2<i32>(1i, var_2.a.a.c.a.x), false) ^ vec2<i32>(-27289i, 1i), vec2<i32>(max(var_2.a.a.e.b, 1i), _wgslsmith_sub_i32(var_2.a.a.c.a.x, var_2.a.a.c.b)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(var_2.a.a.c.a, var_2.a.a.e.a)))));
    return Struct_5(Struct_1(-_wgslsmith_sub_vec3_i32(-vec3<i32>(var_2.a.a.a, var_2.a.a.c.a.x, var_3.x), -var_2.a.a.e.a), 0i, ~reverseBits(vec2<u32>(var_0.x, 0u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.b.xy, var_2.c) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(644f, 557f))))))), var_2.a.a.c.d.x);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = any(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, any(vec2<bool>(true, true)), false), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))));
    var var_1 = 4294967295u;
    let var_2 = arg_2.c.a;
    let var_3 = u_input.b;
    var var_4 = vec3<bool>(true, !(!var_0), var_0);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.d.x, arg_2.e.d.x) * _wgslsmith_f_op_f32(abs(-917f))), -2536f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.d.x, -191f, 595f) - vec3<f32>(_wgslsmith_f_op_f32(219f + 807f), -935f, -295f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), select(!vec2<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), !any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    let var_1 = Struct_5(func_2().a, _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_sub_i32(~(-var_1.a.a.x), -4243i)), ~(max(vec4<u32>(u_input.b.x, var_1.a.c.x, 1u, var_1.a.c.x), ~u_input.b) >> (vec4<u32>(var_1.a.c.x, var_1.a.c.x, 7236u, select(arg_1, 1u, var_0.x)) % vec4<u32>(32u))), func_2().a, Struct_1(var_1.a.a, -1i, u_input.b.ww, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(1682f * arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a.d, arg_0.xy, var_0.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.zy)))), Struct_1(_wgslsmith_mult_vec3_i32(min(var_1.a.a, vec3<i32>(-1i, var_1.a.a.x, -18583i)) << ((u_input.b.yyz << (u_input.b.wxx % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(var_1.a.b, var_1.a.b, -2147483647i) & _wgslsmith_sub_vec3_i32(var_1.a.a, var_1.a.a)), var_1.a.a.x, reverseBits(vec2<u32>(34932u, min(1u, 1u))), arg_0.yx));
    var var_3 = Struct_1(vec3<i32>(~var_2.c.b, 2147483647i, 34375i), i32(-1i) * -1i, max(~reverseBits(u_input.b.wy >> (u_input.b.yz % vec2<u32>(32u))), abs(vec2<u32>(75409u, u_input.b.x)) ^ (~var_2.d.c | select(var_1.a.c, var_2.d.c, vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec3_f32(func_4(func_2(), _wgslsmith_f_op_f32(-arg_0.x), Struct_2(-1i, vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u), var_2.d, Struct_1(var_1.a.a, 77711i, var_1.a.c, vec2<f32>(1424f, 1186f)), var_1.a))).x)));
    let var_4 = !((0i << (_wgslsmith_add_u32(_wgslsmith_mult_u32(var_3.c.x, var_2.e.c.x), firstTrailingBit(u_input.b.x)) % 32u)) >= -var_2.c.a.x);
    return func_2().a;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_5(func_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(-60655i, vec4<u32>(12126u, u_input.b.x, arg_2.a.e.c.x, arg_2.a.c.c.x), arg_2.a.d, arg_2.a.c, arg_1))))), ~_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_div_u32(u_input.a, 4294967295u), ~u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2().a.d.x), _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_div_f32(arg_2.a.d.d.x, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.e.d.x))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, false), select(var_1.x, any(select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true))), true)), !select(!(!vec3<bool>(var_1.x, false, false)), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, true), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x))), vec3<bool>(all(vec4<bool>(true, var_1.x, var_1.x, false)), 4294967295u >= arg_2.a.c.c.x, 1i >= arg_1.a.x)), !vec3<bool>(false, any(vec3<bool>(false, false, true)), var_1.x));
    var_2 = vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~arg_1.c.x, _wgslsmith_mod_u32(arg_1.c.x, 10591u)), firstTrailingBit(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u)), u_input.b.x) == firstTrailingBit(_wgslsmith_add_u32(max(arg_1.c.x, var_0.a.c.x), ~arg_1.c.x)), select(true, var_2.x, true), true);
    let var_3 = vec4<bool>(any(select(select(!vec4<bool>(true, var_2.x, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_2.x, true), vec4<bool>(var_1.x, false, var_2.x, true)), u_input.a < arg_1.c.x), select(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_2.x)), select(vec4<bool>(var_1.x, var_2.x, var_2.x, true), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_1.x)), !vec4<bool>(true, var_2.x, true, var_1.x)), vec4<bool>(all(var_2.xz), true, var_2.x, select(false, false, false)))), false && !select(var_1.x, true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_2.x))), var_1.x, all(!(!select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_2.x)))));
    return ~1389u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<u32>(~(~4294967295u), _wgslsmith_mod_u32(~(u_input.a & 0u), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.a, 4816u))), 17978u), ~select(abs(countOneBits(vec3<u32>(u_input.a, 1u, u_input.b.x))), vec3<u32>(0u, 121455u, func_1(1145f, Struct_1(vec3<i32>(-37373i, 21650i, 2147483647i), 73821i, vec2<u32>(4294967295u, u_input.a), vec2<f32>(1406f, 1207f)), Struct_3(Struct_2(-27982i, vec4<u32>(u_input.a, 10381u, u_input.b.x, u_input.a), Struct_1(vec3<i32>(1i, 0i, -20239i), 1i, vec2<u32>(0u, 23861u), vec2<f32>(-583f, -1657f)), Struct_1(vec3<i32>(18304i, 13980i, -19058i), -18920i, u_input.b.xy, vec2<f32>(-1921f, -1127f)), Struct_1(vec3<i32>(-2147483647i, -23353i, 31497i), -40843i, u_input.b.zz, vec2<f32>(194f, 402f)))))), true));
    let var_1 = 4322u;
    let var_2 = (~vec4<i32>(firstTrailingBit(2147483647i), ~(-21262i), max(-60397i, 21962i), _wgslsmith_add_i32(33026i, -1i)) & -_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 0i, -22138i, 44651i), ~vec4<i32>(23941i, 30888i, 5978i, 0i))) >> (reverseBits(vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(0u, 1u)), 1u, 18618u, ~4294967295u)) % vec4<u32>(32u));
    let var_3 = firstLeadingBit(1u);
    var var_4 = Struct_2(var_2.x, ~(~(~vec4<u32>(var_3, 0u, var_0.x, u_input.b.x)) | ~u_input.b), Struct_1((vec3<i32>(56856i, -473i, var_2.x) << ((u_input.b.www >> (u_input.b.zwz % vec3<u32>(32u))) % vec3<u32>(32u))) ^ (_wgslsmith_div_vec3_i32(var_2.yxw, vec3<i32>(2147483647i, var_2.x, var_2.x)) ^ var_2.xyw), (-9273i >> (_wgslsmith_sub_u32(var_3, var_0.x) % 32u)) >> ((81616u << (var_1 % 32u)) % 32u), ~firstTrailingBit(abs(vec2<u32>(u_input.b.x, var_0.x))), vec2<f32>(558f, 1f)), func_5(vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1343f)), _wgslsmith_f_op_f32(703f - 1931f)), _wgslsmith_f_op_f32(-func_5(vec3<f32>(170f, -1401f, -428f), 0u, -306f).d.x)), firstLeadingBit(firstTrailingBit(func_5(vec3<f32>(366f, 596f, 973f), 1u, 550f).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1653f, _wgslsmith_f_op_f32(select(300f, 1022f, false)))))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_1(var_2.zxz, var_2.x, var_0.zy, vec2<f32>(-489f, 850f)), 265f), 988f, Struct_2(-23678i, vec4<u32>(var_1, var_1, var_3, 0u), Struct_1(var_2.yyw, -5195i, vec2<u32>(u_input.b.x, var_0.x), vec2<f32>(858f, 666f)), Struct_1(vec3<i32>(1i, var_2.x, var_2.x), 60912i, var_0.yy, vec2<f32>(-896f, -2194f)), Struct_1(vec3<i32>(-14008i, var_2.x, 0i), 11088i, vec2<u32>(var_1, var_1), vec2<f32>(433f, 127f))))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-832f, -1937f, 716f) * vec3<f32>(-1412f, -2810f, -1203f))))), ~(abs(25592u) >> (abs(var_0.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_1(var_2.yyx, var_2.x, vec2<u32>(45853u, var_1), vec2<f32>(-1386f, 439f)), -488f), -1267f, Struct_2(var_2.x, vec4<u32>(var_3, 4294967295u, u_input.b.x, u_input.b.x), Struct_1(vec3<i32>(var_2.x, var_2.x, 0i), var_2.x, vec2<u32>(1u, 4294967295u), vec2<f32>(-2072f, -559f)), Struct_1(var_2.yzy, 2147483647i, vec2<u32>(var_0.x, var_0.x), vec2<f32>(915f, 258f)), Struct_1(var_2.yyx, -1i, u_input.b.yy, vec2<f32>(976f, -853f))))).x) - func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1947f, -251f, -227f), vec3<f32>(-1000f, -1531f, -262f), false)), 15164u, -679f).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, var_4.d.a.x) & var_4.e.b, var_4.d.b) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(func_1(-221f, Struct_1(vec3<i32>(0i, -1i, -2147483647i), var_4.d.b, vec2<u32>(65728u, 1u), vec2<f32>(-1573f, var_4.d.d.x)), Struct_3(Struct_2(var_4.c.a.x, vec4<u32>(u_input.b.x, var_3, var_0.x, 3730u), Struct_1(vec3<i32>(-1i, -2147483647i, -15577i), var_4.a, vec2<u32>(u_input.a, 4294967295u), vec2<f32>(1135f, var_4.e.d.x)), var_4.c, var_4.c))), ~4313u), func_1(_wgslsmith_f_op_f32(max(var_4.c.d.x, var_4.c.d.x)), var_4.c, Struct_3(Struct_2(var_4.d.a.x, vec4<u32>(4294967295u, 7580u, 27958u, 26240u), var_4.d, Struct_1(var_2.zzx, 61801i, var_0.yy, var_4.c.d), var_4.e)))) % 32u), var_2, var_4.e.d.x, ~(~(~firstTrailingBit(var_0.xx))), ~_wgslsmith_mult_u32(var_0.x, ~firstTrailingBit(var_4.b.x)));
}

