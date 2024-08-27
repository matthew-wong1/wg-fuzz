struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    global0 = true;
    let var_0 = Struct_1(firstTrailingBit(vec2<i32>(1i, max(~(-27319i), 41491i << (1u % 32u)))), select(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_1 = u_input.a;
    let var_2 = 90771u;
    let var_3 = !(!(!vec3<bool>(false, 4294967295u < var_2, var_0.b)));
    return select(!select(select(select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_0.b), true), !vec4<bool>(true, var_3.x, false, var_0.b), vec4<bool>(var_0.b, false, true, false)), select(select(vec4<bool>(var_0.b, var_0.b, var_3.x, true), vec4<bool>(false, var_3.x, var_3.x, true), var_3.x), vec4<bool>(true, false, var_0.b, true), !vec4<bool>(var_0.b, var_0.b, true, var_3.x)), select(u_input.a == 16345u, all(vec4<bool>(var_3.x, var_0.b, var_3.x, var_3.x)), true)), select(select(vec4<bool>(true & var_3.x, var_3.x, var_0.b, !var_3.x), vec4<bool>(false, !var_3.x, true, var_0.b), select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(true, var_3.x, var_0.b, false), false), select(vec4<bool>(true, var_3.x, true, var_0.b), vec4<bool>(var_3.x, var_0.b, true, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_0.b)), !vec4<bool>(true, true, true, var_3.x))), select(vec4<bool>(any(var_3), var_0.b, all(var_3.xx), 2147483647i <= var_0.a.x), vec4<bool>(true || var_3.x, true, !var_0.b, false), select(!vec4<bool>(true, var_3.x, var_0.b, var_3.x), !vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(false, false, var_0.b, var_3.x))), var_3.x), true);
}

fn func_2(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-648f, -443f) * 730f));
    let var_1 = select(vec2<bool>(true, _wgslsmith_f_op_f32(round(183f)) <= var_0), !vec2<bool>(-1088f >= _wgslsmith_f_op_f32(410f + var_0), any(func_3())), vec2<bool>(abs(~u_input.a) > max(min(u_input.a, 64406u), abs(1u)), select(!func_3().x, true, any(vec3<bool>(true, true, true)))));
    global0 = !(!var_1.x);
    let var_2 = !vec3<bool>(false, var_1.x, select(false, select(func_3().x, true, any(var_1)), select(any(vec3<bool>(false, false, var_1.x)), var_1.x, any(var_1))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 574f, -698f, -943f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-1239f + var_0), true)))), var_0, _wgslsmith_div_f32(489f, -1416f))));
    return vec2<i32>(-19196i, arg_0.x);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = select(vec4<i32>(i32(-1i) * -(~0i), arg_0.a.x, reverseBits(_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x) >> (abs(u_input.a) % 32u)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, -55855i)), max(-50797i, 68292i))), select(vec4<i32>(-2147483647i, 0i, 22144i, arg_0.a.x), vec4<i32>(-44232i, firstTrailingBit(max(0i, arg_0.a.x)), _wgslsmith_add_i32(i32(-1i) * -1i, arg_0.a.x), 40881i), func_3()), !any(!vec3<bool>(true, false, arg_0.b)));
    global0 = _wgslsmith_mult_u32(select(max(u_input.a, u_input.a), ~u_input.a, true) >> (~44657u % 32u), u_input.a) <= u_input.a;
    var var_1 = ~firstLeadingBit(1u);
    var var_2 = vec2<i32>(var_0.x, arg_0.a.x);
    var var_3 = -2147483647i;
    return !all(!select(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), !vec4<bool>(true, arg_0.b, false, arg_0.b), false));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = true;
    global0 = arg_0;
    let var_0 = func_4(Struct_1(func_2(min(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 80099i, 3036i, arg_1.a.x), vec4<i32>(arg_1.a.x, 0i, arg_1.a.x, arg_1.a.x)), -vec4<i32>(2147483647i, arg_1.a.x, 1i, 29088i))), select(true, true, false)));
    global0 = !(!select(any(select(vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, true), var_0)), any(func_3()), select(arg_1.b, true, var_0 | true)));
    let var_1 = func_3().yy;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) - 528f), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), _wgslsmith_f_op_f32(sign(-113f))))));
    global0 = !(!func_1(false, Struct_1(vec2<i32>(2147483647i, -12788i), true), _wgslsmith_mod_u32(1u, u_input.a))) & true;
    let var_1 = u_input.a;
    global0 = true;
    global0 = func_4(Struct_1(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1753i), vec2<i32>(2147483647i, -34552i), vec2<i32>(-2147483647i, -13923i))), _wgslsmith_mod_vec2_i32(-vec2<i32>(0i, 0i), vec2<i32>(25733i, 1i))), true));
    global0 = all(select(vec4<bool>(!func_3().x, func_1(false, Struct_1(vec2<i32>(-2559i, 0i), true), var_1 ^ var_1), true, any(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, any(vec3<bool>(false, false, true)), false, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), true), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1731f) == _wgslsmith_f_op_f32(-var_0.x), func_1(true, Struct_1(vec2<i32>(2147483647i, -1i), true), u_input.a) & false, any(vec4<bool>(true, true, false, false)), u_input.a >= _wgslsmith_sub_u32(var_1, var_1))));
    global0 = !(!any(vec3<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), false)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-385f - _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -650f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)));
    var var_3 = Struct_1(abs(firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(2279i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(14563i, -37183i), vec2<i32>(0i, 26050i))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec2<i32>(0i, func_2(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-8202i, var_3.a.x, var_3.a.x, var_3.a.x), vec4<i32>(-45881i, var_3.a.x, 6758i, var_3.a.x)))).x), _wgslsmith_f_op_vec3_f32(abs(var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, var_3.a.x, var_3.a.x), -vec3<i32>(-var_3.a.x, var_3.a.x << (u_input.a % 32u), _wgslsmith_mod_i32(var_3.a.x, var_3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-326f)) * _wgslsmith_f_op_f32(max(255f, -1413f))));
}

