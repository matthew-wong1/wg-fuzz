struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 13> = array<u32, 13>(45077u, 0u, 4294967295u, 24496u, 1u, 1u, 45996u, 4294967295u, 1u, 38847u, 1u, 1u, 0u);

var<private> global2: u32 = 4294967295u;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    global3 = ~select(u_input.c, vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_clamp_u32(arg_0.x, global1[_wgslsmith_index_u32(global3.x, 13u)], 4294967295u), 1u, global1[_wgslsmith_index_u32(1u, 13u)] >> (arg_0.x % 32u)) << (vec4<u32>(arg_0.x, 0u, 4294967295u << (arg_0.x % 32u), _wgslsmith_div_u32(u_input.b.x, 3293u)) % vec4<u32>(32u)), vec4<bool>(false, false, true, _wgslsmith_mult_u32(4294967295u, 0u) > u_input.b.x));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f), arg_1.x))) - _wgslsmith_f_op_f32(round(-433f))), 1000f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), 669f))));
    let var_2 = -max(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(-2147483647i, 1i)), vec2<i32>(i32(-1i) * -1i, -12724i)), vec2<i32>(-_wgslsmith_sub_i32(arg_3.b, 30194i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -32403i, 2147483647i), vec3<i32>(-1i, arg_2.b, u_input.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, arg_1.x, arg_1.x, var_0)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1119f - var_0), arg_1.x), _wgslsmith_f_op_f32(-1202f * arg_1.x), _wgslsmith_f_op_f32(var_0 - var_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2831f, -385f, 1093f, arg_1.x)))))));
    return 1u;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec4<u32> {
    global1 = array<u32, 13>();
    let var_0 = Struct_5(select(!select(vec2<bool>(arg_0, false), select(vec2<bool>(true, false), vec2<bool>(arg_0, false), true), select(false, arg_0, true)), select(vec2<bool>(true, true | arg_0), select(vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), true), true), _wgslsmith_add_vec2_u32(vec2<u32>(global3.x, ~global1[_wgslsmith_index_u32(global3.x, 13u)]) | u_input.b.yx, ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], ~26511u)), _wgslsmith_f_op_f32(-2296f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1711f)) * _wgslsmith_f_op_f32(trunc(2663f))) - 1108f)), false);
    var var_1 = 6421i;
    let var_2 = (~firstTrailingBit(u_input.a) ^ -2147483647i) | 1i;
    var var_3 = select(select(select(vec4<bool>(any(var_0.a), var_0.d, var_0.c != var_0.c, var_0.a.x & true), !select(vec4<bool>(var_0.d, arg_0, arg_0, false), vec4<bool>(false, false, true, var_0.d), vec4<bool>(true, false, false, var_0.d)), var_0.d), select(vec4<bool>(arg_0, var_0.d & arg_0, false, true), vec4<bool>(!var_0.a.x, arg_0, true, var_0.c >= 246f), vec4<bool>(arg_0, true, any(vec3<bool>(false, false, true)), var_0.c >= var_0.c)), !vec4<bool>(!var_0.a.x, var_2 == var_2, true, arg_0)), select(!select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(false, var_0.d, false, true), true), !vec4<bool>(false, arg_0, false, false), var_0.a.x), vec4<bool>(true, true, true, true), var_0.a.x), select(vec4<bool>(true, !select(var_0.a.x, var_0.d, var_0.a.x), !(global1[_wgslsmith_index_u32(0u, 13u)] > u_input.c.x), (var_0.d | arg_0) | arg_0), !vec4<bool>(true, arg_0, arg_1.x > -3710i, false), any(vec4<bool>(!arg_0, select(arg_0, arg_0, arg_0), 50157i <= var_2, var_0.d))));
    return _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(18079u, var_0.b.x, var_0.b.x, global3.x), u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(58503u, 4294967295u, var_0.b.x, 1u) << (u_input.b % vec4<u32>(32u)), vec4<u32>(var_0.b.x, global1[_wgslsmith_index_u32(45636u, 13u)], 0u, 0u))), countOneBits(~vec4<u32>(global3.x, ~global3.x, ~global3.x, 0u)));
}

fn func_1() -> Struct_3 {
    var var_0 = min(~vec4<u32>(_wgslsmith_clamp_u32(global3.x, 0u, u_input.c.x) | global1[_wgslsmith_index_u32(u_input.b.x, 13u)], ~1u, 0u, 1u & func_2(u_input.b.ww, vec2<f32>(-1741f, 655f), Struct_4(true, u_input.a), Struct_4(false, u_input.a))), ~vec4<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~10569u), 0u, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]));
    global3 = _wgslsmith_mult_vec4_u32(u_input.c, max(max(reverseBits(vec4<u32>(4294967295u, 1221u, 6455u, global3.x)), func_3(true, vec2<i32>(u_input.a, 45796i))), func_3(true, ~select(vec2<i32>(u_input.a, 14363i), vec2<i32>(-37601i, -1i), vec2<bool>(true, true)))));
    global3 = firstTrailingBit(~u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-100f)), global3.x, _wgslsmith_f_op_f32(685f + -806f), vec4<f32>(_wgslsmith_div_f32(2975f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(4471f - 719f)))), _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(select(-667f, 999f, true)), -1049f), -2147483647i);
    var var_2 = -1139f;
    return Struct_3(vec2<i32>(u_input.a, 0i), firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(global3.x, 58749u))) <= _wgslsmith_dot_vec2_u32(var_0.zz, ~abs(var_0.wz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<i32>(u_input.a, -35014i), true);
    global2 = _wgslsmith_add_u32(5434u, _wgslsmith_div_u32((4294967295u >> (_wgslsmith_sub_u32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 13u)]) % 32u)) & _wgslsmith_mult_u32(1u, ~u_input.b.x), global3.x));
    let var_1 = true;
    var var_2 = func_1();
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~global1[_wgslsmith_index_u32(reverseBits(9218u), 13u)], abs(29056u), ~(~u_input.c.x)), vec3<i32>(~firstTrailingBit(47105i), reverseBits(var_2.a.x), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(-370f)), _wgslsmith_f_op_f32(sign(518f)), _wgslsmith_f_op_f32(-176f * 977f), -958f)))), -2147483647i | (-2147483647i | _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 34857i, var_0.a.x, 1i), ~vec4<i32>(var_2.a.x, 21089i, -74903i, var_0.a.x))));
}

