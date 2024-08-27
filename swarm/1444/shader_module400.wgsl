struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(u_input.b.wyy, vec3<u32>(4294967295u, 8808u, 16562u)), _wgslsmith_mult_vec3_u32(u_input.b.zwy, u_input.b.wxy), vec3<bool>(true, true, true)) | min(select(vec3<u32>(arg_0, u_input.b.x, arg_0), vec3<u32>(u_input.b.x, arg_0, 0u), vec3<bool>(false, false, false)), max(vec3<u32>(1u, arg_0, 4294967295u), u_input.b.yxw)), min(min(u_input.b.wyy, vec3<u32>(arg_0, u_input.b.x, arg_0)) << (_wgslsmith_div_vec3_u32(u_input.b.zzy, vec3<u32>(54226u, 35208u, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.b.zzz, max(vec3<u32>(4294967295u, arg_0, 0u), vec3<u32>(arg_0, arg_0, u_input.b.x))))), u_input.b.x, 1u);
    let var_1 = ~60389u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 1844f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], -437f)), arg_2.x) * _wgslsmith_f_op_vec2_f32(-arg_2.yx)))));
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, ~u_input.a.x, 1i)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -702f);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1, 1u)] * _wgslsmith_f_op_f32(var_4 * global0[_wgslsmith_index_u32(var_1, 1u)])), global0[_wgslsmith_index_u32(~40894u & (579u << (var_1 % 32u)), 1u)])), _wgslsmith_f_op_f32(-var_2.a.x)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1142f, -888f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.xz), _wgslsmith_f_op_vec2_f32(-arg_2.wy))), var_2.a)));
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~56474u, 1u)];
    let var_1 = u_input.a.x;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -1132f);
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(-1i, var_1), abs(~(-25172i)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 37796i, var_1, firstLeadingBit(u_input.a.x)) << (firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, reverseBits(-11169i), -u_input.a.x, 0i), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -26490i, u_input.a.x, u_input.a.x), vec4<i32>(var_1, -14674i, u_input.a.x, u_input.a.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(5822u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]) + vec2<f32>(global0[_wgslsmith_index_u32(106901u, 1u)], global0[_wgslsmith_index_u32(4449u, 1u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(63881u, vec4<i32>(var_1, u_input.a.x, 35971i, -2147483647i), vec4<f32>(1301f, -1116f, 1215f, 1039f))) - vec2<f32>(global0[_wgslsmith_index_u32(38571u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)])))));
    return global0[_wgslsmith_index_u32(0u, 1u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(ceil(arg_1.a.x)), arg_3.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)] * -783f), arg_1.a.x, 588f)))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_3 - _wgslsmith_f_op_vec3_f32(round(var_0)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.yy + vec2<f32>(global0[_wgslsmith_index_u32(36247u, 1u)], -1005f)));
    global0 = array<f32, 1>();
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1.a.x;
    let var_1 = max(-(~u_input.a.x), ~(~1i << (_wgslsmith_mult_u32(4294967295u, u_input.b.x) % 32u)));
    var var_2 = func_4(-u_input.a.x, arg_1, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1580f, 742f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec3<f32>(arg_0.a.x, arg_0.a.x, 1420f))), vec3<f32>(-1427f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], arg_0.a.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(706f, global0[_wgslsmith_index_u32(14036u, 1u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(312f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)])) + _wgslsmith_f_op_vec2_f32(-var_2.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, var_2.a.x)) + _wgslsmith_f_op_vec2_f32(-arg_0.a))), vec2<bool>(select(true, all(vec3<bool>(true, false, true)), false), true))));
    var var_4 = u_input.a;
    return ~(u_input.b | min(~u_input.b ^ select(u_input.b, vec4<u32>(u_input.b.x, 10863u, 1u, u_input.b.x), vec4<bool>(false, true, true, false)), ~u_input.b));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = func_5(func_4(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(-1i, 2147483647i)), ~(-u_input.a.zz)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a)), arg_1.a)), !(!arg_3), vec3<f32>(-494f, -1205f, _wgslsmith_f_op_f32(func_2()))), arg_1);
    var_1 = u_input.b & firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.b.wxx, min(vec3<u32>(var_1.x, 1u, 8960u), u_input.b.yxx)), ~_wgslsmith_add_u32(arg_2, arg_2), arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 26015u, 0u, var_1.x), ~u_input.b)));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    return select(!vec4<bool>(any(!vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)), all(vec4<bool>(arg_3.x, true, true, false)), true, arg_3.x), !vec4<bool>(arg_3.x, true, false, true & !arg_3.x), !any(vec2<bool>(all(vec4<bool>(arg_3.x, arg_3.x, true, true)), false & arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], -1865f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-790f, global0[_wgslsmith_index_u32(59178u, 1u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1780f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(2472u, 1u)], -278f))))));
    let var_1 = ~u_input.b.x;
    var var_2 = any(func_1(~(-49209i) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 36779i, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1073f, var_0.a.x))))), 30585u, !vec2<bool>(any(vec4<bool>(true, false, false, true)), true)));
    var var_3 = var_0;
    global0 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(var_3.a.x, global0[_wgslsmith_index_u32(var_1, 1u)])), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], var_0.a.x)))), var_0), 289f);
}

