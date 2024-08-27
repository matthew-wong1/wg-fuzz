struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(u_input.b.x), vec4<i32>(firstLeadingBit(-2147483647i), arg_0.a, 79274i, (_wgslsmith_dot_vec4_i32(vec4<i32>(29558i, arg_0.a, u_input.c.x, -54056i), vec4<i32>(20763i, 1i, -30703i, u_input.c.x)) << (arg_0.b.x % 32u)) ^ -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(311f + 488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f + 1252f)), -847f, -387f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(var_0.c.xzy));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_1.x, 268f) * vec3<f32>(var_0.c.x, 218f, var_0.c.x))))))));
    let var_3 = ~20653u;
    var var_4 = ~(arg_0.b.xzy >> (u_input.e.xzx % vec3<u32>(32u)));
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: bool) -> vec4<u32> {
    let var_0 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -25652i, arg_0.a), select(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 1i), vec4<i32>(u_input.c.x, u_input.b.x, arg_0.a, -20429i), vec4<bool>(arg_3, arg_3, true, false))), reverseBits(~vec4<i32>(-45171i, -39909i, -2147483647i, u_input.b.x))), _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(0u, 113410u, 4294967295u, 15347u)) & vec4<u32>(~0u, ~u_input.e.x, min(u_input.d.x, u_input.a.x), _wgslsmith_add_u32(u_input.e.x, 3779u)), select(vec3<bool>(any(vec4<bool>(arg_2, true, arg_2, arg_3)), any(vec4<bool>(false, false, false, true)), false || arg_2), select(select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, arg_3, arg_3), vec3<bool>(arg_2, true, arg_2)), !vec3<bool>(arg_2, arg_3, true), vec3<bool>(true, true, true)), 430f < arg_1))).c.x;
    var var_1 = _wgslsmith_f_op_f32(min(730f, _wgslsmith_f_op_f32(max(381f, _wgslsmith_f_op_f32(step(-1410f, _wgslsmith_f_op_f32(max(1045f, -1268f))))))));
    let var_2 = func_2(Struct_1(_wgslsmith_mod_i32(reverseBits(1i), select(0i, arg_0.a, true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), u_input.a.x | u_input.d.x, 113274u), abs(~u_input.e)), vec3<bool>(arg_3, (u_input.c.x & 29710i) == ~(-40520i), true))).b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1019f - _wgslsmith_f_op_f32(sign(arg_1))))), var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973f * var_0) - arg_1) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(106f)))))));
    var_1 = -357f;
    return vec4<u32>(~firstTrailingBit(u_input.e.x), min(~16137u, 44458u), 4294967295u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(max(u_input.e.ywz, vec3<u32>(1u, 0u, 9847u)), ~vec3<u32>(u_input.a.x, 56857u, u_input.d.x)), ~vec3<u32>(~u_input.a.x, 1u, u_input.a.x)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, u_input.b.x, u_input.b.x))), ~u_input.c.xy & vec2<i32>(u_input.b.x, -12517i)), u_input.e, select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), true), false)));
    var_0 = func_2(Struct_1(~var_0.b.x, u_input.e, select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(var_0.c.x == var_0.c.x, all(vec3<bool>(false, false, true)), false), any(vec3<bool>(true, true, true)))));
    var var_1 = -41567i;
    let var_2 = var_0.b.zx;
    var var_3 = Struct_2(max(i32(-1i) * -93936i, -61i));
    return func_2(Struct_1(~_wgslsmith_add_i32(var_0.b.x ^ var_0.b.x, 1i), min(func_3(func_2(Struct_1(var_3.a, u_input.e, vec3<bool>(true, true, false))).a, func_2(Struct_1(var_3.a, vec4<u32>(65030u, 4294967295u, u_input.e.x, u_input.d.x), vec3<bool>(true, false, true))).c.x, false, true), vec4<u32>(reverseBits(u_input.a.x), ~41627u, u_input.e.x, ~16551u)), select(vec3<bool>(true, -2160f != arg_0, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), all(vec4<bool>(true, true, true, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = -vec4<i32>(-reverseBits(u_input.c.x), -select(26839i, 1i, true), -7625i, -(~arg_0.a));
    let var_1 = Struct_1(var_0.x, firstTrailingBit(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.d.x, 30405u, 4294967295u)), ~u_input.e, func_3(Struct_2(u_input.c.x), arg_2.x, false, true))) & abs(u_input.e), !select(vec3<bool>(false, any(vec3<bool>(false, false, false)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, false)), vec3<bool>(true, true, all(vec3<bool>(false, false, false)))));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_3(Struct_2(firstTrailingBit(arg_3.b.x)), arg_3.c.x, arg_3.a.a <= -var_1.a, !(false | var_1.c.x)).ywz, u_input.e.yyy << (var_1.b.yww % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(func_3(func_2(var_1).a, _wgslsmith_f_op_f32(f32(-1f) * -261f), var_1.c.x, !var_1.c.x).x, var_1.b.x), ~abs(u_input.a.x), 0u));
    var var_3 = Struct_1(u_input.b.x, u_input.e, select(vec3<bool>(var_1.c.x, true, -281f == _wgslsmith_f_op_f32(-arg_2.x)), select(!var_1.c, select(var_1.c, select(vec3<bool>(false, false, var_1.c.x), var_1.c, var_1.c.x), var_0.x <= 39518i), vec3<bool>(true, !var_1.c.x, var_1.c.x & var_1.c.x)), !var_1.c));
    var_3 = Struct_1(-11349i, var_1.b, var_1.c);
    return func_2(var_1).a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = any(vec3<bool>(true, true, true)) && !(!any(vec2<bool>(true, true)));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1945f, -528f, var_0)) - _wgslsmith_f_op_f32(abs(-874f))) - 710f) * 313f)).a;
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-971f - -225f)))) + 1f)).a;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = ~_wgslsmith_add_vec3_i32(func_2(Struct_1(i32(-1i) * -15438i, _wgslsmith_div_vec4_u32(vec4<u32>(130789u, 42909u, u_input.a.x, u_input.e.x), vec4<u32>(u_input.d.x, 1u, u_input.a.x, 29424u)), vec3<bool>(false, true, false))).b.yyw, (arg_1.zww << ((u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, 80751u)) % vec3<u32>(32u))) & ~vec3<i32>(arg_0.b.x, 4193i, -9563i));
    var_0 = vec3<i32>(arg_0.a.a, arg_0.a.a, var_0.x) | vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, u_input.b.x) & func_5(arg_0.a, -6305i, arg_0.a).a, func_4(Struct_2(arg_1.x), arg_0.a.a, arg_0.c.xwy, Struct_3(arg_0.a, arg_0.b, arg_0.c)).a << (u_input.a.x % 32u)), i32(-1i) * -_wgslsmith_clamp_i32(16730i, var_0.x, 1i), -48754i);
    var var_1 = 0i;
    var_0 = min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -39343i, -39491i), vec3<i32>(1i & arg_0.a.a, var_0.x, 0i)), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, -71558i), vec3<i32>(arg_0.a.a, u_input.c.x, -1i)), arg_1.wyx << (vec3<u32>(0u, 4294967295u, 723u) % vec3<u32>(32u))) & firstLeadingBit(arg_0.b.wwy & vec3<i32>(-2147483647i, arg_0.a.a, arg_0.b.x))));
    var var_2 = _wgslsmith_mod_i32(-8147i, ~(_wgslsmith_clamp_i32(min(arg_0.a.a, u_input.b.x), var_0.x, i32(-1i) * -57573i) ^ arg_0.a.a));
    return Struct_3(arg_0.a, vec4<i32>(var_0.x, func_5(func_5(arg_0.a, -arg_0.b.x, arg_0.a), _wgslsmith_clamp_i32(arg_0.b.x, ~u_input.b.x, arg_0.a.a), arg_0.a).a, func_2(Struct_1(~arg_0.a.a, ~vec4<u32>(51481u, 19732u, u_input.e.x, u_input.e.x), vec3<bool>(true, true, true))).b.x, _wgslsmith_clamp_i32(var_0.x, countOneBits(arg_1.x), arg_0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) * _wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.c.x)))), arg_0.c.x, -530f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.c);
    let var_1 = func_6(Struct_3(func_5(func_4(Struct_2(23130i), -2147483647i, vec3<f32>(700f, -888f, 265f), func_1(679f)), 2147483647i, func_1(-374f).a), -_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(15024i, u_input.c.x, u_input.c.x, -40306i)), vec4<i32>(u_input.c.x, 14433i, var_0.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f) + -467f), 1f, _wgslsmith_f_op_f32(round(-568f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-23963i, u_input.c.x), vec2<i32>(var_0.x, -14203i)), -1i, _wgslsmith_sub_i32(64649i, u_input.c.x), 2147483647i << (u_input.e.x % 32u))), vec4<i32>(~(-2147483647i), u_input.b.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, var_0.x, var_0.x), vec4<i32>(2147483647i, 2147483647i, var_0.x, -19196i))) ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, var_0.x, -2147483647i, 2147483647i)), -vec4<i32>(var_0.x, -2147483647i, u_input.b.x, 10171i))));
    let var_2 = vec3<bool>(!(!((var_0.x >> (1u % 32u)) > var_0.x)), !((_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)) || (any(vec2<bool>(true, true)) | all(vec3<bool>(false, true, true)))), any(vec3<bool>(true, true, true)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(var_1.c.x, 360f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2596f + var_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.c.x))))))), var_1.c.x, 807f);
    var_3 = _wgslsmith_f_op_vec4_f32(step(func_6(var_1, -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, 5228i, u_input.b.x), vec4<i32>(-28499i, 0i, 1i, -2147483647i)), vec4<i32>(var_1.b.x, 1i, u_input.b.x, var_0.x))).c, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.xyx, max(vec3<i32>(func_6(func_6(Struct_3(var_1.a, vec4<i32>(var_1.a.a, var_1.a.a, -6037i, var_0.x), var_1.c), var_1.b), _wgslsmith_mult_vec4_i32(var_1.b, var_1.b)).a.a, abs(u_input.c.x), var_1.b.x ^ func_5(var_1.a, 1i, Struct_2(u_input.c.x)).a), vec3<i32>(~var_0.x, 3924i, _wgslsmith_mult_i32(abs(43216i), 8853i))), _wgslsmith_clamp_i32(u_input.b.x << (1u % 32u), -(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.zy) >> (u_input.a.x % 32u)), func_1(_wgslsmith_f_op_f32(step(var_3.x, -1000f))).a.a), -vec3<i32>(var_1.b.x, 25876i, var_0.x));
}

