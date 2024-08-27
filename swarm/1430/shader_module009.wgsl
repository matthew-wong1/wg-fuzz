struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = max(~_wgslsmith_div_u32(0u, countOneBits(abs(u_input.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(firstLeadingBit(vec4<u32>(45160u, u_input.b, 27430u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 31033u, 38133u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 21747u), vec4<u32>(7017u, 0u, 38158u, u_input.b))), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b >> (u_input.b % 32u), ~4344u))));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, ~u_input.b), u_input.b & u_input.b);
    var_0 = ~_wgslsmith_sub_u32(50380u, select(min(abs(10741u), max(u_input.b, 0u)), u_input.b, true));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), true)), !(!all(vec4<bool>(false, false, true, false)))), vec3<bool>(u_input.b > _wgslsmith_mod_u32(u_input.b, min(8381u, 0u)), !any(vec4<bool>(true, true, true, true)), true));
    var_1 = vec3<bool>(all(!(!select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x))), ((abs(arg_3.x) << (~3993u % 32u)) <= 15023i) | !(var_1.x != var_1.x), !var_1.x);
    return _wgslsmith_div_i32(arg_3.x, _wgslsmith_dot_vec3_i32(arg_2, min(arg_3, arg_2)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec4<i32>(-2781i, u_input.a | u_input.a, _wgslsmith_mult_i32(-1i, 0i >> ((1u << (u_input.b % 32u)) % 32u)), ~(-59861i) ^ func_3(-vec2<i32>(u_input.a, 2147483647i), -1740i, vec3<i32>(59353i, 15604i, 10483i), ~vec3<i32>(-39013i, u_input.a, u_input.a)));
    var_0 = vec4<i32>(~23416i, u_input.a, -(~2147483647i ^ var_0.x) | _wgslsmith_clamp_i32(-1i, 0i, 56539i), u_input.a);
    var var_1 = ~(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 7503i), -vec4<i32>(u_input.a, 24659i, var_0.x, u_input.a)));
    var_1 = firstTrailingBit(-vec4<i32>(2147483647i, abs(u_input.a), ~61856i, func_3(var_0.zx, select(u_input.a, u_input.a, false), firstTrailingBit(var_0.zwx), vec3<i32>(var_0.x, -7450i, var_1.x))));
    let var_2 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), 0i < var_1.x), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(true, true, false)));
    return Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) - _wgslsmith_f_op_f32(round(-554f))) * _wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(-1841f + -739f))), 697f), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), ~select(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_2, true))), _wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b), vec2<bool>(var_2, var_2)) | vec2<u32>(13950u, u_input.b), vec2<u32>(u_input.b ^ u_input.b, ~u_input.b)), vec2<u32>(~52109u, u_input.b)), u_input.b & abs(~reverseBits(4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return -arg_1.a >> (firstLeadingBit(arg_2.d) % 32u);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_1);
    let var_1 = vec4<bool>(!(all(vec4<bool>(false, true, false, false)) && (arg_1.a.b >= -360f)), true, !any(vec2<bool>(true, false)) & !(countOneBits(0u) <= _wgslsmith_sub_u32(arg_1.a.d, 0u)), all(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, true)));
    let var_2 = Struct_3(Struct_2(func_2(), firstLeadingBit(arg_1.b), func_2()));
    return func_2();
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_2(func_5(vec2<i32>(func_4(func_2(), Struct_1(u_input.a, arg_0.x, vec2<u32>(15517u, 0u), u_input.b), func_2()), u_input.a), Struct_2(Struct_1(u_input.a, 1000f, ~vec2<u32>(u_input.b, 51226u), min(1u, u_input.b)), _wgslsmith_div_vec2_i32(-vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), Struct_1(u_input.a, -365f, ~vec2<u32>(19700u, 54728u), ~u_input.b))), abs(max(vec2<i32>(-30812i, u_input.a << (19968u % 32u)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(0i, u_input.a)))), func_2());
    let var_1 = var_0.b;
    let var_2 = vec4<i32>(u_input.a, 2147483647i, -1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x >> (_wgslsmith_clamp_u32(0u, 0u, u_input.b) % 32u), abs(u_input.a)), -1i));
    var var_3 = Struct_3(Struct_2(var_0.a, -vec2<i32>(var_0.c.a, abs(33513i)), func_2()));
    var_3 = Struct_3(Struct_2(func_2(), vec2<i32>(reverseBits(min(var_3.a.c.a, -1i)), 1i), var_0.c));
    return abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_3.a.a.c, var_0.a.c), ~vec2<u32>(4294967295u, 20334u), var_0.c.c), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.d, u_input.b), var_0.a.c)), ~(var_3.a.c.c.x << (81298u % 32u)) ^ 4294967295u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(225f)), _wgslsmith_f_op_f32(max(1476f, -1525f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-464f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1475f)))) - _wgslsmith_f_op_f32(-1141f - _wgslsmith_f_op_f32(ceil(-657f))))));
    var var_1 = 1i << (select(11488u ^ func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1075f), vec2<f32>(var_0.x, var_0.x))), min(_wgslsmith_div_u32(u_input.b, 28863u) & func_5(vec2<i32>(-2147483647i, u_input.a), Struct_2(Struct_1(u_input.a, -322f, vec2<u32>(u_input.b, 82323u), u_input.b), vec2<i32>(-1i, 0i), Struct_1(u_input.a, -1267f, vec2<u32>(19607u, 25504u), u_input.b))).d, 0u), func_5(vec2<i32>(18883i, u_input.a), Struct_2(Struct_1(-23130i, var_0.x, vec2<u32>(4294967295u, u_input.b), u_input.b), vec2<i32>(1i, -4901i), Struct_1(u_input.a, var_0.x, vec2<u32>(0u, 33001u), 309u))).c.x == u_input.b) % 32u);
    var var_2 = !select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), all(vec3<bool>(true, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true), true);
    var_1 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(max(var_0.x, -1013f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-337f, -1000f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-1884f + _wgslsmith_f_op_f32(var_3 - var_0.x)), func_2().b)) * vec2<f32>(1296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3)))));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, -1229f))), u_input.b, ~firstTrailingBit(u_input.b)), ~vec4<u32>(u_input.b, u_input.b << (65180u % 32u), _wgslsmith_mod_u32(u_input.b, 43853u), ~0u)), ~(~(~4294967295u)));
    let var_5 = Struct_2(func_2(), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, countOneBits(u_input.a)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2966i, u_input.a), vec2<i32>(37061i, 4919i))) | vec2<i32>(5014i << (0u % 32u), func_2().a)), func_5(~vec2<i32>(~52387i, -1i), Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a, u_input.a), var_0.x, reverseBits(vec2<u32>(var_4, u_input.b)), _wgslsmith_sub_u32(37597u, 33282u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 7005i) << (vec2<u32>(var_4, var_4) % vec2<u32>(32u)), vec2<i32>(-2147483647i, u_input.a)), Struct_1(_wgslsmith_div_i32(-2147483647i, -17382i), _wgslsmith_f_op_f32(var_0.x - 529f), func_2().c, 1u))));
    let var_6 = func_5(_wgslsmith_div_vec2_i32(vec2<i32>(14597i << (var_5.a.d % 32u), -u_input.a >> (var_4 % 32u)), var_5.b), Struct_2(func_5(~var_5.b >> (vec2<u32>(1u, 64457u) % vec2<u32>(32u)), var_5), vec2<i32>(-1i) * -countOneBits(vec2<i32>(var_5.b.x, -19922i)), var_5.c));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<i32>(~u_input.a, -u_input.a, _wgslsmith_mod_i32(2147483647i, -2147483647i)), ~vec3<i32>(-23749i, u_input.a, var_6.a) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_6.a), vec3<i32>(2147483647i, 53983i, u_input.a)), !(!var_2.yww)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_6.b, var_5.c.b, var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.b, -1858f, var_3) * vec3<f32>(var_3, var_6.b, 1201f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-803f, var_5.c.b, var_6.b), vec3<f32>(var_5.c.b, -1166f, 209f), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.b, 209f, var_6.b)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_6.b, var_3, var_5.a.b), vec3<f32>(-257f, var_0.x, var_5.a.b), vec3<bool>(false, false, var_2.x))))), !var_2.zyy)));
}

