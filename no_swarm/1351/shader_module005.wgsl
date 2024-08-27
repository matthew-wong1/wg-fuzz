struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = ~1u;
    var_0 = u_input.a.x;
    global0 = select(vec4<bool>(false, (global0.x || any(vec4<bool>(true, global0.x, true, global0.x))) | !all(global0.zw), !all(!vec3<bool>(global0.x, true, false)), all(vec2<bool>(true, true))), !vec4<bool>(global0.x, true, false, global0.x), global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = !(!(!(any(vec2<bool>(true, global0.x)) != !global0.x)));
    return select(vec4<bool>(any(select(!global0.yz, global0.yw, true)), var_2, true, all(select(select(global0.xx, vec2<bool>(var_2, var_2), global0.yx), vec2<bool>(var_2, false), vec2<bool>(var_2, true)))), vec4<bool>(true == (u_input.b > firstLeadingBit(u_input.b)), global0.x, -(~(-18297i)) < _wgslsmith_mod_i32(u_input.b, u_input.b), global0.x), !select(!select(vec4<bool>(global0.x, var_2, true, true), vec4<bool>(global0.x, var_2, var_2, global0.x), true), vec4<bool>(any(vec4<bool>(true, var_2, var_2, false)), true, all(vec4<bool>(var_2, var_2, var_2, global0.x)), global0.x), false));
}

fn func_2() -> vec4<i32> {
    global0 = !select(vec4<bool>(!global0.x, !global0.x && any(vec4<bool>(false, global0.x, false, true)), !global0.x, true), select(select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, global0.x, true, true))), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !func_3(vec3<f32>(-767f, -149f, 375f))), vec4<bool>(any(!vec3<bool>(global0.x, global0.x, global0.x)), any(global0.yx) & false, all(vec2<bool>(global0.x, global0.x)), true));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-509f - _wgslsmith_f_op_f32(step(649f, 488f))), _wgslsmith_f_op_f32(min(-239f, _wgslsmith_f_op_f32(2126f - 624f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, 1300f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, 200f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, 1048f) + vec2<f32>(722f, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1331f, -409f) + vec2<f32>(-1478f, -360f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-961f, -1592f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, var_0.x))))), vec2<f32>(-959f, _wgslsmith_f_op_f32(var_0.x + var_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(839f, -872f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -859f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -346f))))));
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.x));
    return vec4<i32>(abs(min(1i, -(~u_input.b))), countOneBits(_wgslsmith_mult_i32(-18677i, u_input.b)), 0i | (-1i ^ _wgslsmith_mult_i32(i32(-1i) * -45334i, u_input.b >> (20u % 32u))), _wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(-vec2<i32>(u_input.b, u_input.b))), _wgslsmith_mod_vec2_i32(max(-vec2<i32>(31681i, u_input.b), -vec2<i32>(-31915i, -2147483647i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(41882i, 59040i), vec2<i32>(33914i, 2147483647i)), u_input.b & -21690i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = !(!vec2<bool>(arg_3, !any(global0.ww)));
    var_0 = vec2<bool>(global0.x, false);
    let var_1 = arg_2.x;
    var_0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1010f, 248f, -431f), vec3<f32>(-763f, 686f, 394f), true)))))), vec3<f32>(_wgslsmith_f_op_f32(-1f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1637f)))).zy;
    let var_2 = _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-8485i, reverseBits(-1i)), 14831i), _wgslsmith_div_i32(u_input.b, 1i), _wgslsmith_clamp_i32(firstTrailingBit(-(~arg_2.x)), abs(arg_0.x), 1i));
    return vec4<bool>(select(_wgslsmith_add_i32(arg_2.x, select(-2147483647i, 1i, global0.x)) <= arg_2.x, global0.x, false), !(_wgslsmith_dot_vec3_i32(vec3<i32>(55307i, u_input.b, -1i), arg_0.wxz) >= -_wgslsmith_mod_i32(-29937i, var_1)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, 191f, 647f)))).x & any(!func_3(vec3<f32>(530f, 1007f, -837f))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), vec2<u32>(countOneBits(4294967295u), u_input.a.x)) < max(firstLeadingBit(4294967295u), reverseBits(_wgslsmith_clamp_u32(42418u, u_input.a.x, u_input.a.x))));
}

fn func_1() -> i32 {
    global0 = func_4(func_2(), 0u > (~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) ^ 1u), ~(~(-(vec4<i32>(-1i, u_input.b, 27768i, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 102935u) % vec4<u32>(32u))))), global0.x);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(268f, -2746f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(1878f, 874f, global0.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -852f)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(round(-220f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-710f)), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * var_1.x))))), all(vec3<bool>(global0.x, true, true)) & select(true, global0.x, false | global0.x))));
    global0 = !vec4<bool>(global0.x, 1566f > _wgslsmith_f_op_f32(-var_0.a), global0.x, ~(~8090u) >= u_input.a.x);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(), u_input.b, 3573i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -396f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-306f + -2234f))))), _wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(select(var_1, var_1, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f * var_1)) * -690f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))))));
    let var_3 = 1i;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1)), 1036f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.ywx, reverseBits(_wgslsmith_mult_i32(abs(var_0.x), -1i)), var_1, _wgslsmith_f_op_vec3_f32(-var_4));
}

