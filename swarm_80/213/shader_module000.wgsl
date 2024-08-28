struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> vec4<i32> {
    return ~(-reverseBits(vec4<i32>(u_input.b.x & arg_0, u_input.a.x, ~u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 0i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)) - 1200f), 144f));
    var var_1 = false;
    let var_2 = !(!arg_0.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f - -2256f)), _wgslsmith_f_op_f32(ceil(376f))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(369f)) - _wgslsmith_f_op_f32(625f + 1638f)), -724f <= _wgslsmith_f_op_f32(sign(1228f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f * _wgslsmith_f_op_f32(min(-105f, -380f)))))));
    let var_4 = -(~min(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x)), func_2(firstLeadingBit(u_input.a.x), true, !var_2, !arg_0)));
    return false;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = !(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))));
    var var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(~(~arg_1.a.x), ~(arg_1.a.x | 49616u), arg_1.a.x), 1u, 8706u, arg_1.a.x);
    let var_2 = Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.a, arg_1.a), arg_1.a), arg_1.a));
    var var_3 = all(select(select(select(!vec4<bool>(var_2.a.x, false, var_2.a.x, false), vec4<bool>(false, true, var_2.a.x, true), vec4<bool>(var_2.a.x, var_2.a.x, false, false)), vec4<bool>(true, var_2.a.x, var_2.a.x, true), false), select(vec4<bool>(true, var_2.a.x, func_1(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false), var_1.www), all(vec3<bool>(var_2.a.x, var_2.a.x, false))), select(select(vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, true, false, var_2.a.x), var_2.a.x), select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, true, var_2.a.x), true), select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.x)), all(select(vec3<bool>(var_2.a.x, true, var_2.a.x), vec3<bool>(var_2.a.x, true, var_2.a.x), false))), select(vec4<bool>(true, var_2.a.x, true, var_1.x != 1u), select(select(vec4<bool>(false, var_2.a.x, var_2.a.x, true), vec4<bool>(false, var_2.a.x, true, var_2.a.x), var_2.a.x), select(vec4<bool>(true, var_2.a.x, var_2.a.x, false), vec4<bool>(var_2.a.x, true, true, true), var_2.a.x), vec4<bool>(var_2.a.x, true, true, true)), var_2.a.x)));
    var_0 = !any(vec2<bool>(~arg_1.a.x != _wgslsmith_dot_vec4_u32(var_2.c, vec4<u32>(21820u, 0u, 12267u, 38223u)), true));
    return arg_1.a.xxw;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b);
    let var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) * var_0)));
    var var_2 = Struct_2(var_0);
    var var_3 = _wgslsmith_div_i32(min(firstTrailingBit(0i), u_input.a.x), ~(-1i));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22293u;
    var var_1 = func_4(vec4<bool>(true, any(vec4<bool>(-5980i <= u_input.b.x, true, false, func_1(vec4<bool>(false, true, true, false), vec3<u32>(1u, 1u, 4294967295u)))), true, true), Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(sign(1666f)) > 223f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f - 371f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1182f - 305f) + -509f)), firstLeadingBit(vec4<u32>(1u, ~67771u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13949u, 49563u, 1u), vec4<u32>(37716u, 1u, 4294967295u, 1u))))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(7190u, 1u, 4294967295u, 52613u), vec4<u32>(13839u, 11735u, 1u, 1u)), firstTrailingBit(0u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(2305u, 1u, 506u), vec3<u32>(4294967295u, 1u, 0u)), ~4294967295u), vec3<u32>(abs(15603u), ~20868u, 1u)), min(~func_3(2439f, Struct_3(vec4<u32>(7003u, 4294967295u, 1u, 100345u))), _wgslsmith_sub_vec3_u32(select(vec3<u32>(12615u, 61882u, 116328u), vec3<u32>(4294967295u, 4294967295u, 396u), vec3<bool>(false, false, true)), func_3(168f, Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 22060u)))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true)));
    var var_2 = -31500i;
    var var_3 = vec3<i32>(min(1i, _wgslsmith_sub_i32(u_input.a.x, ~(-1i))), -2147483647i, select(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-51078i, u_input.b.x, 37125i, u_input.a.x), vec4<i32>(0i, 35888i, 1i, 3164i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.b.x, u_input.a.x, -20314i, -5000i))), u_input.b.x), u_input.a.x, true));
    var_3 = -vec3<i32>(~(-17770i), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_3.x, 0i, 11504i), vec4<i32>(0i, 0i, -51314i, u_input.a.x)) | -10703i) & (func_2(-1i, false, true, vec4<bool>(false, true, true, true)).x ^ -2664i), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~4960u, abs(vec2<i32>(u_input.a.x, -u_input.b.x)) & _wgslsmith_sub_vec2_i32(var_3.yx, vec2<i32>(u_input.a.x, -5920i) | var_3.zy), 22381i, vec2<i32>(i32(-1i) * -var_3.x, var_3.x), var_1.a);
}

