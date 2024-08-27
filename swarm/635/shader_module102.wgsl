struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<i32>) -> f32 {
    global0 = array<u32, 9>();
    let var_0 = -_wgslsmith_div_i32(arg_3.x, arg_0.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -297f);
}

fn func_3() -> f32 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a) | global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a, min(~vec2<u32>(8383u, u_input.a.x), vec2<u32>(46540u, global0[_wgslsmith_index_u32(0u, 9u)]) | u_input.a)), 9u)];
    let var_1 = Struct_2(-2147483647i);
    let var_2 = _wgslsmith_sub_vec3_u32(min(~(~vec3<u32>(15904u, u_input.b, u_input.b)), ~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 0u, 4294967295u))) >> (_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, 49402u, 1u)), countOneBits(vec3<u32>(4294967295u, 0u, 17331u))) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b) << (_wgslsmith_div_u32(~1u, u_input.b) % 32u), 9u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~max(0u, 24681u), 9u)], ~0u, u_input.a.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(firstTrailingBit(4294967295u)), 9u)], 9u)]));
    global0 = array<u32, 9>();
    var var_3 = Struct_1(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(f32(-1f) * -2938f));
    return -1951f;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x - 1645f);
    global0 = array<u32, 9>();
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(-1i), any(vec2<bool>(false, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)), select(vec4<i32>(-2147483647i, -739i, -1i, 2147483647i), vec4<i32>(58795i, -4823i, -1i, 50064i), vec4<bool>(false, true, false, false)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), arg_0.x))))) - _wgslsmith_div_f32(arg_0.x, 877f));
    var var_3 = vec4<bool>(true, arg_2, true, (~(~u_input.a.x) == select(_wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_sub_u32(u_input.b, 22447u), true)) | true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2, -617f, -1177f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-955f, -184f, -499f, arg_0.x)))))))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_2(-(~(i32(-1i) * -26529i)));
    var_0 = Struct_2(var_0.a);
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    let var_1 = Struct_2(var_0.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.xyz) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.wyw) - arg_2.www)));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    global0 = array<u32, 9>();
    var var_0 = arg_1.yy;
    global0 = array<u32, 9>();
    let var_1 = false || !((firstTrailingBit(arg_0) == arg_0) || false);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-473f, arg_2.b, arg_1.x, arg_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, arg_1.x, arg_2.b))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b, -230f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.x, 268f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -1151f, true)))), vec4<bool>(arg_2.a.x | true, !any(!vec2<bool>(var_1, var_1)), var_1 || all(!vec2<bool>(true, var_1)), !any(select(vec3<bool>(arg_2.a.x, arg_2.a.x, var_1), vec3<bool>(var_1, var_1, true), true)))));
    return 83288i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1696f - 1140f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + 627f))) * _wgslsmith_f_op_f32(946f * _wgslsmith_div_f32(921f, _wgslsmith_f_op_f32(func_1(Struct_2(2147483647i), false, vec2<f32>(-279f, -1928f), vec4<i32>(-13331i, -2147483647i, 21109i, -17213i)))))));
    var var_1 = func_5(countOneBits(i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(func_4(4294u, ~firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85129u, 9u)], 9u)], global0[_wgslsmith_index_u32(91135u, 9u)], 36510u)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, var_0.b, 1514f)), vec3<f32>(var_0.b, -1043f, var_0.b), true)), any(var_0.a), ~4294967295u > global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-400f, 284f)), _wgslsmith_f_op_f32(ceil(var_0.b))))));
    let var_2 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(650f))))));
    var var_3 = Struct_2(~(-1027i));
    let var_4 = vec2<i32>(var_3.a, -1i);
    global0 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_div_i32(1i, countOneBits(var_4.x)), firstTrailingBit(var_4.x)), vec2<u32>(global0[_wgslsmith_index_u32(~(u_input.b & abs(4294967295u)), 9u)], _wgslsmith_mult_u32(abs(~18787u), 0u)), vec2<u32>(_wgslsmith_add_u32(0u, 86107u), select(4294967295u, global0[_wgslsmith_index_u32(min(1u, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), 9u)], var_0.a.x)));
}

