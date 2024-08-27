struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(abs(firstTrailingBit(u_input.c)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(46072i, u_input.c), abs(vec2<i32>(u_input.c, 0i))), _wgslsmith_mod_i32(1i, -u_input.c), _wgslsmith_sub_i32(reverseBits(u_input.c), u_input.c)), false, reverseBits(u_input.a), select(vec2<i32>(1i, 1i), -vec2<i32>(u_input.c, -1i), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, -1433f, 644f, 309f) - vec4<f32>(-1210f, -291f, -865f, -792f))))), Struct_1(select(vec3<i32>(-1i, u_input.c, -u_input.c), min(min(vec3<i32>(-1i, -1i, u_input.c), vec3<i32>(4299i, 53612i, u_input.c)), vec3<i32>(u_input.c, 12878i, u_input.c)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, ~_wgslsmith_mult_u32(~u_input.d.x, 77227u), ~(~vec2<i32>(26650i, u_input.c)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-238f * 373f), -653f, -1824f, -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(859f, -1356f, 849f, -583f), vec4<f32>(274f, 827f, -1000f, -1695f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1114f, 272f, 982f, -917f), vec4<f32>(377f, -1065f, 412f, -434f))), 4111i <= u_input.c)))), Struct_1(-vec3<i32>(-23686i, ~(-12422i), max(u_input.c, u_input.c)), false, 49595u << (min(_wgslsmith_clamp_u32(10354u, 1u, 66772u), ~u_input.d.x) % 32u), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.c, -5857i), _wgslsmith_sub_i32(u_input.c, u_input.c)), ~(-vec2<i32>(18728i, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2349f, -2251f, 1379f, 110f))))));
    var_0 = Struct_2(_wgslsmith_mult_i32(reverseBits(firstTrailingBit(u_input.c >> (u_input.b.x % 32u))), u_input.c), var_0.d, var_0.d, Struct_1(_wgslsmith_sub_vec3_i32(var_0.c.a | ~var_0.c.a, firstTrailingBit(vec3<i32>(u_input.c, 8794i, 2147483647i) << (vec3<u32>(var_0.b.c, 45601u, 1u) % vec3<u32>(32u)))), true, ~8126u, vec2<i32>(-2147483647i | var_0.c.a.x, u_input.c), var_0.d.e));
    var_0 = Struct_2(firstTrailingBit(abs(u_input.c)), Struct_1(_wgslsmith_mult_vec3_i32(var_0.b.a, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, var_0.d.d.x, 35697i), vec3<i32>(u_input.c, var_0.d.a.x, 19767i))), var_0.d.b, ~(1u << (u_input.d.x % 32u)), max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.b.a.x, u_input.c, u_input.c), vec4<i32>(var_0.d.d.x, 2147483647i, var_0.b.d.x, u_input.c)), u_input.c), ~vec2<i32>(0i, 11896i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.e)))), var_0.d, var_0.c);
    var_0 = Struct_2(20764i, var_0.b, var_0.b, Struct_1(vec3<i32>(countOneBits(var_0.a), select(u_input.c, var_0.c.d.x, var_0.d.b), -69541i) << (select(abs(u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 116772u, var_0.c.c), u_input.d, vec3<u32>(27162u, u_input.d.x, var_0.b.c)), any(vec3<bool>(false, var_0.d.b, false))) % vec3<u32>(32u)), select(var_0.b.b, !any(vec3<bool>(false, var_0.d.b, var_0.c.b)), true), _wgslsmith_dot_vec2_u32(~u_input.d.zz, min(u_input.d.xx | vec2<u32>(var_0.c.c, 90599u), select(vec2<u32>(11603u, 0u), vec2<u32>(var_0.c.c, u_input.d.x), vec2<bool>(var_0.c.b, true)))), vec2<i32>(var_0.d.a.x, countOneBits(-19836i) | (1i >> (u_input.b.x % 32u))), var_0.c.e));
    var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.c) | vec4<i32>(0i, -2147483647i, var_0.b.a.x, 24789i), _wgslsmith_mult_vec4_i32(vec4<i32>(-29408i, 14085i, u_input.c, var_0.c.a.x), vec4<i32>(u_input.c, u_input.c, u_input.c, 33278i))), _wgslsmith_add_vec4_i32(vec4<i32>(27564i, -2147483647i, 1i, u_input.c), vec4<i32>(38861i, 5858i, -2147483647i, var_0.b.a.x)) ^ abs(vec4<i32>(-10068i, u_input.c, u_input.c, var_0.c.d.x))), var_0.b.a.x), var_0.c, var_0.d, Struct_1(-(~var_0.c.a), any(!vec4<bool>(true, var_0.c.b, true, false)) == false, abs(u_input.a), -var_0.c.d, var_0.c.e));
    return -30224i;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2((min(-8882i, u_input.c) | u_input.c) ^ u_input.c, Struct_1(vec3<i32>(u_input.c, _wgslsmith_mod_i32(func_3(), reverseBits(u_input.c)), -1i), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false))), u_input.a, select(max(-vec2<i32>(-2147483647i, u_input.c), vec2<i32>(1i, u_input.c)), vec2<i32>(u_input.c, 26551i) ^ vec2<i32>(1i, 1i), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1034f, 1331f, -438f, -439f) * vec4<f32>(-328f, 670f, 399f, 767f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1353f, 148f, -273f, -1505f))))), Struct_1(vec3<i32>(35017i, u_input.c, u_input.c << (~1u % 32u)), true, ~u_input.a, max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2147483647i), ~vec2<i32>(u_input.c, u_input.c)), (vec2<i32>(u_input.c, -1i) & vec2<i32>(u_input.c, u_input.c)) ^ -vec2<i32>(20308i, u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-225f, 1159f))), _wgslsmith_div_f32(344f, 1117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -125f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1222f)))))), Struct_1(abs(vec3<i32>(-2147483647i, 1i, u_input.c)), u_input.d.x >= u_input.b.x, ~min(17581u, u_input.d.x) >> (u_input.a % 32u), min(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, -21305i)), vec2<i32>(u_input.c, u_input.c)), min(vec2<i32>(u_input.c, -14068i), vec2<i32>(u_input.c, u_input.c)) ^ ~vec2<i32>(u_input.c, 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(sign(-927f))))));
    let var_1 = -1i;
    var var_2 = true;
    var_0 = Struct_2(56345i, var_0.d, var_0.c, Struct_1(-(~vec3<i32>(-2147483647i, u_input.c, u_input.c)), !var_0.c.b, _wgslsmith_div_u32(130518u, u_input.b.x), firstTrailingBit(~(-vec2<i32>(u_input.c, var_1))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(var_0.c.e))))))));
    var var_3 = Struct_4(~min(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, u_input.c, 1i, 0i), vec4<i32>(-40730i, -1i, var_0.c.a.x, 18745i))), -vec4<i32>(-43786i, var_1, var_1, u_input.c) << (max(vec4<u32>(var_0.d.c, 4294967295u, 17472u, u_input.a), vec4<u32>(u_input.b.x, var_0.d.c, var_0.c.c, 56212u)) % vec4<u32>(32u))));
    return Struct_4(((~vec4<i32>(-14890i, -1i, -1i, -1i) & ~vec4<i32>(var_3.a.x, 2147483647i, 2147483647i, -2701i)) | (-vec4<i32>(var_0.c.d.x, var_3.a.x, 4216i, 76741i) >> (abs(vec4<u32>(4294967295u, u_input.d.x, 70924u, u_input.b.x)) % vec4<u32>(32u)))) << (~(~vec4<u32>(1u, 314u, u_input.a, var_0.c.c)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.wzz, arg_0.yzy) ^ select(arg_0.x, 1u, false), min(u_input.d.x, u_input.d.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, 4294967295u, 44200u)), vec3<u32>(u_input.b.x, u_input.a, 49010u)) | ~_wgslsmith_mod_u32(5084u, arg_0.x), arg_0.x));
    var var_1 = vec4<i32>(1i | (u_input.c << (var_0 % 32u)), min(u_input.c, firstTrailingBit(u_input.c)), 1i | (0i | (0i >> (_wgslsmith_add_u32(arg_0.x, 74972u) % 32u))), firstTrailingBit(-16244i));
    var var_2 = func_2();
    return Struct_1(select(var_1.xww, var_2.a.xxy, vec3<bool>(select(var_0 > u_input.a, false, true), !all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)))), _wgslsmith_dot_vec2_u32(arg_0.zx, ~vec2<u32>(23756u, u_input.d.x)) < 86943u, abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(50193u, 4294967295u, 1u, 0u)), ~(~vec4<u32>(arg_0.x, var_0, 1u, u_input.d.x)))), -(max(reverseBits(vec2<i32>(-1i, -2147483647i)), var_2.a.yy) | var_1.ww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1523f, arg_1, arg_1, 1036f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(982f, arg_1, 140f, arg_1) * vec4<f32>(arg_1, -891f, -1632f, -1224f))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-1967f, arg_1), -1000f, -920f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c, Struct_1(vec3<i32>(6382i, 2147483647i, -51609i), select(any(vec2<bool>(true, false)), select(true, u_input.c == -2147483647i, all(vec2<bool>(false, true))), true), ~u_input.d.x, vec2<i32>(u_input.c << ((64620u | u_input.b.x) % 32u), ~select(u_input.c, -32101i, false)), vec4<f32>(623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-784f + 398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)), -390f)), func_1(~(~(~vec4<u32>(u_input.a, u_input.a, 28087u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(634f)))))), func_1(firstLeadingBit(~reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.a))), -1088f));
    let var_1 = vec3<u32>(~85689u, 1u, ~0u);
    var_0 = Struct_2(-16806i & (i32(-1i) * -func_3()), Struct_1(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.d.x, -2147483647i, 3087i), vec3<i32>(32074i, var_0.d.a.x, var_0.d.a.x)), func_1(~countOneBits(vec4<u32>(29518u, var_1.x, 7997u, u_input.b.x)), -864f).b, _wgslsmith_add_u32(~u_input.b.x >> ((var_0.b.c & u_input.b.x) % 32u), u_input.a), _wgslsmith_div_vec2_i32(~firstLeadingBit(vec2<i32>(u_input.c, -1i)), vec2<i32>(-1i, var_0.b.a.x) & ~vec2<i32>(2147483647i, var_0.b.a.x)), var_0.b.e), Struct_1(var_0.c.a, var_0.d.b, ~_wgslsmith_sub_u32(~var_1.x, ~1u), -var_0.b.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.e.x, var_0.c.e.x, -414f, var_0.d.e.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.x, var_0.b.e.x, var_0.d.e.x, var_0.b.e.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.e.x, 1298f, -1122f, var_0.d.e.x) + var_0.c.e)))), func_1(vec4<u32>(_wgslsmith_clamp_u32(~43191u, 1u, var_1.x), ~(~u_input.a), var_0.d.c, ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.e.x + 979f)) - _wgslsmith_f_op_f32(floor(435f)))));
    let var_2 = ~vec4<u32>(u_input.b.x, var_0.d.c, 1u, _wgslsmith_mod_u32(var_1.x, countOneBits(var_0.c.c)));
    var_0 = Struct_2(_wgslsmith_clamp_i32(var_0.b.a.x, var_0.b.d.x, 1i), var_0.d, func_1(vec4<u32>(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(21094u, 0u, 57388u, var_2.x)) & firstLeadingBit(11003u), reverseBits(var_0.d.c), var_0.b.c, 0u), _wgslsmith_f_op_f32(var_0.b.e.x + 665f)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c ^ 1i, ~_wgslsmith_dot_vec2_u32(select(firstTrailingBit(var_2.yz), var_2.xy, u_input.c != -1i), var_1.yz), -((reverseBits(vec4<i32>(-1i, u_input.c, 12897i, u_input.c)) & vec4<i32>(-35459i, var_0.d.a.x, 1495i, -1i)) | vec4<i32>(var_0.d.a.x, abs(var_0.a), _wgslsmith_div_i32(var_0.b.a.x, -2147483647i), firstTrailingBit(u_input.c))));
}

