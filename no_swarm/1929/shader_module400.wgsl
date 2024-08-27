struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -352f), 8328i, ~27020u, arg_1.x >= _wgslsmith_mod_i32(max(2147483647i, 6910i), -1412i), u_input.a));
    var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_2.x), arg_1.x, _wgslsmith_clamp_u32(max(abs(0u), 15693u), var_0.a.e, 28206u), var_0.a.d & var_0.a.d, arg_0));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.a, _wgslsmith_f_op_f32(min(376f, var_0.a.a)))), var_0.a.a)));
    var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), -2147483647i, arg_0, true, var_0.a.e));
    var_0 = Struct_4(Struct_1(-1281f, _wgslsmith_mult_i32(max(arg_1.x, firstLeadingBit(2147483647i)), var_0.a.b), ~0u, true, ~(1u | arg_0)));
    return vec4<bool>(var_0.a.d, !(!var_0.a.d), !(var_0.a.d || all(!vec2<bool>(true, var_0.a.d))), var_0.a.d);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-408f - -688f), _wgslsmith_f_op_f32(f32(-1f) * -1197f))))), _wgslsmith_f_op_f32(638f + _wgslsmith_f_op_f32(abs(-1035f))), _wgslsmith_f_op_f32(floor(1018f)));
    var var_1 = Struct_5(max(arg_0, -32096i), -605f);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b - var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), 568f, -580f) * vec3<f32>(323f, _wgslsmith_f_op_f32(f32(-1f) * -930f), var_1.b)));
    let var_2 = Struct_5(abs(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, arg_0, 8940i, -33262i), vec4<i32>(97i, 1i, arg_0, -16118i)), -var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b * var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(select(var_0.x, -461f, true));
    return countOneBits(_wgslsmith_add_u32(firstTrailingBit(1u), ~1u)) << (arg_1.x % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = select(~vec4<u32>(37140u, u_input.b, _wgslsmith_sub_u32(u_input.c.x, arg_1.x), reverseBits(u_input.c.x) >> (~40309u % 32u)), ~(select(vec4<u32>(1u, 53043u, arg_1.x, arg_1.x), vec4<u32>(282u, 4294967295u, u_input.b, 16725u), select(arg_0, vec4<bool>(false, arg_0.x, arg_0.x, true), false)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.x, u_input.c.x, 1u) & vec4<u32>(u_input.c.x, u_input.a, 0u, 2868u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), vec4<u32>(88395u, 1u, 36417u, u_input.a))) % vec4<u32>(32u))), false);
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~abs(40221u), ~select(4294967295u, var_0.x, false)), func_4(i32(-1i) * -1i, ~vec4<u32>(arg_1.x, 24238u, 73941u, u_input.c.x), select(func_3(30146u, vec4<i32>(-1i, -2147483647i, -15025i, 44745i), vec4<f32>(-353f, 1726f, 304f, -1746f)), arg_0, true), ~var_0.x <= arg_1.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 5586u, 4294967295u), vec3<u32>(min(var_0.x, 0u), arg_1.x, 1u)), abs(_wgslsmith_mult_u32(var_0.x, u_input.c.x)) << (var_0.x % 32u)), vec4<u32>(~4294967295u, 4294967295u, _wgslsmith_mult_u32(21740u, max(select(var_0.x, var_0.x, true), ~1u)), ~arg_1.x));
    var_0 = vec4<u32>(~max(var_0.x, 34116u), u_input.a, _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 26183u), vec4<u32>(15866u, u_input.a, 4294967295u, 12575u)) >> (1u % 32u)), ~(arg_1.x << (~76343u % 32u))), ~0u);
    var var_1 = firstTrailingBit(vec4<u32>(u_input.b & ((arg_1.x & var_0.x) & 1u), 1u, ~max(max(arg_1.x, var_0.x), u_input.a), u_input.a));
    var var_2 = _wgslsmith_f_op_f32(step(-279f, -281f));
    return var_0.zw;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = min(~vec2<u32>(1u, u_input.b << (u_input.a % 32u)), min(vec2<u32>(4294967295u, arg_1.e), func_2(arg_2, vec3<u32>(1u, 15533u, 11670u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, arg_1.c), vec2<u32>(1u, 1u)) % vec2<u32>(32u)))) >> (vec2<u32>(~(u_input.a & ~0u), max(~u_input.c.x, 1u)) % vec2<u32>(32u));
    var_0 = ~vec2<u32>(14750u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, countOneBits(u_input.b), 1u, 0u), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, arg_1.c), vec3<u32>(71363u, 3102u, u_input.c.x)), func_4(23460i, vec4<u32>(var_0.x, 13144u, u_input.b, arg_1.e), arg_2, true), u_input.c.x)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -1000f)), _wgslsmith_div_i32(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 10880i), vec2<i32>(14868i, arg_0))), 26364u, true, firstTrailingBit(func_4(1i, ~vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x), select(arg_2, vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(arg_2.x, false, false, arg_2.x)), true))), vec4<i32>(38466i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, -62636i, 9620i), vec3<i32>(arg_1.b, arg_0, arg_0))), firstTrailingBit(1i), 30297i), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, 2130f))))), arg_0, countOneBits(u_input.a), any(vec2<bool>(true | arg_2.x, arg_2.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c, var_0.x, var_0.x), vec3<u32>(36130u, var_0.x, var_0.x), vec3<u32>(var_0.x, 84650u, 4294967295u)), vec3<u32>(arg_1.c, arg_1.e, arg_1.c)) ^ (~15780u >> ((u_input.a << (0u % 32u)) % 32u))));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2196f), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.b.wy, _wgslsmith_sub_vec2_i32(var_1.b.wx, var_1.b.xw)), var_1.b.zw), ~_wgslsmith_sub_u32(0u, var_0.x) & var_0.x, true, abs(4294967295u)), var_1.b, arg_1);
    var var_2 = Struct_3(Struct_1(arg_1.a, -reverseBits(-6638i), ~(~abs(u_input.c.x)), true, ~(0u | var_0.x) >> (max(37560u, 122u | u_input.c.x) % 32u)), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(-var_1.b, firstLeadingBit(vec4<i32>(arg_0, arg_1.b, arg_1.b, var_1.a.b))), var_1.a);
    return Struct_2(arg_1, var_2.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    let var_0 = reverseBits(vec2<u32>(arg_0.a.e, 0u)) & vec2<u32>(_wgslsmith_mult_u32(32636u, arg_3.b.e) ^ func_2(!vec4<bool>(arg_2.a.d, arg_2.c.d, false, true), firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u))).x, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), abs(41251u))));
    var var_1 = arg_2.c.a;
    return Struct_3(Struct_1(1276f, ~(~arg_2.c.b), select(1u, 0u, arg_0.b.d), arg_0.a.d | true, ~(~_wgslsmith_mult_u32(u_input.c.x, arg_3.b.e))), -vec4<i32>(-1i, arg_1.x, _wgslsmith_mult_i32(0i, -1i), arg_0.a.b ^ firstTrailingBit(-46555i)), Struct_1(_wgslsmith_f_op_f32(sign(arg_2.c.a)), -1i, 0u, all(vec4<bool>(true, arg_0.a.d, true, arg_0.a.d)), 51476u));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~(-min(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), arg_0.b.wy), vec2<i32>(arg_0.c.b, arg_2.a.b)) >> (~(~firstTrailingBit(u_input.c)) % vec2<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(abs(arg_2.a.a))), _wgslsmith_f_op_f32(round(arg_0.a.a))), 1130f);
    var var_2 = ~4294967295u;
    var_2 = 1u;
    let var_3 = func_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 25110i, -1i) ^ vec3<i32>(var_0.x, 2147483647i, arg_2.a.b), arg_0.b.xwy), var_0.x), func_1(-abs(1i), arg_0.a, arg_3).b, select(!(!vec4<bool>(false, false, arg_3.x, arg_1.x)), vec4<bool>(func_5(Struct_2(arg_2.a, Struct_1(var_1.x, -25824i, u_input.c.x, arg_3.x, 4294967295u)), arg_0.b.wxy, func_5(Struct_2(arg_0.c, arg_2.a), arg_0.b.wwx, Struct_3(Struct_1(var_1.x, arg_0.b.x, arg_0.a.e, true, 0u), arg_0.b, Struct_1(837f, -76382i, 0u, arg_1.x, 44007u)), Struct_2(arg_0.c, Struct_1(450f, 2147483647i, arg_2.a.e, true, arg_2.a.e))), func_1(arg_0.b.x, arg_0.c, vec4<bool>(false, true, arg_3.x, arg_3.x))).c.d, true, arg_1.x, u_input.a > _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.a.e, arg_2.a.e), vec3<u32>(4294967295u, 46944u, 28549u))), !vec4<bool>(all(vec4<bool>(true, arg_1.x, false, arg_3.x)), !arg_3.x, !arg_1.x, true))).a;
    return arg_0.c;
}

