struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
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

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global1: i32;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(1i), Struct_1(537i), Struct_1(i32(-2147483648)), Struct_1(-28144i), Struct_1(2147483647i), Struct_1(19356i), Struct_1(21019i), Struct_1(51345i), Struct_1(0i), Struct_1(-16352i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(-1i));

var<private> global3: bool = true;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_div_f32(-509f, 609f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.zw;
    var var_1 = 37266u;
    global3 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))), 170f, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(307f)))) - 1f))));
    var var_3 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.c.zzy << (u_input.c.wyz % vec3<u32>(32u)), vec3<u32>(u_input.d, u_input.c.x, u_input.d)), u_input.c.zyy) | u_input.c.zzw;
    var var_4 = 1056f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

