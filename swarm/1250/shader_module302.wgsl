struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = abs(min(~(vec3<u32>(0u, u_input.b.x, u_input.c.x) ^ u_input.c), vec3<u32>(~u_input.b.x, u_input.b.x, 4294967295u)) & u_input.c);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, abs(var_0.x)), reverseBits(u_input.c));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_0.x << (abs(2457u) % 32u), _wgslsmith_div_u32(max(u_input.c.x, 0u), u_input.b.x)), 15599u), var_0.x);
    var_0 = _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(~vec3<u32>(~var_1.x, 0u, ~0u), abs(vec3<u32>(var_0.x, 0u, 0u) & (vec3<u32>(var_0.x, 24960u, 33884u) >> (vec3<u32>(var_0.x, var_0.x, u_input.c.x) % vec3<u32>(32u))))));
    var var_2 = ~u_input.b;
    return var_0.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1942f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(407f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f + 215f)))), 1000f);
    let var_1 = Struct_4(Struct_1(u_input.b.x >= ~0u), abs(countOneBits(max(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.c.x), u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -152f)))) * var_0.x) + 722f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0);
    let var_4 = _wgslsmith_div_i32(-26354i, ~33146i);
    return func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_2), -586f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(455f, -121f, 179f) + vec3<f32>(1443f, 1000f, var_0.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_2, var_0.x)))), vec3<f32>(-2192f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(178f, -1194f, true))), true))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1179f)) - _wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f))), 223f, Struct_1(true), -1000f);
    var var_1 = Struct_3(var_0.c, vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(445f, var_0.a.x)) + 982f), 156f, !(!var_0.c.a))), var_0.b), ((vec4<i32>(-1i) * -vec4<i32>(-23999i, -1i, u_input.d.x, u_input.a.x)) | -firstLeadingBit(vec4<i32>(-56545i, 0i, u_input.e, -10384i))) | vec4<i32>(u_input.d.x, u_input.e << ((u_input.b.x & 0u) % 32u), 12307i, u_input.e), var_0.c, Struct_1(any(vec4<bool>(any(vec4<bool>(arg_1.x, var_0.c.a, var_0.c.a, var_0.c.a)), false, false, all(vec2<bool>(true, arg_1.x))))));
    var var_2 = -358f;
    let var_3 = 27413i;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)) * var_1.b.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1274f * var_0.d) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(1287f - -594f))))), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    return Struct_3(var_0.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1200f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f + var_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1285f, 2779f))))))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, 36782i, var_1.c.x), ~vec4<i32>(-2147483647i, var_3, var_1.c.x, var_3)), var_1.c | (u_input.d & var_1.c), max(var_1.c, vec4<i32>(u_input.a.x, var_1.c.x, u_input.e, var_3))), var_0.c, var_0.c);
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(false), arg_1.b, -abs(vec4<i32>(~0i, max(13936i, -5378i), arg_1.c.x, i32(-1i) * -2147483647i)), arg_1.e, arg_1.e);
    var var_1 = func_4(var_0.c.x < _wgslsmith_add_i32(u_input.e, var_0.c.x), !vec4<bool>(true, !all(vec3<bool>(true, arg_0, true)), true, arg_0), max(u_input.b.ww, ~u_input.c.zy));
    let var_2 = 4294967295u;
    let var_3 = 63465u == ~(~_wgslsmith_sub_u32(u_input.c.x, func_3(arg_1.b.yyw)));
    let var_4 = reverseBits(vec2<i32>(-27068i, firstLeadingBit(62135i)));
    return Struct_1(_wgslsmith_mod_i32((-2147483647i >> (var_2 % 32u)) >> (~4294967295u % 32u), 70129i) == u_input.e);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = func_5(arg_1.a, func_4(var_1.a, !vec4<bool>(arg_1.a, !var_1.a, arg_0.x <= 0u, true || arg_1.a), ~vec2<u32>(u_input.b.x, func_2(u_input.a.x, 16406i, true))));
    let var_3 = Struct_4(var_1, u_input.b);
    var_2 = var_0;
    return var_0;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5) -> Struct_4 {
    let var_0 = ~(arg_0.a.b.x >> (_wgslsmith_clamp_u32(func_3(vec3<f32>(-1310f, 486f, -1405f)) << (35886u % 32u), arg_0.a.b.x, ~4294967295u) % 32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_6(Struct_5(Struct_4(func_1(u_input.b.zyy, Struct_1(true)), reverseBits(u_input.b))), Struct_4(func_4(all(vec3<bool>(false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), ~u_input.b.zx).a, ~vec4<u32>(0u, u_input.c.x, u_input.b.x, u_input.b.x)), Struct_5(Struct_4(Struct_1(true), max(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.c.x), vec4<u32>(u_input.c.x, 14018u, u_input.c.x, u_input.b.x))))));
    let var_1 = ~u_input.c.x;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(abs(-906i)), ~(~u_input.a.x)), min((u_input.e | -2147483647i) >> ((1u & var_0.a.b.x) % 32u), -26926i), u_input.a.x), vec3<i32>(-71620i, ~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.d.wzz, u_input.d.wxz)));
    var var_3 = Struct_5(func_6(Struct_5(Struct_4(Struct_1(var_0.a.a.a), _wgslsmith_div_vec4_u32(var_0.a.b, vec4<u32>(49384u, u_input.b.x, 1u, 1u)))), func_6(Struct_5(func_6(Struct_5(Struct_4(var_0.a.a, vec4<u32>(4294967295u, u_input.c.x, 19310u, 1u))), Struct_4(var_0.a.a, vec4<u32>(u_input.b.x, u_input.b.x, 34841u, u_input.b.x)), Struct_5(var_0.a))), var_0.a, Struct_5(var_0.a)), Struct_5(func_6(Struct_5(Struct_4(var_0.a.a, u_input.b)), var_0.a, Struct_5(Struct_4(Struct_1(var_0.a.a.a), vec4<u32>(var_0.a.b.x, u_input.c.x, 69121u, 13238u)))))));
    var var_4 = _wgslsmith_sub_u32(4763u, ~(~(10783u | func_3(vec3<f32>(-1438f, -501f, 788f)))));
    var var_5 = vec2<u32>(var_1, ~var_1 | min(u_input.c.x, _wgslsmith_mult_u32(0u, firstLeadingBit(u_input.c.x))));
    var_4 = ~(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~countOneBits(5063u), 0u, var_0.a.b.x, 6563u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2628f, 1000f, -1000f) * vec3<f32>(-515f, 671f, -670f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1162f, -1000f, 206f))), func_6(Struct_5(var_3.a), var_3.a, Struct_5(Struct_4(var_3.a.a, var_0.a.b))).a.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1632f, -382f, 1030f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, -1000f, -232f)))))), 1000f);
}

