struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: i32 = -1798i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global1 = _wgslsmith_mod_i32(2147483647i, u_input.a.x);
    global1 = ~12286i;
    global1 = abs(abs(1i)) ^ select(_wgslsmith_div_i32(-6258i, 25958i), -1i | -u_input.d, (_wgslsmith_dot_vec2_u32(vec2<u32>(72141u, 4294967295u), vec2<u32>(116960u, 27193u)) | 38727u) >= (u_input.b | 1u));
    global1 = ~_wgslsmith_mult_i32(u_input.a.x, u_input.d);
    var var_0 = u_input.a.zy;
    return all(vec3<bool>(true, true, true)) | true;
}

fn func_2() -> bool {
    var var_0 = Struct_1(~(~(~1u)));
    let var_1 = -(~_wgslsmith_div_i32(-1i, 11054i)) & reverseBits(_wgslsmith_add_i32(~u_input.d << (~u_input.c % 32u), 30393i));
    var var_2 = !(!vec4<bool>(select(true, any(vec4<bool>(false, true, true, true)), true), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), func_3(), ~u_input.a.x > 1i));
    let var_3 = ~_wgslsmith_div_vec4_i32(~vec4<i32>(abs(var_1), reverseBits(var_1), _wgslsmith_sub_i32(u_input.a.x, u_input.d), 2708i), abs(countOneBits(_wgslsmith_div_vec4_i32(u_input.a, u_input.a))));
    let var_4 = Struct_2(var_0.a, Struct_1(reverseBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 19230u), vec2<u32>(83668u, var_0.a))))));
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    let var_0 = arg_1;
    global0 = array<vec3<u32>, 16>();
    let var_1 = select(!vec3<bool>(func_2(), all(select(vec2<bool>(true, arg_0), vec2<bool>(true, true), arg_0)), true), select(select(!select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, true, false)), vec3<bool>(!arg_0, any(vec3<bool>(true, arg_0, false)), func_2()), false), select(vec3<bool>(true, true, all(vec3<bool>(arg_0, arg_0, true))), select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, false), true), !vec3<bool>(arg_0, arg_0, arg_0)), true), !all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), select(false, arg_0, true))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.d, 0i);
    var var_1 = -(~(-u_input.a.x));
    global1 = ~5354i;
    global0 = array<vec3<u32>, 16>();
    var_0 = min(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), abs(_wgslsmith_sub_i32(~func_1(false, Struct_2(u_input.b, Struct_1(u_input.b)), vec2<f32>(272f, 1474f)), u_input.a.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), -1648f);
    var var_3 = vec2<bool>(true, !all(vec4<bool>(true, true, true, true)));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_mult_vec3_u32(~global0[_wgslsmith_index_u32(7839u, 16u)], _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.c), vec3<u32>(26842u, 6729u, 6454u))) & ~abs(vec3<u32>(48482u, 652u, 7628u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-1160f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -897f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)), vec4<f32>(var_2, _wgslsmith_f_op_f32(select(var_2, var_2, true)), _wgslsmith_f_op_f32(-var_2), -114f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, 993f, -782f, var_2)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1170f, 351f, var_2, var_2))))))));
}

