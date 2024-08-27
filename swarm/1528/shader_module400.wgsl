struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(true, countOneBits(vec3<i32>(abs(firstLeadingBit(u_input.a)), u_input.b.x, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(firstTrailingBit(2147483647i), 2147483647i, ~u_input.a, -u_input.b.x), -(~firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x)))), 1u, 1f);
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = Struct_1(!var_0.a, vec3<i32>(-firstLeadingBit(u_input.b.x), var_0.b.x, var_1.b.x), _wgslsmith_add_vec4_i32(var_1.c, var_1.c), 0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e + 393f), _wgslsmith_f_op_f32(min(2116f, -636f))))))));
    var_2 = var_0;
    return var_1.c.x;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = -arg_2.c.x;
    var var_1 = Struct_1(arg_2.a, u_input.b, vec4<i32>(firstLeadingBit(-14411i), ~(~var_0), func_3(true), -1i), _wgslsmith_add_u32(19654u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.d, arg_2.d, 39594u, 48010u)), arg_1 & arg_1) ^ ~1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -809f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-671f)))))));
    var var_2 = arg_2;
    var var_3 = arg_2;
    var_1 = Struct_1(false, ~select(vec3<i32>(-12788i, -u_input.a, -12309i), select(vec3<i32>(u_input.b.x, 30876i, 0i), vec3<i32>(2147483647i, var_2.b.x, arg_3), arg_2.a) | abs(vec3<i32>(-33793i, -1i, 2147483647i)), vec3<bool>(var_2.a, true, arg_2.d <= 1u)), vec4<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 386i, 2147483647i), arg_2.b), -vec3<i32>(var_1.b.x, -2147483647i, u_input.a))), 0i, select(arg_3, -_wgslsmith_dot_vec4_i32(arg_2.c, var_2.c), arg_2.a)), _wgslsmith_sub_u32(var_1.d, select(~reverseBits(arg_2.d), 4294967295u & _wgslsmith_clamp_u32(69627u, var_2.d, var_2.d), var_2.a)), _wgslsmith_f_op_f32(min(1f, var_3.e)));
    return arg_1.x;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(true, -_wgslsmith_add_vec3_i32(min(-u_input.b, max(u_input.b, u_input.b)), -vec3<i32>(-20457i, 1i, -22078i) & select(u_input.b, vec3<i32>(u_input.a, u_input.a, u_input.a), false)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, ~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(31432i, u_input.a), vec2<i32>(35407i, u_input.b.x)), min(13230i, -6398i)), -(~min(vec4<i32>(u_input.b.x, 0i, u_input.a, -44222i), vec4<i32>(u_input.b.x, -14417i, -2147483647i, 22317i)))), min(firstTrailingBit(~(~arg_0)), func_2(_wgslsmith_div_f32(-433f, -2445f), vec4<u32>(arg_0, max(8919u, arg_0), arg_0, arg_0), Struct_1(true, vec3<i32>(u_input.a, u_input.b.x, 1i) >> (vec3<u32>(29863u, 78767u, arg_0) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(19425i, 3402i, u_input.a, 9072i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 36941u, 0u), vec4<u32>(74601u, arg_0, 47271u, arg_0)), -155f), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.b.x), 6520i, _wgslsmith_clamp_i32(u_input.a, u_input.a, 553i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2452f)) - _wgslsmith_f_op_f32(min(-1082f, -820f))), -334f)))));
    var_0 = Struct_1(var_0.a, -select(_wgslsmith_sub_vec3_i32(vec3<i32>(-47823i, var_0.b.x, var_0.b.x), u_input.b), var_0.b, false) | -(var_0.b ^ firstTrailingBit(u_input.b)), var_0.c, 0u & firstLeadingBit(select(~arg_0, ~1u, var_0.a)), -2613f);
    let var_1 = Struct_1(all(!vec3<bool>(all(vec2<bool>(true, false)), !var_0.a, var_0.a)), select(_wgslsmith_mult_vec3_i32(~var_0.b, max(u_input.b, vec3<i32>(var_0.c.x, 54437i, -1i))) | vec3<i32>(_wgslsmith_add_i32(var_0.b.x, u_input.a), ~(-1707i), reverseBits(-14491i)), _wgslsmith_mod_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b, var_0.b), firstTrailingBit(max(vec3<i32>(-2147483647i, 1i, -28466i), vec3<i32>(var_0.c.x, var_0.c.x, -6497i)))), select(true, true, select(true, var_0.a, false))), var_0.c & vec4<i32>(67758i, ~(-2147483647i), -var_0.c.x & min(-791i, var_0.b.x), 2147483647i), var_0.d, _wgslsmith_f_op_f32(1366f * _wgslsmith_f_op_f32(floor(-223f))));
    var_0 = Struct_1(false, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_1.b.x, var_1.b.x, 35950i), var_1.c.xzw, false), vec3<i32>(_wgslsmith_div_i32(var_0.c.x, u_input.b.x), i32(-1i) * -64256i, -15059i)), select(var_1.c.wxy, ~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.b.x, -17086i), var_1.c.zxx), vec3<bool>(true, var_0.e < 1200f, true))), reverseBits(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(var_1.c, vec4<i32>(-69925i, u_input.a, -1i, 1i))), 57405u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))) * var_0.e)));
    var var_2 = ~(i32(-1i) * -1i);
    return Struct_1(true, -var_0.b, firstTrailingBit(vec4<i32>(var_0.c.x, 67925i, 1i, -5337i)) ^ vec4<i32>(min(func_3(var_1.a), -u_input.a), countOneBits(var_0.c.x), u_input.b.x, var_1.b.x), 11621u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.e)), -494f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    return Struct_1(var_0.a, -vec3<i32>(var_0.c.x, min(arg_0.b.x, arg_0.b.x), arg_0.b.x) & u_input.b, arg_0.c, 39929u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-421f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_div_f32(-1000f, var_0.e)) + 143f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_5(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d | 0u, ~5345u, func_2(787f, vec4<u32>(3422u, 23458u, arg_1.d, arg_1.d), arg_1, u_input.a), abs(1u)), abs(vec4<u32>(29186u, 0u, 0u, 20640u)) << (vec4<u32>(arg_1.d, 1u, 0u, 18486u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(arg_1.e * -712f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2654f) * 1f), 1000f), func_5(arg_1).a || func_4(~42725u).a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(279f, -1266f))))))));
    let var_2 = Struct_1(!any(vec3<bool>(arg_1.a, u_input.a >= -2958i, var_0.a & false)), _wgslsmith_clamp_vec3_i32(u_input.b, ~(-u_input.b) | _wgslsmith_mult_vec3_i32(u_input.b, var_0.c.zxy), var_0.c.wwz), ~arg_1.c, 61746u, _wgslsmith_f_op_f32(min(var_0.e, var_1.x)));
    var var_3 = _wgslsmith_mod_vec3_i32((_wgslsmith_div_vec3_i32(-vec3<i32>(var_2.b.x, -1672i, arg_0), abs(vec3<i32>(10439i, var_2.b.x, arg_0))) & (vec3<i32>(16706i, 1i, arg_1.c.x) | select(var_0.b, vec3<i32>(var_0.b.x, arg_0, 38021i), vec3<bool>(true, var_0.a, true)))) >> (firstTrailingBit(vec3<u32>(arg_1.d, 0u, var_0.d)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(60335u).b.x, arg_1.c.x), abs(min(u_input.b.zz, vec2<i32>(4310i, var_0.b.x)))), 9726i, arg_1.c.x));
    var var_4 = false;
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e, -1460f, -759f), vec3<f32>(-129f, -1058f, arg_0.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(470f, arg_0.e, -725f) - vec3<f32>(-733f, arg_0.e, arg_0.e))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e, arg_0.e, arg_0.e), vec3<f32>(130f, arg_0.e, arg_0.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1746f, arg_0.e, arg_0.e) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.e, 964f, -1441f))))))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-771f)), 1358f, arg_0.e));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(arg_0).e, _wgslsmith_f_op_f32(-1674f - arg_0.e), func_5(func_4(20673u)).e, _wgslsmith_f_op_f32(sign(var_0.x)))));
    let var_2 = firstTrailingBit(arg_1);
    return func_5(arg_0);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = 270f;
    let var_1 = Struct_1(true, arg_0.b, countOneBits(arg_0.c), arg_1.x, 1265f);
    var_0 = 161f;
    let var_2 = ~abs(4294967295u);
    var var_3 = 1u;
    return func_4(~18960u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(49108i);
    let var_1 = func_7(func_6(func_1(~u_input.b.x | (-27011i | u_input.b.x), Struct_1(true, u_input.b, -vec4<i32>(u_input.a, u_input.a, -1i, 27675i), 4294967295u, _wgslsmith_f_op_f32(step(-1492f, 2018f)))), 16757u, select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), any(vec4<bool>(true, true, false, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, abs(1u), 0u), _wgslsmith_div_vec4_u32(select(~vec4<u32>(89636u, 40078u, 4294967295u, 58230u), _wgslsmith_clamp_vec4_u32(vec4<u32>(36588u, 26398u, 0u, 10781u), vec4<u32>(0u, 21134u, 0u, 66995u), vec4<u32>(14275u, 0u, 57891u, 114906u)), vec4<bool>(true, false, true, false)), ~(~vec4<u32>(33762u, 4294967295u, 4294967295u, 1833u))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(29572u, 0u, 57011u, 17638u)), ~(~vec4<u32>(23970u, 0u, 1u, 0u)), vec4<u32>(func_6(Struct_1(true, u_input.b, vec4<i32>(u_input.b.x, 11752i, u_input.b.x, 29616i), 39744u, 386f), 1u, vec3<bool>(false, false, false)).d, firstTrailingBit(58517u), ~1u, ~1u))), u_input.a >> (~(~4294967295u) % 32u));
    var var_2 = vec3<bool>(!var_1.a, func_5(func_7(var_1, vec4<u32>(1u, _wgslsmith_add_u32(4294967295u, var_1.d), var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(var_1.d, var_1.d))), 2147483647i)).a, true);
    var_0 = u_input.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~_wgslsmith_div_i32(var_1.c.x, u_input.a), Struct_1(true || var_2.x, func_7(Struct_1(var_1.a, u_input.b, var_1.c, 45232u, var_1.e), vec4<u32>(0u, var_1.d, 43106u, var_1.d), u_input.b.x).c.xyz, abs(vec4<i32>(var_1.b.x, u_input.a, u_input.b.x, var_1.b.x)), _wgslsmith_mod_u32(28970u, var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -275f))).b.x << (var_1.d % 32u));
}

