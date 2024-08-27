struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = 1396f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global0 = vec2<f32>(arg_1, arg_1);
    global1 = 1f;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1537f, arg_1) - vec2<f32>(arg_1, global0.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(332f, global0.x) + vec2<f32>(-484f, -384f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1304f) - vec2<f32>(global0.x, arg_1))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f)), vec2<f32>(arg_1, arg_1)), vec2<bool>(all(vec4<bool>(true, true, false, true)), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1) * vec2<f32>(arg_1, 331f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1240f, 310f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1533f), _wgslsmith_f_op_f32(arg_1 + 1000f), any(vec2<bool>(true, false)))))));
    var var_0 = abs(-vec4<i32>(arg_0.a & firstLeadingBit(0i), _wgslsmith_clamp_i32(arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 0i), vec2<i32>(18541i, arg_0.a)), 318i), ~(-26227i), abs(-arg_0.a)));
    var_0 = vec4<i32>(_wgslsmith_clamp_i32(0i, arg_0.a, _wgslsmith_sub_i32(1i, select(-316i, var_0.x << (u_input.a.x % 32u), all(vec2<bool>(true, false))))), arg_0.a, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(max(-2147483647i, var_0.x), 3118i), countOneBits(_wgslsmith_mod_i32(arg_0.a, 2147483647i))), _wgslsmith_dot_vec4_i32(-min(-vec4<i32>(-4932i, var_0.x, 45504i, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 13961i), vec4<i32>(arg_0.a, var_0.x, arg_0.a, 1i))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_0.x, -22267i, -31288i, 31864i)), firstTrailingBit(firstLeadingBit(vec4<i32>(1i, var_0.x, var_0.x, var_0.x))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -511f) + -1000f), arg_1, true));
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(max(114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(11818i), _wgslsmith_f_op_f32(global0.x * global0.x))) - -1363f)))));
    var var_1 = Struct_1(-(~select(-2147483647i, -24044i, true)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -204f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1876f, 1631f))))))));
    var var_3 = _wgslsmith_mult_i32(var_1.a ^ 1i, _wgslsmith_add_i32((~var_1.a ^ var_1.a) >> (u_input.b % 32u), var_1.a));
    let var_4 = ~(abs(abs(abs(vec4<u32>(u_input.a.x, 4294967295u, 1u, 25007u)))) << (~vec4<u32>(~u_input.b, 36276u, u_input.b, u_input.b) % vec4<u32>(32u)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.xy))), _wgslsmith_f_op_vec2_f32(sign(var_2.yz)))), _wgslsmith_f_op_vec2_f32(step(var_2.xz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1168f), var_2.xx, arg_0.x))))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(round(var_2.x)))), 1423f))));
}

fn func_1() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(212f, -414f), vec2<f32>(global0.x, -130f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, global0.x)), any(vec2<bool>(false, false)))))));
    global1 = -336f;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, _wgslsmith_f_op_f32(global0.x - -402f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -530f) + vec2<f32>(573f, global0.x)), vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 141f) * _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), vec2<bool>(false, 1i >= _wgslsmith_dot_vec2_i32(select(vec2<i32>(31873i, 2147483647i), vec2<i32>(0i, -38900i), vec2<bool>(false, true)), -vec2<i32>(21009i, 2147483647i)))));
    var var_0 = Struct_2(u_input.a.yxz, _wgslsmith_f_op_f32(f32(-1f) * -408f));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-707f)), global0.x, global0.x, 696f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, -288f, -1276f, 540f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f - -1078f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1606f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(var_0.b - global0.x))))));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(1i);
    let var_1 = vec2<bool>(any(vec4<bool>(max(arg_3.a.x, 0u) != (arg_3.a.x >> (37497u % 32u)), arg_1.x, true, true)), true);
    let var_2 = -40006i;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * -1003f))))) - vec2<f32>(-318f, arg_3.b));
    var var_3 = vec2<f32>(arg_3.b, arg_3.b);
    return !vec4<bool>(var_1.x, false, any(!(!vec4<bool>(arg_1.x, true, true, false))), !(!arg_1.x) & !func_1().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.ww;
    let var_1 = !select(func_4(select(vec2<bool>(true, true), func_1(), vec2<bool>(false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), Struct_1(abs(-42228i)), Struct_2(u_input.a.xww, _wgslsmith_f_op_f32(-global0.x))), vec4<bool>(true, true, true, true), true);
    var var_2 = true;
    let var_3 = Struct_2(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, var_0.x), abs(_wgslsmith_add_u32(var_0.x, 4294967295u))), ~(min(118330u, var_0.x) & 1u), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-1000f + global0.x), true)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))));
    let var_4 = var_3.a & var_3.a;
    let var_5 = firstLeadingBit(vec2<i32>(8319i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 17236u), vec3<u32>(var_0.x, var_0.x, var_4.x)) % 32u), -(~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, global0.x, -500f, var_3.b)) - vec4<f32>(var_3.b, -809f, var_3.b, 471f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1194f, var_3.b, global0.x, global0.x) + vec4<f32>(907f, -159f, global0.x, -660f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 247f, global0.x, -2237f)))))))));
}

