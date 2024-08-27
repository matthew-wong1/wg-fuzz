struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(false, false, false), 4294967295u, 36433i), Struct_1(vec3<bool>(false, false, false), 0u, -503i), Struct_1(vec3<bool>(false, true, false), 36519u, -1i), Struct_1(vec3<bool>(false, false, true), 23425u, 18156i), Struct_1(vec3<bool>(true, false, false), 1u, -41705i), Struct_1(vec3<bool>(false, false, true), 3567u, -6795i), Struct_1(vec3<bool>(true, true, true), 48921u, 1i), Struct_1(vec3<bool>(true, false, false), 9941u, 64675i), Struct_1(vec3<bool>(false, false, true), 23115u, -14973i), Struct_1(vec3<bool>(true, true, false), 34586u, -1i), Struct_1(vec3<bool>(true, true, false), 4294967295u, i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), 1u, -34879i), Struct_1(vec3<bool>(true, true, false), 4294967295u, -43749i), Struct_1(vec3<bool>(false, false, false), 1u, 1i), Struct_1(vec3<bool>(true, false, false), 19688u, 2147483647i), Struct_1(vec3<bool>(true, false, true), 1u, 1i), Struct_1(vec3<bool>(true, false, true), 0u, 0i), Struct_1(vec3<bool>(false, true, false), 11363u, -8187i), Struct_1(vec3<bool>(true, false, true), 79522u, -56963i), Struct_1(vec3<bool>(true, true, true), 138841u, 43625i), Struct_1(vec3<bool>(false, true, false), 4294967295u, 24220i), Struct_1(vec3<bool>(false, true, true), 0u, 31525i), Struct_1(vec3<bool>(true, true, false), 80619u, i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), 44555u, i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), 4294967295u, 66167i));

var<private> global1: vec2<f32>;

var<private> global2: f32 = 560f;

var<private> global3: array<vec2<i32>, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 25>();
    let var_0 = arg_2.x;
    let var_1 = ~0i;
    var var_2 = arg_2.x;
    global0 = array<Struct_1, 25>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(30730u, 25u)];
    let var_1 = global3[_wgslsmith_index_u32(var_0.b, 32u)];
    let var_2 = Struct_1(!vec3<bool>(true, any(vec2<bool>(false, var_0.a.x)), !any(var_0.a.zz)), 1u, -2147483647i);
    global3 = array<vec2<i32>, 32>();
    let var_3 = Struct_1(var_0.a, ~(~u_input.c.x), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x >> (_wgslsmith_mult_u32(15728u, ~var_0.b) % 32u), -vec4<i32>(~(i32(-1i) * -1i), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1204f, global1.x) * vec2<f32>(global1.x, 129f)), u_input.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, -550f, -2169f))), var_3), -u_input.a.x, ~31113i));
}

