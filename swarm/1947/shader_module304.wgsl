struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<i32> {
    var var_0 = !vec4<bool>(false, true, arg_0, true);
    var_0 = select(!(!vec4<bool>(any(var_0.ywz), true, select(var_0.x, var_0.x, var_0.x), true)), vec4<bool>(false, arg_0, arg_0 | var_0.x, true), true);
    var var_1 = Struct_1(any(select(vec4<bool>(true, true, var_0.x && var_0.x, false), !vec4<bool>(var_0.x, true, var_0.x, true), arg_0)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 24058u, u_input.a))))), vec4<u32>(firstLeadingBit(u_input.a), 1u, ~u_input.b.x, select(~firstTrailingBit(1u), 0u, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) * 1f)))));
    var var_2 = ~select(~var_1.c.xxy, vec3<u32>(var_1.c.x, ~(~var_1.b.x), _wgslsmith_sub_u32(u_input.b.x, u_input.a)), arg_1);
    let var_3 = !select(!vec4<bool>(false, var_0.x, var_1.e <= 267f, any(vec2<bool>(var_0.x, true))), !select(select(vec4<bool>(arg_0, false, true, var_0.x), vec4<bool>(false, true, arg_0, arg_1), vec4<bool>(var_0.x, var_0.x, true, var_1.a)), !vec4<bool>(arg_0, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true)), !select(vec4<bool>(var_0.x, true, false, arg_0), !vec4<bool>(arg_1, arg_1, arg_0, var_0.x), !arg_1));
    return select(vec2<i32>(-1i, ~(~1i)), vec2<i32>(i32(-1i) * -1i, ~1i), arg_0);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = 19944u;
    var var_1 = _wgslsmith_dot_vec2_i32(select(func_3(true, false), vec2<i32>(select(26722i, 39417i, true), i32(-1i) * -2147483647i), true), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, 44903i), _wgslsmith_add_i32(0i, 1i)), -firstTrailingBit(vec2<i32>(-2147483647i, -21603i)))) | -1i;
    var var_2 = select(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true))), vec3<bool>(!(arg_0 > 879f), true, false), true), !vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), any(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, false)), true), vec2<bool>(true, all(vec3<bool>(false, true, false))))));
    var_2 = !select(select(vec3<bool>(true, var_2.x, all(vec4<bool>(false, var_2.x, true, var_2.x))), select(!vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, false, var_2.x), all(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), vec3<bool>(var_2.x == true, var_2.x, any(vec2<bool>(var_2.x, var_2.x)))), select(vec3<bool>(!var_2.x, var_2.x && var_2.x, true), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, false, true)), vec3<bool>(false, !var_2.x | var_2.x, var_2.x || var_2.x));
    let var_3 = select(select(!var_2.yz, var_2.xz, true), !select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x), var_2.zz), any(vec4<bool>(_wgslsmith_f_op_f32(step(-385f, 114f)) <= _wgslsmith_f_op_f32(sign(arg_0)), !var_2.x & var_2.x, !all(vec3<bool>(var_2.x, true, true)), true)));
    return !select(!select(!vec3<bool>(var_2.x, true, var_3.x), select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, false, var_2.x), true), var_3.x), !(!(!vec3<bool>(var_3.x, var_2.x, false))), all(var_2.zz));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> vec4<f32> {
    let var_0 = any(vec3<bool>(any(select(func_2(arg_1), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), true)), all(vec3<bool>(false, true, true)) | select(any(vec3<bool>(false, true, false)), true, true), arg_1 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_1 = abs(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(-17731i, 30224i), ~0i));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(arg_0)), true))), _wgslsmith_f_op_f32(-arg_1), arg_1)));
    let var_3 = Struct_1(all(vec3<bool>(false, all(!vec2<bool>(var_0, var_0)), !var_0)), countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(15276u, arg_2, arg_2), ~vec3<u32>(arg_2, u_input.b.x, 0u) | ~vec3<u32>(20928u, 0u, arg_2))), vec4<u32>(1u, u_input.b.x, min(0u << ((21474u ^ arg_2) % 32u), ~1405u), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.a, u_input.a), abs(0u)))), vec2<f32>(_wgslsmith_f_op_f32(sign(145f)), 655f), var_2.x);
    var var_4 = -abs(max(select(vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(var_1.x, -2147483647i, 1i), vec3<bool>(true, true, var_0)), vec3<i32>(-10721i, -19183i, var_1.x))) & vec3<i32>(-_wgslsmith_mult_i32(var_1.x, 0i | var_1.x), ~var_1.x ^ select(~6328i, var_1.x, true), 0i);
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.d.x, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(trunc(arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(max(arg_0, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1799f))) * _wgslsmith_f_op_f32(179f * _wgslsmith_f_op_f32(sign(-1295f)))), -717f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(1021f, _wgslsmith_f_op_f32(905f - 944f), u_input.b.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(639f, -864f, _wgslsmith_div_f32(1362f, -1307f), -959f)))), ~(57189i << (u_input.a % 32u)), -1i);
}

