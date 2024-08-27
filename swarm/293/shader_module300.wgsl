struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23899i;

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec3<u32>;

var<private> global3: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<i32>(~u_input.b & 0i, 2147483647i);
    let var_1 = vec4<bool>(true, select(select(true || any(vec2<bool>(false, true)), false, false), true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 65856u, 1u)) > 56244u), true && select(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), all(vec4<bool>(true, false, false, true)), true), all(vec3<bool>(any(vec4<bool>(false, false, false, true)) && true, all(vec3<bool>(false, false, true)), true)));
    global1 = array<Struct_1, 27>();
    let var_2 = ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.a, -36436i >> (global2.x % 32u)), _wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(u_input.b, u_input.a), max(var_0.x, -2147483647i))), -var_0.x);
    global1 = array<Struct_1, 27>();
    return select(select(!vec3<bool>(false, var_1.x, var_1.x), select(!select(vec3<bool>(var_1.x, var_1.x, false), var_1.wxz, true), select(var_1.zxz, !vec3<bool>(var_1.x, true, false), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(28568u, global2.x, global2.x), vec3<u32>(global2.x, global2.x, global2.x)) != _wgslsmith_div_u32(0u, global2.x)), select(vec3<bool>(false, !var_1.x, var_0.x < 2147483647i), vec3<bool>(!var_1.x, true, !var_1.x), !vec3<bool>(false, var_1.x, true))), select(var_1.xwy, vec3<bool>(true, true, true | !var_1.x), vec3<bool>(var_1.x, true, var_1.x)), !select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, var_1.x)), !vec3<bool>(var_1.x, true, var_1.x)), select(!vec3<bool>(false, var_1.x, var_1.x), !var_1.xyz, true && var_1.x), vec3<bool>(false, var_1.x, var_1.x & var_1.x)));
}

fn func_2() -> u32 {
    global3 = any(select(select(func_3(), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), false), true), vec3<bool>(true, true, true), false));
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(abs(u_input.b) << ((4294967295u << (global2.x % 32u)) % 32u), -4370i), u_input.a | abs(55895i)), countOneBits(_wgslsmith_sub_vec2_i32(max(countOneBits(vec2<i32>(1i, -1i)), -vec2<i32>(u_input.b, -45845i)), vec2<i32>(u_input.b, 1i))));
    let var_1 = Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(~56984u, firstLeadingBit(global2.x), 1u), abs(vec3<u32>(global2.x, 51577u, global2.x) | vec3<u32>(0u, 33800u, 1851u))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 39149i, var_0.x, var_0.x) | vec4<i32>(40473i, var_0.x, u_input.a, var_0.x)), u_input.b, 0i ^ u_input.a), false);
    var var_2 = -7475i;
    let var_3 = vec4<f32>(136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(115f - -1340f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(459f - 1028f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1911f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))));
    return _wgslsmith_dot_vec4_u32((reverseBits(vec4<u32>(var_1.a.x, var_1.a.x, global2.x, global2.x)) | ~(~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 0u))) | (~(vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, var_1.a.x) | vec4<u32>(global2.x, 1u, 1u, 4294967295u)) | vec4<u32>(select(var_1.a.x, var_1.a.x, true), ~12368u, firstTrailingBit(global2.x), ~var_1.a.x)), ~select(vec4<u32>(1u, ~var_1.a.x, var_1.a.x, global2.x), ~select(vec4<u32>(global2.x, 72922u, global2.x, var_1.a.x), vec4<u32>(global2.x, 8198u, global2.x, var_1.a.x), false), vec4<bool>(false, -1700f > var_3.x, true, var_3.x >= var_3.x)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = func_2();
    let var_1 = vec3<bool>(arg_0, arg_0, func_3().x);
    var var_2 = Struct_1(abs(~vec3<u32>(_wgslsmith_mult_u32(global2.x, 0u), _wgslsmith_mult_u32(global2.x, 49390u), func_2())), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.a << (arg_1 % 32u), u_input.b, ~u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 30383i, u_input.b), vec3<i32>(u_input.a, u_input.a, 32596i)) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, 39920i), vec3<i32>(u_input.b, -44893i, u_input.a) << (vec3<u32>(arg_1, 0u, global2.x) % vec3<u32>(32u)))), false);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(abs(vec3<u32>(global2.x, global2.x, 4294967295u)), ~(vec3<u32>(1u, 0u, 753u) << (vec3<u32>(0u, global2.x, global2.x) % vec3<u32>(32u))), true) ^ vec3<u32>(global2.x, ~7159u, select(reverseBits(~global2.x), firstLeadingBit(global2.x >> (21426u % 32u)), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(~(~var_0), max(vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.b), 1i, ~1i) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(51749u, global2.x, 1u), var_0) % vec3<u32>(32u)), -(func_1(true, var_0.x, vec4<f32>(1599f, 134f, -107f, -1476f)) >> (var_0 % vec3<u32>(32u)))), true);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~1u), var_1.a.x, ~(0u ^ ~global2.x)), 27u)];
    var_1 = Struct_1(var_2.a, _wgslsmith_div_vec3_i32(var_2.b, _wgslsmith_clamp_vec3_i32(var_2.b, abs(-var_2.b), var_1.b)), all(vec2<bool>(all(!vec4<bool>(true, var_1.c, var_2.c, var_1.c)), !var_2.c)));
    let var_3 = vec4<i32>(var_1.b.x, 92164i >> (~(~0u) % 32u), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_1.b.x, u_input.a), var_1.b), _wgslsmith_sub_vec3_i32(abs(var_1.b), func_1(false, 4294967295u, vec4<f32>(-252f, -391f, 1808f, -1000f)))), var_2.b.x >> (var_1.a.x % 32u));
    let var_4 = ~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(~var_1.a.x, _wgslsmith_div_u32(11156u, 18353u)), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, global2.x, 4294967295u, var_2.a.x), abs(vec4<u32>(9226u, 4294967295u, var_0.x, 4294967295u)))));
    var var_5 = global1[_wgslsmith_index_u32(131954u, 27u)];
    var var_6 = 523f;
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(558f + _wgslsmith_f_op_f32(var_7 + -2163f))), var_7), abs(var_3));
}

