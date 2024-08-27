struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<bool, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<u32> {
    return vec4<u32>(~(~_wgslsmith_div_u32(0u, u_input.a.x)), ~1u, abs(~(~2807u)), arg_1.e.x >> (95801u % 32u)) << (~vec4<u32>(~0u, u_input.c.x, ~_wgslsmith_div_u32(u_input.b, 0u), 1u) % vec4<u32>(32u));
}

fn func_3() -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(34202u, 28u)];
    global1 = array<bool, 28>();
    let var_1 = global0[_wgslsmith_index_u32(abs(~(_wgslsmith_sub_u32(15096u, u_input.b) << (~0u % 32u))), 13u)];
    global0 = array<Struct_4, 13>();
    let var_2 = u_input.c.x;
    return !(!select(!(!vec3<bool>(true, false, var_1.a.x)), vec3<bool>(var_1.a.x || var_1.a.x, global1[_wgslsmith_index_u32(~u_input.b, 28u)], true), global1[_wgslsmith_index_u32(51038u, 28u)]));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = array<Struct_4, 13>();
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~(u_input.a ^ vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.c.x))), countOneBits(func_2(vec3<i32>(u_input.d.x, -1i, u_input.d.x), Struct_3(u_input.d.x, true, -1i, true, u_input.a))) & vec4<u32>(1u, 1u, ~u_input.a.x, 4294967295u)), 28u)], true, false, all(func_3()));
    let var_1 = Struct_2(1871i);
    var var_2 = global1[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 28u)];
    let var_3 = Struct_2(countOneBits(47186i));
    return 389f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2729f;
    var var_1 = global0[_wgslsmith_index_u32(abs(u_input.a.x), 13u)];
    var var_2 = select(4294967295u, u_input.b, all(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], true, true))));
    var var_3 = Struct_1(-1375f, ~_wgslsmith_div_vec4_u32(abs(u_input.a & vec4<u32>(0u, u_input.a.x, 0u, u_input.c.x)), ~(u_input.a | vec4<u32>(u_input.c.x, 14551u, u_input.c.x, u_input.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec2<i32>(firstLeadingBit(-14815i), _wgslsmith_sub_i32(46640i, u_input.d.x)))))), -(~(~abs(vec3<i32>(-23388i, -1043i, u_input.d.x)))), false);
    var var_4 = !(!vec2<bool>(true, var_3.e));
    let var_5 = func_3().x;
    var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xwx, var_3.b.yxy), ~vec3<u32>(u_input.c.x, 4294967295u, 86373u)), var_3.b.x), -1i);
}

