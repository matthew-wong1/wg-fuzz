struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<f32, 30>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = u_input.d.x;
    global1 = array<f32, 30>();
    let var_2 = u_input.d.yw;
    global0 = !(!vec2<bool>(false, all(!vec3<bool>(global0.x, false, false))));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1.b)))), arg_1.b, arg_1.b, arg_1.b);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = global0.x;
    global0 = select(!vec2<bool>(true, any(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, false), global0.x))), !(!vec2<bool>(-1146f > global1[_wgslsmith_index_u32(22588u, 30u)], global0.x)), global0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1.a, Struct_2(Struct_1(arg_1.a.a), arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], arg_1.b, arg_1.b, -1181f) + vec4<f32>(-1439f, arg_1.b, global1[_wgslsmith_index_u32(arg_0, 30u)], -1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1913f, 182f, global1[_wgslsmith_index_u32(39437u, 30u)], 886f))))))));
    global1 = array<f32, 30>();
    let var_2 = -vec2<i32>(u_input.c, 24366i);
    return Struct_1(~abs(arg_1.a.a) ^ arg_1.a.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> bool {
    let var_0 = func_2(abs(1u), arg_1);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(arg_2, u_input.a >> (_wgslsmith_clamp_u32(4294967295u, 0u, arg_0.x) % 32u))), -1354f);
    global0 = select(vec2<bool>(any(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), true)), false), select(!(!vec2<bool>(global0.x, global0.x)), !vec2<bool>(all(vec3<bool>(true, true, global0.x)), any(vec3<bool>(false, true, global0.x))), all(vec2<bool>(true, true))), vec2<bool>(all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)) || (all(vec2<bool>(false, global0.x)) && true), all(vec3<bool>(global0.x != global0.x, global0.x, any(vec2<bool>(global0.x, global0.x))))));
    var_1 = Struct_2(var_0, 824f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, arg_1.b, arg_1.b) * vec4<f32>(810f, 552f, arg_1.b, global1[_wgslsmith_index_u32(arg_0.x, 30u)])))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(647f)), _wgslsmith_f_op_f32(var_1.b + -191f), _wgslsmith_f_op_f32(select(arg_1.b, global1[_wgslsmith_index_u32(1u, 30u)], global0.x)), -1795f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(select(~u_input.d.x, ~11759u, func_1(u_input.d, Struct_2(Struct_1(-1i), -934f), -1i)), 0u, ~_wgslsmith_mult_u32(u_input.b, 1u)), u_input.d.www);
    global1 = array<f32, 30>();
    let var_1 = Struct_1(_wgslsmith_mod_i32(19723i, min(~(-27562i), u_input.c)) | -96533i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(270f)), _wgslsmith_f_op_f32(step(-626f, -2392f))))));
    let var_3 = func_2(firstLeadingBit(u_input.d.x), Struct_2(func_2(31643u, Struct_2(Struct_1(var_1.a), _wgslsmith_f_op_f32(-254f - 1410f))), -617f));
    let var_4 = !vec3<bool>(global0.x, all(vec4<bool>(true, global0.x, select(true, global0.x, false), false)), global0.x);
    global0 = !vec2<bool>(u_input.d.x > var_0.x, any(vec2<bool>(true, global0.x && true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

