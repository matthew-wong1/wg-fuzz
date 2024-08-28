struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 63529u, 0u, 0u, 8617u, 26024u, 1u, 4294967295u, 1u, 1u, 4294967295u, 4294967295u, 4294967295u, 1540u, 17698u, 0u, 11458u, 48115u, 0u, 1u, 5080u, 843u, 1u, 4294967295u, 4294967295u, 4008u);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-22079i, 0i, 17148i), vec3<i32>(47354i, -2603i, 71695i), vec3<i32>(0i, 25026i, 28172i), vec3<i32>(39528i, 8594i, 21058i), vec3<i32>(2147483647i, 1i, -26220i), vec3<i32>(1i, 40453i, -1i), vec3<i32>(-7364i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-8941i, 21770i, -1i), vec3<i32>(-9543i, 38210i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-28028i, 1i, 2147483647i), vec3<i32>(-2880i, -12272i, 0i));

var<private> global3: array<i32, 8> = array<i32, 8>(926i, 2147483647i, 1i, -11705i, -2604i, -1i, 45748i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    var var_0 = -u_input.a.zy;
    global2 = array<vec3<i32>, 12>();
    let var_1 = arg_2.a;
    let var_2 = !(!arg_3.yyw);
    global0 = array<u32, 26>();
    return -global3[_wgslsmith_index_u32(0u, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f))))), -(~abs(-1i) & ~func_1(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 0u), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(52302u, 8u)]), Struct_2(Struct_1(global1.yx, global2[_wgslsmith_index_u32(8191u, 12u)], vec3<f32>(-629f, -137f, -2244f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], -536f), u_input.a, global1.xx, false), vec4<bool>(true, false, global1.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1053f))))))));
}

