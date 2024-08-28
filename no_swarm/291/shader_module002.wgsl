struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<f32, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 17>();
    let var_0 = _wgslsmith_f_op_f32(1366f + -1049f);
    let var_1 = Struct_1(-2147483647i);
    global1 = array<f32, 28>();
    global0 = array<bool, 17>();
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = reverseBits(0u);
    global0 = array<bool, 17>();
    var var_1 = Struct_1(1i);
    global1 = array<f32, 28>();
    let var_2 = arg_0;
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(15791u, u_input.d.x, 51870u)), ~(vec3<u32>(25745u, var_0, var_0) << (vec3<u32>(1u, 35208u, var_0) % vec3<u32>(32u)))), 4294967295u, u_input.d.x);
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = Struct_1(1i);
    global0 = array<bool, 17>();
    let var_2 = true;
    let var_3 = func_2();
    return func_3(Struct_1(var_3.a), vec3<bool>(global0[_wgslsmith_index_u32(49131u, 17u)], all(select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], var_2, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), false));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    global0 = array<bool, 17>();
    let var_0 = -1707f;
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = func_2();
    return Struct_1(var_2.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(_wgslsmith_add_i32(1i, u_input.b.x & (u_input.c.x << (u_input.d.x % 32u))), 0i));
    var var_1 = max(-u_input.b.x, ~(~abs(abs(var_0.x))));
    var var_2 = func_5(firstTrailingBit(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.d.x, 54504u, u_input.d.x)) >> (vec3<u32>(39771u, u_input.d.x, 0u) % vec3<u32>(32u)), ~firstTrailingBit(vec3<u32>(u_input.d.x, u_input.d.x, 4068u)))), ~(~max(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, u_input.d.x))), global1[_wgslsmith_index_u32(max(u_input.d.x, max(firstLeadingBit(~u_input.d.x), u_input.d.x)), 28u)], func_4(~firstTrailingBit(func_1(vec2<f32>(global1[_wgslsmith_index_u32(43667u, 28u)], 1000f))), 4294967295u));
    let var_3 = func_4(vec3<u32>(u_input.d.x, u_input.d.x | 42657u, reverseBits(select(12494u, u_input.d.x, select(false, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], false)))), ~(~_wgslsmith_dot_vec2_u32(u_input.d << (u_input.d % vec2<u32>(32u)), ~u_input.d)));
    let var_4 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(15557u, reverseBits(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(0u, u_input.d.x, 10560u))))), 28u)], 1823f));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, var_4)));
}

