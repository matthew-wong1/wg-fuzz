struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = 1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_2.d.xxz));
    var var_2 = select(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(48649u, arg_2.c.x), vec2<u32>(96870u, 9270u)), arg_2.c.zy), ~vec2<u32>(firstTrailingBit(arg_2.c.x) ^ 4294967295u, min(0u, arg_2.c.x)), arg_3);
    return arg_1.x;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zx) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(arg_0.x, -1329f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.yx * vec2<f32>(_wgslsmith_f_op_f32(floor(-994f)), -2313f))))));
    let var_1 = true;
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(9510i, u_input.a, 1i, 1i), vec4<i32>(u_input.a, -10057i, -1i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(~(-2147483647i), u_input.a & -1i, 0i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -46087i, u_input.a, u_input.a), vec4<i32>(-11575i, -22847i, u_input.a, -46088i)) >> (vec4<u32>(0u, 0u, 49700u, 24841u) % vec4<u32>(32u)))), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-11822i, u_input.a, u_input.a, u_input.a)), 1i)), ~vec3<i32>(~u_input.a, _wgslsmith_add_i32(-u_input.a, u_input.a), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -472f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(569f, 361f) * _wgslsmith_f_op_f32(sign(-461f)))));
    let var_1 = -abs(max(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(63519i, -10635i, u_input.a) | max(vec3<i32>(0i, 6004i, -2147483647i), vec3<i32>(u_input.a, -2147483647i, u_input.a))));
    var var_2 = ~(~(~vec2<u32>(1u, func_1(11817i, vec4<u32>(33115u, 4294967295u, 1u, 83908u), Struct_1(-1294f, 1i, vec3<u32>(2778u, 12429u, 1u), vec4<f32>(132f, 549f, -292f, 974f)), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(964f, -974f), vec2<f32>(887f, -347f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(599f, 1257f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2370f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-123f, 1000f), vec2<f32>(-631f, 1652f))))))), !vec2<bool>(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1552f, -249f, -1319f), vec3<f32>(1814f, -2470f, 891f)))), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(923f, -635f, -581f, 341f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1249f, -483f, -965f, 1990f) * vec4<f32>(-567f, -608f, 392f, 1000f)), vec4<f32>(-160f, 1230f, -617f, 751f), vec4<bool>(true, false, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1202f, 221f, 700f, -427f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(180f, -1531f, 375f, 122f), vec4<f32>(1155f, 1138f, 220f, 1344f), false))))));
}

