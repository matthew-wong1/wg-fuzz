struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-1i, 4435i, -1i, -60831i), vec4<i32>(-6005i, -1i, 1i, 30145i), vec4<i32>(2147483647i, -17817i, -1i, 30632i), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i), vec4<i32>(2147483647i, 23836i, 1i, 1i), vec4<i32>(2147483647i, -41357i, -33397i, -10454i), vec4<i32>(1i, 1i, 36643i, 0i), vec4<i32>(2147483647i, 0i, 7313i, 6619i), vec4<i32>(0i, -1i, 30337i, -26798i), vec4<i32>(-7354i, 67404i, 5927i, -1i), vec4<i32>(41432i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 54455i, -22741i), vec4<i32>(i32(-2147483648), -29412i, -3323i, 1i), vec4<i32>(0i, 2147483647i, 33205i, 44318i), vec4<i32>(28639i, -11900i, 58327i, 0i), vec4<i32>(54471i, 9381i, -38600i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 15909i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(arg_0.x);
    global0 = array<vec4<i32>, 17>();
    var_0 = Struct_2(-1347f);
    let var_1 = arg_1;
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1498f) * -599f))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.x)))), true)), _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.a)))) + _wgslsmith_f_op_f32(sign(var_0.a)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1385f, -751f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f + 160f)), 1706f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2951f, 1040f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-495f, 1092f), Struct_1(vec3<i32>(arg_1.a.x, 3456i, var_0.a.x)), 27725u, vec4<u32>(40329u, 1u, 0u, 26019u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, -137f, 1488f, 1000f))))))))));
    var var_2 = arg_1;
    var var_3 = var_0;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1061f) + 1498f)), var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - var_1.x), 1000f)) + -1814f)));
    return !(!vec2<bool>(true, all(vec2<bool>(false, true)) || (2147483647i <= var_3.a.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(-max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b) >> (vec3<u32>(60885u, arg_0, arg_0) % vec3<u32>(32u)), vec3<i32>(57190i, -42508i, u_input.b)), vec3<i32>(0i, firstTrailingBit(_wgslsmith_mult_i32(0i, 0i)), 0i)));
    var var_1 = arg_1.a;
    global0 = array<vec4<i32>, 17>();
    let var_2 = any(vec3<bool>(true, true, all(func_2(0i, var_0))));
    let var_3 = var_0;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(arg_1.a, arg_1.a), var_0, arg_0, ~vec4<u32>(28450u, 4294967295u, 51724u, arg_0))).x, !var_2))), vec3<i32>(_wgslsmith_mod_i32(u_input.b, (i32(-1i) * -1i) << (min(0u, 4294967295u) % 32u)), u_input.b, ~(2147483647i ^ _wgslsmith_sub_i32(-40683i, var_0.a.x))), 25566u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(firstTrailingBit(u_input.b) < (u_input.a.x & -13793i)) | true);
    var var_1 = 0i;
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -max(1i, u_input.a.x) << (select(max(77419u, 706u), 4294967295u << (0u % 32u), true) % 32u)), -_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a));
    var var_3 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec4<bool>(false, true, true, true)))) == !(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))));
    var_2 = (_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), u_input.a) & u_input.a) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), true), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(11130u, 0u, 15730u)), 4294967295u)), 21302u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_1(1u, Struct_2(1000f));
}