fn func_7(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_4(func_5(arg_0, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(arg_0.a.b, arg_0.b.b, arg_0.a.b)), firstLeadingBit(vec3<i32>(2147483647i, arg_0.b.b, arg_0.a.b))), vec3<i32>(arg_0.b.b, -arg_0.b.b, ~2147483647i)), Struct_3(func_5(func_1(arg_0.a.b, arg_0.b, vec4<bool>(false, arg_0.b.d, arg_0.b.d, true)), vec3<i32>(arg_0.a.b, arg_0.b.b, -83804i), func_5(Struct_2(Struct_1(-1000f, arg_0.b.b, 18866u, arg_0.a.d, arg_0.b.c), arg_0.b), vec3<i32>(1075i, -12062i, -15208i), Struct_3(arg_0.b, vec4<i32>(-1i, arg_0.b.b, arg_0.b.b, -47522i), arg_0.b), Struct_2(Struct_1(arg_0.a.a, -68252i, arg_0.b.e, arg_0.a.d, 6881u), Struct_1(arg_0.a.a, arg_0.a.b, 4294967295u, true, u_input.a))), func_1(arg_0.b.b, arg_0.a, vec4<bool>(true, arg_0.a.d, true, true))).a, vec4<i32>(countOneBits(-8412i), firstLeadingBit(-46158i), 2147483647i, _wgslsmith_sub_i32(arg_0.a.b, arg_0.a.b)), Struct_1(_wgslsmith_f_op_f32(329f + 261f), func_5(Struct_2(Struct_1(-2231f, 34330i, 1u, arg_0.b.d, u_input.c.x), arg_0.b), vec3<i32>(-1i, arg_0.a.b, 11702i), Struct_3(Struct_1(arg_0.a.a, arg_0.a.b, u_input.a, false, 46132u), vec4<i32>(arg_0.b.b, arg_0.a.b, arg_0.b.b, arg_0.a.b), arg_0.b), Struct_2(arg_0.a, arg_0.b)).b.x, 1u, func_3(88829u, vec4<i32>(-2089i, 24897i, -18150i, -1i), vec4<f32>(459f, 1000f, arg_0.b.a, arg_0.a.a)).x, 65218u)), func_1(_wgslsmith_div_i32(func_1(arg_0.b.b, arg_0.b, vec4<bool>(arg_0.a.d, true, arg_0.b.d, arg_0.a.d)).b.b, 1i), arg_0.a, !(!vec4<bool>(arg_0.b.d, false, false, false)))).a);
    var var_1 = func_3(0u, max(vec4<i32>(-16284i, ~(-29483i), ~(-5228i), -2147483647i) | reverseBits(min(vec4<i32>(arg_0.b.b, arg_0.a.b, -15805i, 0i), vec4<i32>(0i, 19226i, var_0.a.b, 3274i))), vec4<i32>(-4734i, var_0.a.b, -33395i, -26030i)), vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.a), 3540f, _wgslsmith_f_op_f32(f32(-1f) * -1443f))).xzy;
    var var_2 = _wgslsmith_add_vec3_u32(~select(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 0u), vec3<u32>(1u, var_0.a.c, var_0.a.e))), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(62200u, u_input.a, u_input.a)), min(vec3<u32>(105049u, 0u, var_0.a.e), vec3<u32>(var_0.a.e, 4294967295u, arg_0.b.e))), !vec3<bool>(arg_0.b.d, var_0.a.d, false)), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.a.c, 7780u, 4294967295u), firstTrailingBit(vec3<u32>(40728u, 27402u, arg_0.b.e)))));
    let var_3 = select(!vec4<bool>(!arg_0.a.d, var_1.x, all(vec4<bool>(true, true, var_0.a.d, arg_0.b.d)), all(vec3<bool>(true, false, false)) || true), !vec4<bool>(true, true, false, arg_0.a.d), vec4<bool>(true, arg_0.a.d & any(vec4<bool>(true, arg_0.a.d, false, false)), arg_0.b.a != 897f, all(!select(vec3<bool>(arg_0.b.d, var_1.x, var_1.x), vec3<bool>(var_0.a.d, false, arg_0.a.d), var_1.x))));
    var_2 = ~(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(12176u, 0u, var_2.x), ~vec3<u32>(4294967295u, 48473u, 14142u), all(vec4<bool>(true, var_1.x, false, false))), reverseBits(vec3<u32>(11395u, 0u, 60765u) ^ vec3<u32>(var_2.x, 4294967295u, var_0.a.e))));
    return 2684u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(func_6(func_5(func_1(1768i, Struct_1(-193f, 1i, u_input.a, true, u_input.c.x), vec4<bool>(true, false, false, true)), vec3<i32>(1i, 1i, 1i), Struct_3(Struct_1(1582f, 3787i, u_input.b, true, 11412u), vec4<i32>(0i, -32017i, 2147483647i, -66i), Struct_1(-1280f, 17474i, u_input.a, false, 0u)), Struct_2(Struct_1(-555f, 24759i, 28164u, false, u_input.b), Struct_1(-262f, -44097i, u_input.b, false, u_input.c.x))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), Struct_4(Struct_1(1235f, 31165i, u_input.b, true, 24937u)), vec4<bool>(false, false, true, true)), func_5(Struct_2(func_1(-39027i, Struct_1(-255f, 2147483647i, 13811u, true, u_input.a), vec4<bool>(true, true, false, false)).b, func_6(Struct_3(Struct_1(-1364f, -2147483647i, u_input.a, true, 2738u), vec4<i32>(-2147483647i, 1i, -2147483647i, 0i), Struct_1(346f, -1i, 4294967295u, true, 0u)), vec4<bool>(true, false, true, false), Struct_4(Struct_1(-825f, -8412i, 41207u, true, 3637u)), vec4<bool>(false, true, false, false))), select(vec3<i32>(-2147483647i, -7957i, -9298i), vec3<i32>(110568i, -2147483647i, -32258i), func_3(u_input.a, vec4<i32>(17302i, 2147483647i, -17168i, 17586i), vec4<f32>(-935f, 327f, -2147f, -800f)).wwz), Struct_3(Struct_1(-1564f, -1i, u_input.a, false, 47110u), select(vec4<i32>(0i, 8720i, -2147483647i, 25340i), vec4<i32>(53350i, 1i, 2147483647i, 38464i), vec4<bool>(true, true, false, true)), func_6(Struct_3(Struct_1(754f, -42180i, u_input.a, false, 1u), vec4<i32>(0i, 1i, 2147483647i, 2147483647i), Struct_1(1583f, -23337i, u_input.a, true, u_input.c.x)), vec4<bool>(false, false, true, false), Struct_4(Struct_1(1016f, 21453i, 1u, false, 30612u)), vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-1086f, -47498i, u_input.a, true, u_input.c.x), func_6(Struct_3(Struct_1(-696f, 46151i, 63433u, true, u_input.b), vec4<i32>(0i, 8242i, 44353i, 1i), Struct_1(-903f, -2147483647i, 13874u, true, u_input.b)), vec4<bool>(false, false, true, true), Struct_4(Struct_1(-1027f, 0i, u_input.b, true, 20493u)), vec4<bool>(false, false, false, true)))).c));
    let var_1 = min(1i, ~(~31190i));
    var var_2 = ~func_6(func_5(Struct_2(Struct_1(2415f, 2147483647i, 1290u, true, u_input.a), Struct_1(1433f, var_1, 19731u, false, u_input.b)), vec3<i32>(-2147483647i, var_1, var_1), Struct_3(Struct_1(1000f, var_1, 51740u, true, 611u), vec4<i32>(48978i, 1i, -2147483647i, var_1), Struct_1(-837f, var_1, 6374u, true, u_input.a)), Struct_2(Struct_1(-745f, -2147483647i, u_input.b, true, 847u), Struct_1(-1234f, var_1, u_input.c.x, false, 12301u))), func_3(~u_input.c.x, vec4<i32>(1i, var_1, var_1, -25666i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(203f, -1534f, 1166f, -259f), vec4<f32>(-1508f, 513f, 211f, 453f)))), Struct_4(func_6(Struct_3(Struct_1(1105f, var_1, u_input.a, false, u_input.c.x), vec4<i32>(-2147483647i, 27160i, var_1, var_1), Struct_1(737f, 31464i, 875u, true, 0u)), vec4<bool>(false, true, false, true), Struct_4(Struct_1(1221f, var_1, u_input.b, true, u_input.a)), vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), true)).c & min(~u_input.c.x, _wgslsmith_sub_u32(75351u, _wgslsmith_clamp_u32(u_input.a, 1u, 87876u) & ~1u));
    let var_3 = func_1(_wgslsmith_mod_i32(1i, -24696i), Struct_1(1153f, reverseBits(var_1), _wgslsmith_add_u32(u_input.c.x, 37653u), true, _wgslsmith_mult_u32(u_input.a & u_input.b, ~1u) & u_input.c.x), vec4<bool>((~u_input.c.x < ~u_input.b) & false, true, (~u_input.a > u_input.b) && true, true & !any(vec3<bool>(false, true, false)))).a.b;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1166f - func_5(Struct_2(Struct_1(-1085f, -48616i, 4294967295u, true, u_input.a), Struct_1(1280f, var_3, 43944u, false, 0u)), vec3<i32>(var_1, var_1, var_3), Struct_3(Struct_1(1000f, var_1, 23021u, true, 4294967295u), vec4<i32>(var_3, -12977i, var_3, 2147483647i), Struct_1(-403f, var_1, 94387u, true, u_input.b)), Struct_2(Struct_1(1979f, -36039i, 35991u, false, u_input.c.x), Struct_1(633f, 0i, 47403u, false, 13537u))).a.a), 715f), 1467f));
    var_2 = ~(~func_6(func_5(func_1(-39312i, Struct_1(-322f, -10387i, u_input.c.x, false, 2760u), vec4<bool>(true, false, false, false)), vec3<i32>(var_1, 2147483647i, -44298i) & vec3<i32>(-11165i, var_3, var_3), Struct_3(Struct_1(1666f, var_1, 4294967295u, true, u_input.c.x), vec4<i32>(-13929i, var_3, var_1, 1i), Struct_1(var_4, 62938i, 18770u, true, 16915u)), func_1(var_1, Struct_1(var_4, 0i, u_input.c.x, true, 4294967295u), vec4<bool>(true, false, true, false))), func_3(0u, -vec4<i32>(var_3, -2147483647i, -2147483647i, var_3), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-618f, -709f, -250f, -1710f), vec4<f32>(948f, var_4, 592f, var_4)))), Struct_4(func_1(2147483647i, Struct_1(-2153f, 32257i, 1u, false, u_input.a), vec4<bool>(false, true, true, false)).a), func_3(abs(u_input.c.x), ~vec4<i32>(var_3, var_1, var_3, 23003i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 1034f, -118f, var_4) * vec4<f32>(1029f, var_4, 808f, var_4)))).c);
    let var_5 = u_input.c.x;
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(min(var_3, var_3), var_1, 48022i, var_3 >> (0u % 32u))) | (vec4<i32>(-1i) * -vec4<i32>(14093i, 2147483647i, 0i, 2147483647i)), _wgslsmith_mod_vec3_u32(~(~min(vec3<u32>(var_5, var_5, var_5), vec3<u32>(var_5, 4294967295u, 109659u))), select(~(vec3<u32>(u_input.b, 1u, u_input.a) | vec3<u32>(4294967295u, 41528u, 52477u)), max(vec3<u32>(u_input.a, var_5, var_5), vec3<u32>(var_5, u_input.c.x, u_input.c.x)) >> (~vec3<u32>(19672u, u_input.c.x, 0u) % vec3<u32>(32u)), !(var_1 <= 19599i))));
}

