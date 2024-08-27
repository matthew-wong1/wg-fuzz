struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(275f, -409f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(-937f, 100f)))))));
    return -(~(-_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_3.b, arg_3.b), ~(-2147483647i))));
}

fn func_3() -> vec4<i32> {
    var var_0 = false;
    var_0 = true;
    var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), true)));
    var var_1 = Struct_5(!select(true, true, true) & (u_input.a == _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(11647u, 1u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.a, 22943u, 4294967295u)))), Struct_3(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, -1073f, -160f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 421f, 1652f))), countOneBits(-vec2<i32>(8336i, -20014i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1087f, 610f, 161f))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(3176u, 52762u), vec2<u32>(4294967295u, 15460u))))), Struct_1(select(vec4<i32>(countOneBits(-2147483647i), 2147483647i, i32(-1i) * -11390i, 17623i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1219i), vec3<i32>(-2147483647i, -1i, 1i)), ~(-57493i), -2147483647i, min(-36448i, -39556i)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-563f, 495f, -1011f) + vec3<f32>(-295f, 800f, -876f)), vec3<f32>(1242f, -1457f, 439f), select(true, false, false))))), ~countOneBits(vec2<i32>(1248i, 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(round(102f)), -1005f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(629f * 1929f), -167f))), abs(abs(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(15422u, 59880u) % vec2<u32>(32u))))));
    let var_2 = var_1.b.a;
    return _wgslsmith_mult_vec4_i32(min(var_1.b.a.a, firstLeadingBit(firstTrailingBit(vec4<i32>(-18155i, var_1.c.c.x, -2147483647i, 1i) << (vec4<u32>(25893u, var_2.e.x, var_2.e.x, var_2.e.x) % vec4<u32>(32u))))), select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, var_2.c.x, 2147483647i) | vec4<i32>(0i, 2147483647i, 0i, 3595i), _wgslsmith_mod_vec4_i32(var_1.c.a, var_2.a)) | countOneBits(~var_1.c.a), var_2.a, var_1.a));
}

fn func_1() -> vec3<u32> {
    var var_0 = ~vec4<i32>(abs(firstTrailingBit(~2147483647i)), 26591i, _wgslsmith_mult_i32(abs(func_2(1000f, vec4<u32>(u_input.a, u_input.a, 20593u, 87973u), u_input.a, Struct_2(true, -31936i))), -2147483647i), i32(-1i) * -abs(-8541i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(769f)) - _wgslsmith_f_op_f32(f32(-1f) * -413f))), 727f) != _wgslsmith_f_op_f32(sign(-120f));
    var_0 = ~(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_0.x, -57349i, -7516i, 1i), vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i)), func_3()));
    var var_2 = vec4<u32>(max(u_input.a, ~(~u_input.a)) & ~firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 107666u)), 1u, abs(1u), ~(~(~_wgslsmith_div_u32(69678u, u_input.a))));
    var_0 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(abs(var_0.x), func_3().x, -51045i, func_2(833f, ~vec4<u32>(28133u, 4294967295u, 0u, var_2.x), abs(24589u), Struct_2(true, 32641i))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_0.x, 39289i, 0i, var_0.x)), vec4<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), -1i, var_0.x, ~var_0.x))));
    return vec3<u32>(u_input.a | abs(_wgslsmith_add_u32(select(56773u, 4367u, false), 68138u)), 0u, 1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.x, min(-2147483647i | (firstTrailingBit(1i) << (4294967295u % 32u)), abs(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(8638i, 0i, 0i, -1i), vec4<i32>(-1i, 24433i, 23740i, -35504i))))));
    let var_1 = Struct_3(Struct_1(vec4<i32>(~min(var_0.b, -25640i), ~var_0.b, var_0.b | (i32(-1i) * -2147483647i), var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(521f, 458f, -170f) + vec3<f32>(-1103f, 1155f, -1814f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, -3595f, -886f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, 908f, -598f) + vec3<f32>(-584f, 899f, -1759f)))), abs(-(vec2<i32>(var_0.b, var_0.b) | vec2<i32>(var_0.b, 9527i))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(136f, -2021f, -215f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, 1447f, -190f))))), select(select(vec2<u32>(u_input.a, arg_2.x), ~vec2<u32>(4294967295u, 0u), vec2<bool>(var_0.a, false)), vec2<u32>(0u, 0u) & (vec2<u32>(4294967295u, 17667u) | vec2<u32>(u_input.a, arg_1.x)), var_0.a)));
    var var_2 = Struct_5((~33431u ^ _wgslsmith_add_u32(~1u, firstTrailingBit(39414u))) < arg_1.x, Struct_3(var_1.a), Struct_1(~vec4<i32>(var_0.b, 2147483647i, var_0.b >> (arg_1.x % 32u), ~var_1.a.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1585f, -238f, var_1.a.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.d.x, var_1.a.d.x, -509f)), arg_1.x < 24820u)) - vec3<f32>(_wgslsmith_f_op_f32(var_1.a.d.x * var_1.a.d.x), _wgslsmith_f_op_f32(abs(var_1.a.d.x)), _wgslsmith_f_op_f32(step(-775f, 286f)))), vec2<i32>(-func_3().x, var_0.b), var_1.a.b, ~vec2<u32>(_wgslsmith_sub_u32(50089u, arg_1.x), u_input.a)));
    var_2 = Struct_5(any(arg_0), Struct_3(Struct_1(abs(var_2.b.a.a), _wgslsmith_f_op_vec3_f32(var_1.a.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a.d.x, var_2.c.d.x, -429f) * vec3<f32>(464f, 323f, -1000f))), select(vec2<i32>(var_1.a.a.x, var_1.a.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.c.x, var_2.b.a.c.x), vec2<i32>(var_2.b.a.c.x, var_2.c.c.x)), select(vec2<bool>(false, arg_0.x), vec2<bool>(true, false), vec2<bool>(arg_0.x, true))), var_1.a.b, var_2.b.a.e)), Struct_1(~var_2.b.a.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.b.x, var_1.a.b.x, 868f)), vec3<f32>(_wgslsmith_f_op_f32(-716f - -886f), 527f, _wgslsmith_f_op_f32(var_2.b.a.d.x - -707f)))), firstTrailingBit(vec2<i32>(i32(-1i) * -7219i, -var_0.b)), vec3<f32>(-173f, -968f, _wgslsmith_f_op_f32(var_1.a.d.x - -1412f)), vec2<u32>(func_1().x, var_1.a.e.x)));
    var var_3 = ~(-(abs(vec2<i32>(var_2.b.a.c.x, var_1.a.c.x)) ^ ~abs(var_2.c.c)));
    return select(select(!(!select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, false, var_2.a), var_2.a)), vec3<bool>(false, !(12092i >= var_1.a.c.x), _wgslsmith_f_op_f32(select(900f, var_1.a.d.x, var_0.a)) != -1354f), vec3<bool>(arg_0.x, all(vec4<bool>(arg_0.x, true, var_2.a, true)), var_0.a | true)), vec3<bool>(all(vec2<bool>(var_0.a && false, true)), true, false), true | select(true, true, all(select(vec4<bool>(false, arg_0.x, true, var_0.a), vec4<bool>(var_0.a, var_0.a, arg_0.x, var_2.a), false))));
}

