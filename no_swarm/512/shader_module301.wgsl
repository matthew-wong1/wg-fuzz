struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: vec4<f32> = vec4<f32>(-686f, -1027f, 497f, -1206f);

var<private> global2: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(61980u, 41253u, 4875u), vec3<u32>(138866u, 0u, 0u), vec3<u32>(4060u, 17934u, 1u), vec3<u32>(4294967295u, 1u, 464u), vec3<u32>(4294967295u, 4446u, 1u), vec3<u32>(6915u, 4294967295u, 49519u), vec3<u32>(58591u, 1u, 4294967295u), vec3<u32>(2034u, 0u, 5381u), vec3<u32>(16482u, 55720u, 0u), vec3<u32>(1u, 20944u, 15275u), vec3<u32>(36718u, 13633u, 17957u));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    global2 = array<vec3<u32>, 11>();
    let var_0 = Struct_1(-1758f, 1000f);
    var var_1 = var_0;
    global2 = array<vec3<u32>, 11>();
    var var_2 = 2147483647i;
    return 1009f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global1.x * global3.a))) - -1487f), _wgslsmith_f_op_f32(-global1.x));
    global3 = var_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1024f, global1.x)))) + 701f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1009f)) * _wgslsmith_f_op_f32(-1571f + global1.x)), var_1.b);
    let var_3 = var_0;
    return Struct_1(-465f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.a))))), var_3.b));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(true, true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), global1.x > global3.b)), false);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-global1.ywy);
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(abs(305f))), global3.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a - global3.a), 100f))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(490f)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), 1143f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a)))), _wgslsmith_f_op_f32(sign(1451f))), 919f);
    var var_0 = func_1();
    let var_1 = func_2();
    var var_2 = ~((u_input.b & 0u) >> (1u % 32u));
    global2 = array<vec3<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1409f, var_1.b, var_0.a, -2910f), vec4<f32>(global3.a, -202f, global1.x, global3.b)))) - vec4<f32>(_wgslsmith_f_op_f32(min(683f, -1005f)), var_1.b, -471f, 151f))), reverseBits(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(6961u, u_input.b, u_input.b, 12916u), vec4<u32>(u_input.b, u_input.b, 30207u, u_input.b)))), var_0.a, abs(~1u));
}

