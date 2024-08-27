struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(107f), Struct_1(-1123f), Struct_1(-626f), Struct_1(611f), Struct_1(466f), Struct_1(522f), Struct_1(-1261f));

var<private> global2: array<f32, 1>;

var<private> global3: array<f32, 2> = array<f32, 2>(253f, 1176f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(u_input.a, u_input.b)), 1u)]));
    global1 = array<Struct_1, 7>();
    global2 = array<f32, 1>();
    global0 = array<vec3<f32>, 9>();
    return global1[_wgslsmith_index_u32(~(~(~u_input.b)), 7u)];
}

fn func_3() -> i32 {
    let var_0 = vec2<f32>(func_1().a, -520f);
    global2 = array<f32, 1>();
    global3 = array<f32, 2>();
    global0 = array<vec3<f32>, 9>();
    let var_1 = func_1();
    return -18654i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    global3 = array<f32, 2>();
    global0 = array<vec3<f32>, 9>();
    var var_0 = arg_3;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * func_1().a));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, ~(~(110076u >> (1u % 32u)))) << (~_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2 << (arg_2 % 32u), 4294967295u >> (u_input.b % 32u)), arg_2) % 32u), 1u)];
    return max(~_wgslsmith_mod_i32(-func_3(), 1i), ~(-15971i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(367f * global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b) & 53445u, 2u)]), global2[_wgslsmith_index_u32(1u, 1u)])));
    global3 = array<f32, 2>();
    global1 = array<Struct_1, 7>();
    var var_1 = 0u;
    var var_2 = func_1();
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -25300i, i32(-1i) * -69575i), 1i, -(~(-2147483647i)), func_2(var_0, global1[_wgslsmith_index_u32(u_input.b, 7u)], 108068u, func_1())) << (vec4<u32>(1u & max(u_input.b, u_input.b), u_input.a, 7695u, u_input.b) % vec4<u32>(32u)), vec4<i32>(-21449i, 1i, -31380i, (select(1i, 0i, false) | -37141i) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a, 27214u), vec4<u32>(13708u, 1u, u_input.a, 4294967295u)) ^ ~0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1530f + global3[_wgslsmith_index_u32(0u, 2u)]), var_2.a, -835f))))), -vec3<i32>(2147483647i, ~(~(-10061i)), firstLeadingBit(i32(-1i) * -1i)), select(-_wgslsmith_add_vec2_i32(~var_3.ww, ~var_3.yx), ~vec2<i32>(~var_3.x, select(55602i, 2147483647i, false)), !vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, false)))), vec4<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(0u, u_input.a, 19126u)), 4294967295u, u_input.b) ^ vec4<u32>(u_input.b, ~u_input.a, firstLeadingBit(u_input.a) & min(69354u, 5166u), u_input.b));
}

