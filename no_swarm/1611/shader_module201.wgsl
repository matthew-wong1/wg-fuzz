struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: Struct_3 = Struct_3(1483f, -11549i, -829f, Struct_2(false, Struct_1(false), vec4<bool>(false, false, false, true), -329f));

var<private> global2: bool;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_2, 14>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, Struct_1(false), vec4<bool>(all(global1.d.c.xxy), true, global3.x, !(false & (true & global1.d.a))), -423f);
    let var_1 = -(~((vec3<i32>(u_input.c, 2147483647i, global1.b) >> (~vec3<u32>(u_input.a, u_input.a, 3572u) % vec3<u32>(32u))) | ~select(vec3<i32>(u_input.b.x, 39612i, global1.b), vec3<i32>(-1i, -1i, global1.b), global1.d.c.yzy)));
    global2 = false;
    global4 = array<Struct_2, 14>();
    global0 = array<vec3<u32>, 25>();
    let var_2 = reverseBits(-36362i) << (~4294967295u % 32u);
    let var_3 = _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, global1.b, global1.b, global1.b), vec4<i32>(u_input.c, global1.b, -87180i, var_2))), ~vec4<i32>(u_input.c, var_1.x, -28676i, 37075i) | ~vec4<i32>(u_input.b.x, u_input.c, var_1.x, global1.b)) & 0i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) * 825f)));
}

