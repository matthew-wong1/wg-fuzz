struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_5(Struct_3(arg_1.c, u_input.a.yx >> ((vec2<u32>(arg_1.c.b, 1u) | vec2<u32>(arg_1.a.b, u_input.a.x)) % vec2<u32>(32u)), firstLeadingBit(abs(96270u)), Struct_1(_wgslsmith_mod_u32(arg_1.a.a, u_input.a.x << (arg_1.a.b % 32u)), reverseBits(~40433u), all(vec3<bool>(false, arg_1.c.c, arg_1.a.c)) && (u_input.b.x != 61601i))), Struct_4(4294967295u, i32(-1i) * -22715i, Struct_1(min(countOneBits(u_input.a.x), ~59017u), _wgslsmith_mod_u32(1u, 1u), arg_1.c.c), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(-519f, arg_0))) + vec2<f32>(-395f, _wgslsmith_f_op_f32(max(arg_1.b.x, arg_0))))));
    var var_1 = var_0.a.b ^ _wgslsmith_div_vec2_u32(~vec2<u32>(8459u << (0u % 32u), 1u), _wgslsmith_mult_vec2_u32(var_0.a.b, vec2<u32>(u_input.a.x ^ 0u, countOneBits(1u))));
    var var_2 = true;
    var var_3 = vec2<bool>(true, any(vec2<bool>(true, var_0.a.d.c & arg_1.c.c)) || all(vec4<bool>(true, select(arg_1.a.c, true, var_0.b.d.c.c), false, true)));
    var_1 = ~(~vec2<u32>(1u, ~reverseBits(4294967295u)));
    return select(!vec3<bool>(true, true, arg_1.a.c), !(!vec3<bool>(true, all(vec3<bool>(var_0.b.d.c.c, arg_1.a.c, false)), all(vec4<bool>(arg_1.c.c, false, var_0.b.d.c.c, var_3.x)))), true);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_2.b.x));
    var var_1 = ~vec3<i32>(~(-2236i), ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(1511i, -1i, u_input.b.x, 19596i), vec4<i32>(u_input.b.x, -29107i, 25066i, 27708i)), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x) & vec4<i32>(15889i, -1i, u_input.b.x, u_input.b.x)), ~reverseBits(reverseBits(-45170i)));
    var_0 = 1781f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(-2138f * 387f)))))));
    var_1 = _wgslsmith_mult_vec3_i32(u_input.b, u_input.b);
    return vec4<i32>(0i, select(var_1.x, 4218i, arg_2.c.c), -u_input.b.x, u_input.b.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = 71577u;
    let var_1 = true;
    let var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) - arg_1.x));
    var_0 = ~40440u | _wgslsmith_mult_u32(u_input.a.x, 51222u);
    return 266f;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_5(arg_3.d.b.zxw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)), arg_3.d.b.x)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_1, u_input.b.x, arg_1, arg_0)) >> (firstTrailingBit(max(vec4<u32>(4294967295u, u_input.a.x, 30552u, 81461u), vec4<u32>(u_input.a.x, arg_3.c.b, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), func_4(arg_3.d, 42670u & arg_3.d.c.a, arg_3.d, func_3(arg_3.e.x, arg_3.d)) | (vec4<i32>(arg_0, 0i, arg_1, arg_3.b) >> (min(vec4<u32>(0u, 39810u, 4294967295u, arg_3.c.a), vec4<u32>(arg_3.c.b, arg_3.c.a, 10559u, u_input.a.x)) % vec4<u32>(32u)))), vec2<bool>(false, !arg_3.d.c.c)));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(max(var_1.x << (51037u % 32u), arg_3.d.a.a >> (arg_3.d.c.b % 32u)), ~abs(1u), min(countOneBits(41038u), _wgslsmith_sub_u32(u_input.a.x, 36106u)), 4294967295u), _wgslsmith_div_vec4_u32(min(~abs(vec4<u32>(77098u, u_input.a.x, u_input.a.x, var_1.x)), max(~vec4<u32>(var_1.x, u_input.a.x, arg_3.c.b, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_3.c.b, var_1.x))), vec4<u32>(~1u, _wgslsmith_clamp_u32(12381u, arg_3.a, var_1.x), 970u, var_1.x)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2287f, -758f, 2029f, 1f)), arg_3.d.b);
    var var_4 = Struct_1(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, arg_3.a << (u_input.a.x % 32u)), var_1.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.x, 479u), _wgslsmith_div_u32(var_2.x, ~(~26850u))), true);
    return _wgslsmith_div_u32(38690u & ~firstTrailingBit(arg_3.c.b), _wgslsmith_div_u32(u_input.a.x, 63381u)) >= var_2.x;
}

