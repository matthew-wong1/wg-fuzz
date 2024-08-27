struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_2(true, Struct_1(abs(vec4<u32>(arg_0, 62554u, 1u, arg_0) & vec4<u32>(416u, 21833u, u_input.a.x, 4294967295u)) << ((vec4<u32>(u_input.a.x, 1190u, 4294967295u, 19434u) & reverseBits(vec4<u32>(1u, 7025u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(26990i, -1i, 2147483647i), vec3<i32>(4491i, -2147483647i, 2147483647i), vec3<i32>(0i, 1i, -584i))), 29550u, ~min(24886u, firstLeadingBit(u_input.a.x))), vec3<bool>(u_input.a.x < countOneBits(58511u), false, !any(vec4<bool>(true, true, true, true))), Struct_1(~(countOneBits(vec4<u32>(4294967295u, 18185u, 7278u, 18407u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 14393u, 38597u, 38064u), vec4<u32>(4294967295u, 4294967295u, arg_0, 4294967295u)) % vec4<u32>(32u))), vec3<i32>(43280i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 25204i, -1i, 9562i), vec4<i32>(2147483647i, 2147483647i, 0i, 0i))), firstLeadingBit(1i)), 42066u ^ _wgslsmith_div_u32(1u, select(u_input.a.x, 6399u, true)), _wgslsmith_sub_u32(0u, ~u_input.a.x)), ~firstTrailingBit(u_input.a));
    var_0 = Struct_2(true, var_0.b, var_0.c, var_0.d, var_0.e);
    let var_1 = 0u;
    var_0 = Struct_2(true, Struct_1(~(~var_0.d.a), var_0.b.b, 75848u, 4294967295u), !(!(!select(vec3<bool>(false, var_0.a, var_0.c.x), var_0.c, true))), var_0.b, vec3<u32>(abs(~_wgslsmith_clamp_u32(arg_0, arg_0, u_input.b)), u_input.b, abs(~min(32178u, var_0.b.d))));
    var_0 = Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(var_0.a, false, true))), var_0.c.x)), Struct_1(countOneBits(select(select(vec4<u32>(var_0.e.x, 6267u, u_input.a.x, 56298u), var_0.d.a, false), var_0.b.a, true)), select(vec3<i32>(0i, _wgslsmith_div_i32(0i, var_0.d.b.x), 0i), vec3<i32>(var_0.b.b.x, max(var_0.d.b.x, var_0.d.b.x), reverseBits(-50515i)), var_0.c), u_input.b, 0u ^ u_input.b), !select(var_0.c, var_0.c, true), var_0.d, var_0.d.a.yxz ^ ~(~select(vec3<u32>(u_input.b, arg_0, 4294967295u), var_0.d.a.wxx, var_0.c.x)));
    return var_0.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(28896i, 33016i), _wgslsmith_add_i32(10204i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2461i, 35978i, 2147483647i, 2147483647i), vec4<i32>(1i, 46996i, -1i, 0i)) & 54288i), _wgslsmith_add_i32(1i, -reverseBits(1i)), 6162i, -2147483647i) ^ select(_wgslsmith_sub_vec4_i32(firstLeadingBit(abs(vec4<i32>(2147483647i, -11212i, 47885i, 3254i))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -21430i, -7373i, 9525i), vec4<i32>(24502i, -1i, 1i, -1i)) >> (~vec4<u32>(u_input.a.x, u_input.b, 100896u, 32056u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, 1i, 1i), -1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -69836i), vec2<i32>(-11503i, 448i))), 2147483647i, -46263i), select(vec4<bool>(true && var_0.x, true, true, true), !select(vec4<bool>(var_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, var_0.x, true, arg_1), vec4<bool>(arg_1, arg_1, arg_0.x, false)), select(vec4<bool>(true, arg_1, var_0.x, arg_1), select(vec4<bool>(var_0.x, arg_1, arg_1, arg_1), vec4<bool>(var_0.x, true, arg_1, false), arg_0.x), var_0.x && var_0.x)));
    var var_2 = abs(_wgslsmith_add_u32(select(u_input.a.x, u_input.a.x, false), _wgslsmith_mod_u32(34103u, u_input.a.x ^ 4294967295u)));
    let var_3 = Struct_3(vec2<i32>(var_1.x, 23875i));
    var_2 = 42169u;
    return arg_0;
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(min(vec2<i32>(-1406i, ~2147483647i) << (~arg_0.a.yw % vec2<u32>(32u)), vec2<i32>(max(_wgslsmith_mod_i32(2147483647i, 1i), 2147483647i), ~abs(24753i))));
    var var_1 = 1u;
    let var_2 = vec4<i32>(abs(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x >> (arg_0.a.x % 32u))), reverseBits(var_0.a.x), _wgslsmith_mod_i32(~(2147483647i << (u_input.a.x % 32u)), var_0.a.x), -9414i) >> (vec4<u32>(u_input.b, 0u, ~14203u, ~_wgslsmith_div_u32(min(u_input.a.x, 54021u), u_input.a.x)) % vec4<u32>(32u));
    var var_3 = arg_0.b;
    var var_4 = func_4(vec3<bool>(func_3(~min(0u, arg_0.a.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)) <= arg_0.b), true, vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-945f - arg_0.b), -919f, false)))), -1325f));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(~func_2(arg_0).a, arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -615f);
    var var_2 = _wgslsmith_f_op_f32(sign(arg_0.b));
    var_2 = -386f;
    var var_3 = Struct_1(vec4<u32>(1u, _wgslsmith_div_u32(44395u, abs(_wgslsmith_mod_u32(u_input.a.x, 1u))), var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, _wgslsmith_div_u32(u_input.b, ~0u))), vec3<i32>(-1i) * -(vec3<i32>(-1i) * -vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), arg_0.a.x, ~(~(~u_input.b)) << (_wgslsmith_clamp_u32(~1u, 0u, ~56736u) % 32u));
    return Struct_2(any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), var_1 > var_0.b), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)))), Struct_1((arg_0.a & vec4<u32>(var_3.c, 1u, 0u, 11713u)) & var_3.a, min(max(-vec3<i32>(-1i, 1i, var_3.b.x), -vec3<i32>(0i, -29378i, 0i)), var_3.b), _wgslsmith_sub_u32(var_3.c, ~_wgslsmith_add_u32(arg_0.a.x, 60972u)), ~_wgslsmith_mult_u32(var_3.d ^ arg_0.a.x, reverseBits(58881u))), vec3<bool>(true, true, true), Struct_1(vec4<u32>(min(var_3.c << (15894u % 32u), 1u), u_input.a.x, firstLeadingBit(var_3.c ^ 54737u), arg_0.a.x), vec3<i32>(~_wgslsmith_mod_i32(-10959i, arg_1.a.x), _wgslsmith_clamp_i32(~var_3.b.x, _wgslsmith_sub_i32(-61733i, 64372i), ~var_3.b.x), -225i), 17439u, _wgslsmith_dot_vec3_u32(vec3<u32>(~64531u, 0u ^ arg_0.a.x, 1u), vec3<u32>(var_0.a.x, ~var_3.c, 10802u))), ~max(vec3<u32>(~42483u, min(0u, var_3.c), _wgslsmith_div_u32(arg_0.a.x, u_input.a.x)), (vec3<u32>(arg_0.a.x, u_input.b, 1u) | arg_0.a.wxz) >> (vec3<u32>(var_0.a.x, 2940u, u_input.a.x) % vec3<u32>(32u))));
}

