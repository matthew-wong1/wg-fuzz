struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(1i, -12663i, 0i), vec3<i32>(-5340i, 20288i, 35524i), vec3<i32>(-5099i, 1i, -24170i), vec3<i32>(-1i, 2147483647i, -44492i), vec3<i32>(-24796i, -35374i, 0i), vec3<i32>(0i, 37465i, 61084i), vec3<i32>(-5361i, 1i, -12711i), vec3<i32>(i32(-2147483648), 1i, -13435i), vec3<i32>(24505i, -18743i, 17444i), vec3<i32>(14412i, 0i, -34036i), vec3<i32>(21735i, i32(-2147483648), -18645i), vec3<i32>(101430i, 2147483647i, -2085i), vec3<i32>(0i, -13933i, 1i), vec3<i32>(-1i, 2147483647i, 523i), vec3<i32>(-15937i, 18765i, -28088i), vec3<i32>(1i, 0i, 1i));

var<private> global1: array<vec3<f32>, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<vec3<i32>, 16>();
    let var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = Struct_1(var_1.a);
    var var_3 = ~_wgslsmith_sub_vec3_u32(arg_1.xzz, u_input.c);
    return vec3<bool>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 76866i), vec2<i32>(u_input.b.x, -1i)), arg_0.yy) != (1i & arg_0.x), true, ~(-1i) > (arg_0.x & 29422i)), 403f > var_2.a.x, true);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<vec3<i32>, 16>();
    global1 = array<vec3<f32>, 17>();
    let var_0 = select(vec3<bool>(arg_1, arg_1, select(!select(false, arg_1, arg_1), any(vec2<bool>(true, true)), true)), vec3<bool>(arg_1, any(select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, false), vec3<bool>(arg_1, true, false)), !vec3<bool>(false, true, arg_1), all(vec3<bool>(arg_1, arg_1, false)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1)))), select(select(vec3<bool>(!arg_1, arg_1, true), vec3<bool>(u_input.a == u_input.a, all(vec3<bool>(arg_1, true, false)), arg_1), (arg_1 || arg_1) && false), !select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, false, false)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, false)), func_2(global0[_wgslsmith_index_u32(1u, 16u)], vec4<u32>(0u, 10393u, 1u, 4294967295u), arg_0, arg_0)), func_2(global0[_wgslsmith_index_u32(~4294967295u ^ u_input.a, 16u)], _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.a, 20530u, u_input.e, 1u)), abs(vec4<u32>(34851u, u_input.c.x, 1u, u_input.a))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 17u)]), arg_0)));
    let var_1 = u_input.c;
    var var_2 = vec4<f32>(-589f, -180f, 1422f, arg_0.a.x);
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = 6107u ^ _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), ~u_input.c.x, ~4294967295u)), u_input.a);
    var_0 = u_input.c.x;
    var var_1 = max(-(~_wgslsmith_mod_vec2_i32(-u_input.b, u_input.b)), u_input.b & u_input.b);
    global0 = array<vec3<i32>, 16>();
    var_0 = (u_input.a >> (16699u % 32u)) >> (u_input.a % 32u);
    return !(0i >= min(~var_1.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.d ^ 37393i) & max(u_input.d, ~(~(-16686i)));
    var var_1 = !vec3<bool>(false, !func_3(true, func_1(Struct_1(global1[_wgslsmith_index_u32(31656u, 17u)]), true)), true);
    var_0 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 17u)]))));
    global0 = array<vec3<i32>, 16>();
    let var_3 = 1403f == _wgslsmith_f_op_f32(-var_2.a.x);
    let var_4 = (u_input.b.x != countOneBits(_wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(31743i, -18911i)))) | true;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.e, 16u)]);
}

