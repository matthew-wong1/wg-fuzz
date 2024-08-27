struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-198f, 144f, -281f), vec2<u32>(30221u, 34750u));

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(false, vec4<f32>(-135f, -457f, 193f, -972f), 636f, vec3<i32>(i32(-2147483648), -1i, 40156i));

var<private> global4: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-19413i, 2039i, 2147483647i), vec3<i32>(69254i, 1i, 32711i), vec3<i32>(30778i, -7112i, 0i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -33803i, 1i), vec3<i32>(-24090i, 29294i, 40056i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(18864i, 56211i, 3868i), vec3<i32>(2147483647i, 0i, 100857i), vec3<i32>(-25507i, -39709i, -25979i), vec3<i32>(-52790i, 1i, 2147483647i), vec3<i32>(19356i, 41270i, 0i), vec3<i32>(28555i, 28302i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 53079i), vec3<i32>(i32(-2147483648), 0i, -6013i), vec3<i32>(-5506i, 0i, 8519i), vec3<i32>(-3693i, 30513i, -42318i), vec3<i32>(2147483647i, -1i, -6841i), vec3<i32>(-41422i, 33778i, -3539i), vec3<i32>(0i, 1i, 6692i), vec3<i32>(1i, 1i, 22194i), vec3<i32>(1i, -34731i, 2419i), vec3<i32>(-57848i, 0i, i32(-2147483648)), vec3<i32>(0i, 1i, -22416i), vec3<i32>(43999i, 0i, 2147483647i), vec3<i32>(-51274i, 1i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -1230f, global1.a.x))))), ~global1.b);
    let var_1 = vec4<bool>(!(false & !global3.a), select(_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(var_0.a.x * -511f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-686f + -441f), _wgslsmith_f_op_f32(-1717f + global3.c))), true, false), (!global3.a | false) | global3.a, !global3.a);
    let var_2 = min(global1.b.x, 1u ^ ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.b.x, 4294967295u, global1.b.x, var_0.b.x)), vec4<u32>(global1.b.x, global1.b.x, var_0.b.x, global1.b.x)));
    global4 = array<vec3<i32>, 26>();
    global4 = array<vec3<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, -2003f);
}

