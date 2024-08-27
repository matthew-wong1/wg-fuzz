struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = select(~(~reverseBits(~u_input.b.zyx)), reverseBits(u_input.d), !(!arg_0.a));
    var var_1 = u_input.c;
    var_0 = vec3<u32>(0u, var_0.x, 3266u);
    var var_2 = abs(vec4<i32>(abs(i32(-1i) * -u_input.e.x), abs(max(-36355i, var_1.x)), min(var_1.x | 1i, i32(-1i) * -23470i) << (~_wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(u_input.b.x, 0u)) % 32u), _wgslsmith_sub_i32(u_input.e.x, -var_1.x)));
    let var_3 = !any(vec2<bool>(arg_0.a, true));
    return !(!arg_0.a);
}

fn func_2() -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, ~(~(~vec4<u32>(54010u, u_input.b.x, 8226u, u_input.b.x)))), max(countOneBits(~4294967295u), u_input.d.x & u_input.d.x) ^ reverseBits(u_input.b.x), ~1u, (u_input.b.x ^ _wgslsmith_div_u32(79998u, u_input.d.x)) >> (u_input.d.x % 32u));
    var_0 = ~u_input.b;
    let var_1 = !(!(!vec3<bool>(false, func_3(Struct_1(false), Struct_1(false)), true)));
    let var_2 = u_input.c.xy;
    let var_3 = ~reverseBits(abs(vec3<u32>(firstLeadingBit(23524u), _wgslsmith_div_u32(u_input.d.x, 1u), 22191u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3281f + -1000f)), 1f)) + 2686f));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-801f, _wgslsmith_f_op_f32(f32(-1f) * -1195f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -1135f), 1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(ceil(-413f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -406f))), _wgslsmith_f_op_f32(2293f + -1633f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2163f)), _wgslsmith_div_f32(-789f, -1142f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1056f, -377f))) - -808f)));
    var_0 = 431f;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-464f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1735f) * -450f))));
    let var_1 = u_input.a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(func_1(), any(vec2<bool>(true, any(vec4<bool>(false, false, false, false)))), false, (_wgslsmith_sub_i32(u_input.e.x, -21847i) ^ u_input.c.x) <= -9647i));
    var var_1 = Struct_2(!var_0.a);
    let var_2 = 16249i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(359f, -655f, -367f))), vec3<f32>(-2803f, -641f, 1163f)))))));
    var var_4 = _wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a.x, 21426i, 2147483647i)) | u_input.c, ~u_input.c);
    let var_5 = Struct_1(select(var_3.x != var_3.x, false, true));
    let var_6 = Struct_2(select(vec4<bool>(any(var_1.a.wy), var_1.a.x, false, var_0.a.x), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), select(var_0.a, var_1.a, var_5.a), vec4<bool>(var_1.a.x, false, false, var_0.a.x)), var_0.a.x));
    let var_7 = var_5;
    let var_8 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, ~u_input.c.x), ~var_2 >> (_wgslsmith_mod_u32(u_input.b.x, u_input.d.x) % 32u)) > select(~_wgslsmith_dot_vec4_i32(vec4<i32>(-47224i, var_2, u_input.c.x, -2147483647i), vec4<i32>(1i, var_2, 5011i, var_4.x)), _wgslsmith_sub_i32(-1i, reverseBits(16317i)), !var_6.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1786f, var_3.x, var_3.x) - vec4<f32>(151f, var_3.x, 205f, -1366f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 470f, var_3.x, 743f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1560f, 1833f) + vec3<f32>(var_3.x, var_3.x, 675f)) - _wgslsmith_f_op_vec3_f32(-var_3)), _wgslsmith_f_op_vec3_f32(step(var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 1119f)))), var_1.a.x)) * vec3<f32>(var_3.x, 1561f, _wgslsmith_f_op_f32(step(499f, 219f)))));
}

