struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: i32 = -23914i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_3.a);
    let var_1 = u_input.b;
    let var_2 = arg_3;
    let var_3 = ~var_1.x;
    var var_4 = vec4<i32>(var_2.a, var_2.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, arg_1), vec3<i32>(u_input.a.x, -2147483647i, var_0.a) << (vec3<u32>(var_3, 1u, u_input.b.x) % vec3<u32>(32u))) & 1i, i32(-1i) * -31312i);
    return Struct_1(~12403i);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    global1 = u_input.a.x;
    global1 = arg_0;
    let var_0 = vec4<f32>(-1661f, -1741f, _wgslsmith_f_op_f32(sign(108f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -422f))))));
    var var_1 = ~firstTrailingBit(~max(arg_2.x ^ 4294967295u, arg_2.x));
    let var_2 = func_2(false, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 1i, 25303i), firstTrailingBit(vec4<i32>(1i, -1i, arg_3.a, arg_3.a))) >> (1214u % 32u)), Struct_1(1i), func_2(arg_1.x, ~arg_0, Struct_1(10678i), arg_3));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec2_i32(u_input.a, u_input.a);
    let var_0 = ~_wgslsmith_mult_u32(~(func_1(vec4<u32>(u_input.b.x, 32637u, 4294967295u, 1u), Struct_1(24542i)) & u_input.b.x), u_input.b.x);
    global0 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_sub_vec2_i32(max(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(-1i) * -vec2<i32>(-1i, 43735i)), u_input.a) << (vec2<u32>(~4294967295u, u_input.b.x) % vec2<u32>(32u));
    let var_2 = var_1 << (~countOneBits(vec2<u32>(39456u, ~var_0)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-13369i, ~_wgslsmith_clamp_i32(var_1.x, var_2.x, var_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-988f - 581f) + _wgslsmith_div_f32(-352f, -1815f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(26819i, vec4<bool>(false, false, true, false), ~u_input.b, func_2(true, var_1.x, Struct_1(-15863i), Struct_1(var_1.x)))))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 27132u, u_input.b.x) & vec3<u32>(0u, 31521u, 238u), ~_wgslsmith_div_vec3_u32(vec3<u32>(92196u, 0u, 0u), vec3<u32>(u_input.b.x, 4294967295u, 53544u))) << (vec3<u32>(~reverseBits(u_input.b.x), 0u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-676f + 893f));
}

