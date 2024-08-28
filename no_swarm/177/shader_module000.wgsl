struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32;

var<private> global2: array<i32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(-2147483647i, arg_2.x), -39767i);
    global2 = array<i32, 24>();
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(1000f, 1411f)) - _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(279f, arg_1.a.x)))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(-2431f)))), global0.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c, 4294967295u, u_input.a.x, 41874u), firstTrailingBit(vec4<u32>(var_0.c, 18266u, 0u, u_input.a.x))), 1u) | firstTrailingBit(abs(_wgslsmith_add_u32(28049u, var_0.c))));
    global0 = vec3<f32>(var_2.b, -769f, var_2.a.x);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.b, -445f))), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(select(936f, arg_1.a.x, true)), _wgslsmith_f_op_f32(global0.x * -667f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 504f) + vec3<f32>(arg_1.a.x, -1427f, 703f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.xz), 624f, ~u_input.a.x);
    var var_1 = Struct_1(global0.yz, _wgslsmith_div_f32(-1139f, var_0.a.x), 0u);
    var var_2 = vec3<i32>(-7340i, u_input.b & countOneBits(_wgslsmith_sub_i32(u_input.c.x, u_input.b) << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u)), -u_input.b);
    let var_3 = var_2.zz;
    let var_4 = Struct_1(var_0.a, var_1.a.x, ~15420u);
    let var_5 = abs(-4522i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.b, var_1.a.x, var_4.a.x))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-860f, var_4.b, var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-410f, var_4.b, var_1.a.x))) + _wgslsmith_f_op_vec3_f32(func_1(49787u, var_4, u_input.c.yz, var_2.x))), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(2868f - 1000f), -1106f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-241f, -1835f, global0.x), vec3<f32>(-1050f, 1873f, var_0.b))) - vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), global0.x, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_1.b)), 184f, -482f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(56136u, 4294967295u) << (countOneBits(min(min(vec2<u32>(var_1.c, 25355u), vec2<u32>(28994u, 1u)), ~vec2<u32>(18984u, 4294967295u))) % vec2<u32>(32u)));
}

