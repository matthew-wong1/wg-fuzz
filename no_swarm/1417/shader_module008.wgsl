struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_add_i32(arg_3.a, -38820i) ^ _wgslsmith_add_i32(u_input.d, ~(-2147483647i << (u_input.b % 32u))), Struct_1(arg_3.a, arg_0, select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-66046i, 0i, u_input.d), arg_3.c, vec3<i32>(u_input.d, u_input.d, arg_2.x)), min(arg_3.c << (vec3<u32>(u_input.a, u_input.a, 41604u) % vec3<u32>(32u)), arg_3.c | vec3<i32>(u_input.d, u_input.d, -65031i)), vec3<bool>(arg_1.x, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.d, _wgslsmith_f_op_f32(-arg_3.d))) - -372f), all(!arg_1)), u_input.b, vec2<u32>(countOneBits(abs(u_input.b)), ~_wgslsmith_clamp_u32(~u_input.c, select(u_input.c, u_input.c, arg_3.e), ~u_input.b)));
    var var_1 = !vec2<bool>(false, true || (arg_3.c.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), arg_3.c.yz)));
    var_1 = vec2<bool>(false, var_0.b.e);
    var_1 = !vec2<bool>(var_1.x, true);
    var_1 = vec2<bool>(true, var_0.b.e);
    return ~(~_wgslsmith_div_vec2_i32(var_0.b.c.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, var_0.a), arg_2))) ^ (-arg_3.c.yz ^ _wgslsmith_div_vec2_i32(arg_2, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.a, -10762i), ~arg_3.c.zz)));
}

fn func_2() -> Struct_1 {
    return Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(-vec2<i32>(44743i, u_input.d), ~vec2<i32>(9117i, -28490i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-496f, 275f)))), vec2<f32>(_wgslsmith_f_op_f32(235f * -895f), -937f))), vec3<i32>(_wgslsmith_dot_vec2_i32(max(func_3(vec2<f32>(232f, -1270f), vec2<bool>(false, false), vec2<i32>(-2147483647i, u_input.d), Struct_1(-40037i, vec2<f32>(-130f, -1141f), vec3<i32>(u_input.d, 0i, u_input.d), 1194f, true)), vec2<i32>(u_input.d, u_input.d) >> (vec2<u32>(56836u, u_input.b) % vec2<u32>(32u))), -(vec2<i32>(u_input.d, u_input.d) | vec2<i32>(0i, u_input.d))), 1i, i32(-1i) * -(u_input.d & u_input.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1756f)))), !(true || !(u_input.c <= 24972u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.b.x - -109f))), -541f), 684f, arg_1.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * arg_1.b.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-895f, -911f, 521f, arg_1.b.b.x)), vec4<f32>(_wgslsmith_f_op_f32(round(1198f)), _wgslsmith_f_op_f32(ceil(-333f)), _wgslsmith_f_op_f32(-arg_1.b.b.x), var_0.b.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(select(1f, var_0.b.d, true)), -1233f, var_0.b.d, arg_1.b.b.x)));
    var_0 = Struct_2(u_input.d, func_2(), _wgslsmith_clamp_u32(abs(var_0.c), abs(0u), ~firstTrailingBit(4294967295u) ^ reverseBits(var_0.c)), ~(~select(select(var_0.d, vec2<u32>(u_input.c, arg_0.x), arg_2.wz), vec2<u32>(4294967295u, 23596u), vec2<bool>(true, true))));
    let var_2 = Struct_4(func_2(), vec3<bool>(arg_2.x, !(!(false | arg_2.x)), !var_0.b.e), abs(vec3<u32>(~abs(u_input.b), var_0.c >> (arg_1.d.x % 32u), _wgslsmith_add_u32(var_0.c, u_input.c))), arg_1.b);
    return Struct_3(vec2<f32>(var_2.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.d - _wgslsmith_div_f32(var_0.b.b.x, -2364f)))), Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(614f, -1311f))), var_0.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -824f))), u_input.d > -(i32(-1i) * -40507i)), Struct_1(-(1i >> (arg_1.c % 32u)) | arg_1.a, _wgslsmith_f_op_vec2_f32(select(var_1.wy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1492f, 143f) * var_1.wy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, -500f)))), arg_2.zz)), arg_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.b.x, var_0.b.b.x)) * -1512f), var_2.b.x), firstLeadingBit(_wgslsmith_div_i32(~firstLeadingBit(-18084i), ~0i)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = vec2<bool>(!(!(!arg_2.b.e & func_4(vec3<u32>(u_input.c, u_input.a, 4294967295u), Struct_2(2147483647i, arg_2.c, 0u, vec2<u32>(u_input.b, u_input.a)), vec4<bool>(arg_2.b.e, arg_2.b.e, true, arg_2.c.e)).c.e)), !(-303f <= _wgslsmith_f_op_f32(arg_1.x + arg_2.c.d)));
    return ~0u;
}

