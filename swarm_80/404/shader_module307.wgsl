struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_3,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    global0 = abs(u_input.b);
    var var_0 = ~(vec3<u32>(countOneBits(56199u), 0u, 0u) & ~vec3<u32>(~u_input.c, 0u, 1u));
    var var_1 = ~_wgslsmith_div_vec3_i32(max(u_input.a, vec3<i32>(min(u_input.a.x, u_input.a.x), select(u_input.a.x, u_input.a.x, true), i32(-1i) * -35776i)), ~vec3<i32>(1i ^ u_input.a.x, -8178i & u_input.a.x, u_input.a.x));
    return -942f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = true;
    global1 = 32486u == _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(max(vec2<u32>(4905u, u_input.c), vec2<u32>(u_input.c, 48630u)), reverseBits(vec2<u32>(u_input.b, u_input.b)))), u_input.b);
    global0 = firstTrailingBit(u_input.c);
    global0 = 36221u;
    var_0 = !(!var_1);
    global0 = ~abs(0u | ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -895f) - -721f)), _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1746f, _wgslsmith_f_op_f32(min(-567f, -1333f)))), -1079f)) * -2450f), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, max(u_input.c, u_input.c)), countOneBits(~vec2<u32>(40796u, 1u))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(~0u, 67858u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.c) & vec2<u32>(u_input.b, 14078u), vec2<u32>(u_input.c, u_input.c))));
}