fn func_6(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-906f, _wgslsmith_div_f32(1264f, -844f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -701f, arg_2.x)), _wgslsmith_f_op_f32(abs(-1061f))))));
    var var_1 = func_3(-1000f, Struct_2(Struct_1(0u, arg_0, abs(1u) >= firstTrailingBit(arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), 302f, _wgslsmith_f_op_f32(func_5(vec3<f32>(-893f, var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), select(-2147483647i, -1i, false), select(vec2<bool>(true, true), vec2<bool>(arg_2.x, false), arg_2.x))), -1353f), Struct_1(~4294967295u, ~u_input.a.x, false))).xy;
    var_1 = select(!select(!func_3(1477f, Struct_2(Struct_1(u_input.a.x, u_input.a.x, false), vec4<f32>(-1000f, -726f, -829f, var_0.x), Struct_1(8717u, u_input.a.x, false))).zy, arg_2, arg_2), arg_2, vec2<bool>(false, true));
    var_1 = !(!func_3(var_0.x, Struct_2(Struct_1(u_input.a.x, u_input.a.x, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, 1867f, var_0.x, var_0.x) * vec4<f32>(248f, 1655f, var_0.x, -314f)), Struct_1(u_input.a.x, u_input.a.x, false))).xx);
    var var_2 = vec2<bool>(u_input.a.x <= ~min(~arg_0, u_input.a.x << (0u % 32u)), !arg_2.x & true);
    return Struct_3(Struct_1(countOneBits(arg_0), ~69164u, !(1i > _wgslsmith_clamp_i32(1i, 0i, -1i))), _wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, arg_0 << ((1u << (0u % 32u)) % 32u))), 1u, Struct_1(min(~10234u, abs(~28724u)), ~arg_0, true));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)), _wgslsmith_f_op_f32(-1f), 693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2274f, -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f + -1575f)), 362f)), true));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_5(var_0.zww, var_0.yy, u_input.b.x, vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -1969f), 840f, -1261f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 880f, var_0.x, 260f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1190f, var_0.x, var_0.x, 1000f) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var var_1 = -(reverseBits(countOneBits(-2147483647i) | u_input.b.x) ^ u_input.b.x);
    var var_2 = select(select(select(vec4<bool>(!arg_1.a.c, arg_0.a.c, false, !arg_0.d.c), !vec4<bool>(true, arg_0.a.c, arg_1.d.c, arg_0.d.c), select(select(vec4<bool>(arg_0.d.c, arg_1.a.c, true, arg_1.a.c), vec4<bool>(arg_1.a.c, arg_0.d.c, true, arg_1.a.c), arg_1.a.c), !vec4<bool>(true, arg_1.d.c, false, false), vec4<bool>(arg_1.a.c, arg_0.a.c, false, false))), vec4<bool>(true, true, func_2(-18851i, ~u_input.b.x, !vec4<bool>(arg_1.d.c, arg_1.a.c, arg_1.a.c, arg_1.d.c), Struct_4(arg_0.d.a, -51851i, Struct_1(13087u, u_input.a.x, arg_0.d.c), Struct_2(arg_0.a, vec4<f32>(818f, 1537f, 219f, 642f), Struct_1(0u, arg_1.c, false)), vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_f32(func_5(var_0.xzy, vec2<f32>(237f, var_0.x), -2147483647i, vec2<bool>(arg_0.d.c, arg_0.d.c))) >= _wgslsmith_f_op_f32(f32(-1f) * -437f)), !select(!vec4<bool>(false, true, arg_0.d.c, arg_0.d.c), select(vec4<bool>(arg_0.d.c, false, true, arg_0.a.c), vec4<bool>(true, true, true, false), arg_1.a.c), arg_0.a.c)), !vec4<bool>(!arg_0.d.c, func_6(0u, firstLeadingBit(u_input.b), vec2<bool>(false, true)).a.c, !arg_0.a.c, firstLeadingBit(arg_1.d.a) < arg_0.c), !vec4<bool>(func_3(_wgslsmith_f_op_f32(sign(var_0.x)), Struct_2(arg_1.d, vec4<f32>(776f, 348f, var_0.x, var_0.x), Struct_1(1u, arg_1.c, false))).x, arg_0.a.c, any(vec2<bool>(arg_1.a.c, arg_0.d.c)) | arg_1.a.c, all(vec3<bool>(arg_0.a.c, arg_1.d.c, arg_1.a.c))));
    var_1 = ~_wgslsmith_div_i32(u_input.b.x, _wgslsmith_clamp_i32(i32(-1i) * -16861i, -(u_input.b.x << (57998u % 32u)), 0i));
    return _wgslsmith_div_u32(reverseBits(firstLeadingBit(arg_0.c)), arg_0.d.b);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = func_7(Struct_3(Struct_1(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 15316u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), 4294967295u, !(arg_0 || false)), vec2<u32>(1u, u_input.a.x), u_input.a.x, Struct_1(_wgslsmith_mult_u32(17905u, u_input.a.x), ~u_input.a.x | 1u, true)), func_6(~(~firstTrailingBit(u_input.a.x)), -firstLeadingBit(~u_input.b), select(vec2<bool>(true, true), select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), arg_0), true), select(vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), func_2(u_input.b.x, -69704i, vec4<bool>(arg_0, false, true, arg_0), Struct_4(60053u, 29932i, Struct_1(79693u, 14268u, false), Struct_2(Struct_1(4294967295u, u_input.a.x, arg_0), vec4<f32>(-1221f, -2448f, -1383f, -413f), Struct_1(14257u, 126022u, arg_0)), vec2<f32>(1581f, -1000f)))))));
    var var_1 = ~select(~u_input.a.yz, vec2<u32>(~firstLeadingBit(58070u), firstTrailingBit(45267u) ^ ~38093u), arg_0);
    let var_2 = Struct_5(func_6(abs(u_input.a.x), vec3<i32>(~(~u_input.b.x), ~_wgslsmith_clamp_i32(-17983i, u_input.b.x, u_input.b.x), countOneBits(_wgslsmith_div_i32(u_input.b.x, -6108i))), vec2<bool>(arg_0, true)), Struct_4(u_input.a.x, -26444i, func_6(4294967295u | u_input.a.x, vec3<i32>(-16532i & u_input.b.x, ~(-2147483647i), countOneBits(u_input.b.x)), vec2<bool>(true, select(true, arg_0, arg_0))).d, Struct_2(func_6(u_input.a.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), !vec2<bool>(arg_0, arg_0)).d, vec4<f32>(-104f, -527f, -996f, _wgslsmith_f_op_f32(select(1015f, 763f, false))), Struct_1(var_1.x, 33526u, arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1312f, 433f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(825f, -833f), vec2<f32>(1460f, -1211f))))))));
    return ~(~vec4<i32>(u_input.b.x, -49559i, _wgslsmith_mult_i32(var_2.b.b, u_input.b.x), u_input.b.x)) & -vec4<i32>(~(-42268i), _wgslsmith_sub_i32(var_2.b.b, 27275i) ^ -u_input.b.x, 11581i, var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(23715i, i32(-1i) * -38562i, 7016i)), u_input.b.x, u_input.b.x << (1u % 32u)) >> (countOneBits(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f - _wgslsmith_f_op_f32(-1678f * 1083f))))));
    var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, ~_wgslsmith_sub_i32(var_0.x, u_input.b.x), i32(-1i) * -53789i), _wgslsmith_clamp_vec4_i32(((vec4<i32>(var_0.x, var_0.x, 0i, var_0.x) >> (vec4<u32>(3128u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ (vec4<i32>(-2147483647i, var_0.x, var_0.x, u_input.b.x) | vec4<i32>(-1i, -30627i, 3294i, 1i))) & vec4<i32>(u_input.b.x, abs(u_input.b.x), 0i, firstTrailingBit(var_0.x)), _wgslsmith_mult_vec4_i32(func_1(true), -(~vec4<i32>(var_0.x, u_input.b.x, 5968i, u_input.b.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(-55699i, -8339i, u_input.b.x)), u_input.b.x, 0i, min(50771i, i32(-1i) * -2147483647i))));
    let var_3 = _wgslsmith_mod_u32(~1u, func_6(u_input.a.x, countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, var_0.x), select(vec3<i32>(var_0.x, 0i, u_input.b.x), vec3<i32>(u_input.b.x, var_0.x, var_0.x), true))), select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))).b.x);
    var var_4 = Struct_3(Struct_1(var_3, 0u, !(_wgslsmith_f_op_f32(trunc(-294f)) != 1510f)), u_input.a.yz, 9707u, func_6(abs(~var_3), countOneBits(vec3<i32>(var_0.x, -34875i, 1i)) ^ vec3<i32>(reverseBits(u_input.b.x), i32(-1i) * -5573i, _wgslsmith_sub_i32(var_0.x, var_0.x)), vec2<bool>(true, true)).a);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -758f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1097f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_5(vec3<f32>(1414f, 1652f, 872f), vec2<f32>(-794f, -302f), -2147483647i, vec2<bool>(var_4.a.c, var_4.d.c)))), 1f)), _wgslsmith_sub_i32(~(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), var_0.x), -(~u_input.b.x >> (106710u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-147f)), _wgslsmith_div_f32(-164f, -593f), _wgslsmith_f_op_f32(round(-154f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(755f, -335f, 2512f) - vec3<f32>(206f, -763f, -994f)))), func_2(1i, var_0.x, !vec4<bool>(false, false, var_4.d.c, true), Struct_4(8871u, var_0.x, Struct_1(4294967295u, var_3, true), Struct_2(Struct_1(u_input.a.x, 1u, true), vec4<f32>(985f, 587f, -242f, 486f), var_4.d), vec2<f32>(440f, 3290f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1381f)) + -654f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2513f)))));
}

