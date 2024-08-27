struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = -reverseBits(~_wgslsmith_div_vec3_i32(~vec3<i32>(-25085i, u_input.d, 1i), firstTrailingBit(vec3<i32>(u_input.d, u_input.d, u_input.d))));
    let var_1 = vec2<u32>(1u, ~27968u);
    var var_2 = Struct_2(firstTrailingBit(~(~min(var_1, u_input.b))), Struct_1(firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 18089u), vec3<u32>(u_input.c, 4294967295u, var_1.x)))), true || (u_input.d < max(53426i, -62222i)), max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 15292u, 0u), vec3<u32>(1u, 1u, 30703u)), var_1.x << (1u % 32u)), u_input.b)), Struct_1(abs(~select(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(u_input.b.x, 1u, var_1.x), vec3<bool>(false, true, false))), -1590f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-662f)), _wgslsmith_f_op_f32(-1000f - 808f)), ~(~vec2<u32>(u_input.b.x, u_input.a)) >> (vec2<u32>(~74129u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(trunc(-1937f)))))));
    var_2 = Struct_2(var_2.c.c, Struct_1(~(~_wgslsmith_mult_vec3_u32(var_2.b.a, var_2.c.a)), all(!vec2<bool>(true, var_2.b.b)) && any(select(vec2<bool>(true, false), vec2<bool>(var_2.c.b, true), var_2.c.b)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(22092u, var_1.x), var_2.a), vec2<u32>(39892u, ~1u))), Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(120507u, 60287u, 9135u), vec3<u32>(~var_1.x, _wgslsmith_mod_u32(38093u, var_1.x), var_1.x), min(var_2.b.a, var_2.b.a) >> (var_2.b.a % vec3<u32>(32u))), any(vec3<bool>(true, true, true)), vec2<u32>(max(countOneBits(var_2.b.a.x), 26028u << (0u % 32u)), firstTrailingBit(~43137u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -631f))))));
    var_2 = Struct_2(var_2.b.c, Struct_1(_wgslsmith_div_vec3_u32(var_2.b.a, var_2.b.a), !(!var_2.b.b), u_input.b), Struct_1(var_2.c.a, reverseBits(~u_input.d) == var_0.x, ~vec2<u32>(max(1u, var_2.b.c.x), _wgslsmith_mult_u32(25538u, 28392u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_2.d) + _wgslsmith_div_f32(var_2.d, 1105f)) + -821f))));
    return true;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(~u_input.b, Struct_1(~firstTrailingBit(~vec3<u32>(60836u, 1u, 4294967295u)), !func_3(), reverseBits(u_input.b) >> (~(~vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u))), Struct_1(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(32676u, 4294967295u, 70489u), vec3<u32>(u_input.c, u_input.b.x, u_input.c)), ~vec3<u32>(u_input.b.x, u_input.c, u_input.b.x)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), abs(vec2<u32>(4294967295u, 23894u))), 278f);
    var var_1 = Struct_4(Struct_2(u_input.b, Struct_1(vec3<u32>(~u_input.c, ~var_0.a.x, 16844u), var_0.b.b, var_0.b.c), var_0.b, 1f));
    var_1 = Struct_4(var_1.a);
    let var_2 = -212f;
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -11473i, -2147483647i), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(~u_input.d >> ((18638u << (0u % 32u)) % 32u), (40797i << (var_0.c.a.x % 32u)) >> (_wgslsmith_mod_u32(994u, var_1.a.c.a.x) % 32u), u_input.d)));
    return min(countOneBits(select(vec4<u32>(1u, 16719u, countOneBits(81238u), ~var_1.a.c.a.x), vec4<u32>(firstTrailingBit(u_input.c), ~var_0.b.a.x, ~var_0.a.x, ~1u), !(!vec4<bool>(var_0.b.b, true, var_1.a.b.b, var_0.c.b)))), max(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(37159u, 4294967295u), u_input.b), ~var_1.a.a), 22459u, ~31610u | ~u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(31384u, var_1.a.b.c.x ^ 1u, 0u, firstLeadingBit(78845u)), vec4<u32>(min(var_0.a.x, 4294967295u), u_input.c, 1u >> (var_0.b.a.x % 32u), 4294967295u))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = -(max(u_input.d, firstTrailingBit(~u_input.d)) ^ countOneBits(-32179i));
    let var_1 = _wgslsmith_clamp_vec3_i32((vec3<i32>(_wgslsmith_mod_i32(-15266i, var_0), -10168i, 20848i) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, u_input.a), vec3<u32>(u_input.c, u_input.a, 76300u), vec3<u32>(u_input.a, u_input.a, 1u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(5414u, u_input.b.x, 4294967295u), vec3<u32>(52957u, 0u, u_input.b.x))) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0, u_input.d), 2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, 1i, var_0, -6325i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 31062i, 0i, u_input.d), vec4<i32>(0i, -1i, 57150i, u_input.d))), -28372i), abs(vec3<i32>(countOneBits(-u_input.d), min(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-64435i, var_0, u_input.d, u_input.d), vec4<i32>(19246i, u_input.d, var_0, 1i))), select(firstLeadingBit(u_input.d), _wgslsmith_mult_i32(var_0, 0i), all(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))))), countOneBits(-countOneBits(vec3<i32>(24330i, u_input.d, u_input.d))));
    var var_2 = _wgslsmith_clamp_vec4_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f * -463f))), select(vec4<u32>(1u, ~4294967295u, ~(~u_input.a), u_input.c), vec4<u32>(abs(1u), _wgslsmith_mult_u32(0u, 0u), u_input.a << (4294967295u % 32u), _wgslsmith_sub_u32(u_input.a, u_input.c)) & vec4<u32>(46219u, 1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 73678u, 41293u), vec3<u32>(14523u, 41453u, u_input.b.x))), ~u_input.d < _wgslsmith_dot_vec4_i32(~vec4<i32>(-19940i, 1i, -5263i, 48065i), vec4<i32>(19563i, 1850i, var_1.x, var_0))), ~(~vec4<u32>(abs(u_input.b.x), u_input.a & u_input.b.x, countOneBits(u_input.a), ~0u)));
    var var_3 = ~(~firstLeadingBit(vec4<u32>(countOneBits(1u), countOneBits(u_input.b.x), 1u, u_input.c)));
    var var_4 = Struct_2(_wgslsmith_mult_vec2_u32(firstLeadingBit(~reverseBits(vec2<u32>(u_input.c, var_3.x))), _wgslsmith_mod_vec2_u32(var_2.xw, ~u_input.b)), Struct_1(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.x, var_3.x, var_2.x), var_2.xxx), true, ~abs(~var_3.zy)), Struct_1(select(select(abs(vec3<u32>(var_2.x, 1u, var_2.x)), _wgslsmith_mod_vec3_u32(var_3.xzw, vec3<u32>(var_3.x, var_2.x, var_3.x)), !vec3<bool>(false, arg_0.b.x, true)), _wgslsmith_add_vec3_u32(min(vec3<u32>(var_3.x, var_2.x, 1u), var_3.yyz), vec3<u32>(4294967295u, 4294967295u, 1u)), true), false, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, u_input.b.x), vec2<u32>(u_input.a, 86618u), u_input.b), vec2<u32>(u_input.a, u_input.c)) & (firstTrailingBit(vec2<u32>(1u, 4294967295u)) >> (vec2<u32>(var_3.x, var_2.x) % vec2<u32>(32u)))), 685f);
    return Struct_2(select(select(vec2<u32>(46339u, 0u), var_4.a, select(vec2<bool>(arg_0.b.x, true), arg_0.b, false)) | ~min(vec2<u32>(4979u, 67905u), var_4.c.c), vec2<u32>(~var_4.c.c.x, var_4.c.a.x >> (~67222u % 32u)), true), Struct_1(~(~(~var_2.zxy)), arg_0.b.x, ~(~firstTrailingBit(u_input.b))), Struct_1(~firstTrailingBit(var_2.xyw), all(vec3<bool>(var_4.b.b, var_4.b.b, arg_0.a)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_3.x), select(vec2<u32>(2026u, var_2.x), vec2<u32>(var_3.x, u_input.a), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.d * var_4.d)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, 872f, func_1(Struct_3(false, vec2<bool>(arg_0.b.b, true))).d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -401f, arg_0.d))))));
    let var_1 = vec3<bool>((any(select(vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_0.b.b), false)) & (_wgslsmith_f_op_f32(round(1000f)) < _wgslsmith_div_f32(arg_0.d, arg_0.d))) || any(vec3<bool>(all(vec4<bool>(false, true, true, true)), -1980f <= var_0.x, !arg_0.b.b)), 1u != _wgslsmith_dot_vec3_u32(arg_2.a, arg_0.b.a), true);
    let var_2 = select(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_2.a.x, 4294967295u, 27346u), abs(vec4<u32>(arg_1, arg_2.a.x, u_input.c, 1u))), func_2(arg_0.d).x), _wgslsmith_dot_vec4_u32(vec4<u32>(23181u, firstLeadingBit(~0u), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(8859u, arg_1), arg_0.a) >> (arg_2.c.x % 32u)), vec4<u32>(arg_0.b.c.x, arg_1, 20647u, ~u_input.c)), -1i != _wgslsmith_dot_vec2_i32(vec2<i32>(48281i, -55304i >> (0u % 32u)), -vec2<i32>(u_input.d, u_input.d)));
    var var_3 = true;
    var_3 = arg_2.b && arg_0.b.b;
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~firstTrailingBit(vec2<i32>(u_input.d, -(arg_0 << (45468u % 32u))));
    let var_1 = 4294967295u;
    var var_2 = func_1(Struct_3(arg_2.b, vec2<bool>(true, false)));
    var_2 = func_1(arg_3);
    var var_3 = 0u;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(countOneBits(-_wgslsmith_sub_i32(2147483647i, u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1557f * _wgslsmith_div_f32(1000f, -1355f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))), func_4(func_1(Struct_3(true, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), 1u, func_1(Struct_3(true, vec2<bool>(true, true))).c), Struct_3(select(false, true, any(vec4<bool>(false, false, true, false))), select(vec2<bool>(func_1(Struct_3(true, vec2<bool>(false, true))).c.b, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), !any(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(979f, _wgslsmith_f_op_f32(floor(-1150f)), _wgslsmith_f_op_f32(613f * 1218f)), vec3<f32>(_wgslsmith_f_op_f32(-2269f * -512f), -256f, 711f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, -365f, 726f) + vec3<f32>(-1627f, 1616f, 227f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) * _wgslsmith_f_op_f32(trunc(707f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(734f * -1789f), 573f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(225f)))))));
    var var_2 = abs(countOneBits(-vec2<i32>(1504i, -2147483647i)) ^ select(select(vec2<i32>(-1i, u_input.d), vec2<i32>(u_input.d, u_input.d), vec2<bool>(true, var_0.b)) | max(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.d, -20309i)), ~vec2<i32>(-2147483647i, u_input.d) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -52246i), vec2<i32>(u_input.d, 34895i)), true));
    var_2 = ~select(vec2<i32>(u_input.d, abs(u_input.d)), vec2<i32>(_wgslsmith_clamp_i32(-var_2.x, 24040i, var_2.x), _wgslsmith_div_i32(u_input.d, i32(-1i) * -2147483647i)), !vec2<bool>(true, true & var_0.b));
    var_2 = vec2<i32>(_wgslsmith_div_i32(25349i, var_2.x) & -1i, -25307i);
    var_0 = Struct_1(vec3<u32>(var_0.a.x, ~u_input.a, firstLeadingBit(firstTrailingBit(u_input.b.x) & u_input.a)), true, select(reverseBits(~max(vec2<u32>(var_0.a.x, 1u), vec2<u32>(1539u, 37540u))), vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 0u)), var_0.a.yy ^ vec2<u32>(u_input.b.x, u_input.b.x)), ~var_0.a.x), select(vec2<bool>(any(vec3<bool>(true, false, false)), var_0.b), vec2<bool>(false, true), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), true)))));
    let var_3 = _wgslsmith_f_op_f32(select(-1276f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2402f - _wgslsmith_f_op_f32(select(-394f, -1848f, true))) - _wgslsmith_f_op_f32(-var_1.x)))), any(!(!(!vec3<bool>(false, var_0.b, var_0.b))))));
    let var_4 = -520f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_u32(u_input.c, firstTrailingBit(~4294967295u)), firstTrailingBit(countOneBits(~var_0.c.x))));
}

