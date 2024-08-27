struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: f32 = 1660f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = vec4<u32>(min(9736u, firstLeadingBit(min(~14194u, abs(4294967295u)))), 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~53284u, 30554u), ~(~1u)), ~min(_wgslsmith_sub_u32(75334u, _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_add_u32(min(68093u, 0u), 1u)));
    global0 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_mult_vec4_i32(min(-countOneBits(select(vec4<i32>(-1i, u_input.c, u_input.b, u_input.c), vec4<i32>(6383i, u_input.a.x, 13090i, -1i), true)), -vec4<i32>(countOneBits(u_input.a.x), -2147483647i, u_input.b, _wgslsmith_add_i32(-2147483647i, 0i))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -41264i) & _wgslsmith_clamp_i32(u_input.c, 1i, 1i), 0i, ~(-u_input.b), firstLeadingBit(-21801i)) & _wgslsmith_div_vec4_i32(min(vec4<i32>(-46996i, 1i, u_input.c, -2147483647i), -vec4<i32>(u_input.b, -16291i, u_input.a.x, u_input.b)), firstLeadingBit(vec4<i32>(-9003i, -1i, u_input.a.x, 2147483647i) & vec4<i32>(-8021i, -958i, 2147483647i, u_input.c))));
    let var_2 = Struct_1(vec2<i32>(-2147483647i, firstLeadingBit(2147483647i)), vec3<bool>(false, true, !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 59490u, abs(~37286u), _wgslsmith_add_u32(48772u, var_0.x) >> (1u % 32u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, var_0.x, 1u, var_0.x)), vec4<u32>(var_0.x & var_0.x, 1u & var_0.x, var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1323f * -1000f)), _wgslsmith_f_op_f32(246f - -1047f), -527f, _wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1345f, 214f, 750f, -872f) - vec4<f32>(-1404f, -1085f, -3019f, 1334f)))))));
    global1 = -829f;
    return 4421i;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-410f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1198f)));
    let var_0 = vec3<i32>(-18861i, 37363i, _wgslsmith_mod_i32(max(reverseBits(-31883i), abs(53062i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2676u), vec2<u32>(0u, arg_0)) % 32u)), 0i));
    var var_1 = _wgslsmith_mod_u32(arg_0, ~_wgslsmith_add_u32(~arg_0, arg_0));
    let var_2 = global0[_wgslsmith_index_u32(arg_0, 22u)];
    let var_3 = -vec3<i32>(func_3(), -_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -1i, 0i, var_0.x), vec4<i32>(var_2.a.x, -64819i, var_2.a.x, var_0.x)), 42720i);
    return var_2.d.x;
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, 2969f, -1636f, -1160f)) - vec4<f32>(-172f, 177f, 782f, 137f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1609f, 827f, -827f, 1424f)), vec4<f32>(683f, 499f, 605f, -373f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, vec4<bool>(false, true, true, false), true)), 1193f, _wgslsmith_f_op_f32(2038f + -1522f), _wgslsmith_f_op_f32(1000f + -333f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, 1000f, -228f, 670f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-622f, -1191f, 2290f, -260f), vec4<f32>(144f, -804f, 1763f, 499f))), false)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(-304f)), _wgslsmith_f_op_f32(219f * -1103f), _wgslsmith_f_op_f32(min(1072f, 756f)), _wgslsmith_f_op_f32(floor(960f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 335f, 305f, 661f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 476f, 622f, 2336f)))))), select(!vec4<bool>(true, true, true, u_input.b >= u_input.a.x), vec4<bool>(true, all(vec2<bool>(false, false)) & all(vec4<bool>(true, false, false, true)), true == all(vec3<bool>(true, false, false)), true & all(vec2<bool>(false, false))), !(all(vec2<bool>(false, true)) || false))));
    global0 = array<Struct_1, 22>();
    var var_1 = Struct_1(abs(vec2<i32>(1i, _wgslsmith_add_i32(u_input.a.x, select(u_input.a.x, u_input.c, false)))), vec3<bool>(true, true, true), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(39423u, 35784u, 4294967295u, 0u), ~vec4<u32>(0u, 1u, 93520u, 14446u), true), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(4294967295u, vec4<bool>(false, false, true, false), false)), -246f), var_0.x)));
    return StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(var_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -608f, 419f, -536f)))), vec4<f32>(var_1.d.x, -1132f, -756f, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0)) + var_1.d)), var_0.x, ((max(var_1.c.x, var_1.c.x) >> (var_1.c.x % 32u)) << ((~var_1.c.x | ~var_1.c.x) % 32u)) | ~firstLeadingBit(var_1.c.x), var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

