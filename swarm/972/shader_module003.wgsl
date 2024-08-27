struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    return vec2<bool>(arg_3.a, false);
}

fn func_3(arg_0: bool) -> u32 {
    return global0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(false, func_3(true), vec3<u32>(37344u, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, arg_1)), global0.c.x), func_1(arg_0.d.x, -vec4<i32>(countOneBits(-1i), -7396i << (u_input.b.x % 32u), firstTrailingBit(-34842i), _wgslsmith_mod_i32(-8679i, 2147483647i)), _wgslsmith_f_op_f32(ceil(-1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -837f), Struct_1(global0.a, func_3(arg_0.d.x), vec3<u32>(_wgslsmith_sub_u32(1u, global0.c.x), 1u, u_input.b.x), select(global0.d, arg_0.d, func_1(arg_0.d.x, vec4<i32>(-33004i, -1i, 2147483647i, 53812i), true, arg_0)))));
    var var_1 = !var_0.a;
    let var_2 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i) * -vec3<i32>(0i, 0i, -2147483647i)) >> ((firstLeadingBit(select(arg_0.c, global0.c, vec3<bool>(true, global0.d.x, true))) ^ vec3<u32>(~4294967295u, 0u, ~0u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(16272i, -2147483647i, 66491i) << (4995u % 32u), 19346i, 2147483647i) & (vec3<i32>(select(14827i, -17795i, false), 71327i >> (u_input.a.x % 32u), -8621i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(31909i, 0i, 0i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-1073f)), _wgslsmith_f_op_f32(min(1066f, -762f)), _wgslsmith_f_op_f32(-711f * -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(863f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(194f - 1327f), 1f), global0.a)), -530f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1053f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1275f)) * 1f)))));
    var_1 = false;
    return -696f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, ~0u, global0.c, select(func_1(false, vec4<i32>(1i, 1i, -1i, 11133i), global0.d.x, Struct_1(true, global0.b, vec3<u32>(4294967295u, 15236u, u_input.a.x), vec2<bool>(global0.d.x, true))), global0.d, !global0.a)), _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.b, u_input.a.x), ~(~global0.b)))));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 4833i), vec2<i32>(-5880i, 0i), vec2<i32>(1i, 29762i)) | vec2<i32>(1i, 0i), vec2<i32>(1i, _wgslsmith_mult_i32(-1i, -9571i))) & ~select(vec2<i32>(39638i, 19255i), vec2<i32>(-1i, -1i), func_1(global0.d.x, vec4<i32>(-2147483647i, -36922i, -2147483647i, 2147483647i), true, Struct_1(global0.a, u_input.a.x, u_input.b, global0.d))), -abs(-vec2<i32>(1i, -1i)));
    global0 = Struct_1(global0.d.x, reverseBits(u_input.b.x), ~global0.c, vec2<bool>(!(var_1.x >= ~21161i), all(!select(vec3<bool>(true, true, global0.a), vec3<bool>(global0.a, true, false), global0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(1309f - -499f), _wgslsmith_f_op_f32(-1961f + 1f)));
}

