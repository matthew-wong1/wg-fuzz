struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: array<Struct_4, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec2<u32>) -> StorageBuffer {
    global0 = array<Struct_4, 14>();
    var var_0 = Struct_4(Struct_3(arg_3), arg_0.b);
    global0 = array<Struct_4, 14>();
    global1 = array<Struct_4, 1>();
    let var_1 = arg_0.b.a.x;
    return StorageBuffer(u_input.c.wzx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 14>();
    let var_0 = countOneBits(u_input.c.x);
    global1 = array<Struct_4, 1>();
    let var_1 = max(~countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(66581i, u_input.b.x, -32909i, 42646i), vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 1i), vec4<i32>(u_input.d, -32880i, u_input.b.x, u_input.d)))), vec4<i32>(27i, 1i, u_input.d, u_input.d) >> (firstTrailingBit((vec4<u32>(61344u, var_0, 61467u, 4294967295u) | vec4<u32>(u_input.a, 1u, u_input.a, 0u)) >> (vec4<u32>(u_input.a, 26529u, var_0, var_0) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = ~var_0;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(1u, 1u)], vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1562f, -1132f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-476f, 1470f)), _wgslsmith_f_op_f32(f32(-1f) * -583f)), -1055f)), ~(~abs(u_input.c.yz)));
}