fn func_5(arg_0: vec3<bool>) -> f32 {
    let var_0 = firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, u_input.a, 0u)))) | _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(u_input.a, 27082u, u_input.a)), func_1()), ~(vec3<u32>(u_input.a, u_input.a, 1u) ^ func_1()), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(4294967295u, u_input.a >> (4294967295u % 32u), _wgslsmith_mod_u32(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_sub_i32(-37188i, -1i);
    var var_2 = -countOneBits(abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, 43441i), vec2<i32>(var_1, 9521i))));
    var_2 = vec2<i32>(-885i, firstLeadingBit(1i));
    var var_3 = Struct_2(~select(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(38060u, 32816u, 8038u, var_0.x), vec4<u32>(28899u, u_input.a, 4294967295u, u_input.a)), arg_0.x) >= (_wgslsmith_div_u32(~1u, 10148u) & _wgslsmith_mod_u32(firstTrailingBit(var_0.x), ~u_input.a)), 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1629f, -726f)) - _wgslsmith_f_op_f32(f32(-1f) * -289f))))) * -2826f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(22710u, abs(0u)), _wgslsmith_sub_u32(2478u >> (reverseBits(firstLeadingBit(4294967295u)) % 32u), u_input.a));
    var var_2 = vec2<f32>(-351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), ~vec4<u32>(var_1, 9438u, 5112u, u_input.a), func_1()))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-547f))), 677f))));
    var var_3 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, select(14665i, 2147483647i, false)), ~vec2<i32>(-9808i << (var_1 % 32u), 5018i), -(~abs(vec2<i32>(1i, 0i))));
    let var_4 = Struct_1(-(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, var_3.x, 30005i, -6713i), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, 2147483647i, var_3.x, -26634i), vec4<i32>(-22749i, -8177i, 0i, -1i))) >> (min(min(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, var_1, 72171u, u_input.a)), ~vec4<u32>(9620u, 0u, 1u, var_1)) % vec4<u32>(32u))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - var_2.x), -675f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-280f - var_2.x), _wgslsmith_f_op_f32(-var_2.x))), (~(-vec2<i32>(-7160i, var_3.x)) & vec2<i32>(_wgslsmith_mod_i32(var_3.x, -10248i), _wgslsmith_div_i32(2147483647i, var_3.x))) ^ -vec2<i32>(select(-28353i, var_3.x, false), -48161i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-611f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, -306f, 2131f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2316f)), _wgslsmith_f_op_f32(-var_2.x), all(vec2<bool>(true, false)))), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -327f))), ~(~vec2<u32>(4294967295u, 20368u) << (_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(var_1, 0u)), ~vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))));
    let var_5 = Struct_3(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(1i, var_3.x, var_5.a.c.x, 0i) | (vec4<i32>(57407i, var_3.x, var_4.c.x, var_4.c.x) << (vec4<u32>(62225u, var_1, var_5.a.e.x, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(67645i, var_5.a.a.x, 57078i, var_4.c.x), var_4.a >> (vec4<u32>(var_5.a.e.x, var_5.a.e.x, 39547u, 4294967295u) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), vec3<u32>(_wgslsmith_sub_u32(u_input.a, ~19453u), var_1, 1u), _wgslsmith_add_i32(var_4.a.x, ~(-_wgslsmith_mult_i32(var_3.x, var_5.a.c.x))));
}

