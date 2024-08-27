struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d));
    global0 = vec3<i32>(-1i) * -(max(vec3<i32>(u_input.a.x, arg_1.a.x, 17319i) >> (vec3<u32>(46925u, global1.c, global1.c) % vec3<u32>(32u)), -global1.a) >> (vec3<u32>(4294967295u, ~19196u, ~4294967295u) % vec3<u32>(32u)));
    return reverseBits(abs(global1.a));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_2 {
    global0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -693f, global1.d, global1.d) * vec4<f32>(global1.d, 680f, global1.d, 1436f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2173f, global1.d, global1.d, global1.d), vec4<f32>(global1.d, global1.d, -922f, global1.d))))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -484f), -1386f, 1f)), Struct_2(abs(vec3<i32>(u_input.a.x, arg_1, u_input.a.x) & vec3<i32>(2147483647i, global0.x, u_input.a.x)), global1.b, u_input.b.x, global1.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.d, global1.d, global1.d, global1.d), vec4<f32>(1820f, global1.d, global1.d, global1.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, 511f, 1000f, -104f) - vec4<f32>(global1.d, 224f, -164f, 445f)), true)))) & ~(~global1.a);
    global1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(~global0.x, -1i, 0i), -(~_wgslsmith_add_vec3_i32(global1.a, vec3<i32>(0i, 1i, 60410i)))), vec4<u32>(abs(1u), global1.c, 51695u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> (u_input.b.x % 32u)) ^ min(vec4<u32>(global1.b.x, 0u, ~global1.b.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(19776u, u_input.b.x, 18625u, global1.b.x), _wgslsmith_add_vec4_u32(global1.b, vec4<u32>(7475u, global1.b.x, 0u, 4294967295u)))), select(~(~1u & _wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global1.b.x))), u_input.b.x, all(!(!arg_0.wy))), global1.d);
    let var_0 = reverseBits(u_input.b.x);
    let var_1 = -350f;
    let var_2 = min(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(3613u, global1.b.x)), global1.b.wx), u_input.b.x, u_input.b.x), vec4<u32>(global1.b.x, global1.c, var_0, _wgslsmith_div_u32(abs(~58180u), countOneBits(~global1.c))));
    return Struct_2(func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, global1.d, 1223f, 375f), vec4<f32>(-105f, var_1, 464f, 391f))), vec4<f32>(-501f, var_1, -456f, -574f))))), Struct_2(~vec3<i32>(global0.x, arg_1, global0.x), global1.b, var_2.x, 520f), vec4<f32>(_wgslsmith_div_f32(-229f, -1295f), _wgslsmith_f_op_f32(-1266f * _wgslsmith_f_op_f32(select(1078f, -367f, arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - global1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(439f + global1.d), _wgslsmith_f_op_f32(global1.d + -923f)))), ~vec4<u32>(17139u, ~_wgslsmith_mod_u32(1u, 40059u), global1.b.x, 13175u), ~u_input.b.x, _wgslsmith_f_op_f32(max(global1.d, global1.d)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = vec2<bool>(false, !select(select(all(vec3<bool>(false, false, false)), true, true), false, false));
    global1 = func_2(vec4<bool>(var_0.x, var_0.x, global1.b.x > _wgslsmith_sub_u32(~24395u, u_input.b.x), !var_0.x), max(11467i, abs(~(-arg_1.x))));
    var_0 = select(vec2<bool>(false, true && var_0.x), vec2<bool>(!(u_input.b.x == ~u_input.b.x), any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0.x))), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), vec2<bool>(false, true)), !vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), vec2<bool>(var_0.x, true), 0u == _wgslsmith_mult_u32(global1.b.x, global1.c)));
    var var_1 = Struct_2(~abs(max(-arg_1.yyx, func_3(vec4<f32>(global1.d, global1.d, 1457f, arg_0), Struct_2(global1.a, global1.b, global1.b.x, -681f), vec4<f32>(global1.d, 925f, -2076f, global1.d)))), global1.b, u_input.b.x, arg_0);
    global1 = Struct_2(arg_1.zwy, vec4<u32>(~(0u | var_1.b.x), 1u, 18916u, ~min(var_1.c, u_input.b.x)) ^ select(_wgslsmith_mult_vec4_u32(select(var_1.b, vec4<u32>(37688u, var_1.c, var_1.b.x, 4294967295u), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), _wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(global1.c, u_input.b.x, u_input.b.x, var_1.b.x))), ~global1.b, select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false)), _wgslsmith_dot_vec2_u32(select(~(vec2<u32>(var_1.b.x, 43826u) | vec2<u32>(var_1.b.x, u_input.b.x)), func_2(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, true, false, false)), 1i).b.xz, vec2<bool>(!var_0.x, false)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)));
    return StorageBuffer(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), global1.d)), 399f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1081f, global1.d) + vec2<f32>(var_1.d, var_1.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1148f), vec2<f32>(468f, var_1.d), vec2<bool>(true, true)))))), select(-(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, 0i, 11499i, -2147483647i), arg_1)), -arg_1 >> (_wgslsmith_mod_vec4_u32(vec4<u32>(43330u, 94215u, u_input.b.x, 28429u), vec4<u32>(67986u, global1.b.x, global1.b.x, 13312u)) % vec4<u32>(32u)), !vec4<bool>(false, var_0.x, false || var_0.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    let x = u_input.a;
    s_output = func_1(global1.d, _wgslsmith_mod_vec4_i32(~(~vec4<i32>(global0.x, u_input.a.x, 1i, global1.a.x)) | -(vec4<i32>(u_input.a.x, u_input.a.x, 81151i, global1.a.x) ^ vec4<i32>(-2147483647i, global0.x, 0i, global1.a.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(-53261i, -28899i, global0.x, global0.x), reverseBits(vec4<i32>(32195i, global1.a.x, 588i, global0.x)))));
}

