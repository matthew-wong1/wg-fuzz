struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.yzw))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = true;
    global2 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(var_0.a.x)));
    global2 = firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(-38243i, u_input.c.x, 6767i), -vec3<i32>(global2.x, _wgslsmith_sub_i32(2147483647i, global2.x), -56123i)));
    return !select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, 40999u > u_input.a, true, true), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, u_input.a != 0u, select(true, false, true), false), vec4<bool>(false, all(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, true)), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))), vec4<bool>(!select(false, true, false), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !all(vec4<bool>(true, false, true, false)), (-11417i <= global2.x) | false));
}

fn func_2() -> i32 {
    var var_0 = any(select(select(vec4<bool>(false, all(vec4<bool>(true, true, false, true)), true, true), select(vec4<bool>(true, true, true, true), func_3(vec4<f32>(456f, 429f, 2680f, 183f), u_input.a), vec4<bool>(false, true, true, false)), func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2348f, -1703f, -267f, 108f))), ~8421u)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~0u <= u_input.a), false));
    var_0 = any(vec3<bool>(any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true)), false, any(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, -687f, -1004f, -1000f) - vec4<f32>(-261f, -714f, -195f, -1510f)), u_input.a).zww)));
    let var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(~(vec4<i32>(global2.x, 11040i, u_input.c.x, 57725i) >> (vec4<u32>(140105u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), countOneBits(vec4<i32>(-9281i, 2147483647i, -3491i, global2.x))), vec4<i32>(firstTrailingBit(0i), u_input.c.x, 0i, 1i & _wgslsmith_div_i32(u_input.c.x, ~global2.x)));
    let var_2 = Struct_1(vec3<f32>(-667f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-154f + 853f)));
    global2 = u_input.c;
    return countOneBits(i32(-1i) * -(~global2.x)) << (106376u % 32u);
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f * 1208f) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-599f * -1000f), _wgslsmith_f_op_f32(286f - -346f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1554f), _wgslsmith_f_op_f32(-1950f + -835f))))), _wgslsmith_f_op_f32(2340f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1460f, 484f)))) * _wgslsmith_f_op_f32(f32(-1f) * -112f))), _wgslsmith_f_op_f32(255f + 1416f), -1458f);
    global2 = vec3<i32>(-38934i ^ arg_1, arg_1, ~(~func_2())) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(103892u, 67342u, arg_0) & select(_wgslsmith_mult_vec3_u32(vec3<u32>(31599u, u_input.a, u_input.a), vec3<u32>(arg_0, arg_0, 0u)), ~vec3<u32>(arg_0, 0u, 1u), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), ~vec3<u32>(arg_0, arg_0, arg_0) & abs(max(vec3<u32>(94732u, 1u, u_input.a), vec3<u32>(1u, arg_0, u_input.a)))) % vec3<u32>(32u));
    global0 = var_0.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.xwx * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.zzz, var_0.wyy)))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1561f, 1221f, var_0.x, var_1.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-217f)))), -341f, -1646f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, _wgslsmith_div_f32(-919f, 589f), var_0.x, _wgslsmith_div_f32(-1756f, var_0.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(125f - var_1.a.x) + var_0.x) * _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(min(-238f, var_1.a.x)), (arg_0 >= 1u) && false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-259f, -1722f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(90331u, u_input.c.x)), 501f)))));
    var var_0 = true;
    let var_1 = u_input.a;
    let var_2 = vec3<bool>(func_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(812f)), _wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1397f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(879f * 413f), -1284f)), 57821u).x, any(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2721f) != _wgslsmith_f_op_f32(round(418f)), !all(vec3<bool>(true, false, false)), global2.x != (2147483647i & global2.x))), true);
    global1 = array<vec2<i32>, 18>();
    var var_3 = 401f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(41422i, global2.x, u_input.c.x), u_input.c), -24461i), -u_input.c.x), -countOneBits(53328i)));
}

