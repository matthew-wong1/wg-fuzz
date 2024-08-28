struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2137f) * arg_0.a.x);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1693f - -1134f), arg_1);
    return arg_0.c.a.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1212f, 2439f, -1577f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-471f, -475f, 624f, -423f), vec4<f32>(1176f, 2051f, 1508f, 791f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1232f, -203f, -1572f, -381f) + vec4<f32>(943f, 1000f, -962f, 515f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(521f, -276f))), _wgslsmith_f_op_f32(max(-982f, -1001f)), 638f))), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), ~0u));
    var var_1 = Struct_2(var_0.c);
    var_1 = Struct_2(Struct_1(var_0.c.a, _wgslsmith_mod_u32(1u, 0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 68847u, 53652u), vec4<u32>(42040u, 1u, var_0.c.b, 79549u)) % 32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1208f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), 317f, func_2(Struct_3(vec3<f32>(1649f, var_0.a.x, 102f), var_0.b, Struct_1(var_1.a.a, arg_0)), -751f)))), _wgslsmith_f_op_f32(-var_0.b.x))));
    var_2 = var_0.b.yzw;
    return ~1269u;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = true;
    var_0 = !any(vec3<bool>(true, true, true));
    var var_1 = false;
    var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(64458u, 54754u, 0u, 26026u), ~vec4<u32>(0u, 1u, 67200u, 50615u))) > abs(1u);
    var_0 = 1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30594u, select(~59601u, ~4294967295u, func_2(Struct_3(vec3<f32>(-428f, -473f, -223f), vec4<f32>(1131f, 502f, -530f, -127f), Struct_1(vec2<bool>(true, false), 0u)), -1000f))), ~(~max(vec3<u32>(29134u, 27280u, 0u), vec3<u32>(1u, 1u, 12115u))));
    return 4294967295u < ~(~func_3(~64992u, max(40502i, arg_0), min(vec4<i32>(-60980i, 2147483647i, 0i, -1i), vec4<i32>(u_input.a.x, -1i, arg_0, -3132i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))), all(vec2<bool>(false, select(true, false, true))));
    var_0 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x), !(!vec3<bool>(var_0.x, false, true)), vec3<bool>(func_1(1i), false, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), select(!(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, false), var_0.x)), vec3<bool>(true, true, true), select(!(!vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x || true), select(var_0.x & true, var_0.x, var_0.x))), !(-_wgslsmith_mult_i32(47375i, u_input.a.x) < _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 25024i), vec4<i32>(2147483647i, 2147483647i, 0i, 15239i)), vec4<i32>(u_input.a.x, -38241i, u_input.a.x, -2147483647i))));
    var var_1 = -1932f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(-11935i), u_input.a.x), (i32(-1i) * -46456i) ^ ~_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, -741f, -722f))))))));
}

