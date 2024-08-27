struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_4(abs(arg_0));
    var var_1 = vec3<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 59460u, u_input.b), firstLeadingBit(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 80249u))), (90992u | u_input.b) >> ((arg_1.x >> (arg_1.x % 32u)) % 32u), !any(vec4<bool>(false, true, false, false))) | 4294967295u, 58343u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(29065u, u_input.a.x, countOneBits(arg_1.x)), u_input.a.zwx));
    return -437f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: bool) -> vec4<bool> {
    let var_0 = select(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(-1i, -32341i, arg_0.b, arg_0.b) & vec4<i32>(arg_0.b, -2147483647i, 0i, arg_0.b)), abs(select(-vec4<i32>(-2147483647i, 0i, -15057i, arg_1.a.b.b), -vec4<i32>(arg_1.a.a.b, arg_1.a.b.b, 1i, -16299i), arg_3 && arg_3))), _wgslsmith_sub_i32(27426i, arg_0.b), -15223i >= abs(21969i | (-20822i >> (u_input.b % 32u))));
    let var_1 = ~max(var_0, arg_0.b);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))))), -181f);
    let var_3 = arg_1;
    var var_4 = firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.a, 71276u), u_input.a.wx ^ ~(~vec2<u32>(var_3.a.b.a, arg_1.b))));
    return !select(!(!vec4<bool>(true, true, var_3.a.c, true)), !(!select(vec4<bool>(arg_3, false, arg_1.a.c, arg_1.a.c), vec4<bool>(false, arg_1.a.c, var_3.a.c, var_3.a.c), vec4<bool>(false, var_3.a.c, true, arg_3))), select(select(select(vec4<bool>(arg_1.a.c, arg_3, false, false), vec4<bool>(false, var_3.a.c, arg_1.a.c, arg_1.a.c), vec4<bool>(false, true, var_3.a.c, arg_1.a.c)), select(vec4<bool>(true, arg_1.a.c, true, arg_3), vec4<bool>(arg_1.a.c, true, false, var_3.a.c), true), true), !(!vec4<bool>(var_3.a.c, true, false, false)), !(!vec4<bool>(arg_1.a.c, arg_1.a.c, false, arg_1.a.c))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_5(Struct_2(arg_2, arg_2, !(!arg_0.x)), arg_2.a);
    let var_1 = Struct_3(Struct_1(68227u, -arg_2.b), u_input.a.x, Struct_2(Struct_1(_wgslsmith_sub_u32(1u, 110983u >> (arg_2.a % 32u)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(10894i, 0i, var_0.a.a.b), arg_1)), arg_2, var_0.a.c), Struct_2(arg_2, arg_2, all(select(vec2<bool>(var_0.a.c, true), select(arg_0.yx, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x)), vec2<bool>(true, true)))));
    let var_2 = select(vec4<bool>(var_1.c.c, true, true, true), func_4(Struct_1(var_1.c.a.a, arg_3.x & ~arg_1), var_0, _wgslsmith_f_op_f32(func_3(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -65724i), vec3<i32>(arg_2.b, arg_2.b, arg_3.x)), -24049i >> (var_1.c.a.a % 32u)), vec2<u32>(var_1.b, arg_2.a) << (countOneBits(u_input.a.xz) % vec2<u32>(32u)))), !(!var_1.d.c)), (_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.b.b, -1122i), vec2<i32>(arg_1, arg_3.x)), _wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.ww))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(481f - 1802f)))) & var_1.d.c);
    let var_3 = Struct_3(Struct_1(select(countOneBits(min(4294967295u, 0u)), 0u, var_0.a.c), -1i | min(arg_1, select(-20521i, 2147483647i, var_0.a.c))), _wgslsmith_dot_vec3_u32(~u_input.a.xzz, vec3<u32>(abs(3977u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, var_0.b, 4294967295u, 30332u), u_input.a), ~select(24585u, 1u, var_2.x))), var_0.a, var_1.d);
    var var_4 = ~(~((firstTrailingBit(40986u) ^ ~32511u) << (_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, var_0.b), reverseBits(36120u)) % 32u)));
    return func_4(Struct_1(u_input.b, min(reverseBits(arg_1), _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(arg_2.b, -5378i)))), Struct_5(var_3.c, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1344f + _wgslsmith_f_op_f32(floor(419f)))))), !any(var_2.xx)).xwz;
}

