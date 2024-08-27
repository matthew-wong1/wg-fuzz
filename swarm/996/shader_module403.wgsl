struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_3(Struct_1(~(~abs(u_input.d.xy))));
    var var_1 = Struct_1(~select(vec2<u32>(var_0.a.a.x, _wgslsmith_mult_u32(var_0.a.a.x, 4294967295u)), firstTrailingBit(firstLeadingBit(vec2<u32>(var_0.a.a.x, var_0.a.a.x))), true));
    var var_2 = abs(_wgslsmith_add_vec3_i32(u_input.a, -vec3<i32>(~(-2147483647i), u_input.a.x, select(u_input.a.x, u_input.a.x, false))));
    var var_3 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(arg_0, false, false)), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, false), !arg_0), vec3<bool>(true, arg_0, !arg_0)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), !vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec4<bool>(true, false, arg_0, true)))), vec3<bool>(!(1u <= var_1.a.x), any(!vec4<bool>(false, true, arg_0, arg_0)), _wgslsmith_add_i32(u_input.a.x, 15596i) > _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), select(vec3<bool>(firstTrailingBit(13785u) < max(u_input.b, var_1.a.x), arg_0, arg_0), vec3<bool>(!(!arg_0), true, !(arg_0 & true)), select(!(!vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0), all(vec4<bool>(true, false, true, true))), abs(var_1.a.x) < ~var_1.a.x)), true);
    let var_4 = Struct_1(~vec2<u32>(u_input.d.x, ~select(77507u, u_input.b, true)));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global1 = any(!select(vec4<bool>(true, false, false, true), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(true, arg_0.x, !arg_0.x, true && arg_0.x)));
    global1 = arg_0.x;
    var var_0 = -func_3(false);
    global0 = 4294967295u;
    global0 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f + 2319f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(759f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))))) > _wgslsmith_f_op_f32(f32(-1f) * -348f);
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(ceil(1000f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(302f + 1333f) + _wgslsmith_f_op_f32(select(-826f, -120f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1501f * 167f), -306f))), Struct_1(abs(min(_wgslsmith_sub_vec2_u32(u_input.d.zw, u_input.d.wz), countOneBits(vec2<u32>(4294967295u, u_input.d.x))))));
    var_0 = all(vec4<bool>(any(vec4<bool>(true, u_input.b != arg_0, true, any(vec4<bool>(true, false, false, true)))), !select(true, u_input.d.x <= 0u, true), u_input.a.x == _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 2973i, u_input.a.x)), vec4<i32>(u_input.a.x, 3549i, u_input.a.x, 38031i)), !(_wgslsmith_f_op_f32(710f - -427f) == var_1.a.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)) * _wgslsmith_f_op_f32(-var_1.a.x))) >= _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(min(var_1.a.x, 794f)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1302f, -512f), vec2<f32>(205f, 1476f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2146f, 676f), _wgslsmith_div_vec2_f32(vec2<f32>(1096f, 935f), vec2<f32>(287f, -2186f)))))), func_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.b) << (countOneBits(1u) % 32u), ~(~u_input.d.x))));
    var var_1 = Struct_3(func_1(58064u));
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -743f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-535f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, 202f, var_0.a.x, 115f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(891f * var_0.a.x), _wgslsmith_f_op_f32(round(1000f)))), vec4<f32>(_wgslsmith_div_f32(1012f, _wgslsmith_f_op_f32(-1858f * var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2282f)), _wgslsmith_f_op_f32(f32(-1f) * -122f)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f - var_0.a.x) + 819f))), !(1u <= var_0.b.a.x));
    let var_3 = vec3<i32>(_wgslsmith_add_i32(u_input.a.x, ~(-_wgslsmith_mult_i32(1i, u_input.a.x))), u_input.a.x, u_input.a.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a.yz)) + var_0.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1647f, 579f))))), _wgslsmith_f_op_vec2_f32(abs(var_0.a)), select(!select(vec2<bool>(var_2.b, true), vec2<bool>(false, true), vec2<bool>(var_2.b, false)), vec2<bool>(any(vec2<bool>(var_2.b, true)), !var_2.b), 2147483647i < (78704i & var_3.x)))), Struct_1(var_0.b.a & vec2<u32>(_wgslsmith_mult_u32(var_1.a.a.x, 0u), reverseBits(1u))));
    var_4 = var_0;
    var var_5 = Struct_3(var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(-791f, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, func_3(var_2.b) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_3.x), var_3.zx)), -(~vec4<i32>(var_3.x, -6326i, var_3.x, -1i)) & firstTrailingBit(vec4<i32>(var_3.x, u_input.a.x, 0i, 8705i))));
}

