struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = 38370u;
    var_0 = ~40715u;
    let var_1 = u_input.a.xz;
    let var_2 = arg_1.d;
    global0 = var_2;
    return arg_0.b;
}

fn func_2() -> f32 {
    global0 = Struct_1(~global0.a, _wgslsmith_div_u32(reverseBits(global0.b), _wgslsmith_mult_u32(global0.b, min(~74237u, _wgslsmith_clamp_u32(4294967295u, global0.b, 53504u)))));
    let var_0 = Struct_2(u_input.a.zwz, -global0.a.x, !(!(~global0.b <= ~25021u)), Struct_1(vec2<i32>(-1i) * -(u_input.a.xz ^ vec2<i32>(-10586i, 349i)), _wgslsmith_mod_u32(firstLeadingBit(global0.b), 23831u)));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(~(~select(var_0.a.xx, vec2<i32>(0i, -1i), vec2<bool>(true, var_0.c))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3407i, -2147483647i, 0i, 2147483647i), u_input.a), global0.a.x | -12175i) << (~vec2<u32>(28821u, global0.b) % vec2<u32>(32u))), func_3(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, -1i), countOneBits(vec2<i32>(46022i, -55336i))), var_0.d.b), var_0));
    global0 = var_0.d;
    global0 = var_1;
    return 152f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-669f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-1202f, -932f))))), _wgslsmith_f_op_f32(1f + -490f)) + 187f);
    let var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_f32(-1000f + -1000f);
    global0 = arg_2;
    global0 = arg_2;
    return countOneBits(vec4<u32>(~arg_0.x, arg_2.b, _wgslsmith_sub_u32(~global0.b, arg_0.x & global0.b), 82939u) | vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.zz, ~arg_0.xx), global0.b, 33604u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b, arg_2.b, global0.b, 0u), ~vec4<u32>(arg_0.x, global0.b, 1u, 13754u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 17888u, global0.b, global0.b)), ~vec4<u32>(global0.b, global0.b, global0.b, 13268u)), func_1(firstLeadingBit(vec3<u32>(1u, 0u, 59002u)), global0.a, Struct_1(global0.a, 4294967295u), u_input.b << (global0.b % 32u))), _wgslsmith_f_op_f32(-1071f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f * 200f)), 880f))));
}

