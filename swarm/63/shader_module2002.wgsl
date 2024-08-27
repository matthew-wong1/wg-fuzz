struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = !(!select(!(!vec4<bool>(false, true, global0.x, true)), vec4<bool>(u_input.a.x < 81791u, !arg_0.x, all(vec4<bool>(true, false, global0.x, arg_0.x)), false), all(vec3<bool>(global0.x, arg_0.x, false)) & global0.x));
    global0 = select(vec4<bool>(((0u == u_input.a.x) == false) | true, true, any(global0.zxw), true), select(vec4<bool>(!any(arg_0), arg_0.x, all(!vec3<bool>(arg_0.x, arg_0.x, global0.x)), -29636i <= _wgslsmith_add_i32(u_input.c.x, u_input.b)), !vec4<bool>(false, true || global0.x, !global0.x, arg_0.x), !vec4<bool>(true, global0.x, true, true)), !(!vec4<bool>(true, !global0.x, !arg_0.x, all(vec3<bool>(false, global0.x, arg_0.x)))));
    let var_0 = -734f;
    global0 = select(vec4<bool>(true, !select(false, false, false), true, all(global0.yzy)), select(!vec4<bool>(true, var_0 <= 193f, true, u_input.c.x > -28187i), vec4<bool>(true, true, global0.x, select(!global0.x, false, global0.x)), vec4<bool>(_wgslsmith_f_op_f32(-var_0) <= var_0, false, true, !arg_0.x)), vec4<bool>(min(~u_input.a.x, ~13635u) < 1u, !select(var_0 == -560f, 1i != u_input.d, true), true, false));
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = global0.wxz;
    global0 = select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(global0.x, true, false, false)), !vec4<bool>(false, select(global0.x, global0.x, true), global0.x, global0.x), func_3(vec2<bool>(!global0.x, true))), vec4<bool>(true, !select(true || global0.x, var_0.x, func_3(vec2<bool>(global0.x, true))), -1820f > _wgslsmith_f_op_f32(floor(-935f)), !(!global0.x) || true), true);
    let var_1 = Struct_2(countOneBits(_wgslsmith_sub_vec2_i32(u_input.c.wy, vec2<i32>(1i, 47950i) ^ max(u_input.c.xz, vec2<i32>(35781i, u_input.b)))), Struct_1(vec2<bool>(true, true == all(global0.zz))), ~select(vec4<u32>(18895u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 3574u), u_input.a.x, ~0u), reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), all(global0.yz)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f) + 1f)) * 285f), 1314f);
    global0 = !vec4<bool>(true, func_3(!(!vec2<bool>(global0.x, true))), _wgslsmith_div_f32(287f, _wgslsmith_f_op_f32(trunc(var_1.d))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-228f + 662f), var_1.e), true);
    let var_2 = select(-reverseBits(_wgslsmith_sub_vec2_i32(var_1.a | var_1.a, firstLeadingBit(vec2<i32>(var_1.a.x, u_input.c.x)))), vec2<i32>(~(-24192i), var_1.a.x), var_0.x);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    let var_0 = select(vec3<bool>(all(func_2().b.a), all(vec4<bool>(false, true & arg_2, 29752u <= u_input.a.x, func_3(vec2<bool>(arg_0.b.a.x, arg_0.b.a.x)))), !(func_2().b.a.x == all(vec2<bool>(arg_0.b.a.x, false)))), vec3<bool>(global0.x, false, arg_2), global0.zwz);
    global0 = select(vec4<bool>(true, !var_0.x, global0.x, (_wgslsmith_sub_u32(arg_0.c.x, u_input.a.x) ^ (u_input.a.x >> (arg_0.c.x % 32u))) != ~4294967295u), !vec4<bool>(!global0.x, !(!var_0.x), arg_2, true | (arg_0.a.x == arg_0.a.x)), vec4<bool>(arg_2, any(var_0), any(select(vec2<bool>(false, true), vec2<bool>(false, arg_0.b.a.x), false)), global0.x));
    let var_1 = Struct_3(1i, Struct_2(-u_input.c.yx, func_2().b, vec4<u32>(arg_0.c.x << (firstTrailingBit(59532u) % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(80873u, u_input.a.x), arg_0.c.x), arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(460f + 1971f), _wgslsmith_f_op_f32(round(-208f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.x)))) + _wgslsmith_f_op_f32(arg_1.x + arg_0.e))), Struct_1(!func_2().b.a));
    var var_2 = -countOneBits(u_input.c);
    var_2 = ~vec4<i32>(_wgslsmith_clamp_i32(52354i, countOneBits(func_2().a.x), func_2().a.x), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-17947i, 26746i), 11312i), ~reverseBits(12995i)), ~firstLeadingBit(u_input.d), min(abs(var_2.x), ~max(-4324i, var_2.x)));
    return var_2.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = 661f;
    var var_1 = abs(-vec3<i32>(2147483647i, i32(-1i) * -arg_1, -firstLeadingBit(arg_1)));
    var var_2 = ~_wgslsmith_sub_u32(~31236u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x)) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 27769u), vec4<u32>(~0u, func_2().c.x, u_input.a.x, 31314u)), 1u);
    let var_3 = Struct_3(~arg_1, Struct_2(vec2<i32>(func_2().a.x, u_input.b >> (0u % 32u)) << (vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x)) % vec2<u32>(32u)), Struct_1(arg_0.wy), vec4<u32>(countOneBits(4294967295u), min(0u, 0u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), 62628u) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 12166u), vec4<u32>(u_input.a.x, 89625u, 36417u, u_input.a.x)) ^ vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 16342u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(min(var_0, 313f))), -403f), func_2().b);
    var_1 = -countOneBits(vec3<i32>(_wgslsmith_add_i32(var_3.b.a.x, var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 2147483647i, 2147483647i), u_input.c.zyz), _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(29722i, -2147483647i))) | _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1, -1i), u_input.c.zzw));
    return Struct_2(reverseBits(var_1.xz), var_3.b.b, func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-347f, var_0)), _wgslsmith_f_op_f32(select(-1130f, -1000f, global0.x)))))), var_0);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_5(!vec4<bool>(select(global0.x, global0.x, true) && all(global0.ww), global0.x, true, global0.x), select(func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1713f, 206f, -510f, -816f)), global0.x & global0.x) | 0i, ~min(u_input.d, -50959i), global0.x), select(vec4<bool>(!global0.x, !all(global0.ww), all(vec4<bool>(false, global0.x, true, false)) == false, true), !(!(!vec4<bool>(true, false, true, global0.x))), vec4<bool>(func_2().b.a.x || (-1i >= arg_0), true, select(5876i < u_input.b, global0.x, true), !(global0.x & true))));
    global0 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, i32(-1i) * -40546i), i32(-1i) * -1i) > -15093i, all(var_0.b.a), global0.x, -1797f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-630f, _wgslsmith_f_op_f32(827f * var_0.e))))));
    var var_1 = !(!(!(!select(vec4<bool>(global0.x, global0.x, global0.x, var_0.b.a.x), vec4<bool>(true, global0.x, var_0.b.a.x, false), vec4<bool>(var_0.b.a.x, false, global0.x, true)))));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f * _wgslsmith_f_op_f32(ceil(var_0.d))))));
    var var_3 = !(!vec4<bool>(all(select(var_0.b.a, var_0.b.a, true)), true, var_0.b.a.x, var_1.x));
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1454f;
    global0 = select(!vec4<bool>(false, true || (var_0 == -551f), select(false, u_input.c.x <= 2147483647i, false && global0.x), true), !select(select(vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x))), !(!vec4<bool>(global0.x, global0.x, global0.x, true)), !(!vec4<bool>(false, global0.x, global0.x, global0.x))), !select(select(!vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, false, false), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, false), true)), vec4<bool>(false, global0.x, false, global0.x == global0.x), (u_input.a.x << (u_input.a.x % 32u)) >= u_input.a.x));
    var var_1 = ~min(reverseBits(abs(vec3<u32>(55655u, u_input.a.x, 14449u))) << (vec3<u32>(func_1(u_input.d), ~0u, ~u_input.a.x) % vec3<u32>(32u)), vec3<u32>(~(~27925u), firstTrailingBit(u_input.a.x), 43047u));
    let var_2 = any(vec4<bool>(false, any(vec3<bool>(global0.x, global0.x, global0.x)), true, all(func_2().b.a)));
    var var_3 = Struct_1(vec2<bool>(global0.x, func_2().b.a.x));
    let var_4 = Struct_3(u_input.d, Struct_2(u_input.c.xw, func_5(vec4<bool>(all(global0.yxz), true && global0.x, true, all(vec4<bool>(var_3.a.x, true, var_2, global0.x))), u_input.b, !vec4<bool>(global0.x, true, global0.x, false)).b, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.a.x, 0u), vec4<u32>(4294967295u, 4294967295u, 101887u, u_input.a.x) & vec4<u32>(73229u, 30589u, 4294967295u, 15613u)) | (~vec4<u32>(0u, 1u, 1u, var_1.x) >> (countOneBits(vec4<u32>(u_input.a.x, 37060u, var_1.x, 35196u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_0 + 1441f), var_0), func_5(select(select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(false, var_2, global0.x, false), vec4<bool>(true, var_2, false, var_2), var_2), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(var_3.a.x, true, true, var_2), vec4<bool>(global0.x, global0.x, var_3.a.x, var_3.a.x))), vec4<bool>(func_2().b.a.x, -563f > var_0, false, global0.x), (u_input.b > -54580i) == true), 3277i, select(vec4<bool>(0i == u_input.b, 2147483647i > u_input.d, select(global0.x, var_3.a.x, var_2), any(var_3.a)), vec4<bool>(any(vec3<bool>(false, global0.x, global0.x)), global0.x & var_2, u_input.b != u_input.b, true), vec4<bool>(all(global0.xy), true, true, all(vec4<bool>(true, var_3.a.x, var_2, var_3.a.x))))).b);
    global0 = select(select(vec4<bool>(func_3(vec2<bool>(var_4.b.b.a.x, var_3.a.x)), true, !global0.x, var_3.a.x), !select(!vec4<bool>(true, var_3.a.x, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, var_4.c.a.x, true), var_4.b.b.a.x), vec4<bool>(true, true, true, true)), vec4<bool>(global0.x | true, var_4.c.a.x, true, true)), vec4<bool>(!(!any(global0.ywz)), var_4.c.a.x, func_3(!vec2<bool>(false, global0.x)) & ((var_4.b.c.x != 1u) & (var_4.b.d > var_4.b.d)), !(select(u_input.b, u_input.b, true) >= -23221i)), vec4<bool>(true, var_3.a.x, false, true));
    var var_5 = var_4.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(3725i, var_4.b.a.x) | min(var_4.b.a.x, 0i), _wgslsmith_clamp_i32(func_4(Struct_2(vec2<i32>(2147483647i, -2147483647i), Struct_1(vec2<bool>(false, global0.x)), var_4.b.c, var_0, var_0), vec4<f32>(var_4.b.e, var_4.b.e, var_4.b.e, var_0), false), -var_4.b.a.x, select(0i, u_input.d, global0.x)))), u_input.c.wzz, -474f);
}

