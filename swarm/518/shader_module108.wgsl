struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -446f;

var<private> global1: bool;

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<bool>, 6>;

var<private> global4: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<f32> {
    global3 = array<vec4<bool>, 6>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1302f)) - 319f)), global2.x, _wgslsmith_f_op_f32(abs(arg_2.x)), -201f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + -1916f), 1000f, -758f, 107f)), vec4<f32>(-834f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-arg_2.x)), -622f, _wgslsmith_f_op_f32(min(-1118f, -492f)))));
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(min(countOneBits(~vec2<i32>(6501i, -15776i)), vec2<i32>(i32(-1i) * -62165i, _wgslsmith_mult_i32(-1i, 0i)))), (!any(vec2<bool>(true, false)) | all(vec4<bool>(false, false, false, false))) && true);
    let var_1 = vec3<f32>(-1578f, _wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_0.a.x, var_0.a.x | var_0.a.x), select(vec2<i32>(33818i, 1i), var_0.a, var_0.b) >> (vec2<u32>(u_input.b.x, 34538u) % vec2<u32>(32u)), abs(var_0.a)) << (u_input.b.yx % vec2<u32>(32u)), true || (u_input.b.x == _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.b.x), ~vec4<u32>(u_input.b.x, 1u, 0u, u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(~1i, firstTrailingBit(_wgslsmith_mult_i32(0i, arg_0.a.x)), -abs(arg_0.a.x)), ~select(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), -vec3<i32>(arg_0.a.x, 0i, arg_0.a.x), !arg_0.b));
    var var_1 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, global2.x)), _wgslsmith_div_f32(global2.x, 696f), _wgslsmith_f_op_f32(853f * 2046f), -1414f) * _wgslsmith_f_op_vec4_f32(func_2(var_0.x, arg_0, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -513f, 2163f, global2.x))))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * global2.x), global2.x);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(i32(-1i) * -2147483647i, func_3(_wgslsmith_f_op_vec4_f32(func_2(-14950i, arg_0, vec4<f32>(134f, global2.x, global2.x, -518f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -181f, -365f, 1000f)))).x), -798f);
    var_1 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-737f * global2.x), _wgslsmith_f_op_f32(-global2.x), -477f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(886f, -590f, -229f, global2.x))))));
    return _wgslsmith_dot_vec2_i32(-var_1.a, ~vec2<i32>(_wgslsmith_clamp_i32(arg_0.a.x, 1851i, var_1.a.x) ^ ~(-2147483647i), -26847i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_1 {
    return func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, -1089f, global2.x, global2.x) + vec4<f32>(1177f, -781f, global2.x, -1135f))) - vec4<f32>(_wgslsmith_div_f32(global2.x, 268f), _wgslsmith_f_op_f32(787f - -1566f), global2.x, 1739f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(~1i), _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(-1i, -20293i)), -2147483647i), -(~vec3<i32>(1i, 0i, -2147483647i) << ((vec3<u32>(0u, 41297u, u_input.b.x) ^ u_input.b) % vec3<u32>(32u)))), -17813i);
    global4 = true;
    global3 = array<vec4<bool>, 6>();
    var var_1 = func_4(Struct_1(countOneBits(vec2<i32>(_wgslsmith_mult_i32(0i, 2147483647i), func_1(Struct_1(vec2<i32>(21244i, 17558i), true), 0u, u_input.c, u_input.b.x))), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), !select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), vec4<bool>(true, true, func_3(vec4<f32>(601f, -660f, global2.x, 1506f)).b, false), select(!global3[_wgslsmith_index_u32(135861u, 6u)], vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), reverseBits(u_input.b.zz)), u_input.c, max(~u_input.a, u_input.c)), ~(reverseBits(vec3<u32>(u_input.b.x, 4256u, u_input.c)) | (u_input.b ^ u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2057f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec4_f32(func_2(13867i, Struct_1(vec2<i32>(-2147483647i, var_1.a.x), var_1.b), vec4<f32>(global2.x, 339f, 1000f, global2.x))).x))) * global2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    var_1 = Struct_1(vec2<i32>(select(~var_1.a.x >> (_wgslsmith_mod_u32(1u, 1u) % 32u), min(~var_1.a.x, _wgslsmith_sub_i32(0i, 1i)), true), func_1(Struct_1(max(vec2<i32>(-4735i, var_1.a.x), var_1.a), var_1.b), ~12660u, u_input.b.x, _wgslsmith_add_u32(u_input.c, 0u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, select(u_input.c >> (0u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(25016u, 4294967295u), vec2<u32>(0u, u_input.b.x)), true), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 26908u, u_input.b.x, 12919u), ~vec4<u32>(35367u, u_input.a, 1u, 1u)), select(vec4<u32>(u_input.a, u_input.c, 14454u, u_input.b.x) << (vec4<u32>(1u, 77625u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.b.x, 1u, 1u), select(vec4<bool>(true, false, var_1.b, var_1.b), global3[_wgslsmith_index_u32(0u, 6u)], vec4<bool>(false, true, true, var_1.b))))), vec4<u32>(~(~(~u_input.c)), firstLeadingBit(30809u), _wgslsmith_dot_vec2_u32(~u_input.b.yy & (u_input.b.xz >> (u_input.b.yz % vec2<u32>(32u))), vec2<u32>(0u, u_input.b.x)), 0u));
}

