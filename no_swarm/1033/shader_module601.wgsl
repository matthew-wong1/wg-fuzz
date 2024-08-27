struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(267f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -631f, any(vec3<bool>(true, false, true)))) + 433f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-513f, 817f, true))))) * _wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2703f)), false))), !any(vec4<bool>(true, true, true, true)), ~(~abs(~vec4<u32>(u_input.a, 0u, 1u, u_input.a))), all(vec3<bool>(true, true, true)), select(max(countOneBits(max(vec2<u32>(8080u, 109766u), vec2<u32>(u_input.b, 1u))), ~min(vec2<u32>(u_input.a, u_input.b), vec2<u32>(70840u, u_input.a))), abs(vec2<u32>(57530u, u_input.b) << (vec2<u32>(10694u, u_input.a) % vec2<u32>(32u))) >> (select(vec2<u32>(27663u, u_input.a), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.b, 0u), all(vec2<bool>(false, true))) % vec2<u32>(32u)), vec2<bool>(select(true, true, select(false, true, false)), false)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a));
    var var_2 = (~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.c.x, var_1.e.x, 4294967295u), var_1.c), ~var_1.c) ^ firstLeadingBit(15318u)) | _wgslsmith_div_u32(0u, reverseBits(~(var_1.c.x | 0u)));
    let var_3 = -2147483647i;
    return _wgslsmith_add_vec4_u32(var_1.c, ~var_1.c);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<i32>(-countOneBits(-abs(15093i)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 25756i), reverseBits(vec2<i32>(1i, 1i))), 1i << (arg_0 % 32u));
    let var_1 = -176f;
    var var_2 = Struct_1(-2152f, false, func_3(), (false && ((var_0.x > 5967i) & true)) | (var_1 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))), ~abs(max(vec2<u32>(4174u, 55334u), vec2<u32>(0u, arg_0)) ^ vec2<u32>(u_input.b, u_input.a)));
    var var_3 = var_0 | -var_0;
    let var_4 = ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -1i, 0i, -24405i), vec4<i32>(-1i, var_3.x, 9861i, var_0.x)) | vec4<i32>(var_3.x, -24455i, select(1i, var_3.x, var_2.b), 51312i)) >> (select(abs(var_2.c), var_2.c, true) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(floor(var_2.a)), true, vec4<u32>(abs(arg_0), 9979u, 64623u, ~(~u_input.a)), !var_2.d, vec2<u32>(4294967295u << (_wgslsmith_div_u32(1634u, u_input.a) % 32u), max(_wgslsmith_add_u32(arg_0, arg_0), ~(~u_input.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec3<u32>(arg_0.e.x, abs(6050u), _wgslsmith_mod_u32(min(0u, var_0.e.x) << (17469u % 32u), 0u));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_3.d, arg_3.a, arg_2.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, arg_1.x, 785f, -957f))), arg_0.a >= -453f))))));
    let var_3 = func_2(~_wgslsmith_mod_u32(~reverseBits(1u), arg_0.e.x));
    var var_4 = arg_0.e.x;
    return -570f;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1587f)) * _wgslsmith_f_op_f32(func_4(func_2(27442u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(952f, 260f), vec2<f32>(-1000f, -1681f))), Struct_2(345f, vec4<i32>(0i, 13658i, 24870i, -1i), vec4<bool>(true, true, false, false), -309f), Struct_2(-1295f, vec4<i32>(1i, 12745i, -1i, -10723i), vec4<bool>(false, true, true, true), 802f)))), _wgslsmith_f_op_f32(func_4(func_2(u_input.a), vec2<f32>(_wgslsmith_f_op_f32(round(1193f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(-1000f, vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, false, false, false), -241f), Struct_2(_wgslsmith_f_op_f32(-680f * -151f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-12643i, 0i, 35762i, 43683i), vec4<i32>(25515i, -1i, -1i, 27623i), vec4<i32>(-2147483647i, -1i, -52916i, -24020i)), vec4<bool>(false, true, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1594f)))))), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(firstTrailingBit(1i)), 1i, 1i, _wgslsmith_mod_i32(3558i, -1i)), vec4<i32>(1i, ~countOneBits(40186i), 1i >> (~u_input.b % 32u), -abs(1i))), vec4<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !(!(10135u >= u_input.b)), false), -1129f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.a))))) - 1175f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.d)))), var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 390f)) * var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f + 1657f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f - var_0.d)))));
    let var_2 = func_2(0u);
    var var_3 = var_0;
    var var_4 = _wgslsmith_mod_vec4_u32(var_2.c, var_2.c) ^ abs(~(vec4<u32>(1u, u_input.a, 3383u, u_input.a) | vec4<u32>(69867u, 9109u, u_input.a, 0u)) << (reverseBits(vec4<u32>(u_input.b, 116881u, var_2.e.x, u_input.a)) % vec4<u32>(32u)));
    return _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, min(_wgslsmith_sub_i32(var_3.b.x, var_3.b.x), -25041i)), ~_wgslsmith_mult_i32(-1i & var_3.b.x, 17184i)), ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = -2147483647i;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, max(-_wgslsmith_sub_i32(2147483647i, 8549i), ~_wgslsmith_clamp_i32(-24465i, 1i, 39193i))), 2147483647i);
    let var_1 = ~_wgslsmith_div_vec2_u32(~((vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(26210u, 0u) % vec2<u32>(32u))) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(51203u, 21843u), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(u_input.a, 14702u) % vec2<u32>(32u))));
    var var_2 = Struct_2(1208f, firstLeadingBit(~vec4<i32>(1i, reverseBits(21175i), ~3934i, -2147483647i)), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -333f) >= _wgslsmith_f_op_f32(trunc(797f)), false), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(677f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1420f))))), _wgslsmith_f_op_f32(1149f + _wgslsmith_f_op_f32(abs(-1000f)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1722f)), ~abs(vec4<i32>(var_2.b.x, select(var_2.b.x, -2892i, true), select(var_2.b.x, var_2.b.x, var_2.c.x), var_2.b.x)), vec4<bool>(func_2(~u_input.b).d, true, true, false), _wgslsmith_f_op_f32(func_4(Struct_1(-294f, _wgslsmith_f_op_f32(round(var_2.a)) == _wgslsmith_f_op_f32(exp2(var_2.d)), ~abs(vec4<u32>(var_1.x, 52589u, 4294967295u, var_1.x)), var_2.c.x, vec2<u32>(988u, 38676u)), vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-100f, var_2.a)), 1172f), Struct_2(var_2.a, _wgslsmith_clamp_vec4_i32(~var_2.b, vec4<i32>(var_2.b.x, -7690i, -1i, var_2.b.x), ~vec4<i32>(var_2.b.x, var_2.b.x, -18639i, var_2.b.x)), vec4<bool>(!var_2.c.x, false, func_2(0u).d, var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -373f)), Struct_2(var_2.d, vec4<i32>(var_2.b.x, -var_2.b.x, var_2.b.x, var_2.b.x), !(!var_2.c), var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer((~vec4<u32>(0u, 0u, u_input.b, u_input.b) | _wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a, 1u, u_input.b, 7377u), vec4<u32>(32967u, 4294967295u, 10652u, 10988u)), vec4<u32>(69104u, 0u, var_1.x, 36030u) >> (vec4<u32>(2223u, u_input.b, 0u, var_1.x) % vec4<u32>(32u)), min(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(33126u, var_1.x, 5875u, 0u)))) << ((~(~vec4<u32>(1u, u_input.b, 13225u, 1u)) | abs(firstLeadingBit(vec4<u32>(u_input.b, u_input.a, u_input.b, var_1.x)))) % vec4<u32>(32u)), (func_2(~4294967295u).c.x | ~var_1.x) >> (1u % 32u));
}

