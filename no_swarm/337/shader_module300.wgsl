struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1710f, 209f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -523f), _wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - arg_1.x) + var_0.x), -199f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2018f, 1138f)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -2156f)))));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(14042u, 7861u, u_input.a), vec3<u32>(63366u, 2713u, 8515u), vec3<bool>(true, false, true)), vec3<u32>(u_input.a, 29474u, 58256u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), max(vec3<u32>(129121u, u_input.a, 1u), vec3<u32>(u_input.a, 4294967295u, 1u))) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(42555u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, u_input.a))), (vec3<u32>(u_input.a, u_input.a, 13850u) << (abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34572u, 4294967295u), vec3<u32>(u_input.a, 30686u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(115402u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_u32(4294967295u, 0u))), ~(select(~vec3<u32>(0u, 1u, u_input.a), vec3<u32>(4294967295u, u_input.a, 4371u), vec3<bool>(true, true, true)) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_3 = u_input.b.x;
    var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -528f))) - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-398f - var_0.x))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - 1565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + 1064f), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))))));
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1103f)) * _wgslsmith_f_op_f32(f32(-1f) * -898f)) * _wgslsmith_f_op_f32(ceil(1618f))));
    var var_1 = vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0)))), 545f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_3((u_input.b.x >> (u_input.a % 32u)) & (~u_input.b.x >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_1.x)))), var_0);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -161f, -854f);
    var var_2 = Struct_5(Struct_1(1000f, ~abs(~vec4<i32>(u_input.b.x, u_input.b.x, 65035i, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(375f, var_1.x, var_1.x, var_1.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(step(-1000f, -2060f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1022f)), _wgslsmith_f_op_f32(var_0 + var_0)))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, 1i, u_input.b.x, -2147483647i)), vec4<i32>(u_input.b.x, 0i, u_input.b.x, 1i)), countOneBits(countOneBits(vec4<i32>(-17271i, 3746i, u_input.b.x, -1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 1000f, var_0, var_0)))))));
    return ~firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 29335u, 4294967295u)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(44146u, u_input.a, 1u))));
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1448f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f))), ~(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-18833i, -2147483647i, -2147483647i, arg_0.b.x), vec4<i32>(arg_0.b.x, 26934i, 1i, u_input.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(718f)), _wgslsmith_f_op_f32(f32(-1f) * -545f))) - _wgslsmith_f_op_f32(func_3(~arg_0.b.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(175f, 414f)))))), 331f, _wgslsmith_f_op_f32(min(2067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f + 413f) - -508f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1031f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1161f, -382f, arg_0.d.x)))))), _wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(29071i, 27658i), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_mod_i32(var_0.b.x, u_input.b.x)), 25232i, -1i), -vec4<i32>(abs(-31047i), _wgslsmith_mult_i32(-2147483647i, var_0.b.x), ~(-2147483647i), var_0.b.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -549f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(2147483647i, var_0.c.wz)))))));
    let var_1 = _wgslsmith_f_op_f32(-1165f - 533f);
    let var_2 = arg_0.c.zx;
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(ceil(var_0.c.wy));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(vec3<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), _wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(1330f - -1986f)) < arg_1.x, all(vec2<bool>(true, true))), u_input.b.zx, arg_2, select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), u_input.b.x < u_input.b.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), true));
    var var_1 = var_0.c.zx;
    var var_2 = _wgslsmith_f_op_f32(218f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(arg_1.x, arg_0))));
    let var_3 = Struct_2(min(_wgslsmith_mod_vec4_i32(-vec4<i32>(-6379i, -58201i, -10554i, var_0.b.x), abs(select(vec4<i32>(u_input.b.x, var_0.b.x, 55242i, u_input.b.x), vec4<i32>(var_0.b.x, 0i, u_input.b.x, 22882i), var_0.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.b.x, u_input.b.x, -1i), min(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, var_0.b.x), vec4<i32>(-2147483647i, -34980i, 24681i, 49248i)), ~vec4<i32>(u_input.b.x, var_0.b.x, 43243i, -1i)), firstLeadingBit(min(vec4<i32>(2147483647i, 1i, u_input.b.x, -41802i), vec4<i32>(-11809i, -34893i, u_input.b.x, -45005i))))), Struct_1(-404f, vec4<i32>(~_wgslsmith_mult_i32(var_0.b.x, var_0.b.x), min(2147483647i, 0i) >> (1u % 32u), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.b.x, 7742i), select(vec3<i32>(u_input.b.x, u_input.b.x, -51275i), u_input.b, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(arg_0 * arg_0), arg_0))), true || !any(var_0.d.xx), true);
    var var_4 = var_0.c.xy;
    return Struct_1(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-818f))), _wgslsmith_f_op_f32(-arg_0)))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, var_3.b.b.yxw), vec3<i32>(u_input.b.x, 2147483647i, ~1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.b.x, -27935i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 29816i, 20952i), var_3.b.b.zyw)), vec3<i32>(i32(-1i) * -1i, -var_0.b.x, u_input.b.x)), ((i32(-1i) * -17053i) >> (var_4.x % 32u)) << (var_4.x % 32u), -61851i), var_3.b.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_5(arg_3, func_5(arg_3.a, _wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec3<bool>(true, true, false), vec2<i32>(1i, 1i), func_2(), vec4<bool>(true, false, true, true)))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.x, 772u, 41443u)), arg_0)));
    var var_1 = ~abs(u_input.b.zz);
    var_0 = Struct_5(func_5(_wgslsmith_f_op_f32(606f + var_0.b.c.x), _wgslsmith_f_op_vec2_f32(step(func_5(858f, vec2<f32>(459f, var_0.b.a), ~vec3<u32>(u_input.a, arg_1, u_input.a)).c.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.c.wy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(283f, var_0.b.a))))), ~(~(arg_0 ^ arg_0))), Struct_1(var_0.b.c.x, -select(vec4<i32>(var_0.a.b.x, 1i, u_input.b.x, -39404i), _wgslsmith_div_vec4_i32(arg_3.b, arg_3.b), vec4<bool>(true, true, true, true)), arg_3.c));
    var var_2 = -14329i;
    let var_3 = -863f;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!select(!any(vec4<bool>(true, true, true, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), 817f > _wgslsmith_f_op_f32(func_1(vec3<u32>(4294967295u, 1642u, 4294967295u), 4294967295u, vec3<f32>(-225f, -280f, 1197f), Struct_1(569f, vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<f32>(1429f, 596f, -107f, 1000f))))), !all(vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), true), true)), false);
    var var_1 = var_0;
    var var_2 = vec2<bool>(!all(select(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_1.x), var_0.zw), var_1.xw, select(var_0.wz, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_1.x, true)))), all(var_1.zyw));
    var var_3 = vec2<i32>(~u_input.b.x, ~(-42895i));
    var_3 = func_5(588f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(509f, 749f) - vec2<f32>(-1000f, -760f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1140f)))))), vec3<u32>(~1u, _wgslsmith_add_u32(~u_input.a, u_input.a), abs(u_input.a))).b.zw;
    var var_4 = ~(~(~(select(vec4<u32>(u_input.a, 34927u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), var_0) >> (~vec4<u32>(1u, 0u, 7634u, u_input.a) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(315f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(185f, 1000f, 487f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-530f, -322f, -114f))))))), _wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-271f + -1423f))), vec2<f32>(_wgslsmith_f_op_f32(func_3(34204i, vec2<f32>(-611f, 341f))), _wgslsmith_f_op_f32(f32(-1f) * -260f)), vec3<u32>(var_4.x, 1u, 15536u) ^ var_4.zzy).c.x), ~u_input.b.x);
}

