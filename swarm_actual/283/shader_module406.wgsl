struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_3;
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    global1 = 0i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 1115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-814f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))) + 1f), _wgslsmith_f_op_f32(func_2(~vec2<i32>(_wgslsmith_mod_i32(7675i, -2147483647i), -32583i), global3[_wgslsmith_index_u32(21752u, 23u)], _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), firstTrailingBit(~(vec3<i32>(-18550i, 7711i, -24003i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))))));
    return global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 72595u), ~reverseBits(vec2<u32>(u_input.a, u_input.a)))), 30u)];
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(trunc(-1990f)) >= -165f, true);
    var var_1 = func_1();
    let var_2 = all(vec2<bool>(true, true));
    var var_3 = func_1();
    var var_4 = var_1.a.x;
    return 67284u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = -2147483647i;
    let var_1 = vec3<u32>(~11959u, u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, func_3()), u_input.a), 1u));
    var var_2 = Struct_1(abs(_wgslsmith_add_vec4_i32(var_0.a, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 28568i, -2218i), vec4<i32>(-20759i, var_0.a.x, 1i, 22351i)) & (var_0.a >> (vec4<u32>(20291u, var_0.c, 4294967295u, var_0.c) % vec4<u32>(32u))))), -1703f, _wgslsmith_sub_u32(var_1.x, _wgslsmith_mod_u32(var_0.c, var_0.c)));
    let var_3 = 36631u;
    var var_4 = 741f;
    var var_5 = global2[_wgslsmith_index_u32(0u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(var_0.a.x, var_0.a.x, true)), ~4294967295u, vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-178f, _wgslsmith_f_op_f32(abs(-1000f))))), -257f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-var_2.b))));
}