fn func_1() -> vec2<bool> {
    let var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-24278i, -u_input.d, -abs(-60117i)), countOneBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, u_input.d, 0i), vec3<i32>(-2147483647i, u_input.d, 21622i) & vec3<i32>(u_input.d, u_input.d, u_input.d))));
    var var_1 = func_5(var_0.x >> (29545u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1426f, 237f, -535f, -459f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1929f, -434f, 762f, 757f)))), func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.c), ~vec3<u32>(u_input.c, 1u, u_input.b)), Struct_2(u_input.d, func_2(), u_input.a >> (u_input.a % 32u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 108920u), vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.a, u_input.c))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))))) | ~(~14860u);
    let var_2 = vec4<bool>(!(func_4(~vec3<u32>(0u, u_input.c, u_input.b), Struct_2(u_input.d, Struct_1(u_input.d, vec2<f32>(-1000f, 2422f), var_0, -1591f, true), u_input.b, vec2<u32>(u_input.c, 24781u)), vec4<bool>(true, false, true, false)).c.b.x > -1000f), all(vec4<bool>(false, true, false, func_2().e)), any(select(vec3<bool>(false, true, func_4(vec3<u32>(38952u, u_input.a, 1u), Struct_2(18184i, Struct_1(var_0.x, vec2<f32>(515f, -1000f), vec3<i32>(2147483647i, var_0.x, -2147483647i), -1283f, true), 71196u, vec2<u32>(0u, 0u)), vec4<bool>(false, false, false, true)).b.e), vec3<bool>(false, func_2().e, 476i > u_input.d), vec3<bool>(false, true, true))), true);
    let var_3 = Struct_4(Struct_1(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1290f), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1430f, -1348f))))), true), select(select(select(vec3<bool>(false, var_2.x, var_2.x), !var_2.wyz, all(var_2.yy)), select(var_2.zzw, vec3<bool>(true, true, true), !vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2.x & (false & var_2.x)), vec3<bool>(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(15445u, u_input.c, 91814u), vec3<u32>(49891u, u_input.b, 39221u)), Struct_2(0i, Struct_1(-58560i, vec2<f32>(1419f, 265f), var_0, -350f, var_2.x), 105645u, vec2<u32>(4294967295u, u_input.b)), !var_2).c.e, true, var_2.x), true), abs(vec3<u32>(~(~1u), 13037u, _wgslsmith_mod_u32(4294967295u, u_input.c) | _wgslsmith_clamp_u32(15609u, 4294967295u, u_input.b))), func_4(vec3<u32>(u_input.a, select(min(u_input.c, 1u), u_input.a, true), 4294967295u), Struct_2(1i, Struct_1(-53609i, vec2<f32>(692f, -516f), vec3<i32>(-1i, 12457i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -826f), false), 1u, abs(~vec2<u32>(u_input.c, 52324u))), vec4<bool>(all(vec3<bool>(true, true, true)), any(!var_2), true, false)).b);
    var var_4 = ~(~(~u_input.a));
    return vec2<bool>(select(true, func_4(var_3.c, Struct_2(u_input.d, var_3.a, u_input.a, var_3.c.xz), !vec4<bool>(false, var_3.d.e, true, true)).b.a == -9991i, var_3.d.e), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_1(), true), any(vec2<bool>(false, true)))), true);
    let var_1 = Struct_4(Struct_1(-(~abs(11463i)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(-368f)), _wgslsmith_div_f32(219f, -119f)))), _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(u_input.d, u_input.d, u_input.d)), select(select(vec3<i32>(u_input.d, 0i, -60251i), vec3<i32>(28986i, u_input.d, u_input.d), vec3<bool>(var_0.x, false, true)), ~vec3<i32>(u_input.d, -73791i, -49826i), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(360f))) * 1261f), true), select(!(!vec3<bool>(false, true, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x), false), ~(vec3<u32>(u_input.a, u_input.a, u_input.c) ^ _wgslsmith_div_vec3_u32(vec3<u32>(35716u, 83312u, 17705u) & vec3<u32>(4294967295u, 30694u, u_input.b), vec3<u32>(1u, u_input.b, 24973u) ^ vec3<u32>(u_input.b, 15573u, u_input.a))), func_2());
    let var_2 = Struct_4(var_1.a, vec3<bool>(var_1.a.e, !(!all(var_1.b)), (var_0.x != true) & all(select(var_1.b.zx, var_1.b.zz, false))), vec3<u32>(var_1.c.x, u_input.a, countOneBits(~u_input.b)), var_1.d);
    var var_3 = Struct_2(var_1.d.c.x >> (_wgslsmith_mult_u32(4294967295u, ~(var_2.c.x << (1u % 32u))) % 32u), Struct_1(_wgslsmith_mult_i32(~(var_2.d.c.x | var_1.d.a), ~_wgslsmith_div_i32(25062i, var_1.a.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.d.b - vec2<f32>(-1178f, var_1.a.d))))), vec3<i32>(~u_input.d, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-var_1.d.c.x, var_2.d.a)), var_1.a.d, true), 37913u, vec2<u32>(~_wgslsmith_mod_u32(var_2.c.x, 1u), 1u));
    var var_4 = var_3.b;
    let var_5 = false;
    let var_6 = -firstTrailingBit(var_4.c.xx);
    let var_7 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_2.d.b)))), func_2(), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(55796i, var_6.x), var_6), _wgslsmith_mod_vec2_i32(vec2<i32>(24062i, u_input.d), var_1.a.c.yy)) >> (~(~var_1.c.x) % 32u), _wgslsmith_f_op_vec2_f32(-func_2().b), func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.b.x, 119f)))), var_4.e), -14825i & var_2.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(19174i), select(~_wgslsmith_mod_i32(-2147483647i, 14524i), var_4.c.x, true), -44727i, ~(reverseBits(-1i) & var_2.d.a)));
}

