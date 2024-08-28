struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, true, false, false, false, false, true, true, true, true, true, true, false, true, false, false, true, true, true, true, true, false, true, false, true, false, true, true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = true;
    global0 = array<bool, 31>();
    var var_1 = u_input.a.x;
    global0 = array<bool, 31>();
    let var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(-1i, -13195i, 2147483647i)))), firstLeadingBit(vec3<i32>(1i, 1i, 1i)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-356f, 101f))))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-223f, -1360f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(942f, arg_0, 176f))), Struct_1(false))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-802f, arg_0) + vec2<f32>(878f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-910f, arg_0) * vec2<f32>(arg_0, arg_0))))))));
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, (u_input.a.x & _wgslsmith_mod_u32(1u, 1u)) & u_input.a.x);
    let var_2 = vec3<bool>(false, global0[_wgslsmith_index_u32(23493u, 31u)], global0[_wgslsmith_index_u32(47703u, 31u)]);
    let var_3 = Struct_1(-_wgslsmith_mult_i32(~(-14264i), abs(-62541i)) > (_wgslsmith_dot_vec2_i32(vec2<i32>(23499i, -1i), vec2<i32>(1i, 1i)) & 0i));
    return -172f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), -238f))))), _wgslsmith_f_op_f32(step(-1146f, _wgslsmith_f_op_f32(f32(-1f) * -384f))));
    let var_1 = _wgslsmith_add_vec3_i32(~_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(27168i, 51557i, -25008i)), select(-vec3<i32>(1702i, -1177i, -15021i), abs(vec3<i32>(-2147483647i, 3709i, -1035i)), select(vec3<bool>(true, arg_0.a, global0[_wgslsmith_index_u32(74553u, 31u)]), vec3<bool>(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(arg_1.x, 31u)]), vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(15427u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])))), -abs(vec3<i32>(i32(-1i) * -18763i, 1i, abs(1i))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-234f, 134f) - _wgslsmith_f_op_f32(f32(-1f) * -292f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -436f)))))) * _wgslsmith_f_op_f32(f32(-1f) * -856f));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-827f))))), -505f), -146f));
    global0 = array<bool, 31>();
    return Struct_1(any(!vec2<bool>(true, !arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_0 = Struct_1(true);
    var_0 = func_1(Struct_1(all(vec3<bool>(0u == u_input.a.x, false, true | global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), ~(~abs(vec2<u32>(u_input.a.x, 97378u)) ^ vec2<u32>(u_input.a.x, 4294967295u)), ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 27126u, 4294967295u), vec4<u32>(4294967295u, 9632u, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u))));
    global0 = array<bool, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 1556f)));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(-var_1.x)), var_1.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), -771f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 919f)), vec2<f32>(var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1084f))), var_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -820f), _wgslsmith_f_op_f32(f32(-1f) * -1026f), var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-622f, var_1.x, var_1.x, var_1.x) - vec4<f32>(-166f, -1069f, var_1.x, var_1.x))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(1000f * var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(ceil(-803f)), -1000f), var_1.x);
}

