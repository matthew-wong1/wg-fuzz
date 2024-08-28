struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec2<u32> {
    var var_0 = vec3<bool>(arg_1, all(!select(!vec3<bool>(false, true, arg_2.a), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, true))), any(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, arg_1, false), vec4<bool>(true, false, true, arg_1)), !vec4<bool>(false, arg_1, false, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, arg_2.a), false))));
    var_0 = select(select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, arg_2.a, false)), vec3<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1, var_0.x), false)), true), var_0.x), vec3<bool>(false, !arg_2.a, !(!any(vec3<bool>(false, arg_2.a, true)))), !(!any(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), true))));
    let var_1 = -7045i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f + -1889f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f - 590f)))));
    return (firstLeadingBit(~(~vec2<u32>(4294967295u, 63033u))) << (~select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, arg_3), vec2<u32>(u_input.b, u_input.b)), min(vec2<u32>(arg_3, 63959u), vec2<u32>(47434u, arg_3)), vec2<bool>(true, var_0.x)) % vec2<u32>(32u))) << (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, 8391u)) | abs(arg_3), firstLeadingBit(_wgslsmith_mult_u32(3641u, 97080u))) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = firstTrailingBit(~func_3((vec3<i32>(u_input.a, -4181i, -18253i) | vec3<i32>(u_input.a, -23626i, 2147483647i)) ^ vec3<i32>(u_input.a, u_input.a, -2311i), false, Struct_2(any(vec4<bool>(true, true, true, false))), 0u));
    let var_1 = vec4<u32>(abs(2533u), 34149u, _wgslsmith_dot_vec2_u32(~vec2<u32>(select(4294967295u, var_0.x, true), 41531u), ~vec2<u32>(1u, var_0.x) ^ ((vec2<u32>(72715u, u_input.b) ^ vec2<u32>(0u, u_input.b)) & ~vec2<u32>(4294967295u, var_0.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b, 4294967295u), 74704u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(18054u, var_0.x)) << (vec2<u32>(var_0.x, 19367u) % vec2<u32>(32u))));
    var_0 = vec2<u32>(u_input.b, var_0.x);
    var_0 = ~(var_1.yy ^ var_1.xy);
    var var_2 = Struct_1(u_input.a, ~select(12960i, u_input.a, true || (var_1.x <= u_input.b)), all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, all(vec2<bool>(true, false))), var_0.x != _wgslsmith_div_u32(1u, 10073u))), countOneBits(var_0.x));
    return Struct_2(any(!select(vec2<bool>(var_2.c, false), !vec2<bool>(true, var_2.c), vec2<bool>(false, var_2.c))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_1, arg_3.a, all(select(vec4<bool>(arg_2, arg_0.a, false, false), !vec4<bool>(arg_2, arg_3.c, arg_3.c, arg_3.c), select(vec4<bool>(true, false, false, false), vec4<bool>(true, arg_2, arg_2, false), false))) && false, 46609u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1434f)), -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -135f))), _wgslsmith_f_op_f32(min(-625f, 453f)))));
    var var_2 = 2147483647i;
    let var_3 = vec3<bool>(!(!arg_2), true, !select(all(!vec4<bool>(false, false, arg_3.c, arg_0.a)), true, arg_0.a));
    var var_4 = ~_wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(52954u, arg_3.d, 28809u))), _wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(0u, arg_3.d, 44724u)), vec3<u32>(arg_3.d, 1u, _wgslsmith_sub_u32(var_0.d, var_0.d))));
    return Struct_1(u_input.a, firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, ~1i)) | max(select(~u_input.a, var_0.b, !arg_0.a), ~arg_1), any(!select(vec3<bool>(true, var_0.c, false), vec3<bool>(arg_0.a, false, false), true)), var_4.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_4(Struct_2(select(arg_2.x != arg_2.x, arg_3.c, arg_1.a)), max(arg_3.a, -1i), true, func_4(func_2(), 1i, func_4(func_2(), reverseBits(-1i), ~0u >= _wgslsmith_sub_u32(arg_2.x, u_input.b), func_4(arg_1, max(9992i, arg_3.a), arg_1.a, Struct_1(-8534i, 2147483647i, false, 1u))).c, Struct_1(_wgslsmith_mult_i32(-1284i, max(arg_0.x, u_input.a)), -2147483647i, !arg_1.a, ~(~arg_3.d))));
    var var_1 = arg_2.x;
    return func_4(Struct_2(arg_1.a), arg_3.b, arg_1.a, func_4(Struct_2(func_2().a), var_0.a, any(select(select(vec4<bool>(var_0.c, arg_3.c, var_0.c, var_0.c), vec4<bool>(true, arg_3.c, true, true), true), !vec4<bool>(arg_3.c, arg_1.a, true, var_0.c), var_0.c && arg_1.a)), func_4(Struct_2(func_2().a), _wgslsmith_div_i32(arg_3.a, 63468i), true, func_4(arg_1, 37539i >> (u_input.b % 32u), arg_3.c, func_4(Struct_2(arg_1.a), var_0.b, arg_1.a, Struct_1(-51599i, -32517i, false, u_input.b))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<u32>(arg_1.x, 0u, ~((1u << (arg_1.x % 32u)) << (1u % 32u)));
    var_0 = ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b, 6345u, 0u) >> (vec3<u32>(arg_1.x, u_input.b, var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x, 1u, u_input.b), arg_0.c & true) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(39508u, var_0.x, arg_0.d)), 1u, reverseBits(1u)), vec3<u32>(~u_input.b, arg_0.d, ~1u));
    var var_1 = -_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a << (arg_0.d % 32u), 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, arg_0.b) & vec2<i32>(38089i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(arg_0.a, u_input.a)), -vec2<i32>(arg_0.b, u_input.a))), _wgslsmith_sub_vec2_i32(~vec2<i32>(8540i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(arg_0.b, 42114i)) >> (var_0.yx % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, _wgslsmith_sub_i32(arg_0.a, u_input.a))));
    var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(select(abs(15115u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 50148u), vec2<u32>(u_input.b, u_input.b)), arg_0.c), reverseBits(arg_1.x), ~min(var_0.x, 2687u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_1.x, 0u), ~vec3<u32>(47227u, arg_1.x, u_input.b)));
    var_0 = ~vec3<u32>(arg_0.d, u_input.b, ~var_0.x);
    return func_4(Struct_2(~(arg_0.d >> (arg_1.x % 32u)) >= 1u), _wgslsmith_mult_i32(i32(-1i) * -1i, ~abs(-12859i)), !arg_0.c, func_4(Struct_2(select(false, false, true)), _wgslsmith_clamp_i32(-(~u_input.a), u_input.a, 23943i), false, arg_0));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = func_5(vec2<i32>(arg_0.a, -2147483647i), Struct_2(1f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(325f)) - -692f)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_0.d, 54484u, arg_0.d), ~vec4<u32>(u_input.b, u_input.b, 1u, arg_0.d)), _wgslsmith_add_u32(~41311u, arg_0.d), u_input.b, _wgslsmith_div_u32(arg_0.d, 16329u)), ~vec4<u32>(arg_0.d, _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_mult_u32(u_input.b, 0u), select(1u, arg_0.d, true))), arg_0);
    return StorageBuffer(abs(0u));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(463f)), _wgslsmith_f_op_f32(step(-495f, 409f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(184f, -2673f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1301f, -1055f)))))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))));
    return func_7(func_6(func_5(_wgslsmith_add_vec2_i32(-vec2<i32>(-38712i, u_input.a), vec2<i32>(u_input.a, 1972i)), Struct_2(any(vec4<bool>(false, false, false, true))), vec4<u32>(1u, u_input.b, 35102u, ~50957u), func_4(func_2(), u_input.a, true, Struct_1(-8685i, 2147483647i, true, u_input.b))), ~vec2<u32>(~48036u, u_input.b)), vec2<bool>(!(all(vec2<bool>(false, true)) | all(vec2<bool>(true, true))), (abs(u_input.b) & (8565u ^ u_input.b)) <= 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(541f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1371f, _wgslsmith_div_f32(105f, 896f)) - 2678f)))));
    let var_1 = -abs(vec2<i32>(1i, -u_input.a)) | ~vec2<i32>(-_wgslsmith_mod_i32(u_input.a, 16147i), -1i);
    let var_2 = vec4<bool>(!(false == ((u_input.b > u_input.b) != true)), false, false, false);
    var var_3 = select(vec3<u32>(u_input.b, 102398u, _wgslsmith_add_u32(~0u, min(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b)))), select(reverseBits(~(~vec3<u32>(u_input.b, u_input.b, u_input.b))), max(vec3<u32>(0u, 4294967295u, 37035u), ~(~vec3<u32>(39752u, 19247u, 0u))), !(!(!var_2.wwy))), var_2.xzy);
    var_3 = firstLeadingBit(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 0u, 17676u) | (vec3<u32>(0u, u_input.b, 37972u) >> (vec3<u32>(var_3.x, 109841u, 4294967295u) % vec3<u32>(32u)))), vec3<u32>(var_3.x, 1u, u_input.b)));
    var_3 = ~vec3<u32>(4294967295u, select(0u, 23489u, all(vec2<bool>(var_2.x, false))) & ~(u_input.b >> (15448u % 32u)), 111612u);
    var var_4 = var_2.x;
    var_4 = !all(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x))) && true;
    var_4 = var_2.x;
    let x = u_input.a;
    s_output = func_1();
}

