struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-7827i, 2147483647i, 2147483647i, 8118i, 0i, 0i, i32(-2147483648), 1i, 1i, -11239i, 3953i, -32730i, i32(-2147483648), 609i, 0i, 888i, i32(-2147483648), i32(-2147483648), 2147483647i, 1i, -1i, -17797i, 2147483647i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-604f, -477f)))) - _wgslsmith_f_op_f32(floor(-454f))));
    let var_1 = Struct_3(Struct_1(reverseBits(~vec2<u32>(20007u, 18932u)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-2748f - -929f), ~u_input.d.zx), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1711f))));
    global0 = array<i32, 23>();
    let var_2 = 12031i;
    return ~(~((vec2<u32>(4294967295u, u_input.c) ^ (vec2<u32>(var_1.a.d.x, 30058u) & var_1.a.d)) | _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a.d, vec2<u32>(var_1.a.d.x, 0u)), ~vec2<u32>(0u, 1u))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = countOneBits(~reverseBits(reverseBits(_wgslsmith_sub_vec2_u32(u_input.e, u_input.e))));
    let var_1 = vec4<u32>(var_0.x, abs(~(~abs(0u))), u_input.c, firstLeadingBit(~_wgslsmith_add_u32(max(u_input.d.x, 13320u), _wgslsmith_sub_u32(25346u, var_0.x))));
    var var_2 = Struct_2(-global0[_wgslsmith_index_u32(var_0.x, 23u)], true);
    var var_3 = Struct_1(_wgslsmith_div_vec2_u32(u_input.b.wx, func_3()), !any(select(!arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(-828f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1853f)))))), vec2<u32>(~_wgslsmith_mod_u32(30259u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 8971u, 1u, 1u))), ~u_input.d.x));
    let var_4 = ~_wgslsmith_sub_u32(1u >> (~u_input.b.x % 32u), var_1.x);
    return Struct_1(select(~vec2<u32>(1u, abs(var_4)), u_input.b.xz, !arg_0.xw), -39336i <= _wgslsmith_mod_i32(2147483647i, countOneBits(_wgslsmith_sub_i32(21439i, global0[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-814f, 944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.c)))))), vec2<u32>(~_wgslsmith_div_u32(var_1.x, 0u), _wgslsmith_div_u32(~45524u | firstLeadingBit(var_3.a.x), ~55848u)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1030f, -685f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-354f - -1953f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec2<f32>(693f, arg_1.b))))));
    global0 = array<i32, 23>();
    let var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))), func_2(select(!vec4<bool>(false, arg_2, arg_1.a.b, arg_2), select(vec4<bool>(arg_1.a.b, arg_1.a.b, arg_2, true), vec4<bool>(false, arg_1.a.b, true, arg_1.a.b), vec4<bool>(true, true, arg_2, true)), any(vec3<bool>(arg_2, arg_2, true)))).c));
    let var_2 = Struct_1(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(20545u, 79890u), arg_1.a.a))), arg_1.a.b, _wgslsmith_f_op_f32(114f - var_1), _wgslsmith_sub_vec2_u32(vec2<u32>(13798u >> (func_2(vec4<bool>(true, arg_1.a.b, arg_1.a.b, false)).a.x % 32u), ~1u), func_3()));
    var var_3 = select(select(!(!select(vec2<bool>(var_2.b, false), vec2<bool>(false, var_2.b), false)), !select(vec2<bool>(arg_2, false), select(vec2<bool>(false, arg_2), vec2<bool>(false, true), vec2<bool>(arg_2, arg_2)), var_2.a.x >= u_input.b.x), !vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, var_2.b), vec2<bool>(arg_1.a.b, var_2.b), var_2.b), vec2<bool>(arg_2, false)), select(vec2<bool>(false, false), !vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b)), select(vec2<bool>(true, var_2.b), !vec2<bool>(arg_1.a.b, arg_2), any(vec3<bool>(arg_2, arg_2, true)))), select(select(!vec2<bool>(arg_1.a.b, false), !vec2<bool>(true, arg_1.a.b), false), !select(vec2<bool>(arg_1.a.b, var_2.b), vec2<bool>(false, arg_2), arg_2), any(select(vec2<bool>(arg_1.a.b, arg_2), vec2<bool>(var_2.b, false), vec2<bool>(false, true)))), select(!select(vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), vec2<bool>(var_2.b, arg_2)), select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(var_2.b, false), vec2<bool>(false, var_2.b), arg_2), select(vec2<bool>(true, false), vec2<bool>(arg_1.a.b, var_2.b), false), !vec2<bool>(true, var_2.b)))), vec2<bool>(true, min(countOneBits(global0[_wgslsmith_index_u32(29453u, 23u)]), global0[_wgslsmith_index_u32(countOneBits(u_input.a), 23u)]) <= (_wgslsmith_dot_vec4_i32(vec4<i32>(-861i, -1i, 481i, -4330i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 0i, global0[_wgslsmith_index_u32(1u, 23u)], 34028i)) ^ -2605i)));
    return 2436u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 23>();
    let var_0 = 1f;
    var var_1 = func_4(-823f, Struct_3(func_2(select(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, false, false), arg_0), !vec4<bool>(true, arg_0, arg_0, arg_0), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2246f)) + var_0)), func_2(vec4<bool>(false, any(vec2<bool>(arg_0, true)), true, false)).b);
    let var_2 = !(!(!(!select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, arg_0, false, false), false))));
    let var_3 = -global0[_wgslsmith_index_u32(u_input.e.x, 23u)];
    return Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(select(vec2<u32>(u_input.a, 13423u), vec2<u32>(62583u, 0u), arg_0)), ~(u_input.e >> (vec2<u32>(u_input.d.x, 39051u) % vec2<u32>(32u)))) >> (firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 30262u), vec2<u32>(56466u, 56861u)), vec2<u32>(0u, u_input.e.x))) % vec2<u32>(32u)), !var_2.x, func_2(var_2).c, _wgslsmith_add_vec2_u32(~vec2<u32>(~64947u, ~u_input.c), firstTrailingBit(vec2<u32>(u_input.b.x, 37137u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-140f, 724f, true))));
    global0 = array<i32, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1543f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) * _wgslsmith_f_op_f32(f32(-1f) * -547f)))), _wgslsmith_f_op_f32(273f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1536f)) + _wgslsmith_f_op_f32(227f + 1000f))))));
    let var_2 = var_0;
    global0 = array<i32, 23>();
    let var_3 = var_0.a.b;
    var var_4 = vec3<u32>(4294967295u, ~4294967295u, _wgslsmith_mod_u32(1u, u_input.c));
    global0 = array<i32, 23>();
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i >> (_wgslsmith_dot_vec2_u32(max(firstTrailingBit(var_0.a.d), u_input.d.xy), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~95849u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.xy * _wgslsmith_f_op_vec2_f32(min(var_1.zy, var_1.xy))), vec2<f32>(-902f, var_0.b), false))), 48613u, ~vec4<u32>(~4294967295u >> (~u_input.d.x % 32u), var_2.a.d.x, func_1(-998f <= var_0.b).a.x, 29846u));
}

