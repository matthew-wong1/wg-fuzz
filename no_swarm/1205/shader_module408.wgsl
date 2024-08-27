struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(abs(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, u_input.b.x, arg_0, -1i), vec4<i32>(arg_0, u_input.b.x, -34128i, -2147483647i), vec4<i32>(1i, 0i, -29819i, 19551i)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 886f, 1863f, -887f))) + vec4<f32>(1175f, 921f, 529f, -1864f)) * vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = select(select(vec4<bool>(var_0.b.x > _wgslsmith_f_op_f32(min(566f, var_0.b.x)), true, false, true), vec4<bool>((u_input.b.x != arg_0) && true, !select(false, true, false), all(vec2<bool>(true, true)), true), !vec4<bool>(false, false, select(true, true, false), true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), select(vec4<bool>(true, u_input.c.x < 65170u, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), _wgslsmith_dot_vec3_u32(u_input.a >> (vec3<u32>(1u, u_input.c.x, 876u) % vec3<u32>(32u)), ~u_input.e) != 22614u), !(!vec4<bool>(false, true, true, 1374i > u_input.b.x)));
    var var_2 = select(!select(vec4<bool>(var_1.x && var_1.x, var_0.b.x > var_0.b.x, var_1.x && false, var_1.x), select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), u_input.a.x == 4294967295u), true), vec4<bool>(true, false, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 29191u, 0u), vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.d.x)) > max(_wgslsmith_mult_u32(u_input.d.x, u_input.e.x), u_input.c.x ^ u_input.c.x), all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), !global0[_wgslsmith_index_u32(33853u, 25u)], true))), select(vec4<bool>(true, var_1.x, !var_1.x, true & (true & var_1.x)), vec4<bool>(_wgslsmith_f_op_f32(-var_0.b.x) < -1175f, false, true, true), !(!(!vec4<bool>(var_1.x, false, var_1.x, true)))));
    var_2 = vec4<bool>(select(var_2.x, 67293u <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 20356u, u_input.a.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c.x)), all(vec3<bool>(true, false, true))) | true, false, true, var_1.x);
    let var_3 = var_2.x;
    return _wgslsmith_f_op_f32(sign(var_0.b.x));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = 27019i;
    let var_1 = Struct_1(arg_3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, -840f, _wgslsmith_f_op_f32(func_3(2147483647i)), _wgslsmith_f_op_f32(319f * arg_3.b.x)))));
    var var_2 = vec2<i32>(var_1.a.x, var_1.a.x);
    let var_3 = 0i;
    var var_4 = u_input.e;
    return arg_2;
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1879f + 380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(163f, 998f, false))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(595f)), -171f)))));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), min(u_input.b.xy, u_input.b.yx)), 30082i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, 33480i, 16726i, u_input.b.x), min(vec4<i32>(-1i, 22055i, 9396i, 3673i), vec4<i32>(-1i, u_input.b.x, 30302i, u_input.b.x))), -1i), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x << (43292u % 32u)), ~u_input.b.x & ~4796i, firstLeadingBit(min(u_input.b.x, 0i)), u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -393f, var_0.x, -272f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-786f, -302f, var_0.x, var_0.x), vec4<f32>(-1059f, var_0.x, -738f, -1258f))), !vec4<bool>(arg_0, arg_0, true, true))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), 257f, _wgslsmith_f_op_f32(trunc(528f)), -248f)));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(var_1.a, min(min(var_1.a, countOneBits(var_1.a)), ~_wgslsmith_div_vec4_i32(vec4<i32>(26931i, 7939i, var_1.a.x, -2147483647i), var_1.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, 0i), -var_1.a.xxx), -2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), u_input.d) % 32u), min(0i, var_1.a.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-37962i, var_1.a.x, u_input.b.x, u_input.b.x), var_1.a, vec4<bool>(arg_0, false, true, arg_0)), min(var_1.a, var_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, var_0.x, var_0.x, var_0.x)))));
    let var_3 = vec2<bool>(arg_0, !(!all(vec3<bool>(true, false, arg_0))));
    let var_4 = vec4<u32>(0u, 4294967295u, 50056u, abs(1u)) | ~vec4<u32>(~_wgslsmith_add_u32(0u, 1u), ~6935u, 22696u, select(4294967295u, ~u_input.d.x, select(arg_0, false, var_3.x)));
    return var_1.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1090f * _wgslsmith_f_op_f32(sign(arg_2.b.x))))), _wgslsmith_f_op_f32(-145f * _wgslsmith_f_op_f32(func_4(true && func_2(false, 802f, true, Struct_1(vec4<i32>(u_input.b.x, arg_2.a.x, -13343i, u_input.b.x), arg_2.b))))), (arg_0.x < u_input.c.x) && false));
    let var_1 = arg_2;
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(min(~arg_3, min(arg_3, var_1.a.x)), 11434i, -32974i, firstTrailingBit(0i)), ~vec4<i32>(arg_2.a.x ^ -1i, -41637i, ~15229i, 5999i)), _wgslsmith_f_op_vec4_f32(exp2(arg_2.b)));
    let var_3 = 18306u == (u_input.d.x >> (firstLeadingBit(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)) % 32u));
    let var_4 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -58473i, arg_2.a.x << (u_input.a.x % 32u)), ~var_2.a.x >> (~1u % 32u), -var_2.a.x, 3422i), vec4<i32>(1i, -61895i, var_2.a.x, (8489i & arg_3) << (_wgslsmith_mult_u32(u_input.a.x, 12131u) % 32u))), _wgslsmith_f_op_vec4_f32(-var_2.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x + var_4.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    var var_0 = vec2<bool>(true, _wgslsmith_clamp_i32(-1i, -u_input.b.x | -24200i, 42367i) > u_input.b.x);
    var var_1 = ~u_input.d.x;
    global0 = array<vec3<bool>, 25>();
    var_1 = 27655u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.yx, u_input.a.x, Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -16803i), vec4<f32>(2029f, 797f, -1167f, -850f)), u_input.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2166f))) * _wgslsmith_f_op_f32(func_1(u_input.e.zz | u_input.d, ~u_input.d.x, Struct_1(vec4<i32>(-4418i, u_input.b.x, u_input.b.x, -12758i), vec4<f32>(-1224f, -2082f, -1090f, 800f)), abs(-1i)))) * _wgslsmith_f_op_f32(step(-571f, 936f))), ~u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.a, (u_input.a | u_input.e) & select(vec3<u32>(u_input.e.x, 19775u, 13783u), u_input.a, var_0.x)), u_input.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1001f * 142f), _wgslsmith_f_op_f32(floor(-514f)))), _wgslsmith_f_op_f32(func_4(var_0.x))));
}

