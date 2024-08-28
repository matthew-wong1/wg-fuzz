struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: f32;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1967f)) - _wgslsmith_f_op_f32(global1.x - 511f))), global1.x, _wgslsmith_f_op_f32(max(315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -581f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1840f, -1289f, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 906f, global1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(767f, global1.x, 133f) + vec3<f32>(global1.x, 1959f, -437f))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-205f, 604f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(global1.x, global1.x, false))) * global1.x)));
    var var_0 = u_input.b.x;
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x), 284f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), true)), global1.x)));
    let var_1 = select(vec2<bool>(select(any(vec2<bool>(true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), true), !all(vec3<bool>(false, false, true))), vec2<bool>(true, any(vec2<bool>(true, true))), any(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true))));
    return -u_input.d.x | u_input.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_3.c + vec3<f32>(567f, global1.x, arg_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.c - vec3<f32>(875f, 252f, -1779f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.x, global1.x, arg_3.c.x) - _wgslsmith_f_op_vec3_f32(-arg_2))), vec3<bool>(!arg_0.b, any(select(vec4<bool>(true, true, true, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(true, true, false, true))), !(arg_0.b == arg_0.b)))), Struct_1(-reverseBits(~vec4<i32>(1281i, u_input.d.x, u_input.d.x, arg_3.a.x)), _wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(arg_0.a.a, 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.x, 16379u), vec2<u32>(4294967295u, arg_0.a.a)), vec2<u32>(arg_3.b.x, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_2.x, global1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_3.c.x, arg_2.x) + vec3<f32>(158f, 600f, global1.x)))), vec3<i32>(~func_3(), -1i, abs(abs(-1i)))), select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, any(select(vec4<bool>(arg_0.b, arg_0.b, true, false), vec4<bool>(arg_0.b, false, arg_0.b, true), arg_0.b)), true), true), ~vec3<i32>(-10908i, ~(~arg_1), ~(-59385i)), Struct_2(firstLeadingBit(~u_input.b.x) << (firstLeadingBit(arg_3.b.x) % 32u)));
    global0 = var_0.b.c.x;
    var var_1 = vec4<bool>(any(select(vec4<bool>(!var_0.c.x, arg_0.b, arg_0.b, true), vec4<bool>(var_0.c.x, true, arg_0.b || true, global1.x == var_0.a.x), -904f <= _wgslsmith_f_op_f32(sign(var_0.a.x)))), false, !any(vec2<bool>(var_0.c.x != arg_0.b, 41012u < arg_3.b.x)), any(vec3<bool>((var_0.a.x >= global1.x) || true, any(var_0.c.yx) | !arg_0.b, _wgslsmith_f_op_f32(var_0.a.x + arg_3.c.x) != -1008f)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_3.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 691f, var_0.a.x) * vec3<f32>(arg_2.x, 288f, 1183f)), true)))), Struct_1(~(~arg_3.a), vec2<u32>(firstLeadingBit(u_input.e), ~(~arg_3.b.x)), arg_2, min(firstTrailingBit(vec3<i32>(1i, arg_3.a.x, 2147483647i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(arg_3.a.wxx), ~vec3<i32>(-23485i, 17856i, 41204i)))), !vec3<bool>(true, !all(vec2<bool>(false, var_1.x)), any(vec4<bool>(arg_0.b, false, var_1.x, var_0.c.x))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -1i), vec2<i32>(var_0.d.x, arg_3.d.x), false), u_input.d.zx), -37720i), min(min(-10292i, u_input.d.x), u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-9891i, -19266i), var_0.d.x)), Struct_2(~reverseBits(~1u)));
    var var_3 = Struct_4(select(vec3<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, -9585i), -u_input.d.x) | ~(~u_input.d), var_0.b.d, !vec3<bool>(false, true, var_1.x || var_2.c.x)), vec2<bool>(arg_0.b, var_2.c.x));
    return select(select(vec3<bool>(arg_1 == 1i, arg_0.b, any(vec3<bool>(var_3.b.x, true, true))), var_2.c, any(select(vec4<bool>(var_1.x, true, false, true), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_2.c.x, true, true, var_0.c.x), var_3.b.x), !var_3.b.x))), select(!(!(!vec3<bool>(var_1.x, true, true))), var_0.c, var_0.c), all(!vec4<bool>(var_3.a.x <= u_input.d.x, false, var_0.c.x | var_1.x, true)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = false;
    global0 = arg_2.c.x;
    let var_1 = reverseBits(1u);
    global0 = global1.x;
    let var_2 = any(vec4<bool>(any(vec4<bool>(0i >= u_input.d.x, false, arg_2.b.x > arg_0.a.a, any(vec4<bool>(arg_0.b, true, false, true)))), var_0, true, false));
    return !vec4<bool>(_wgslsmith_mod_u32(var_1, 14376u) >= abs(reverseBits(1u)), true, true, true);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = select(!(!vec4<bool>(true, 12734i < arg_0, true, u_input.c == 44555u)), vec4<bool>(true, any(vec2<bool>(true, true)), false, true), any(!vec3<bool>(any(vec3<bool>(true, true, false)), true, select(true, false, false))));
    var_0 = func_4(Struct_3(Struct_2(4294967295u), any(vec4<bool>(false, var_0.x, false, var_0.x)) | (u_input.c > firstTrailingBit(u_input.a))), all(select(func_2(Struct_3(Struct_2(u_input.e), var_0.x), ~2147483647i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(-1820f, -946f, 409f))), Struct_1(vec4<i32>(-18318i, arg_0, 2147483647i, -1i), u_input.b.zx, vec3<f32>(global1.x, global1.x, -1106f), u_input.d)), vec3<bool>(var_0.x, var_0.x || var_0.x, !var_0.x), var_0.ywx)), Struct_1(_wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_0, u_input.d.x, 52734i, arg_2.x) | vec4<i32>(40685i, u_input.d.x, arg_1.x, arg_1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -13051i, arg_1.x, 1i) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.a, 0u) % vec4<u32>(32u)), vec4<i32>(32906i, -8431i, -18817i, 1i) | vec4<i32>(3011i, arg_0, 0i, arg_3.x))), vec2<u32>(0u, 0u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -897f) + vec3<f32>(global1.x, global1.x, global1.x)))), min(-(~u_input.d), vec3<i32>(arg_2.x, ~arg_2.x, select(u_input.d.x, 15240i, var_0.x)))), ~(~(~1u)) & _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x << (24486u % 32u)), 18699u));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -195f))))))), _wgslsmith_f_op_f32(ceil(global1.x))));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-899f, 913f, var_1, -791f), vec4<f32>(global1.x, var_1, global1.x, var_1), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(539f, 718f, global1.x, var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1122f, 1000f, 817f) * vec4<f32>(1413f, global1.x, -624f, global1.x)))), vec4<bool>(var_0.x, var_0.x, !all(vec3<bool>(var_0.x, var_0.x, var_0.x)), false))));
    return _wgslsmith_div_f32(global1.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = global1.x;
    global0 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x) & vec2<i32>(28341i, 1171i), u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))) - -752f) - -346f));
    let var_1 = -424f;
    let var_2 = vec4<u32>(u_input.e, ~_wgslsmith_add_u32(~abs(1u), u_input.e), u_input.b.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 315f) * _wgslsmith_f_op_f32(f32(-1f) * -1457f)), 1948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(186f)) * -225f), _wgslsmith_f_op_f32(1289f * _wgslsmith_f_op_f32(step(926f, -2049f))))));
}

