struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-2074f, -653f, 116f, 354f), false, 14810u), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(1257f, -607f, -3203f, 274f), true, 6255u), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(1066f, -1644f, -803f, -2023f), false, 4294967295u), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(1487f, 1414f, -520f, 984f), true, 1u), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1202f, 613f, 654f, 806f), false, 43746u), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(905f, -630f, -803f, 676f), false, 1u), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(1182f, 967f, 763f, -453f), false, 3312u), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-1064f, -1123f, 301f, -172f), true, 0u), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(1131f, 510f, 832f, -973f), true, 62363u), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(206f, -2149f, 173f, -1071f), true, 1u), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(354f, -1536f, 850f, -974f), true, 5715u), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(2083f, 725f, -1700f, 829f), true, 4294967295u));

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 12>();
    global2 = array<vec2<bool>, 7>();
    var var_0 = -min(~(~(vec3<i32>(global1.a, global1.a, global1.a) | vec3<i32>(global1.a, 21255i, -30816i))), countOneBits(vec3<i32>(global1.a, -7785i, global1.a) >> (~vec3<u32>(u_input.a.x, 54621u, 4513u) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mod_u32(select(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), false), 28856u);
    var var_2 = Struct_2(0i << (_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(var_1, var_1, 46142u, var_1)) % 32u));
    return !vec2<bool>(false, !(-6402i == global1.a));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = -251f;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(~firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x, 57437u, 6435u)), _wgslsmith_div_u32(u_input.a.x << (_wgslsmith_mult_u32(0u, 0u) % 32u), 1u << (max(59579u, u_input.a.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) + _wgslsmith_f_op_f32(-var_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 0u), 12u)];
    let var_2 = !(!func_3());
    let var_3 = Struct_2(abs(_wgslsmith_sub_i32(-2147483647i, global1.a >> (330u % 32u))) | (1i & (-global1.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(34770i, global1.a), vec2<i32>(-32345i, global1.a)))));
    let var_4 = 2147483647i;
    return ~(var_3.a & 1i);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = -_wgslsmith_add_i32(2147483647i, ~func_2(u_input.a & u_input.a));
    var var_1 = select(vec4<bool>(false, !all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true)), false), !select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -301f) < _wgslsmith_f_op_f32(ceil(-1000f))), vec4<bool>(true, true, true, true));
    var var_2 = Struct_2(min(~26797i, 19020i));
    var var_3 = vec2<i32>(-7050i, ~2147483647i);
    var_3 = vec2<i32>(-1i, _wgslsmith_mod_i32(~var_3.x, var_3.x) | global1.a) & select(_wgslsmith_mod_vec2_i32(~(~arg_1.wy), vec2<i32>(114i, _wgslsmith_dot_vec4_i32(arg_1, arg_1))), ~vec2<i32>(i32(-1i) * -15263i, ~global1.a), select(vec2<bool>(var_1.x, true), func_3(), vec2<bool>(true, true)));
    return Struct_2(~abs(var_3.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(234f * arg_0.b.x)), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))), false)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)) - arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1260f)))), _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(arg_0.b.x * -1431f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.b, arg_0.b, true))))));
    var var_1 = -global1.a;
    global1 = func_4(global1.a, vec4<i32>(_wgslsmith_div_i32(-(global1.a | global1.a), func_2(select(vec4<u32>(1u, 42263u, 32675u, arg_1), vec4<u32>(u_input.a.x, arg_0.d, 68520u, u_input.a.x), arg_0.a))), _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, global1.a), -10080i)), _wgslsmith_mult_i32(global1.a, 41208i), func_2(abs(u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(-1000f - 406f);
    var_1 = countOneBits(~(-25816i));
    return _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(max(4294967295u, ~arg_1), ~select(28755u, 4294967295u, arg_0.c), abs(arg_0.d & arg_1)), firstTrailingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a, global1.a), vec2<i32>(global1.a, global1.a)), vec2<i32>(-41537i, global1.a) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) <= global1.a, true, any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(55322u, func_1(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(1068f, 1354f, -1399f, -387f), false, 0u), u_input.a.x)), 7u)]), false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1912f, -485f)) + _wgslsmith_f_op_f32(1698f - 325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-814f, _wgslsmith_f_op_f32(f32(-1f) * -220f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f - -298f)) + _wgslsmith_f_op_f32(-916f + 1504f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(1f)))), (~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >= _wgslsmith_dot_vec2_u32(u_input.a.xz, abs(u_input.a.xy))) && !any(global2[_wgslsmith_index_u32(~u_input.a.x, 7u)]), abs(~0u));
    var_0 = Struct_1(!select(vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(true, u_input.a.x == 91807u, true, var_0.a.x), vec4<bool>(all(vec4<bool>(var_0.c, true, true, true)), true, false, false)), var_0.b, all(var_0.a), var_0.d);
    global2 = array<vec2<bool>, 7>();
    var var_1 = 5927u;
    let var_2 = var_0.a.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)) * vec4<f32>(var_0.b.x, 604f, var_0.b.x, var_0.b.x))) - var_0.b));
}

