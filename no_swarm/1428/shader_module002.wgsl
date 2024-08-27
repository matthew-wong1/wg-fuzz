struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = ~u_input.d;
    var var_1 = firstTrailingBit(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.b) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(20902u), u_input.d)));
    var var_2 = Struct_1(max(countOneBits(~19144i) >> (~firstTrailingBit(u_input.b) % 32u), 2147483647i), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~43098u, u_input.d), vec2<u32>(1u, u_input.b)), abs(_wgslsmith_mult_u32(u_input.b, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.b, u_input.b)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 22735u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.d, 49728u, u_input.b), vec4<u32>(u_input.b, 28205u, u_input.b, u_input.b))) % 32u)), 4294967295u, -(~vec4<i32>(u_input.c.x | u_input.c.x, select(u_input.a, 32879i, true), ~u_input.a, i32(-1i) * -26520i)), -645f);
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_clamp_u32(4294967295u << (u_input.b % 32u), 1u, ~u_input.d)), countOneBits(97092u), ~abs(1u), ~6316u), ~vec4<u32>(~(~u_input.b), 31971u, 65261u, _wgslsmith_mod_u32(firstLeadingBit(var_2.c), _wgslsmith_sub_u32(0u, var_2.c))));
    var_2 = Struct_1(~var_2.d.x, vec3<u32>(101349u << (~(~u_input.b) % 32u), u_input.b, 7416u >> (1u % 32u)), firstLeadingBit(~(~(~70863u))), -var_2.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2258f))));
    return var_3.x;
}

