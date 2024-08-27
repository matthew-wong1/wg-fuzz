struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = vec3<i32>(~arg_0.x, -1i, u_input.b);
    var_0 = countOneBits(arg_0);
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(54876u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 724u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 3u)];
    return var_1.a << (firstTrailingBit(abs(0u)) % 32u);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 3u)];
    var var_1 = vec3<u32>(~(~u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~reverseBits(u_input.a.zzx), u_input.a.zxy), vec3<u32>(23481u, ~_wgslsmith_add_u32(78782u, 9312u), u_input.a.x)), ~(~(u_input.a.x | u_input.a.x)) & u_input.a.x);
    let var_2 = 1653f;
    var_1 = vec3<u32>(_wgslsmith_sub_u32(~104655u, 0u), ~(~4294967295u), 20180u);
    let var_3 = global0[_wgslsmith_index_u32(var_1.x & countOneBits(1u), 3u)];
    return -(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_3.a, -1i), vec2<i32>(var_3.a, abs(2147483647i))) ^ (countOneBits(-vec2<i32>(var_0.c, u_input.b)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(52698u, var_1.x), u_input.a.ww, vec2<u32>(var_1.x, 20847u)), u_input.a.zy) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 3>();
    var var_0 = vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(~1i, 6451i, arg_1.x), ~u_input.b), -15437i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, arg_1.x), abs(u_input.b << (31606u % 32u))), _wgslsmith_mod_i32(func_2(vec3<i32>(1i, -1i, u_input.b) ^ vec3<i32>(22655i, 16882i, 1i)), arg_1.x)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(117f - arg_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-659f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(sign(arg_2.x)), !var_1))) + arg_2));
    var var_3 = ~_wgslsmith_mult_vec2_i32(func_3(true, _wgslsmith_f_op_f32(min(439f, _wgslsmith_div_f32(-273f, -1276f)))), vec2<i32>(~1i, ~(-arg_1.x)));
    return ~_wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(arg_0.zw, vec2<u32>(u_input.a.x, u_input.a.x)) | abs(vec2<u32>(arg_0.x, 33434u)), max(arg_0.xy, ~vec2<u32>(4002u, 2227u)), !(!vec2<bool>(var_1, var_1))), ~arg_0.ww);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>) -> StorageBuffer {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(!(u_input.a.x == u_input.a.x), true), vec2<bool>(select(false, false, any(vec4<bool>(true, true, true, false))), arg_1.x == 1237f)), vec2<bool>(true, true), true);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_1.x))));
    let var_2 = func_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_0, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_0.x, u_input.a.x, 0u, arg_0.x))), u_input.a, arg_0), -vec3<i32>(u_input.b, ~u_input.b, min(-26828i, 1i)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-816f, 1113f))), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -737f))) >> (_wgslsmith_dot_vec2_u32(arg_0.wz, vec2<u32>(reverseBits(arg_0.x), _wgslsmith_mod_u32(9495u, max(20711u, u_input.a.x)))) % 32u);
    return StorageBuffer(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 * arg_1.x), arg_1.x, true || var_0.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, reverseBits(u_input.b) ^ -1i, reverseBits(countOneBits(69867i))), vec3<i32>(2147483647i, u_input.b, u_input.b)), vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 3919i, u_input.b), firstTrailingBit(-9677i)), ~((-48105i >> (u_input.a.x % 32u)) | _wgslsmith_add_i32(0i, 1i)), func_2(vec3<i32>(~37427i, -3477i, 48115i)), 0i), vec3<i32>(u_input.b, _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_add_i32(2147483647i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -45213i, 1i, u_input.b) >> (u_input.a % vec4<u32>(32u)), ~vec4<i32>(62396i, -25172i, 52984i, 7697i))) << (~firstLeadingBit(vec3<u32>(1u, u_input.a.x, 39730u) | vec3<u32>(arg_0.x, arg_0.x, 92142u)) % vec3<u32>(32u)), -(~(-25512i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = -firstTrailingBit(_wgslsmith_sub_i32(~u_input.b, -u_input.b)) | firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-1i, -2147483647i)) >> (~1u % 32u));
    let var_1 = u_input.a.zyy;
    global0 = array<Struct_1, 3>();
    let var_2 = var_0;
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = func_4(firstTrailingBit(vec4<u32>(1u, ~(~var_1.x), func_1(u_input.a, ~vec3<i32>(u_input.b, 0i, 19484i), vec3<f32>(-527f, -2667f, 381f)), u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1872f, 1007f))))));
}

