struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = Struct_1(~arg_1.x < arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_1.x & 1u), abs(~15258u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), abs(arg_1.xy)) & ~arg_1.xy), -29126i);
    return u_input.a;
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = true;
    var_0 = false;
    var_0 = true;
    var_0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), true));
    let var_1 = Struct_2(max(countOneBits(~u_input.a.zw), _wgslsmith_clamp_vec2_i32(u_input.a.zx, firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), arg_0.yz)) ^ arg_0.yz, vec4<i32>(i32(-1i) * -8272i, ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x & u_input.a.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, abs(u_input.a.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yw), _wgslsmith_mult_i32(12912i, u_input.a.x))), ~arg_0.x >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(369f, -386f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(539f, -812f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -688f))), min(_wgslsmith_add_i32(arg_0.x, -_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.yx)), 0i));
    return var_1.c.x >= var_1.c.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = 33749u;
    let var_1 = Struct_1(!select(func_3(arg_1.b.xwy) && true, all(vec3<bool>(true, false, false)) && false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), ~select(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(10963u, 4294967295u, 31723u, 28912u), vec4<u32>(1u, 1317u, 0u, 0u)) % 32u), ~1u, select(func_3(vec3<i32>(u_input.a.x, arg_1.d, 0i)), true, true)), select(-(_wgslsmith_sub_i32(arg_1.b.x, u_input.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4360u, 4294967295u, 78162u, 1u), vec4<u32>(21214u, 50222u, 4294967295u, 1u)) % 32u)), arg_1.a.x, any(vec3<bool>(true, true, true))));
    let var_2 = select(select(vec3<bool>(true, var_1.a, true), !vec3<bool>(true, true, var_1.b == var_1.b), select(vec3<bool>(any(vec3<bool>(var_1.a, var_1.a, var_1.a)), true, !var_1.a), select(!vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a), !vec3<bool>(true, var_1.a, var_1.a))), !vec3<bool>(true, select(arg_1.c.x >= -207f, !var_1.a, true), true), select(select(vec3<bool>(var_1.a, !var_1.a, u_input.a.x != var_1.c), vec3<bool>(arg_0 <= arg_1.b.x, true & var_1.a, select(var_1.a, false, var_1.a)), true & (var_1.c > var_1.c)), vec3<bool>(!all(vec3<bool>(var_1.a, var_1.a, var_1.a)), -350f <= _wgslsmith_f_op_f32(arg_2 * 527f), true), var_1.a));
    let var_3 = var_1;
    return true | all(vec3<bool>(any(vec2<bool>(var_3.a, false)), true, var_3.a || (arg_2 <= arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, func_2(~3263i, Struct_2(~vec2<i32>(1i, u_input.a.x), func_1(2147483647i, vec4<u32>(1u, 61654u, 6694u, 41097u)), vec2<f32>(1000f, 1132f), firstLeadingBit(u_input.a.x)), 418f) & any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), false)), _wgslsmith_sub_i32(0i, reverseBits(u_input.a.x)) <= (_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -5533i) & -2147483647i), true);
    let var_1 = Struct_2(u_input.a.zy, vec4<i32>(select(u_input.a.x, u_input.a.x, any(var_0.wxw) & true), -2147483647i, ~(-6595i) & _wgslsmith_sub_i32(u_input.a.x, 704i), u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(439f)), _wgslsmith_f_op_f32(step(-347f, 412f))))), -20922i);
    let var_2 = abs(var_1.b);
    let var_3 = Struct_2(var_1.b.wx, -var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 170f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(351f, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1214f, var_1.c.x))))), 21152i);
    var var_4 = select(vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 58974u, 1u), vec3<u32>(15869u, 55101u, 1u))), 4294967295u, 14167u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 0u, 104445u), vec4<u32>(4294967295u, 33345u, 69782u, 0u))) % 32u), 1u), ~abs(vec4<u32>(0u, select(18180u, 6332u, false), firstTrailingBit(67552u), abs(4294967295u))), !(!all(select(var_0.zxx, var_0.wwz, vec3<bool>(var_0.x, var_0.x, false)))));
    let var_5 = Struct_1(var_0.x && var_0.x, ~_wgslsmith_mod_u32(var_4.x & var_4.x, var_4.x) | ~(var_4.x | var_4.x), ~(~_wgslsmith_sub_i32(~u_input.a.x, -var_2.x)));
    var_4 = _wgslsmith_mod_vec4_u32(select((max(vec4<u32>(4002u, var_5.b, 10901u, var_5.b), vec4<u32>(var_5.b, var_5.b, var_4.x, 19513u)) >> (~vec4<u32>(var_5.b, 21075u, var_4.x, var_4.x) % vec4<u32>(32u))) & ~vec4<u32>(3791u, var_5.b, 75589u, 4294967295u), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, var_4.x, var_5.b, var_4.x), vec4<u32>(35625u, 4294967295u, 4294967295u, var_5.b)), vec4<u32>(var_4.x, var_5.b, var_4.x, var_4.x) ^ vec4<u32>(46387u, 0u, 0u, var_5.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_5.b, 1u, 26903u, var_5.b), ~vec4<u32>(24727u, 4832u, 1u, 1u))), select(!var_0, select(select(var_0, vec4<bool>(false, false, var_5.a, var_0.x), vec4<bool>(var_0.x, var_0.x, var_5.a, false)), !var_0, vec4<bool>(var_5.a, false, false, false)), vec4<bool>(var_1.b.x == var_1.b.x, var_5.b > 1u, var_3.c.x >= -1897f, 526f >= var_3.c.x))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_4.wxx, vec3<u32>(var_4.x, 30575u, var_4.x)), 1u), 13112u, ~1u >> (~var_4.x % 32u), var_5.b) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, var_5.b, var_5.b, var_5.b), select(vec4<u32>(56887u, var_4.x, 0u, var_4.x), vec4<u32>(var_5.b, 0u, var_4.x, 0u), var_0)), ~(~4294967295u), 0u, ~(var_4.x & 1u)) % vec4<u32>(32u)));
    let var_6 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(4294967295u), 12006u, 4294967295u), _wgslsmith_mult_u32(~var_5.b, 107539u)), _wgslsmith_sub_u32(~0u, 1u) << (firstTrailingBit(19132u) % 32u)) & 0u;
    var_4 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(select(var_4.yz, vec2<u32>(var_5.b, 1u), var_5.a), ~vec2<u32>(4294967295u, var_4.x)), abs(firstTrailingBit(var_6)), max(19369u ^ var_4.x, _wgslsmith_dot_vec2_u32(var_4.yy, var_4.zy)), max(reverseBits(var_5.b), var_5.b)) ^ (vec4<u32>(var_4.x, firstTrailingBit(var_4.x), ~var_4.x, var_6) | _wgslsmith_mod_vec4_u32(vec4<u32>(56157u, _wgslsmith_div_u32(var_5.b, 43023u), var_5.b, var_5.b), firstLeadingBit(vec4<u32>(1u, 0u, var_5.b, var_6))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, _wgslsmith_f_op_f32(trunc(169f)), -((u_input.a.x & 1i) & _wgslsmith_clamp_i32(2147483647i, -35110i, u_input.a.x)) << (var_6 % 32u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, firstLeadingBit(i32(-1i) * -2147483647i), -13951i), vec4<i32>(abs(1i), -2147483647i, ~(-2147483647i), _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(u_input.a.x, 51345i, 2147483647i, 0i) & var_1.b)), firstTrailingBit(vec4<i32>(var_1.d, _wgslsmith_mod_i32(var_5.c, 0i), _wgslsmith_mod_i32(0i, -44440i), -16327i))), countOneBits(~(~0u) ^ ~select(4926u, var_6, var_5.a)));
}