fn func_1() -> u32 {
    var var_0 = select(select(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), 1i, Struct_1(~u_input.b, ~31411i), vec3<i32>(1i, 1i, 1i)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(all(vec3<bool>(true, true, false)), true, true), true), false), !func_2(vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, true, false))), -(33910i << (u_input.a.x % 32u)), Struct_1(1u, _wgslsmith_sub_i32(-1i, 2147483647i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1464i, -8674i, 35715i), vec3<i32>(-39041i, 3130i, -1i), vec3<bool>(true, true, true)), vec3<i32>(0i, 2147483647i, -52834i))), _wgslsmith_add_i32(-1i, 1i) <= (-1i | (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 52262i, 3045i, 41973i), vec4<i32>(-2147483647i, -1i, -2147483647i, 49542i)) | ~(-41961i))));
    var_0 = !(!(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true))));
    var var_1 = ~(reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) & u_input.a.x);
    var_0 = vec3<bool>(all(!(!vec3<bool>(false, var_0.x, false))) | (any(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), false)) & true), false, -828f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-570f)))));
    var var_2 = Struct_3(Struct_1(1u, -18293i), ~(~(~(~u_input.a.x))), Struct_2(Struct_1(~1u, (i32(-1i) * -27493i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -1822i, 1i), vec4<i32>(-13343i, -50098i, -8994i, 0i))), Struct_1(~u_input.b, ~0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-7727i, 1i, -12558i, 1i), vec4<i32>(49610i, -14029i, 1i, -27600i)) != -26333i), Struct_2(Struct_1(0u << (abs(u_input.a.x) % 32u), _wgslsmith_mod_i32(0i, 1i)), Struct_1(u_input.b | 0u, ~(19579i << (u_input.b % 32u))), !var_0.x));
    return firstLeadingBit(var_2.c.a.a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1682f) * 687f);
    var_0 = -476f;
    let var_1 = _wgslsmith_mult_i32(-arg_0.d.b.b, 2147483647i >> (~arg_2.a.a % 32u));
    var_0 = _wgslsmith_f_op_f32(1150f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(floor(arg_3.x))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))));
    return any(!vec3<bool>(arg_1.a.c, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !func_5(Struct_3(Struct_1(9771u, -49732i), func_1(), Struct_2(Struct_1(0u, 0i), Struct_1(u_input.b, -2147483647i), u_input.a.x != 4294967295u), Struct_2(Struct_1(u_input.a.x, -34936i), Struct_1(u_input.a.x, -1i), true)), Struct_5(Struct_2(Struct_1(9449u, 1i), Struct_1(u_input.b, -13655i), u_input.b > u_input.a.x), _wgslsmith_div_u32(0u, u_input.a.x)), Struct_3(Struct_1(~14298u, _wgslsmith_sub_i32(-2147483647i, -1i)), func_1(), Struct_2(Struct_1(52190u, -66335i), Struct_1(u_input.b, 23836i), true), Struct_2(Struct_1(u_input.a.x, 53788i), Struct_1(31346u, 11815i), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -388f, -1602f))));
    let var_1 = ~abs(vec3<i32>(-17633i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(4067i, 1i, -8258i), vec3<i32>(-1i, -65831i, 12757i)), select(-29643i, 0i, true)), -38090i));
    var var_2 = 0u;
    var var_3 = u_input.a.x;
    var var_4 = Struct_4(countOneBits(-abs(select(vec2<i32>(1i, 6364i), var_1.yx, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(43965i, -24179i, 2147483647i)), var_1), 2147483647i, _wgslsmith_dot_vec3_i32(-var_1, var_1)), var_1), vec3<u32>(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.b), u_input.a.x), vec2<u32>(1u, 1u)), ~_wgslsmith_dot_vec3_u32(abs(u_input.a.xxz), ~u_input.a.wwz)));
}

