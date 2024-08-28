struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_1(!select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, false, true, false)), true), vec4<bool>(any(vec2<bool>(true, true)), true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true && !(~u_input.b != (60650u ^ u_input.c.x)));
    return select(var_0.b.x, select(var_0.c, all(var_0.a.wyw), var_0.b.x), any(var_0.a.xyx));
}

fn func_2() -> i32 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(i32(-1i) * -2147483647i, Struct_2(Struct_1(vec4<bool>(true, true, true, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(false, true)), false), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1069f, 515f), _wgslsmith_f_op_f32(-859f - -1000f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2091f - -799f))), vec3<f32>(1188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(788f, -920f, true)) + -1012f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(548f * -133f), _wgslsmith_f_op_f32(-211f - -1535f)))), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 97528u), ~u_input.b, firstLeadingBit(~19170u))), Struct_2(Struct_1(vec4<bool>(true, true, true, func_3(1232f, Struct_4(vec3<i32>(15420i, u_input.d, u_input.e), -13527i))), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), select(true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(773f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(383f, -1389f) + vec2<f32>(2344f, -1102f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1581f, _wgslsmith_f_op_f32(round(499f))), var_0.zzy), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), !select(true, false, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-262f, -1416f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1804f, 1941f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, 244f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, -1345f, -293f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, 1000f, 1023f) + vec3<f32>(-315f, 2403f, 1882f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, -365f, 859f)), true))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(4294967295u, 4294967295u)), u_input.b, ~82526u), var_0.ywx, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), select(vec3<bool>(false, true, all(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), true));
    var_1 = Struct_3(~(countOneBits(-23466i) & var_1.a), Struct_2(var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.b.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.b.d.zx, var_1.b.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, var_1.d.b, -1702f) + vec3<f32>(var_1.d.c.x, var_1.b.b, -1026f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1137f, 1095f, var_1.c.d.x) + var_1.c.d))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.c.x, -3097f, var_1.c.c.x), var_1.d.d), var_1.b.d)), max(~(var_1.d.e ^ vec3<u32>(var_0.x, 4294967295u, var_1.d.e.x)), vec3<u32>(var_1.c.e.x, u_input.b, _wgslsmith_sub_u32(0u, u_input.a.x)))), Struct_2(var_1.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.c.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.b.d.x)))))), var_1.b.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_1.b.d * vec3<f32>(var_1.c.d.x, 159f, -642f)))), vec3<u32>(4294967295u, abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(100045u, 32188u, 4294967295u, 18824u))), firstTrailingBit(_wgslsmith_mult_u32(var_0.x, var_1.d.e.x)))), var_1.c, !(!select(select(var_1.d.a.a.wxx, var_1.d.a.a.zzw, var_1.e.x), vec3<bool>(true, var_1.b.a.c, var_1.b.a.a.x), select(var_1.e, vec3<bool>(var_1.b.a.c, var_1.e.x, var_1.e.x), vec3<bool>(true, var_1.e.x, true)))));
    var_1 = Struct_3(reverseBits(-13303i), var_1.b, var_1.d, var_1.d, select(vec3<bool>(any(select(var_1.d.a.a, vec4<bool>(false, false, true, var_1.b.a.b.x), var_1.c.a.a)), _wgslsmith_f_op_f32(-1133f + var_1.b.c.x) < -186f, var_1.d.a.a.x), select(!var_1.c.a.a.xwz, var_1.c.a.a.xwz, true), var_1.c.e.x < abs(1u)));
    var var_2 = true;
    return abs(_wgslsmith_mult_i32(u_input.d, max(~22847i, -var_1.a | -1i)));
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(15754i, 23946i), abs(vec2<i32>(-35653i, u_input.d)))), 0i, -45311i, (func_2() >> (~_wgslsmith_mult_u32(u_input.a.x, u_input.c.x) % 32u)) << (_wgslsmith_add_u32(54966u, select(~60178u, ~u_input.b, true)) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, -555f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-506f, -1269f)), 511f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(869f, 2083f) + vec2<f32>(364f, -995f))))));
    var var_2 = _wgslsmith_add_i32(-var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(), -_wgslsmith_add_i32(var_0.x, u_input.d)), vec2<i32>(_wgslsmith_sub_i32(var_0.x, u_input.d), u_input.d) & ~vec2<i32>(-2147483647i, u_input.e)));
    let var_3 = abs(var_0.x);
    let var_4 = Struct_3(3624i, Struct_2(Struct_1(vec4<bool>(var_3 <= 2147483647i, true, false, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(-712f * var_1.x), Struct_4(var_0.zwz, -1i))), var_1.x, var_1, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1457f, 1332f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -301f)), var_1.x), vec3<u32>(u_input.b, ~u_input.a.x << (~u_input.a.x % 32u), ~120251u)), Struct_2(Struct_1(vec4<bool>(any(vec2<bool>(true, true)), true, true, any(vec4<bool>(false, true, false, true))), vec2<bool>(false, true), _wgslsmith_f_op_f32(-var_1.x) > var_1.x), var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), _wgslsmith_mod_vec3_u32(u_input.a.wyx, u_input.c)), Struct_2(Struct_1(vec4<bool>(true, select(false, true, false), true, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), false), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), vec2<f32>(-914f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1339f, -1359f)), _wgslsmith_f_op_f32(1446f - var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x)) * vec3<f32>(_wgslsmith_div_f32(var_1.x, 646f), var_1.x, _wgslsmith_f_op_f32(ceil(-1300f)))), vec3<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.c.x)), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, 6946u, 4294967295u, 0u))), _wgslsmith_mult_u32(0u, u_input.c.x) | ~u_input.a.x)), select(!vec3<bool>(any(vec4<bool>(false, true, false, true)), true, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), false));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 6285i;
    var var_1 = true;
    var var_2 = func_1();
    let var_3 = func_1().c.a;
    let var_4 = var_2.d;
    var var_5 = vec4<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, u_input.d)), min(vec2<i32>(var_2.a, var_2.a), vec2<i32>(var_2.a, -320i)), vec2<i32>(48375i, var_2.a) << (u_input.a.ww % vec2<u32>(32u))), vec2<i32>(countOneBits(var_2.a), var_2.a)), u_input.d), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 13568i, 2147483647i, 0i), vec4<i32>(var_0, var_2.a, var_0, 9759i) ^ vec4<i32>(2147483647i, -48230i, 19076i, 0i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(54043i, -1i, var_2.a, -1i), vec4<i32>(1i, var_0, -73675i, 8291i), vec4<i32>(u_input.d, var_2.a, 2147483647i, 0i)))), abs((vec4<i32>(u_input.d, u_input.d, 41097i, var_0) ^ vec4<i32>(-66718i, u_input.e, -2147483647i, u_input.d)) << (u_input.a % vec4<u32>(32u)))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -28688i, -1i, -2147483647i, firstLeadingBit(-11805i)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-35693i, var_0, var_2.a, -18238i), vec4<i32>(var_2.a, -1i, u_input.e, -35079i)), -vec4<i32>(u_input.d, var_2.a, 2147483647i, -2147483647i)))));
    let var_6 = 3362u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.wyw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.c.x, var_4.d.x))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_4.d.xx - var_2.d.d.zy), _wgslsmith_f_op_vec2_f32(-var_2.b.d.xy)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.d.zy * vec2<f32>(var_2.b.c.x, 422f)))), vec3<u32>(firstTrailingBit(~_wgslsmith_clamp_u32(var_6, var_2.d.e.x, 52104u)), 0u, ~(var_4.e.x << (4294967295u % 32u))));
}

