struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_4(~vec3<u32>(~65940u, ~min(0u, arg_0.a.x), _wgslsmith_mult_u32(0u, ~43606u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a, vec2<bool>(false, arg_1.x))) + vec2<f32>(-459f, -917f)) + arg_0.b.a), _wgslsmith_f_op_f32(-364f - arg_0.b.a.x)));
    let var_1 = Struct_4(vec3<u32>(~firstLeadingBit(1u), 1u, arg_0.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1094f, var_0.b.a.x) * _wgslsmith_f_op_vec2_f32(var_0.b.a - vec2<f32>(var_0.b.a.x, 500f)))), _wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(select(-1898f, -1986f, !arg_1.x)))));
    var var_2 = _wgslsmith_add_vec2_u32(max(vec2<u32>(~9381u, 1u), vec2<u32>(var_1.a.x, 4294967295u)), vec2<u32>(19644u, (var_0.a.x >> (52299u % 32u)) >> (_wgslsmith_dot_vec3_u32(var_1.a, ~var_1.a) % 32u)));
    let var_3 = ~_wgslsmith_div_vec2_u32(select(~vec2<u32>(4294967295u, 46884u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 9003u), var_1.a.zz), vec2<bool>(false, true)), vec2<u32>(abs(max(1u, 10069u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, 12547u, var_0.a.x), ~vec4<u32>(var_2.x, var_0.a.x, 34992u, 1u))));
    var var_4 = var_0.b.a;
    return var_1.b.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-892f, -383f, false)), _wgslsmith_f_op_f32(min(-1475f, -481f)))), _wgslsmith_f_op_f32(func_3(Struct_4(~arg_0.wyz, Struct_1(vec2<f32>(-703f, 660f), -399f)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_2 = Struct_2(var_1.a);
    let var_3 = Struct_3(-1000f, var_2.a.a, arg_0.x >= arg_1, arg_0.wy, Struct_1(var_1.a.a, var_2.a.a.x));
    let var_4 = Struct_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.a.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_3.b - var_1.a.a), _wgslsmith_f_op_vec2_f32(-var_3.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.a * var_2.a.a))))), u_input.a, _wgslsmith_f_op_f32(step(var_2.a.a.x, _wgslsmith_f_op_f32(706f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * var_2.a.a.x))))));
    return var_3.e;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_1(arg_2.xy, arg_3.a.x);
    let var_1 = ~1u;
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(52995u, 0u, var_1, var_1), vec4<u32>(46825u, 51836u, 1u, var_1)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1))).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1343f + 490f))))), arg_2.x);
    var var_2 = vec2<i32>(-_wgslsmith_clamp_i32(abs(-1i & u_input.a.x), -2147483647i, -_wgslsmith_mod_i32(0i, arg_3.b.x)), ~min(arg_3.b.x, select(countOneBits(56017i), arg_3.b.x ^ 19595i, true)));
    var_2 = vec2<i32>(firstLeadingBit(max(-2147483647i, firstLeadingBit(u_input.a.x << (var_1 % 32u)))), countOneBits(2147483647i));
    return _wgslsmith_f_op_f32(f32(-1f) * -1444f);
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(892f - -1000f), func_2(vec4<u32>(0u, 1u, 19248u, 0u), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-504f, -549f, 599f) + vec3<f32>(1084f, -1601f, -1000f)), Struct_5(vec2<f32>(104f, 1237f), u_input.a, 558f))))));
    global0 = -793f;
    var var_0 = Struct_4(vec3<u32>(~(_wgslsmith_clamp_u32(8511u, 37662u, 87472u) & ~0u), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(32822u, 13301u), ~vec2<u32>(26945u, 1u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52076u, 4294967295u, 4294967295u), vec3<u32>(8397u, 0u, 0u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(48506u, 96115u)), _wgslsmith_mod_u32(0u, 33594u), 4294967295u, 1u), 108375u));
    global0 = _wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(-386f)));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(3639i, 1i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 25773i))), u_input.a.zxy) | _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -38622i, -_wgslsmith_div_i32(u_input.a.x, -2147483647i), select(1693i, -25609i, true), u_input.a.x << ((var_0.a.x | var_0.a.x) % 32u)), ~(-u_input.a));
    return all(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), select(vec3<bool>(false, var_0.a.x != 4294967295u, true), vec3<bool>(true, true, true), (1u == var_0.a.x) | all(vec2<bool>(true, false))), !(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(1u, 46626u, var_0.a.x)) > var_0.a.x)));
}

fn func_5(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - 439f)))) * -307f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-592f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(334f)))))));
    var var_0 = Struct_4(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u))), Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(sign(func_2(vec4<u32>(13099u, 4535u, 1u, 52856u), _wgslsmith_clamp_u32(54948u, 0u, 18547u)).b))));
    var var_1 = -u_input.a.zy;
    global0 = var_0.b.a.x;
    return firstLeadingBit(var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39044u;
    var_0 = func_5(func_1());
    let var_1 = Struct_4(~vec3<u32>(0u << (1u % 32u), 1u, 25451u) ^ vec3<u32>(max(1u, select(2113u, 65202u, false)), _wgslsmith_mult_u32(min(1u, 20804u), select(84195u, 1u, true)), ~1u), func_2(_wgslsmith_mod_vec4_u32(min(max(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(0u, 69482u, 67403u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(max(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(128343u, 0u, 1u, 73802u)))), countOneBits(29030u)));
    let var_2 = -656f;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(125057u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, -502f, var_3.b.a.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b.b, var_1.b.b, -1061f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1947f, var_2, 560f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b, var_2, 964f) - vec3<f32>(var_2, var_1.b.b, var_1.b.b))))));
}