fn func_1() -> u32 {
    let var_0 = func_5(func_2(Struct_4(vec4<u32>(10716u, 1u, firstLeadingBit(18331u), 48713u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f), 533f))), Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, ~(-11982i)), vec2<i32>(1i, _wgslsmith_sub_i32(1i, -24748i)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) - _wgslsmith_f_op_f32(trunc(752f))), _wgslsmith_f_op_f32(f32(-1f) * -145f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(103f, 337f)), -1375f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -309f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(344f * -1489f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yxy) + var_1.yyw));
    var var_3 = Struct_4(var_0.d.a, _wgslsmith_f_op_f32(f32(-1f) * -1236f));
    var var_4 = _wgslsmith_div_u32(abs(1u), u_input.a.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(~u_input.a.x), 18907u, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, max(u_input.b, 20757u), ~38322u, ~0u), ~(~vec4<u32>(27550u, 1u, 1u, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1698u, u_input.a.x) | ~vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(u_input.a.x >> (4294967295u % 32u), 1u, _wgslsmith_div_u32(0u, 49838u), 0u))) >> (vec4<u32>(_wgslsmith_clamp_u32(~(~u_input.b), _wgslsmith_clamp_u32(func_1(), _wgslsmith_add_u32(61421u, 0u), u_input.a.x), 52035u), _wgslsmith_sub_u32(select(u_input.a.x, u_input.b, false), func_2(Struct_4(vec4<u32>(34345u, u_input.a.x, u_input.a.x, u_input.b), 190f)).a.x) & _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, u_input.b, u_input.a.x), 4294967295u << (0u % 32u)), ~4294967295u, u_input.b) % vec4<u32>(32u));
    var var_1 = -530f;
    var_0 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.x, ~69216u, var_0.x, 0u)), vec4<u32>(20151u, ~(~reverseBits(u_input.b)), ~_wgslsmith_div_u32(u_input.b, var_0.x << (1u % 32u)), u_input.a.x));
    let var_2 = Struct_3(vec2<i32>(firstTrailingBit(func_5(func_2(Struct_4(vec4<u32>(u_input.b, u_input.a.x, var_0.x, 0u), -1345f)), Struct_3(vec2<i32>(0i, -1i))).b.b.x), -1039i << (~u_input.b % 32u)));
    var_0 = ~(~(~vec4<u32>(var_0.x, 4294967295u, var_0.x, 3487u)) ^ ~select(vec4<u32>(4294967295u, u_input.a.x, 1u, 57935u), vec4<u32>(4294967295u, 1u, var_0.x, var_0.x), vec4<bool>(false, true, true, false))) & ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 5091u, var_0.x, 17318u), ~vec4<u32>(0u, var_0.x, var_0.x, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a.x, 44514u), vec4<u32>(var_0.x, var_0.x, u_input.a.x, 1u)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -458f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, -2147483647i, var_2.a.x, var_2.a.x), vec4<i32>(6228i, var_2.a.x, 14239i, var_2.a.x)), -2147483647i), var_2.a.x), ~_wgslsmith_dot_vec3_i32(func_5(Struct_4(vec4<u32>(1u, 77107u, 1u, 42676u), 205f), var_2).d.b, -(~vec3<i32>(2147483647i, 35542i, var_2.a.x))), _wgslsmith_f_op_f32(sign(-565f)));
}

