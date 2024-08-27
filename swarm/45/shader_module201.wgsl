struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<f32> {
    var var_0 = u_input.b;
    var_0 = ~_wgslsmith_sub_vec4_u32(abs(u_input.b), reverseBits(max(vec4<u32>(4294967295u, 47108u, u_input.a.x, u_input.b.x), abs(u_input.b))));
    let var_1 = min(u_input.b, vec4<u32>(var_0.x, 2791u, ~(~1u & u_input.b.x), ~8309u));
    var_0 = ~min(~select(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_0.x, 145192u, var_0.x, var_1.x)), reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_1.x)), all(vec3<bool>(true, true, true))), vec4<u32>(~0u, ~firstTrailingBit(var_1.x), select(19603u, 53676u, false) << (~var_0.x % 32u), max(_wgslsmith_sub_u32(u_input.a.x, var_0.x), var_0.x)));
    let var_2 = any(!vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false)), true, any(vec3<bool>(false, true, false)) || true, true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -486f, _wgslsmith_f_op_f32(trunc(204f)), arg_1), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1017f, arg_0, global0.x, arg_1))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-905f)), _wgslsmith_div_f32(-1071f, arg_1), -463f, _wgslsmith_f_op_f32(f32(-1f) * -333f)))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(vec3<i32>(arg_0.a.x, -17659i, arg_0.a.x), 4294967295u);
    var_0 = arg_0;
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-3606f, global0.x, 2311f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2606f)) - -1000f), -204f), 118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -938f) + _wgslsmith_f_op_f32(1318f - global0.x))), _wgslsmith_f_op_f32(-global0.x))));
    return global0.x;
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(func_3(Struct_1(firstLeadingBit(vec3<i32>(2147483647i, 6828i, 1i)), countOneBits(u_input.b.x)))), _wgslsmith_f_op_f32(global0.x * 1161f))));
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(28617u, abs(0u)), ~(~_wgslsmith_dot_vec3_u32(u_input.b.wwx, vec3<u32>(u_input.b.x, 0u, u_input.b.x))), ~4904u, ~u_input.a.x), vec4<u32>(~(~abs(10869u)), ~(~(u_input.b.x | 1u)), select(~u_input.a.x, ~7021u, true), 1u));
    var var_1 = vec4<u32>(~firstTrailingBit(0u) >> (var_0.x % 32u), ~0u, ~0u, 1u);
    var var_2 = Struct_1(abs(vec3<i32>(-(~(-25225i)), abs(1i), ~max(-1i, -1i))), _wgslsmith_mult_u32(min(1u, 1u), 51179u));
    var_2 = Struct_1(var_2.a, ~var_1.x);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-1088f * -903f))), -753f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-114f + 1342f), _wgslsmith_div_f32(1364f, -1735f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f * global0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 2562f, global0.x, global0.x)), vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(1133f, global0.x, global0.x, _wgslsmith_f_op_f32(-1729f * _wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(793f, -1023f), global0.x)), -2128f)).x, -964f, _wgslsmith_f_op_f32(floor(851f)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1665f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1827f - global0.x))), true)) * 646f), global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-948f, 1000f) + global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-64019i, -1i, 1i, firstLeadingBit(26767i)), vec4<i32>(1i, 1i, 1i, 1i) | (vec4<i32>(-1i, 0i, 13669i, 57434i) << (u_input.b % vec4<u32>(32u)))), -vec4<i32>(31967i, 1i, 0i, -1i) >> (~max(u_input.b, vec4<u32>(u_input.b.x, 21320u, 8637u, 1u)) % vec4<u32>(32u))), 2147483647i, _wgslsmith_f_op_f32(-var_0.x));
}

