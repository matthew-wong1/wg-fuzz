struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 4294967295u, 1u, 15599u), vec4<u32>(1u, 0u, 24458u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u));

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-19636i, i32(-2147483648), 13722i), vec3<i32>(i32(-2147483648), 87811i, -25790i), vec3<i32>(-17089i, -25680i, -27710i), vec3<i32>(22611i, 1i, 0i), vec3<i32>(-17967i, 16174i, -35960i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> i32 {
    global1 = array<vec3<i32>, 5>();
    global0 = array<vec4<u32>, 3>();
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(8104i, arg_2)) << (u_input.a.yx % vec2<u32>(32u)), vec2<i32>(arg_2, arg_2)));
    let var_1 = select(!select(vec3<bool>(any(arg_3), true, all(vec2<bool>(arg_3.x, arg_3.x))), !vec3<bool>(false, arg_3.x, arg_3.x), !(!arg_3.x)), select(!vec3<bool>(!arg_3.x, arg_3.x, any(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x))), !vec3<bool>(all(vec3<bool>(arg_3.x, false, false)), all(vec3<bool>(true, arg_3.x, arg_3.x)), arg_3.x), arg_3.x), !(!(true & all(vec3<bool>(true, arg_3.x, arg_3.x)))));
    global1 = array<vec3<i32>, 5>();
    return var_0.a ^ _wgslsmith_clamp_i32(~arg_2, 2147483647i, abs(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(abs(0u), 5u)], vec3<i32>(var_0.a, -6227i, 22583i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    var var_1 = !all(vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_f_op_f32(max(216f, 196f));
    global1 = array<vec3<i32>, 5>();
    var var_3 = 8581i;
    return u_input.a.yz | (vec2<u32>(min(u_input.d.x, ~u_input.d.x), firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) >> (vec2<u32>(48095u, 4294967295u) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f + 236f)))) * _wgslsmith_f_op_f32(f32(-1f) * -651f));
    global0 = array<vec4<u32>, 3>();
    let var_2 = u_input.d.yz ^ _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.d.x, 4294967295u)), func_4(arg_0, Struct_1(func_3(0u, var_1, 1i, vec2<bool>(false, true)))));
    var var_3 = Struct_1(firstTrailingBit(-16034i));
    return !vec2<bool>(true, any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(u_input.c));
    global1 = array<vec3<i32>, 5>();
    global0 = array<vec4<u32>, 3>();
    var var_1 = Struct_1(abs(u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1657f, -810f, 204f, -2883f)))) + vec4<f32>(_wgslsmith_div_f32(-1079f, -1318f), _wgslsmith_div_f32(1000f, 238f), -1000f, _wgslsmith_f_op_f32(188f + 1036f))))));
    return Struct_1(0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f + -756f));
    global1 = array<vec3<i32>, 5>();
    let var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-174f)), _wgslsmith_f_op_f32(1246f + -1241f))))));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(908f, -842f, 203f) + vec3<f32>(614f, 560f, 609f))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-166f)), -220f, 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2996f))));
}

