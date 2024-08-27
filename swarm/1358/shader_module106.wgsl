struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    global0 = firstLeadingBit(1u & _wgslsmith_div_u32(_wgslsmith_clamp_u32(~90883u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 12753u), vec2<u32>(42733u, 36198u))), 1u));
    return arg_1.d.yxy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~1u, ~_wgslsmith_sub_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(44092u, 4294967295u), vec2<u32>(0u, 12685u)), select(8945u, 18856u, true)), 14914u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b & _wgslsmith_sub_vec3_i32(max(u_input.b, func_1(Struct_1(vec4<f32>(-978f, 1000f, -384f, 288f), u_input.b.x, u_input.c, vec4<i32>(0i, u_input.a.x, 1i, 12273i), false), Struct_1(vec4<f32>(-2218f, -1300f, 1000f, 1000f), 0i, u_input.b.x, vec4<i32>(u_input.a.x, 21001i, u_input.b.x, 14304i), true), Struct_1(vec4<f32>(1404f, -326f, -1000f, -928f), u_input.b.x, -2147483647i, vec4<i32>(-1i, 41969i, u_input.c, 46601i), true))), select(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), func_1(Struct_1(vec4<f32>(171f, -1194f, 1205f, -742f), -2147483647i, 424i, vec4<i32>(-1i, 26820i, 2147483647i, u_input.a.x), true), Struct_1(vec4<f32>(424f, 251f, -643f, -1000f), 26972i, u_input.c, vec4<i32>(-2147483647i, -1005i, u_input.b.x, u_input.b.x), false), Struct_1(vec4<f32>(-1000f, 1495f, 810f, -1000f), u_input.b.x, -11811i, vec4<i32>(u_input.b.x, -35516i, u_input.b.x, 2147483647i), true)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-911f, 1995f, 593f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -197f, -632f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1878f, 541f, 302f), vec3<f32>(1535f, 174f, -489f))))))), vec2<i32>(select(u_input.b.x, -68026i, any(vec4<bool>(true, true, true, true))), ~(~_wgslsmith_mult_i32(u_input.b.x, 2147483647i))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(745f, -347f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1211f + 1319f), 375f))))));
}

