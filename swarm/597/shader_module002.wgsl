struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, min(23987u, countOneBits(4294967295u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.d, arg_1, 0u, arg_1)), vec4<u32>(arg_1, arg_1, 4294967295u, arg_0.e.x)), arg_0.e.x) & ~(select(vec4<u32>(0u, arg_0.e.x, arg_1, arg_0.e.x), vec4<u32>(arg_0.d, 0u, 4294967295u, arg_0.d), arg_0.a.x) | vec4<u32>(2214u, arg_0.d, arg_1, arg_0.e.x)), ~(~vec4<u32>(44763u, 1u, arg_0.d, 4294967295u)));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, 1i, var_1.c.x), var_2.c.wxy), abs(0i), _wgslsmith_add_i32(arg_0.c.x, var_1.c.x) ^ var_1.c.x), _wgslsmith_div_vec3_i32(reverseBits(firstLeadingBit(arg_0.c.ywx)), var_1.c.zxx)));
    var var_4 = Struct_1(!var_2.a, abs(var_0.xxx), vec4<i32>(-select(-40876i, 44144i, var_2.a.x), reverseBits(u_input.c.x), arg_0.c.x, countOneBits(max(var_2.c.x, u_input.a))) ^ vec4<i32>(countOneBits(_wgslsmith_mod_i32(var_2.c.x, 10929i)), 24916i ^ (var_3.x ^ 3786i), -_wgslsmith_div_i32(1i, var_1.c.x), _wgslsmith_mod_i32(var_1.c.x, abs(arg_0.c.x))), ~(~30027u), select(~var_1.e, _wgslsmith_div_vec2_u32(firstLeadingBit(var_2.b.yx), vec2<u32>(4294967295u, var_0.x)) << (vec2<u32>(var_1.d, var_2.d >> (arg_0.e.x % 32u)) % vec2<u32>(32u)), all(vec3<bool>(var_3.x >= -44026i, var_1.c.x < 0i, var_2.a.x))));
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = select(select(select(vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, false, true, func_3(Struct_1(vec3<bool>(false, true, true), vec3<u32>(48573u, 67598u, 96399u), vec4<i32>(22923i, 75844i, u_input.c.x, u_input.c.x), 4294967295u, vec2<u32>(27791u, 52644u)), 0u)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, true, -64816i < firstLeadingBit(u_input.d)), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), true)), vec4<bool>(false, true, true, true), vec4<bool>(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), true, true, all(vec4<bool>(true, true, true, true))));
    global0 = 1i | ~u_input.b.x;
    var var_1 = vec4<i32>(min(~_wgslsmith_sub_i32(u_input.b.x, u_input.c.x), u_input.d), u_input.c.x, u_input.c.x, abs(18083i));
    var var_2 = Struct_1(var_0.zww, vec3<u32>(~(~_wgslsmith_div_u32(1u, 80672u)), ~(~0u) | max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26829u, 4131u, 2773u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), ~4429u), 14282u ^ _wgslsmith_dot_vec2_u32(max(vec2<u32>(80586u, 32289u), vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 0u))), -max(max(-vec4<i32>(var_1.x, u_input.a, u_input.d, -29391i), vec4<i32>(-1i, u_input.a, -2147483647i, 6778i)), abs(abs(vec4<i32>(66832i, -2147483647i, 6110i, u_input.a)))), 1u, vec2<u32>(1u, 1u));
    var_0 = select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1705f))) != 254f, false, !func_3(Struct_1(vec3<bool>(false, var_2.a.x, false), vec3<u32>(var_2.d, var_2.b.x, 0u), var_2.c, 5080u, vec2<u32>(var_2.e.x, var_2.d)), ~53660u), var_0.x), (_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -2147483647i, u_input.a, 50659i), vec4<i32>(u_input.c.x, 20338i, 32808i, 1i)), 0i) == ~2147483647i) && false);
    return Struct_1(var_2.a, select(~var_2.b, var_2.b | ~_wgslsmith_sub_vec3_u32(var_2.b, var_2.b), !select(var_0.xyz, select(var_2.a, vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_2.a.x, false, var_0.x))), ~(select(var_2.c, var_2.c, var_2.a.x) << (select(reverseBits(vec4<u32>(var_2.e.x, 1u, 103343u, var_2.e.x)), ~vec4<u32>(var_2.b.x, 0u, 1u, 1u), select(vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(var_2.a.x, false, false, var_0.x), true)) % vec4<u32>(32u))), abs(firstLeadingBit(~var_2.e.x << (~0u % 32u))), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(var_2.b.x, var_2.b.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(~71561u, _wgslsmith_add_u32(8120u, var_2.e.x)), select(~vec2<u32>(var_2.e.x, var_2.b.x), _wgslsmith_add_vec2_u32(var_2.b.yx, vec2<u32>(1u, 70613u)), all(var_2.a.zy)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = -7898i;
    global0 = firstLeadingBit(2147483647i);
    var var_0 = _wgslsmith_clamp_u32(7053u, 81361u, arg_2.d);
    var var_1 = Struct_1(!select(vec3<bool>(false, true, arg_0.a.x != arg_1.a.x), arg_1.a, func_2().a), (vec3<u32>(4294967295u, ~arg_0.d, _wgslsmith_dot_vec2_u32(arg_2.b.yx, arg_2.b.yx)) ^ vec3<u32>(17709u, _wgslsmith_dot_vec2_u32(vec2<u32>(3876u, 0u), vec2<u32>(69632u, arg_1.d)), ~4294967295u)) & (~_wgslsmith_sub_vec3_u32(arg_1.b, vec3<u32>(0u, arg_2.b.x, 42302u)) & ~max(vec3<u32>(53024u, arg_1.e.x, arg_1.d), vec3<u32>(arg_1.e.x, 4294967295u, arg_1.b.x))), arg_1.c, ~(~21872u), ~func_2().b.xz);
    var var_2 = max(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.e.x, 36925u, 1u), vec4<u32>(0u, 4904u, 61373u, 10395u))), select(vec4<u32>(arg_1.b.x, arg_2.d, 4294967295u, 4294967295u) << (~vec4<u32>(16830u, var_1.d, 52170u, arg_1.e.x) % vec4<u32>(32u)), ~(~vec4<u32>(arg_2.d, 1u, var_1.e.x, 6899u)), true)) & vec4<u32>((select(arg_0.b.x, 4294967295u, var_1.a.x) >> (~arg_0.b.x % 32u)) | arg_2.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(max(var_1.e.x, var_1.d), 0u, _wgslsmith_sub_u32(4294967295u, arg_1.d)), 0u), arg_1.e.x, reverseBits(arg_1.b.x));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-314f)))))), func_3(arg_0, 41505u)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), ~(~(~vec3<u32>(1u, 1u, 1u))), vec4<i32>(0i, (u_input.a << (1u % 32u)) & -2147483647i, firstLeadingBit(u_input.b.x), 24545i), countOneBits(~4294967295u), ~(~(~vec2<u32>(1u, 57997u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 363f)))) * arg_0.x), _wgslsmith_f_op_f32(func_4(func_2(), func_2(), var_0)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-970f + 994f), _wgslsmith_f_op_f32(func_4(Struct_1(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_2), !vec3<bool>(false, arg_2, arg_1)), ~firstTrailingBit(vec3<u32>(36353u, 0u, 1u)), ~vec4<i32>(arg_0, 0i, 9065i, u_input.d), 1u, vec2<u32>(firstTrailingBit(41394u), 47195u)), Struct_1(select(!vec3<bool>(true, arg_1, arg_2), select(vec3<bool>(false, arg_2, false), vec3<bool>(false, true, true), arg_1), !arg_1), vec3<u32>(1u, 1u, 1u), ~vec4<i32>(u_input.b.x, u_input.c.x, -1i, -1i), 4294967295u, vec2<u32>(1u, 1u)), func_2())));
    let var_1 = Struct_1(!vec3<bool>(arg_1, true, !arg_2 & true), vec3<u32>(1u, 1u, 1u), select(func_2().c, countOneBits(_wgslsmith_sub_vec4_i32(func_2().c, select(vec4<i32>(-1i, arg_0, 15259i, arg_0), vec4<i32>(u_input.d, arg_0, arg_0, arg_0), false))), !func_3(Struct_1(vec3<bool>(arg_1, arg_1, false), vec3<u32>(1u, 40751u, 4294967295u), vec4<i32>(-1i, u_input.b.x, -7154i, u_input.c.x), 55766u, vec2<u32>(92357u, 26307u)), _wgslsmith_mult_u32(1u, 68350u))), ~(~(~(~32008u))), abs(_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, 20862u), vec2<u32>(1u, 27797u), vec2<bool>(true, true)), vec2<u32>(24107u, 1u)) | _wgslsmith_add_vec2_u32(vec2<u32>(29203u, 1u), vec2<u32>(70684u, 0u))));
    let var_2 = Struct_1(select(var_1.a, vec3<bool>(all(vec4<bool>(var_1.a.x, arg_2, true, arg_2)) | arg_2, !(2147483647i >= arg_0), !(!arg_2)), var_0.x > _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(var_0.x)))), var_1.b, ~vec4<i32>(arg_0, ~(var_1.c.x ^ 36715i), func_2().c.x, -27971i >> (var_1.d % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.b.xy, select(vec2<u32>(1u, var_1.d), vec2<u32>(31524u, 62873u), select(vec2<bool>(true, false), var_1.a.zx, arg_1))), vec2<u32>(~firstLeadingBit(25512u), var_1.b.x ^ (1u | var_1.d))), vec2<u32>(var_1.e.x, var_1.e.x));
    global0 = ~(-1i);
    var var_3 = vec2<u32>(1u, 0u);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_5(countOneBits(1i), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1190f, -131f, -697f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-1705f, 1000f)), true);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 1588f, -413f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -358f))) + 1258f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-365f * 1000f), _wgslsmith_f_op_f32(1166f + -411f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-898f, -1125f)) - -952f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1657f, -843f)) * 386f)));
    let var_1 = u_input.c | func_2().c.xyz;
    var var_2 = vec3<i32>(-12324i, -3818i, u_input.b.x);
    var var_3 = Struct_1(select(select(vec3<bool>(true, true, true), func_2().a, vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 1u)), ~(firstLeadingBit(vec3<u32>(48074u, 17243u, 4294967295u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), vec4<i32>(1i >> (1u % 32u), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-1i, -33598i)), u_input.c.zy), var_1.x, func_5(firstLeadingBit(var_1.x), all(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(abs(var_0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 10872u), func_2().e) | 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~47418u, ~0u, firstTrailingBit(12767u)), 66827u), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(16038u, 74689u), vec2<u32>(0u, 4009u), vec2<u32>(29959u, 48435u)) ^ vec2<u32>(0u, 0u), vec2<u32>(5696u >> (0u % 32u), ~47909u), true), ~(~(~vec2<u32>(1u, 74274u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_3.b.yx, abs(select(vec2<u32>(38366u, var_3.b.x), var_3.e, var_3.a.yx) >> (var_3.e % vec2<u32>(32u)))), ~(var_3.b.yz << (~_wgslsmith_sub_vec2_u32(vec2<u32>(60534u, var_3.d), var_3.e) % vec2<u32>(32u))), u_input.b);
}

