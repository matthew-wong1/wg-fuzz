struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    let var_0 = ~firstLeadingBit(reverseBits(~vec4<u32>(4294967295u, arg_2.b, 0u, 0u) & firstLeadingBit(vec4<u32>(8073u, 18420u, arg_0.x, arg_2.b))));
    let var_1 = !vec4<bool>(true, arg_1.x, !(_wgslsmith_sub_u32(u_input.c.x, var_0.x) < (var_0.x & 1u)), any(select(vec4<bool>(true, true, arg_2.a.x, arg_1.x), select(vec4<bool>(true, true, arg_1.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), arg_2.a.x), false)));
    var var_2 = Struct_1(vec3<bool>(true, any(select(select(vec3<bool>(var_1.x, arg_2.a.x, true), vec3<bool>(true, true, false), true), arg_2.a, arg_2.a)), true || (var_1.x | select(false, true, var_1.x))), 103727u);
    var_2 = arg_2;
    var var_3 = Struct_1(select(var_2.a, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_2.a), vec3<bool>(true | (0i >= u_input.a.x), true | all(var_1.yxz), all(vec3<bool>(false, true, true)) | arg_2.a.x)), 7819u);
    return ~vec3<i32>(-firstLeadingBit(arg_3), _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, 0i), 0i), ~u_input.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    return ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e >> (var_0.b % 32u), ~31753u, firstLeadingBit(var_0.b)), vec3<u32>(~max(4294967295u, 41136u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(var_0.b, 125463u)), u_input.c), max(27746u, firstTrailingBit(12300u))), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(arg_1.b), ~arg_1.b), ~(u_input.e >> (1u % 32u)), var_0.b));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = select(func_4(vec3<i32>(_wgslsmith_div_i32(-32197i, 604i), arg_2.x, 1i) | _wgslsmith_sub_vec3_i32(func_3(vec3<u32>(arg_1.b, arg_1.b, arg_1.b), vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1, u_input.b), vec3<i32>(arg_2.x, -19618i, 1i)), Struct_1(vec3<bool>(all(arg_1.a.zx), arg_1.a.x, true), ~(~1u))), abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, 32557u), vec3<u32>(76474u, 0u, 4294967295u))), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 164u), 82746u, select(41902u, u_input.c.x, false)))), true);
    var var_1 = arg_1;
    var_1 = Struct_1(vec3<bool>(!any(select(var_1.a, vec3<bool>(var_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(true, var_1.a.x, false))), var_1.a.x, var_1.a.x), ~0u);
    let var_2 = arg_1;
    var_1 = Struct_1(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, var_1.a.x), var_2.a, vec3<bool>(true, false, arg_1.a.x)), var_1.a, !arg_1.a), vec3<bool>(true, true, true), var_2.a), all(var_2.a)), 5286u << (u_input.c.x % 32u));
    return _wgslsmith_f_op_f32(404f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1768f + -770f))) + -188f)));
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = func_4(max(vec3<i32>(12238i << (func_4(vec3<i32>(u_input.a.x, u_input.b, u_input.d), Struct_1(vec3<bool>(false, true, true), u_input.e)).x % 32u), u_input.d, ~(-2147483647i)), ~vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 10943i))), Struct_1(!vec3<bool>(1000f > arg_0, all(vec3<bool>(false, false, false)), true), 15715u)).x;
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.c.x, ~u_input.e), ~min(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(46020u, u_input.e, u_input.c.x), vec3<u32>(1u, 4294967295u, u_input.e)))));
    let var_2 = Struct_1(select(select(vec3<bool>(false, all(vec4<bool>(false, false, false, var_1.a.x)), true), var_1.a, any(!vec2<bool>(var_1.a.x, false))), select(select(!var_1.a, select(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a.x, false, var_1.a.x)), !vec3<bool>(false, var_1.a.x, var_1.a.x), select(var_1.a, var_1.a, false)), false), var_1.b);
    var var_3 = var_2;
    var_3 = Struct_1(!(!(!vec3<bool>(true, var_2.a.x, var_2.a.x))), _wgslsmith_div_u32(var_3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 4294967295u), vec2<u32>(35768u, u_input.c.x)), 49796u), vec4<u32>(31673u, ~33039u, ~23918u, 25780u))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = vec3<f32>(-161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)))) - -1104f), -885f);
    let var_1 = arg_0;
    let var_2 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(~arg_2.b, arg_0, vec4<i32>(-6530i, 2147483647i, _wgslsmith_clamp_i32(0i, 2147483647i, -35275i), ~(-29766i)))))));
    var var_3 = u_input.a;
    var var_4 = 4294967295u;
    return !(!func_5(var_0.x).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(func_1(Struct_1(vec3<bool>(false, true, true), u_input.e), Struct_1(vec3<bool>(true, false, true), u_input.c.x), Struct_1(vec3<bool>(true, true, true), u_input.e)), vec3<bool>(true, true, true), true)), vec3<bool>(func_5(-168f).a.x, !any(vec4<bool>(true, false, false, false)), true), true), abs(_wgslsmith_mult_u32(u_input.e, u_input.e) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.e, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(12166u, 1u, u_input.e, 24693u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u), vec4<u32>(u_input.c.x, 89170u, 1u, u_input.c.x))) % 32u)));
    var var_2 = Struct_1(var_1.a, ~_wgslsmith_mod_u32(0u, select(~var_1.b, abs(var_1.b), false)));
    var var_3 = ~(~vec4<u32>(u_input.c.x, 8870u, var_1.b, var_1.b & var_2.b)) >> (vec4<u32>(var_2.b, ~(~80819u) << (max(1u, _wgslsmith_div_u32(93689u, var_2.b)) % 32u), 56026u, var_1.b) % vec4<u32>(32u));
    var_3 = ~vec4<u32>(1u, 0u, ~select(func_5(-578f).b, var_1.b, true), 18892u);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-293f, 1210f, -1000f, _wgslsmith_f_op_f32(-565f - -600f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-224f, -367f, 1108f, -930f), vec4<f32>(667f, 1787f, -401f, 1000f), false)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, -426f), -226f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1295f, 460f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-598f * 133f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_4.x)));
}

