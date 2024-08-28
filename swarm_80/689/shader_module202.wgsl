struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(17189i, -1i), vec2<i32>(i32(-2147483648), 44693i), vec2<i32>(36511i, 0i), vec2<i32>(1651i, 66544i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 45265i), vec2<i32>(-15013i, 1i), vec2<i32>(-35915i, 36716i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(44997i, -21230i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(any(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x))), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 12u)]));
    let var_2 = Struct_1(!(!(var_0.a | false)) || true);
    var var_3 = -1i;
    global0 = array<vec2<i32>, 12>();
    return Struct_1(!(!var_0.a | !select(var_2.a, false, false)));
}

fn func_3(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = func_2(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(390f, 405f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2679f)), _wgslsmith_f_op_f32(step(-312f, 1000f)))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-225f)))))), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(min(u_input.e, -2147483647i), u_input.e), max(-2147483647i, firstTrailingBit(0i))));
    var var_1 = Struct_3(13115u, vec3<bool>(false, var_0.a, countOneBits(~u_input.e) >= countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-13170i, -51779i, u_input.a, u_input.b.x), vec4<i32>(-17828i, 0i, 1391i, -8286i)))), select(!(!select(vec3<bool>(true, arg_0, var_0.a), vec3<bool>(var_0.a, arg_0, arg_0), false)), !vec3<bool>(true && arg_0, all(vec4<bool>(true, false, false, arg_0)), true), true), Struct_2(1677f, abs(select(_wgslsmith_sub_vec2_i32(u_input.b.yy, vec2<i32>(2147483647i, u_input.e)), abs(u_input.b.zy), !vec2<bool>(var_0.a, var_0.a)))), func_2(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(-1i, u_input.e), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1447f, 894f, -445f, 426f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-212f, -515f, 458f, -1093f)))))), _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(u_input.e), 2147483647i), u_input.e)));
    var_1 = Struct_3(52142u, vec3<bool>(var_0.a, true, false), var_1.c, var_1.d, func_2(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.a, _wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_f_op_f32(var_1.d.a - 992f))), _wgslsmith_mod_i32(u_input.e, ~(-u_input.b.x))));
    var var_2 = Struct_3(~5616u >> (_wgslsmith_clamp_u32(~firstTrailingBit(arg_1), arg_1 << (var_1.a % 32u), ~(~var_1.a)) % 32u), vec3<bool>(true, true, all(var_1.c)), !vec3<bool>(var_0.a, var_1.e.a, false), var_1.d, var_1.e);
    let var_3 = Struct_1(!select(true, any(vec4<bool>(var_0.a, var_2.e.a, true, var_0.a)), any(var_2.c.yy)) & false);
    return Struct_1(false);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    var var_0 = func_2(55033i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, -442f, arg_1, arg_1))))))), u_input.b.x);
    var var_1 = Struct_3(50574u, !vec3<bool>(true, select(var_0.a, var_0.a, -1981f < arg_1), _wgslsmith_clamp_i32(u_input.e, -34939i, 11308i) <= (-47127i & u_input.e)), !(!vec3<bool>(all(vec4<bool>(true, false, false, true)), true, var_0.a)), Struct_2(_wgslsmith_f_op_f32(-arg_1), firstLeadingBit(vec2<i32>(select(u_input.e, u_input.a, var_0.a), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_2, 12u)], vec2<i32>(u_input.e, u_input.a))))), func_3(all(select(!vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(false, var_0.a, var_0.a))), 40451u));
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, -var_1.d.b.x, _wgslsmith_sub_i32(-198i, var_1.d.b.x), _wgslsmith_clamp_i32(u_input.e, u_input.b.x, -2147483647i)), select(vec4<i32>(u_input.b.x, var_1.d.b.x, u_input.e, var_1.d.b.x), ~vec4<i32>(var_1.d.b.x, u_input.b.x, 2147483647i, var_1.d.b.x), vec4<bool>(var_0.a, var_0.a, var_1.b.x, var_1.c.x))), vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(u_input.b ^ u_input.b, vec3<i32>(var_1.d.b.x, var_1.d.b.x, u_input.b.x)), 2147483647i, u_input.b.x));
    return var_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(134f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.d)), vec2<u32>(u_input.d, u_input.d)), -894f, max(u_input.c, _wgslsmith_add_u32(33488u, 47504u)), ~(~16648u)))), -1348f);
    let var_1 = Struct_3(abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 6659u), vec2<u32>(u_input.d, 4294967295u)), reverseBits(u_input.c))), vec3<bool>(true, true, true), select(!vec3<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, true)), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), true), Struct_2(1568f, u_input.b.zz), func_3(all(vec3<bool>(true, true, func_3(false, 4294967295u).a)), _wgslsmith_mult_u32(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.d)) ^ (firstTrailingBit(14045u) & u_input.c)));
    global0 = array<vec2<i32>, 12>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + _wgslsmith_f_op_f32(var_1.d.a * var_0.x))), 2129f)), firstTrailingBit(select(-min(var_1.d.b, var_1.d.b), ~firstLeadingBit(vec2<i32>(2147483647i, -54565i)), select(!var_1.c.yx, !vec2<bool>(var_1.b.x, var_1.e.a), false))));
    global0 = array<vec2<i32>, 12>();
    var var_3 = vec4<bool>(true, any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.e.a, false, var_1.b.x, var_1.b.x), var_1.e.a), vec4<bool>(65334u != var_1.a, func_2(var_1.d.b.x, vec4<f32>(-806f, -130f, 464f, 219f), 0i).a, true, true), !(!vec4<bool>(var_1.b.x, var_1.c.x, var_1.b.x, true)))), _wgslsmith_f_op_f32(1282f + -1217f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - 2160f) * _wgslsmith_f_op_f32(func_1(abs(vec2<u32>(0u, 1u)), var_1.d.a, 0u, ~1u))), var_1.e.a);
    var_3 = select(select(!select(vec4<bool>(false, var_3.x, true, true), !vec4<bool>(true, var_1.c.x, true, var_1.b.x), !vec4<bool>(var_3.x, true, true, false)), !(!select(vec4<bool>(var_3.x, true, var_1.b.x, true), vec4<bool>(false, true, true, false), vec4<bool>(var_3.x, var_3.x, false, true))), !select(select(vec4<bool>(true, false, var_3.x, false), vec4<bool>(false, var_3.x, true, var_3.x), var_1.c.x), select(vec4<bool>(true, true, var_1.e.a, false), vec4<bool>(true, var_3.x, true, false), vec4<bool>(var_1.e.a, var_1.c.x, var_1.c.x, var_1.c.x)), all(vec4<bool>(true, true, true, false)))), !(!vec4<bool>(var_1.e.a, var_3.x, u_input.d < 37576u, true)), func_2(i32(-1i) * -_wgslsmith_sub_i32(-1i, var_1.d.b.x), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_1.d.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_f_op_f32(-var_2.a)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), var_1.d.b.x & (-var_1.d.b.x ^ _wgslsmith_div_i32(-1i, var_1.d.b.x))).a);
    var_3 = select(select(vec4<bool>(true, (var_3.x & false) && !var_1.e.a, true, !(var_1.e.a == var_3.x)), vec4<bool>(false, false, var_3.x, false), select(vec4<bool>(var_3.x, false, all(var_3.zx), !var_3.x), select(select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_3.x, var_3.x, true, var_1.c.x), true), vec4<bool>(false, var_1.b.x, false, true), select(vec4<bool>(var_1.e.a, var_3.x, false, var_1.e.a), vec4<bool>(var_1.c.x, true, var_1.b.x, true), vec4<bool>(true, true, true, var_3.x))), select(vec4<bool>(false, var_1.c.x, false, var_3.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, var_3.x), var_1.b.x), select(vec4<bool>(var_1.e.a, var_3.x, false, var_3.x), vec4<bool>(var_1.c.x, false, true, false), vec4<bool>(var_1.c.x, var_3.x, true, var_1.c.x))))), select(!(!(!vec4<bool>(false, true, true, var_3.x))), !select(!vec4<bool>(true, var_1.e.a, false, false), !vec4<bool>(true, var_3.x, var_1.b.x, true), !var_1.c.x), !select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.c.x, var_1.e.a), select(vec4<bool>(var_1.c.x, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, var_1.e.a)), any(vec4<bool>(var_3.x, var_3.x, var_1.b.x, true)))), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-17695i >> (((64116u ^ var_1.a) << (abs(u_input.c) % 32u)) % 32u), u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(~(~vec2<u32>(u_input.d, 0u)), -438f, _wgslsmith_div_u32(4294967295u, ~1u), _wgslsmith_sub_u32(countOneBits(u_input.d), u_input.d))))));
}

