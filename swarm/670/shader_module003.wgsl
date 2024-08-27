struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(1i, 38708i, 0i, -1i), vec4<i32>(i32(-2147483648), 1i, -1315i, 0i), vec4<i32>(35994i, 2013i, -1390i, 0i), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-17674i, 6789i, -1i, -35188i), vec4<i32>(0i, -1i, -10456i, 2103i), vec4<i32>(5240i, 2147483647i, -1i, -20242i), vec4<i32>(1i, -2200i, -81313i, -1i), vec4<i32>(1i, 0i, 35181i, 23555i), vec4<i32>(18304i, -1i, -1i, -85604i), vec4<i32>(1i, 12615i, -27798i, -1i), vec4<i32>(0i, 21527i, -1i, -21808i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    var var_0 = Struct_1(~u_input.b, !arg_1.x, vec3<u32>(16471u, u_input.a.x, abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b.d)) - _wgslsmith_f_op_vec2_f32(arg_0.b.d + vec2<f32>(178f, 396f))) - arg_0.b.d)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2064f, arg_0.d.d.x, arg_0.b.d.x, var_0.d.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-803f, arg_0.e.d.x, 1712f, -1000f), vec4<f32>(var_0.d.x, arg_0.b.d.x, arg_0.b.d.x, 288f))), arg_1.x)))));
    var var_2 = arg_0.e.e;
    var_2 = var_0.e;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1971f - arg_0.d.d.x), _wgslsmith_f_op_f32(round(var_0.d.x))))) + _wgslsmith_f_op_f32(638f + _wgslsmith_f_op_f32(floor(arg_0.e.d.x)))));
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_2((true || (-arg_1 >= _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))) && select(true || (21678u == u_input.a.x), true, false), Struct_1(u_input.c.zy, true, select(vec3<u32>(_wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 57212u)), u_input.a.x), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u, u_input.a.x), vec3<bool>(true, any(vec2<bool>(false, true)), 0i != arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.x, -632f), _wgslsmith_f_op_f32(arg_0.x * -707f))), func_3(Struct_2(true, Struct_1(vec2<i32>(-1i, arg_1), false, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_0.wz, true), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 56291u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 10915u)), Struct_1(u_input.b, false, vec3<u32>(1u, u_input.a.x, u_input.a.x), arg_0.zz, false), Struct_1(vec2<i32>(u_input.b.x, arg_1), false, vec3<u32>(73065u, u_input.a.x, 6718u), arg_0.wz, true)), vec3<bool>(true, select(true, false, true), select(true, true, true)))), firstLeadingBit(vec3<u32>(0u, u_input.a.x, ~0u)), Struct_1(u_input.c.xx >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), false, ~select(firstLeadingBit(vec3<u32>(39881u, 16342u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(25539u, u_input.a.x, u_input.a.x)), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(trunc(arg_0.xw)), any(vec3<bool>(true, true, true))), Struct_1(-firstTrailingBit(vec2<i32>(-5291i, 2147483647i)) | vec2<i32>(-1i, u_input.b.x), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 49948u), vec3<u32>(9159u, 54014u, u_input.a.x)) << (countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(arg_0.zx + vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-940f - -1492f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -218f))) < _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = Struct_2(any(vec3<bool>(true, any(!vec3<bool>(var_0.a, var_0.b.e, false)), false)), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(var_0.d.a), u_input.b | u_input.c.xx), _wgslsmith_add_vec2_i32(~var_0.b.a, var_0.d.a)), all(vec4<bool>(false, var_0.d.b, var_0.e.e, var_0.a)) && var_0.a, ~_wgslsmith_sub_vec3_u32(var_0.e.c >> (var_0.d.c % vec3<u32>(32u)), countOneBits(var_0.b.c)), vec2<f32>(arg_0.x, 146f), false), var_0.e.c, Struct_1(var_0.d.a, arg_1 >= -firstLeadingBit(2147483647i), vec3<u32>(_wgslsmith_mult_u32(33117u, u_input.a.x << (13520u % 32u)), _wgslsmith_mod_u32(var_0.d.c.x, var_0.e.c.x) & ~31073u, 1267u), arg_0.zz, var_0.e.e), Struct_1(vec2<i32>(13504i, 1i), !(any(vec4<bool>(true, var_0.d.e, false, var_0.a)) && any(vec3<bool>(false, var_0.b.e, var_0.d.e))), var_0.e.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))) + vec2<f32>(_wgslsmith_div_f32(-737f, arg_0.x), -1237f)), any(select(vec2<bool>(true, var_0.a), vec2<bool>(false, true), var_0.d.b)) || true));
    let var_2 = -867f;
    global0 = array<vec4<i32>, 12>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(arg_0)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.d.x, -1131f, var_2, var_2) * vec4<f32>(var_0.e.d.x, var_2, -929f, arg_0.x)) + arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-245f, var_2, arg_0.x, var_1.d.d.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -898f), -150f, 737f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(arg_0)))) + arg_0)));
    return (-var_0.b.a << (vec2<u32>(var_0.e.c.x, 1u) % vec2<u32>(32u))) | u_input.c.zx;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1212f * 336f), _wgslsmith_f_op_f32(trunc(787f)), 536f, 574f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1961f, 1000f, 255f))), -u_input.c.x), (~0u > u_input.a.x) && select(!any(vec4<bool>(false, false, false, false)), false, true || any(vec3<bool>(false, true, false))), ~(~reverseBits(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 11551u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(289f, 1402f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(659f, -1283f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1514f, 1663f)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(false, true))))), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1532f);
    global0 = array<vec4<i32>, 12>();
    var var_2 = Struct_1(u_input.b << (~firstTrailingBit(~vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u)), var_0.e, vec3<u32>(~var_0.c.x, countOneBits(~min(u_input.a.x, 13217u)), ~countOneBits(1u)), _wgslsmith_f_op_vec2_f32(-var_0.d), !any(vec2<bool>(true, true)) | func_3(Struct_2(true, Struct_1(vec2<i32>(4007i, arg_1), true, var_0.c, vec2<f32>(var_0.d.x, 287f), true), var_0.c >> (var_0.c % vec3<u32>(32u)), Struct_1(vec2<i32>(u_input.c.x, var_0.a.x), true, vec3<u32>(0u, 1u, 0u), vec2<f32>(331f, var_0.d.x), var_0.e), Struct_1(var_0.a, true, var_0.c, var_0.d, true)), vec3<bool>(var_0.b | var_0.b, !var_0.e, var_0.b)));
    let var_3 = Struct_1(var_2.a, var_0.b, _wgslsmith_mod_vec3_u32(firstTrailingBit(select(reverseBits(vec3<u32>(44352u, 4294967295u, 47106u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 40181u, 62108u), vec3<u32>(93948u, 0u, var_0.c.x)), !vec3<bool>(true, var_2.b, false))), var_0.c), var_2.d, any(select(select(select(vec2<bool>(var_2.e, var_0.e), vec2<bool>(true, var_0.b), vec2<bool>(var_2.e, var_0.b)), !vec2<bool>(true, var_2.b), true), !(!vec2<bool>(var_2.e, var_2.b)), true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -355f);
    let var_1 = func_1(u_input.c.x, u_input.b.x);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -635f);
    let var_2 = vec4<i32>(u_input.c.x, var_1.a.x, -select(firstTrailingBit(~var_1.a.x), var_1.a.x, all(!vec3<bool>(var_1.b, true, true))), -18547i);
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x)), var_1.d.x)), var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.x - -400f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f - var_3.x) * _wgslsmith_f_op_f32(exp2(var_1.d.x))))), vec3<i32>(_wgslsmith_div_i32(func_2(vec4<f32>(var_3.x, var_1.d.x, -359f, var_3.x), var_1.a.x).x, min(select(var_2.x, 34970i, var_1.e), var_2.x)), 0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(8834i, 1i, -9009i), min(vec3<i32>(-49758i, u_input.b.x, 0i), vec3<i32>(0i, 0i, -34073i))), min(-1i, ~u_input.b.x))), vec4<u32>(var_1.c.x, func_1(var_1.a.x, func_1(3462i, -1i).a.x | -1i).c.x, var_1.c.x, var_1.c.x), _wgslsmith_mult_u32(~0u, 0u));
}

