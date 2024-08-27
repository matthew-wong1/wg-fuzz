struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> bool {
    let var_0 = ~0u;
    var var_1 = _wgslsmith_mod_vec3_u32(abs(u_input.d.zww), u_input.d.zwy);
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_add_i32(~u_input.c, 0i) & _wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(u_input.b & 0i, u_input.c)), 2737i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(565f, -514f))), -1803f) * 1623f));
    let var_4 = Struct_1((u_input.c ^ ~_wgslsmith_div_i32(u_input.c, u_input.a.x)) | 1i);
    return true;
}

fn func_3() -> i32 {
    var var_0 = any(select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var_0 = any(!vec3<bool>(func_1(), false & select(true, false, true), !any(vec4<bool>(true, true, true, false))));
    let var_1 = Struct_2(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(u_input.d.x != 0u, false), 1f < _wgslsmith_f_op_f32(round(-428f))));
    var var_2 = _wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(max(-100f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1826f) + 1243f))))));
    var_0 = true;
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b ^ (i32(-1i) * -1i), 63162i), _wgslsmith_dot_vec3_i32(u_input.a.ywy, abs(vec3<i32>(-7337i, u_input.b, -26457i)))) & _wgslsmith_sub_i32(u_input.c, u_input.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = select(-min(vec2<i32>(~u_input.b, func_3()), u_input.a.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), u_input.a.yw), select(select(vec2<bool>(true, arg_1), vec2<bool>(!arg_1, all(vec3<bool>(arg_1, arg_1, true))), select(select(vec2<bool>(arg_1, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), 24727u != u_input.d.x)), !(!vec2<bool>(false, arg_1)), select(select(!vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1), vec2<bool>(arg_1, false)), !select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), vec2<bool>(func_1(), any(vec2<bool>(false, arg_1))))));
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, false, arg_1, arg_1)), var_0.x <= -1i), !vec4<bool>(true, var_0.x <= 21127i, false, true), arg_1), vec4<bool>(!(any(vec4<bool>(true, arg_1, arg_1, false)) | all(vec2<bool>(arg_1, false))), arg_1, arg_1, false), !(!select(!vec4<bool>(arg_1, true, true, true), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_1, true, arg_1, arg_1)), true)));
    var_0 = u_input.a.xw;
    var_0 = ~(u_input.a.yy & -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zy), _wgslsmith_add_i32(51341i, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * vec2<f32>(-939f, arg_0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(1627f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -2125f)), _wgslsmith_f_op_f32(f32(-1f) * -200f)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(u_input.d, u_input.d | vec4<u32>(_wgslsmith_sub_u32(60234u, abs(u_input.d.x)), u_input.d.x, ~(~33117u), u_input.d.x ^ min(u_input.d.x, 18050u)));
    var var_1 = -u_input.c << (select(0u, ~_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 0u, 26135u, 1u), u_input.d)), false) % 32u);
    let var_2 = -1063f;
    var var_3 = !((false | func_1()) != true);
    let var_4 = all(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, false), any(vec4<bool>(false, true, true, true))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))));
    var_1 = -2147483647i;
    var_1 = 2147483647i;
    let var_5 = Struct_2(vec2<bool>(var_4, any(vec3<bool>(278u > var_0.x, !var_4, false))));
    var var_6 = firstLeadingBit(countOneBits(firstTrailingBit(vec4<u32>(func_2(vec2<f32>(-1416f, var_2), true), 0u, abs(0u), min(0u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2), -465f, 2012f, _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-857f, 1000f, var_2, var_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(869f, 906f, 188f, var_2) + vec4<f32>(-909f, -1183f, var_2, var_2)))) * vec4<f32>(563f, var_2, 2287f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-167f)), var_2))));
}

