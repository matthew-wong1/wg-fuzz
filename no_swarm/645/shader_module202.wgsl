struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 3861u, 9546u, 14439u);

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    global1 = arg_0;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(680f + 563f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1529f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(364f, 776f)), _wgslsmith_f_op_f32(min(-1003f, -1180f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(266f)) * 1f), -398f);
    global4 = u_input.d.x;
    global3 = arg_1;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d, -select(_wgslsmith_div_vec2_i32(u_input.d, u_input.d), u_input.d, select(vec2<bool>(arg_1.a.x, global3.a.x), arg_0.a.xz, vec2<bool>(global1.a.x, arg_0.a.x)))), ~(-u_input.d.x));
    return global3.a;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-386f, -1000f, -117f), vec3<f32>(299f, -589f, 899f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(1731f, -363f, 1000f), arg_1.x < 67517i)))));
    var var_1 = Struct_2(!func_3(Struct_2(global3.a), Struct_2(!global3.a)));
    var var_2 = vec4<f32>(var_0.x, var_0.x, 1000f, _wgslsmith_f_op_f32(-387f * var_0.x));
    global1 = Struct_2(!global3.a);
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(arg_2.x ^ global0.x, 63205u) ^ _wgslsmith_div_u32(~4294967295u, global0.x)) << (global0.x % 32u);
    return _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(_wgslsmith_add_u32(global0.x, arg_2.x), 63773u, 0u, ~global0.x)), ~abs(~(~vec4<u32>(0u, global0.x, arg_2.x, arg_2.x))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = func_2(i32(-1i) * -_wgslsmith_add_i32(firstLeadingBit(u_input.c), u_input.d.x), min(abs(global2[_wgslsmith_index_u32(global0.x, 1u)]), vec4<i32>(arg_0, countOneBits(0i), -_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(arg_0, arg_0)), -1i)), global0.xyz);
    return Struct_2(!select(global1.a, global3.a, select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, false, true, false), vec4<bool>(global3.a.x, global3.a.x, global1.a.x, global3.a.x)), global1.a)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1896f - _wgslsmith_f_op_f32(min(arg_0, 1065f))))), 1702f), _wgslsmith_f_op_f32(-1024f * arg_0), arg_0);
    var var_2 = func_1(-36229i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1248f)), 1547f, var_1.x, -1545f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 1079f, arg_0, 630f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, -898f, arg_0)))) - _wgslsmith_f_op_vec3_f32(-var_1)));
    var var_4 = var_3;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 1>();
    let var_0 = _wgslsmith_mult_u32(u_input.b, 27662u);
    var var_1 = Struct_2(!(!global3.a));
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(-652f, -1900f)))))), func_1(34421i));
    var_2 = Struct_2(func_3(func_4(-144f, func_1(1i)), Struct_2(global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(74546u, ~(~(~global0.x | firstLeadingBit(40878u))), ~min(global0.x, 0u), select(u_input.c, 12960i, false));
}

