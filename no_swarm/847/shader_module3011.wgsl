struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1769f - 2248f)), -672f))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(1107f + _wgslsmith_f_op_f32(1064f - _wgslsmith_f_op_f32(338f - -168f))));
    var var_1 = u_input.e.xwx;
    let var_2 = ~22614i;
    var var_3 = !vec4<bool>(arg_0.a.a, false, arg_0.a.a, all(select(vec2<bool>(arg_0.a.a, arg_0.a.a), select(vec2<bool>(arg_0.a.a, false), vec2<bool>(false, true), arg_0.a.a), arg_0.a.a)));
    return var_0.a;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false), 180f), Struct_3(1000f), Struct_4(vec2<f32>(543f, -184f)), _wgslsmith_f_op_f32(min(2311f, 1418f)))))) * _wgslsmith_f_op_f32(1274f + 1f)));
    var var_1 = var_0.b;
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(1183f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1197f * _wgslsmith_f_op_f32(ceil(var_0.b))))), _wgslsmith_f_op_f32(sign(865f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1379f);
}

fn func_1() -> vec4<bool> {
    let var_0 = true;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1f))))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)) + vec2<f32>(-199f, -746f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(var_0, false))), _wgslsmith_f_op_f32(-var_1.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, var_1.a) - vec2<f32>(var_1.a, -1507f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))))));
    var var_3 = ~_wgslsmith_sub_u32(0u, firstTrailingBit(u_input.a.x));
    let var_4 = -abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.d, vec4<i32>(u_input.e.x, 1099i, -5750i, u_input.d.x), var_0), -vec4<i32>(0i, u_input.b, 7670i, -15189i)), firstLeadingBit(max(vec4<i32>(-23509i, -2147483647i, 0i, u_input.e.x), vec4<i32>(-2147483647i, -1i, -34541i, u_input.d.x)))));
    return vec4<bool>(false, false, var_0, !all(vec4<bool>(true, all(vec4<bool>(true, true, true, var_0)), any(vec4<bool>(var_0, false, true, var_0)), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !all(select(func_1(), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), all(vec2<bool>(true, select(false, true, false))));
    let var_1 = u_input.a.x;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1), select(vec2<u32>(0u, 0u), ~vec2<u32>(7256u, var_1), !var_0.yy)), ((u_input.a ^ vec3<u32>(u_input.a.x, var_1, 12766u)) & u_input.a) ^ ((vec3<u32>(var_1, 1u, u_input.a.x) << (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_mod_i32(-54999i, abs(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f))) * 1455f));
}

