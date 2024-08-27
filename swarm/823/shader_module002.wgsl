struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_add_vec2_i32(u_input.a.yx, firstLeadingBit(abs(vec2<i32>(-1i, 1i))));
    let var_1 = max(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 1u, arg_3.x), vec3<u32>(4294967295u, 1u, u_input.b) & vec3<u32>(arg_3.x, 12104u, arg_3.x)), min(~vec3<u32>(0u, 4294967295u, 18587u), vec3<u32>(arg_3.x, 1u, u_input.e) | vec3<u32>(arg_3.x, 37684u, 37343u))), firstTrailingBit(vec3<u32>(~arg_3.x, ~u_input.b, ~arg_3.x))), vec3<u32>(_wgslsmith_mod_u32(0u, ~0u), arg_3.x, arg_3.x) & ~firstTrailingBit(~vec3<u32>(arg_3.x, 4294967295u, u_input.e)));
    let var_2 = ~(~(u_input.e << (u_input.e % 32u)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, -232f, 328f) * vec3<f32>(arg_1, arg_1, arg_1)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(-214f, -1483f, arg_1))))));
    var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1351f, arg_1, arg_1) + var_3.a.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-826f, 303f, 1000f) * vec3<f32>(-1327f, 1693f, -153f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.a.x, var_3.a.a.x, -991f), var_3.a.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.a.a.x, -288f, 1296f))), vec3<bool>(true, false, arg_0.x))))));
    return abs(_wgslsmith_sub_i32(~1i, var_0.x));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(vec3<bool>(var_0.x, var_0.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1966f), var_0.yww, vec2<u32>(u_input.c, u_input.e)), _wgslsmith_sub_i32(arg_0.x, 0i) | u_input.a.x, -u_input.a.x ^ u_input.a.x, 35776i | -arg_0.x), _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -25758i, 98989i, arg_0.x), vec4<i32>(0i, arg_0.x, 1i, -46685i)), vec4<i32>(u_input.a.x, 2147483647i, 9895i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 42580i, 0i), vec3<i32>(u_input.a.x, -54251i, u_input.a.x))))), ~select(~(~vec2<u32>(33980u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(47883u, u_input.b), vec2<u32>(1u, u_input.d)) & ~vec2<u32>(4294967295u, u_input.e), vec2<bool>(true, false)));
    var_0 = !select(vec4<bool>(var_0.x, false, all(select(vec2<bool>(var_0.x, true), var_0.zx, var_0.yz)), (-3584i | arg_0.x) == 24071i), vec4<bool>(var_0.x, true, var_0.x, var_0.x), !any(vec2<bool>(var_0.x, true)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, 686f, 215f))))));
    var_0 = select(!vec4<bool>(true, any(vec4<bool>(true, var_0.x, false, var_0.x)) & (var_0.x & false), false, any(vec3<bool>(var_0.x, false, true)) != (var_1.b.x == 0u)), select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), vec4<bool>(u_input.c < 1u, !var_0.x, false, var_0.x && false)), !vec4<bool>(u_input.d == var_1.b.x, true, var_2.a.a.x != 1515f, var_0.x), true), all(!vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true, var_0.x && true)));
    return ~(-38674i);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_2(u_input.a.xz | countOneBits(~u_input.a.yx));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.yxx));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, -(arg_2.a.x << (arg_1.x % 32u)), arg_2.a.x, _wgslsmith_dot_vec3_i32(abs(u_input.a), ~u_input.a)), ~arg_2.a), arg_1.zy);
    var var_1 = 25338u;
    let var_2 = arg_0;
    let var_3 = vec3<u32>(select(_wgslsmith_sub_u32(~reverseBits(arg_2.b.x), min(~4294967295u, 11969u)), ~_wgslsmith_sub_u32(select(4294967295u, var_0.b.x, true), u_input.e), (_wgslsmith_f_op_f32(-633f + var_2.a.a.x) != _wgslsmith_div_f32(var_2.a.a.x, arg_0.a.a.x)) != true), ~countOneBits(u_input.c), abs(~arg_2.b.x));
    var_1 = ~((~var_3.x | arg_1.x) >> (21890u % 32u));
    return var_2;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(true != (~u_input.b <= _wgslsmith_mult_u32(u_input.d << (9562u % 32u), u_input.b)), -503f, ~(~(~(~vec3<u32>(u_input.c, 1u, 4294967295u)))), 10184u << (arg_0.b.x % 32u));
    let var_1 = -2136f;
    let var_2 = _wgslsmith_f_op_f32(abs(func_4(func_4(func_4(func_4(Struct_2(arg_2), vec4<u32>(4294967295u, u_input.d, 29794u, u_input.b), arg_0, vec3<bool>(var_0.a, true, false)), vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, arg_0.b.x), Struct_5(arg_0.a, vec2<u32>(arg_0.b.x, 1u)), vec3<bool>(true, var_0.a, true)), ~(vec4<u32>(arg_0.b.x, arg_0.b.x, var_0.c.x, 19190u) & vec4<u32>(53572u, u_input.d, var_0.d, 29831u)), arg_0, select(!vec3<bool>(false, true, var_0.a), select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), select(vec3<bool>(var_0.a, true, false), vec3<bool>(false, true, var_0.a), true))), ~vec4<u32>(~u_input.c, u_input.e, arg_0.b.x ^ 44330u, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c)), arg_0, vec3<bool>(var_0.a, false, u_input.a.x >= firstLeadingBit(-7019i))).a.a.x));
    let var_3 = firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i & ~func_2(vec2<i32>(u_input.a.x, arg_0.a.x)), ~_wgslsmith_clamp_i32(-1i, 2147483647i, 58835i) >> (arg_0.b.x % 32u), ~_wgslsmith_div_i32(~7965i, arg_0.a.x)));
    let var_4 = var_0.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -567f;
    let var_1 = func_5(Struct_5((_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(40694i, u_input.a.x, u_input.a.x, 34534i)) >> ((vec4<u32>(38193u, u_input.e, 15841u, u_input.d) ^ vec4<u32>(u_input.c, u_input.e, u_input.d, 4294967295u)) % vec4<u32>(32u))) << (~firstTrailingBit(vec4<u32>(u_input.e, 0u, 0u, u_input.d)) % vec4<u32>(32u)), vec2<u32>(76844u, 23970u)), func_4(Struct_2(func_1(_wgslsmith_f_op_f32(select(-692f, 1125f, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1258f, -229f, 961f, -1334f), vec4<f32>(-400f, 663f, 232f, 1000f), vec4<bool>(true, true, false, true))), ~vec3<u32>(4294967295u, u_input.b, u_input.c))), vec4<u32>(min(u_input.b, 1u), abs(u_input.b), firstLeadingBit(0u), u_input.b << (u_input.d % 32u)) | ~vec4<u32>(4294967295u, u_input.d, 12018u, 91184u), Struct_5(-vec4<i32>(u_input.a.x, 1i, 59443i, u_input.a.x) << ((vec4<u32>(u_input.c, 0u, u_input.d, u_input.b) | vec4<u32>(u_input.e, u_input.b, u_input.d, 1u)) % vec4<u32>(32u)), abs(vec2<u32>(12523u, u_input.d)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(21495u, u_input.b), vec2<u32>(29586u, 4294967295u)) % vec2<u32>(32u))), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1339f, -1319f)))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1069f, -989f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-948f + -398f), _wgslsmith_div_f32(2666f, -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(854f, -382f, -1000f, -2582f) * vec4<f32>(-467f, 304f, 141f, -715f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-472f, -1922f, 613f, 990f), vec4<f32>(1038f, -946f, -1150f, -221f))), true)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d, u_input.e, 10542u)), ~vec3<u32>(u_input.b, 0u, u_input.c)), ~(vec3<u32>(0u, 61041u, 14087u) | vec3<u32>(u_input.c, u_input.d, 0u)))));
    let var_2 = !any(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x);
    var var_3 = Struct_5(_wgslsmith_add_vec4_i32(~select(vec4<i32>(-1370i, 37450i, 52003i, 2147483647i) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(29695i, 1i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, var_2, true)), -select(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), any(vec4<bool>(var_2, false, var_2, var_2)))), ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, 72772u), vec2<u32>(4294967295u, u_input.e), vec2<bool>(false, true)), ~vec2<u32>(u_input.b, u_input.c)) & (countOneBits(reverseBits(vec2<u32>(26972u, 4294967295u))) & ~firstLeadingBit(vec2<u32>(1u, u_input.c))));
    let var_4 = Struct_4(Struct_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.a.x))))), vec3<u32>(~(~u_input.c), var_3.b.x, firstTrailingBit(max(var_3.b.x, 0u))), max(0u, 1u)), Struct_2(func_5(Struct_5(var_3.a ^ vec4<i32>(u_input.a.x, var_3.a.x, -1i, var_3.a.x), vec2<u32>(u_input.c, 2780u) & vec2<u32>(4294967295u, u_input.c)), func_4(Struct_2(Struct_1(var_1.a)), vec4<u32>(u_input.d, u_input.b, var_3.b.x, 59063u), Struct_5(vec4<i32>(var_3.a.x, -18715i, u_input.a.x, u_input.a.x), var_3.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, var_2), vec3<bool>(false, var_2, false))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a)))), vec3<f32>(_wgslsmith_div_f32(968f, _wgslsmith_f_op_f32(var_1.a.x + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -124f), -205f), 144f, ~(~vec2<u32>(0u, 439u)) & (var_3.b ^ var_3.b));
    let var_5 = _wgslsmith_mult_vec3_u32(~var_4.a.c, abs(var_4.a.c));
    var var_6 = Struct_4(var_4.a, Struct_2(var_1), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.b.a.a.x))), var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(select(267f, _wgslsmith_div_f32(var_1.a.x, 169f), any(vec4<bool>(true, var_4.a.a, var_2, var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + -1121f), firstLeadingBit(_wgslsmith_clamp_vec2_u32(countOneBits(var_3.b) >> (~vec2<u32>(51311u, 17763u) % vec2<u32>(32u)), select(abs(vec2<u32>(var_5.x, var_5.x)), vec2<u32>(var_4.a.c.x, u_input.c), true), firstTrailingBit(vec2<u32>(31489u, 4294967295u)) & ~vec2<u32>(var_5.x, 0u))));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d * var_1.a.x) * _wgslsmith_f_op_f32(round(419f))) + -443f), -208f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_6.e.x), var_3.a, vec2<f32>(_wgslsmith_f_op_f32(sign(1124f)), -397f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(1000f * -596f), var_6.c.x)), var_3.a.zy);
}

