struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(false, 3339f, vec2<i32>(-31195i, -78063i), vec4<u32>(4294967295u, 25480u, 4294967295u, 66942u)), Struct_3(false, -198f, vec2<i32>(30494i, -16568i), vec4<u32>(4294967295u, 11493u, 33989u, 0u)), Struct_3(true, -846f, vec2<i32>(45371i, -8284i), vec4<u32>(20647u, 1u, 18142u, 47678u)), Struct_3(true, -667f, vec2<i32>(i32(-2147483648), 6397i), vec4<u32>(1u, 4294967295u, 84744u, 592u)), Struct_3(false, -1654f, vec2<i32>(4874i, 0i), vec4<u32>(9572u, 0u, 3688u, 5715u)), Struct_3(true, -816f, vec2<i32>(-1i, 46411i), vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_3(true, -1000f, vec2<i32>(i32(-2147483648), 15584i), vec4<u32>(0u, 1u, 27894u, 101736u)), Struct_3(false, 1000f, vec2<i32>(22457i, -1i), vec4<u32>(33991u, 8960u, 100035u, 41648u)), Struct_3(true, 418f, vec2<i32>(2147483647i, 289i), vec4<u32>(39936u, 1u, 4294967295u, 4294967295u)), Struct_3(true, 1539f, vec2<i32>(-1i, 0i), vec4<u32>(59412u, 1u, 36093u, 6564u)), Struct_3(true, 527f, vec2<i32>(1i, 6266i), vec4<u32>(2716u, 31447u, 1u, 25702u)), Struct_3(false, 1843f, vec2<i32>(-1i, -17667i), vec4<u32>(0u, 1573u, 0u, 23323u)), Struct_3(true, 1525f, vec2<i32>(1i, 8638i), vec4<u32>(40911u, 4294967295u, 4294967295u, 34945u)), Struct_3(false, -550f, vec2<i32>(1i, 30525i), vec4<u32>(28379u, 16868u, 23729u, 1u)), Struct_3(true, 2005f, vec2<i32>(-1i, -15371i), vec4<u32>(58045u, 25843u, 46506u, 0u)), Struct_3(false, 401f, vec2<i32>(1i, 32487i), vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_3(false, -324f, vec2<i32>(41603i, i32(-2147483648)), vec4<u32>(1u, 31678u, 55589u, 2359u)), Struct_3(false, 1478f, vec2<i32>(-55406i, -34550i), vec4<u32>(7784u, 4294967295u, 49115u, 100569u)), Struct_3(false, -1000f, vec2<i32>(0i, 42927i), vec4<u32>(60776u, 0u, 35519u, 0u)), Struct_3(false, 358f, vec2<i32>(-10881i, 5721i), vec4<u32>(74398u, 0u, 13914u, 32637u)), Struct_3(true, -1000f, vec2<i32>(-1i, 1i), vec4<u32>(40840u, 47047u, 33149u, 2977u)), Struct_3(false, 1607f, vec2<i32>(0i, -1148i), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_3(true, 252f, vec2<i32>(1i, 3670i), vec4<u32>(4294967295u, 47616u, 42159u, 0u)));

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(u_input.a.yxw ^ u_input.a.zyx, u_input.a.yxz)) ^ vec3<u32>(~1u, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), 72658u);
    var var_1 = ~_wgslsmith_add_u32(4294967295u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(74904u, 60379u), ~var_0.x), var_0.x << (reverseBits(4294967295u) % 32u)), _wgslsmith_sub_u32(~var_0.x, _wgslsmith_add_u32(51897u, 11026u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, var_0.x, 4294967295u, abs(55921u)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x)), vec4<bool>(u_input.a.x == u_input.a.x, any(vec3<bool>(false, true, false)), true, true)), _wgslsmith_add_vec4_u32(~(u_input.a ^ vec4<u32>(35262u, var_0.x, 0u, var_0.x)), u_input.a)), 12u)], vec2<f32>(333f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)), 150f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(1f + -669f))));
}

