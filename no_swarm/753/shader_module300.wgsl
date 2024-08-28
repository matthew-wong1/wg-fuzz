struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(18779u, 18290u, 2731u);

var<private> global1: u32 = 80968u;

var<private> global2: vec2<i32> = vec2<i32>(44936i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global2 = u_input.b;
    global1 = global0.x;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -430f));
    let var_1 = i32(-1i) * -(~(-34908i));
    global2 = -(~(u_input.b << (vec2<u32>(_wgslsmith_add_u32(0u, u_input.a.x), abs(39672u)) % vec2<u32>(32u))));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1, 1i, 2147483647i, arg_0), -vec4<i32>(arg_0, var_1, -6724i, global2.x)), -(~vec4<i32>(global2.x, 8494i, 5528i, var_1) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0.x, global0.x), vec4<u32>(0u, 0u, u_input.a.x, 80815u)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_i32(global2.x, 23784i));
}

