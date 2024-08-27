struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -242f));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)));
    let var_1 = false;
    var_0 = Struct_2(_wgslsmith_f_op_f32(arg_2.a + -212f));
    var var_2 = i32(-1i) * -10466i;
    return countOneBits(arg_0.b.xx);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(u_input.c, reverseBits(u_input.c ^ u_input.d))), abs(vec4<i32>(~(-9301i), max(abs(u_input.a), 2147483647i), _wgslsmith_dot_vec2_i32(abs(u_input.e.yz), func_3(Struct_1(vec2<u32>(u_input.c, 0u), vec4<i32>(-1i, -1i, 38890i, u_input.a), true), -190f, Struct_2(-218f))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), arg_0), select(vec2<i32>(arg_0.x, arg_0.x), arg_0, vec2<bool>(true, false))))), all(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, any(vec3<bool>(true, true, false))), false)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(1099f)));
    var var_2 = Struct_1(~(vec2<u32>(1u, 1u) << (vec2<u32>(min(4294967295u, u_input.c), var_0.a.x) % vec2<u32>(32u))), reverseBits(vec4<i32>(-_wgslsmith_add_i32(arg_0.x, arg_0.x), u_input.e.x, -2147483647i, -1i)), false);
    let var_3 = var_0.b.x;
    var_0 = Struct_1(vec2<u32>(~(~(~15654u)), select(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_0.a.x, 0u), vec3<u32>(u_input.d, var_0.a.x, 12992u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, 0u, 0u, u_input.c), vec4<u32>(var_0.a.x, var_2.a.x, 1u, var_0.a.x), vec4<bool>(false, false, var_2.c, var_0.c)), vec4<u32>(u_input.d, 20651u, 0u, u_input.c)), !(var_2.a.x > var_2.a.x))), ~(~_wgslsmith_add_vec4_i32(var_0.b | var_2.b, vec4<i32>(-19576i, 0i, arg_0.x, var_0.b.x))), false);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1286f + var_1.a) - var_1.a)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_2.b;
    var_0 = func_2(countOneBits(arg_2.d.zy | (vec2<i32>(0i, -6094i) >> (vec2<u32>(0u, arg_2.a) % vec2<u32>(32u)))) ^ vec2<i32>(arg_2.d.x, _wgslsmith_div_i32(~u_input.b.x, ~(-14644i))));
    let var_1 = ~(~(-abs(-vec3<i32>(13336i, 32754i, 2484i))));
    var_0 = func_2(-(_wgslsmith_add_vec2_i32(var_1.xz, vec2<i32>(-1i, u_input.a)) ^ arg_2.d.yz));
    var_0 = arg_2.b;
    return arg_0;
}

fn func_5(arg_0: f32) -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(0u, Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1157f) * _wgslsmith_f_op_f32(-1191f + 1653f)))), true, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.e.x, _wgslsmith_sub_i32(u_input.a, u_input.b.x), _wgslsmith_sub_i32(u_input.e.x, u_input.b.x)), vec3<i32>(~u_input.b.x, 2147483647i >> (u_input.d % 32u), u_input.e.x))), arg_0);
    let var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(sign(var_1.b.a));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.b.a)) * 606f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_1.e) + -2118f)))), -1429f));
    return var_1;
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.a, 1u), vec4<u32>(0u, 0u, arg_2.a, 0u)) << (~vec4<u32>(0u, 70063u, 9127u, arg_2.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(0u, 1322u), 28302u, reverseBits(u_input.d), _wgslsmith_mult_u32(arg_2.a, arg_2.a))), arg_2.b, func_5(_wgslsmith_f_op_f32(func_5(407f).b.a - 341f)).c, func_5(arg_0).d, -786f);
    var var_1 = vec2<i32>(arg_2.d.x, -_wgslsmith_dot_vec2_i32(arg_1.zx, select(-vec2<i32>(-1i, 0i), arg_1.wz, vec2<bool>(true, true))));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_2.d.x, 0i), 6485i, var_0.d.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-672f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - 1680f))), 237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, var_0.b.a, _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_div_f32(arg_0, arg_0)), -908f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_0.b.a + var_3.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)) + -397f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(401f, var_0.b.a))))));
    return func_5(_wgslsmith_f_op_f32(f32(-1f) * -150f));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-237f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(f32(-1f) * -1471f))))) - _wgslsmith_f_op_f32(sign(1f)));
    let var_1 = -countOneBits(vec2<i32>(-1i) * -vec2<i32>(arg_0.x, u_input.e.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -168f)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f))));
    let var_4 = -239f;
    return func_6(621f, vec4<i32>(~(i32(-1i) * -2147483647i), 0i, abs(max(var_1.x, -2147483647i)), ~21160i), func_5(_wgslsmith_f_op_f32(func_4(-674f, func_2(abs(u_input.b)), Struct_3(_wgslsmith_add_u32(24137u, u_input.d), func_2(u_input.e.wz), all(vec2<bool>(false, false)), u_input.e.wxz, _wgslsmith_f_op_f32(abs(var_2.a))), vec4<bool>(true, true, 4294967295u == u_input.c, any(vec3<bool>(false, false, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(countOneBits(vec3<i32>(1i, ~39765i, abs(2147483647i)))));
    let var_1 = Struct_1(vec2<u32>(u_input.c & ~1u, 1u), select(vec4<i32>(~u_input.b.x, func_3(Struct_1(vec2<u32>(var_0.a, 1u), vec4<i32>(u_input.b.x, var_0.d.x, var_0.d.x, -1i), false), -423f, var_0.b).x, countOneBits(var_0.d.x), ~u_input.e.x) | u_input.e, ~(~vec4<i32>(var_0.d.x, 36083i, u_input.a, 2147483647i)), var_0.c || false), any(!vec4<bool>(select(var_0.c, false, var_0.c), 57801u < var_0.a, false && var_0.c, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -174f, 850f, 217f) - vec4<f32>(828f, var_0.e, var_0.b.a, var_0.b.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), 1000f, var_0.b.a, _wgslsmith_f_op_f32(max(var_0.b.a, 1036f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, _wgslsmith_f_op_f32(var_0.e * 252f), _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.b.a + var_0.e)))));
    var_0 = func_1(vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.e.x, 12632i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 0i, var_0.d.x), vec3<i32>(1i, 1i, var_1.b.x)))), 37443i, var_0.d.x));
    let var_3 = vec3<bool>(true, false, func_5(var_0.e).c);
    let var_4 = ((u_input.d >= var_1.a.x) & (355f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) + var_0.b.a))) != func_1(vec3<i32>(abs(u_input.a) >> (3179u % 32u), -33414i, max(1i, u_input.e.x & var_1.b.x))).c;
    let var_5 = !var_1.c | (_wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(329f - func_2(var_0.d.yz).a)) == 957f);
    var var_6 = func_1(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_sub_i32(-1i, 1i), 21580i), abs(vec3<i32>(u_input.b.x, 1i, 45901i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_2.x, -1411f)))), var_0.e)), 50836i, var_2.yzz);
}