fn func_2() -> vec3<u32> {
    let var_0 = true;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(max(min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(3114u, 4879u)), vec2<u32>(28971u, 29801u) ^ vec2<u32>(u_input.b, 0u)), ~(~vec2<u32>(10275u, 3425u))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(650f, 356f, 1783f)))), ~u_input.b), vec3<u32>(~4294967295u, 34503u | firstTrailingBit(u_input.d), u_input.d));
    global0 = ~(~58401u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -977f));
    var var_2 = -firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -2147483647i, -18195i), ~vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 0i))) | firstTrailingBit(vec4<i32>(~2147483647i, 2147483647i, 31657i | u_input.c.x, u_input.a));
    return vec3<u32>(33040u, min(~13704u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d, u_input.b, 26190u), vec4<u32>(0u, u_input.b, u_input.d, u_input.d)) | select(u_input.b, u_input.d, var_0))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(38992u >> (u_input.d % 32u), countOneBits(1u), ~u_input.d), ~u_input.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(-2147483647i, arg_0, 45165u, firstTrailingBit(select(-(vec4<i32>(u_input.a, u_input.c.x, u_input.a, -12721i) | vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.a)), vec4<i32>(_wgslsmith_mod_i32(u_input.a, -28335i), u_input.c.x, u_input.a << (11390u % 32u), -u_input.c.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -144f));
    var var_1 = Struct_4(var_0, 74538u, -1266f, u_input.a, func_2().zx);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(268f - var_0.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(1411f + var_0.e))));
    var_1 = Struct_4(var_0, 34431u, -1332f, reverseBits(1i), var_0.b.xz);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), var_0.e)))));
    return vec3<bool>(false, any(!vec2<bool>(var_1.a.c <= var_1.b, !arg_1.x)), all(select(vec3<bool>(var_0.e > 509f, !arg_1.x, select(false, arg_1.x, arg_1.x)), vec3<bool>(arg_1.x, true, all(arg_1.zy)), arg_1.zxx)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = func_4(func_2(), !(!vec4<bool>(true, true, !arg_2.e, true)));
    global0 = ~1u;
    var var_1 = max(arg_2.c.d.xxz, vec3<i32>(~u_input.a, arg_2.c.d.x >> (13351u % 32u), 9629i));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yz - arg_2.a.xx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.yx, arg_2.d.xy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1072f, 1263f) + arg_1.zx))))) + _wgslsmith_div_vec2_f32(arg_1.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, 576f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 871f))))));
    let var_3 = Struct_4(arg_2.c, u_input.d, 124f, 1i, (vec2<u32>(u_input.b, ~arg_2.c.c) << (arg_2.c.b.zy % vec2<u32>(32u))) ^ ~(countOneBits(arg_2.c.b.xz) | arg_2.c.b.zz));
    return _wgslsmith_div_vec4_u32(~(~max(reverseBits(vec4<u32>(4294967295u, arg_2.c.c, 13476u, arg_2.c.c)), min(vec4<u32>(var_3.b, arg_2.c.b.x, 4294967295u, var_3.a.c), vec4<u32>(var_3.b, u_input.d, 4294967295u, u_input.b)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.c, ~u_input.d, var_3.e.x, ~u_input.d), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.c.b.x, 1u, 37435u, 6287u), reverseBits(vec4<u32>(var_3.b, 1u, 16758u, 38640u))), ~countOneBits(vec4<u32>(u_input.d, u_input.b, 1u, u_input.b))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.c.x & _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(6034i, u_input.c.x, 0i, -1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_mult_i32(3335i, 1i), ~u_input.a), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.a), vec4<i32>(8178i, 2147483647i, -1i, u_input.c.x), vec4<i32>(u_input.c.x, -23634i, 828i, u_input.a)))));
    var var_1 = Struct_1(-1i, vec3<u32>(~arg_0.x & arg_0.x, min(arg_0.x, u_input.b), 27659u), ~27590u, ~vec4<i32>(_wgslsmith_sub_i32(reverseBits(0i), u_input.c.x), select(u_input.a, 33980i, true), 1i, u_input.a ^ -u_input.c.x), 477f);
    let var_2 = vec3<i32>(~max(2147483647i, firstLeadingBit(~u_input.a)), var_1.d.x, abs(select(~u_input.c.x, select(var_1.d.x, -1i, false), true) & u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-612f, var_1.e, 2326f, var_1.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, arg_1.x, 1285f, var_1.e)), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, -773f, var_1.e, arg_1.x) - vec4<f32>(-455f, var_1.e, 980f, 1246f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878f - -343f)), -570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), arg_1.x)));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 620f) * _wgslsmith_f_op_f32(f32(-1f) * -959f)), 1f)), -195f))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) * var_3), var_3.x, Struct_1(u_input.a, ~(~arg_0.ywy), select(_wgslsmith_clamp_u32(2837u, 0u, 1u), 7993u, false), _wgslsmith_add_vec4_i32(var_1.d, _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 71453i, var_1.a, 27442i), -var_1.d)), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f + 449f) - _wgslsmith_div_f32(-973f, -154f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(1000f * -814f), _wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(step(var_1.e, 742f)))), !(!any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(abs(countOneBits(~vec3<u32>(u_input.b, 1u, u_input.d))) >> (firstLeadingBit(vec3<u32>(u_input.d | 34172u, ~0u, u_input.b)) % vec3<u32>(32u)), countOneBits(reverseBits(vec3<u32>(u_input.b, u_input.b, 42603u)) & countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, 54628u), vec3<u32>(u_input.d, 116237u, 126209u)))), ~(~(vec3<u32>(1u, 1u, u_input.d) | vec3<u32>(u_input.b, u_input.b, u_input.d)) << (~countOneBits(vec3<u32>(4402u, u_input.b, u_input.d)) % vec3<u32>(32u))));
    let var_1 = func_5(~(select(~vec4<u32>(4294967295u, 16992u, 46910u, 42770u), countOneBits(vec4<u32>(var_0.x, 1u, 83607u, var_0.x)), true) ^ func_1(-1678f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -331f, 253f) - vec3<f32>(646f, -613f, -151f)), Struct_2(vec4<f32>(-357f, 849f, -2258f, -2309f), -1223f, Struct_1(-6515i, vec3<u32>(var_0.x, u_input.b, var_0.x), 0u, vec4<i32>(0i, 33636i, u_input.c.x, -32794i), 307f), vec4<f32>(-208f, -1892f, -2481f, -1934f), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, 450f))));
    let var_2 = abs(_wgslsmith_dot_vec4_i32(var_1.c.d, vec4<i32>(-1i) * -vec4<i32>(-39583i, -2874i, var_1.c.d.x, -1i))) | _wgslsmith_div_i32(1i, ~2147483647i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.wyx * var_1.a.wxz) - var_1.a.wzy);
    var var_4 = Struct_2(vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1625f), _wgslsmith_f_op_f32(step(var_1.a.x, var_1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(func_5(vec4<u32>(var_0.x, 66562u, 72406u, var_1.c.c), var_1.d.yw).a.x, var_1.a.x))))), _wgslsmith_f_op_f32(-var_1.a.x), var_1.c, _wgslsmith_f_op_vec4_f32(sign(var_1.a)), !any(func_4(min(var_1.c.b, var_1.c.b), vec4<bool>(var_1.e, var_1.e, true, false)).yy));
    let var_5 = Struct_3(_wgslsmith_f_op_f32(-974f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(vec4<u32>(17170u, var_1.c.b.x, var_1.c.b.x, 44594u), var_3.yy).a.x) - func_5(~vec4<u32>(1u, var_0.x, var_1.c.c, 15102u), _wgslsmith_f_op_vec2_f32(-var_1.d.zz)).b)));
    let var_6 = Struct_4(func_5(vec4<u32>(u_input.d, ~abs(var_0.x), ~_wgslsmith_mult_u32(var_4.c.b.x, var_1.c.b.x), 45323u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, var_1.c.e)), var_3.yx)))).c, ~(~(min(var_1.c.b.x, 8330u) & var_0.x)), _wgslsmith_f_op_f32(select(var_5.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-313f)))), all(vec4<bool>(354f <= var_1.b, 1u < u_input.b, false, var_4.e)))), 33971i, ~vec2<u32>(~var_4.c.c, firstTrailingBit(_wgslsmith_div_u32(var_1.c.b.x, u_input.b))));
    var_3 = _wgslsmith_f_op_vec3_f32(var_1.a.wwz * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.zzz), var_1.d.wyw));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-264f * 506f), _wgslsmith_f_op_f32(floor(var_6.c)), var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, var_6.c, var_4.a.x, var_3.x)))))), _wgslsmith_add_u32(var_0.x, ~13033u) & var_4.c.c, var_4.c.c, _wgslsmith_f_op_vec2_f32(var_3.xx + var_4.a.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.a, 1865f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-264f)) + _wgslsmith_f_op_f32(f32(-1f) * -981f)), -303f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, var_1.a.x, var_3.x, var_1.d.x) + var_1.d)))));
}

