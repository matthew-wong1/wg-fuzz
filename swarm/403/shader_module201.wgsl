struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    global0 = vec2<u32>(17885u, 41801u);
    let var_0 = _wgslsmith_f_op_f32(sign(arg_0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2792f));
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-607f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -1339f), 1000f), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f - arg_0.x)), -1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2282f)) * 620f))), vec4<i32>(max(~u_input.c, 3327i), u_input.b.x, 32309i, -2564i), _wgslsmith_mod_u32(u_input.d, ~(~_wgslsmith_div_u32(u_input.d, u_input.a.x))), firstTrailingBit(~max(vec3<u32>(46418u, global0.x, u_input.a.x), vec3<u32>(global0.x, u_input.e.x, u_input.a.x) ^ vec3<u32>(44268u, global0.x, 1u))));
    var var_2 = vec3<bool>(true & any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0)), all(!vec3<bool>(any(vec2<bool>(var_0, true)), var_0, any(vec4<bool>(true, false, var_0, false)))), var_0 || !any(select(vec2<bool>(true, true), vec2<bool>(false, true), var_0)));
    global0 = select(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(~9950u, 27290u & global0.x) ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.x), u_input.e), ~vec2<u32>(8993u, u_input.a.x))), u_input.e, false);
    return vec4<u32>(global0.x, ~global0.x, firstTrailingBit(~40942u), 4294967295u) ^ ~vec4<u32>(select(global0.x | 4294967295u, ~global0.x, var_2.x), _wgslsmith_mod_u32(global0.x, _wgslsmith_mult_u32(0u, var_1.d.x)), 1u, var_1.c);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> u32 {
    global0 = min(_wgslsmith_clamp_vec2_u32(~u_input.e, _wgslsmith_add_vec2_u32(vec2<u32>(min(global0.x, 58028u), 3693u), u_input.a), u_input.e), ~vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(0u, global0.x)) << (firstLeadingBit((u_input.e << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_0 = ~_wgslsmith_sub_vec4_u32(func_3(vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), -575f, -670f, _wgslsmith_f_op_f32(519f + arg_0.x))), reverseBits(~vec4<u32>(28122u, global0.x, u_input.a.x, 37113u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -719f, 339f, -119f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1315f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1000f, arg_0.x) - vec4<f32>(-248f, arg_0.x, -168f, 864f)))))), (vec4<i32>(abs(arg_1.x), arg_1.x, ~7675i, ~1i) ^ u_input.b) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(76868u, u_input.e.x, 0u, var_0.x) ^ (vec4<u32>(6417u, var_0.x, var_0.x, var_0.x) << (vec4<u32>(1u, u_input.e.x, 1u, global0.x) % vec4<u32>(32u))), ~vec4<u32>(0u, 0u, global0.x, 7111u) << (~vec4<u32>(var_0.x, u_input.d, 4294967295u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~1u, vec3<u32>(~global0.x | _wgslsmith_sub_u32(u_input.e.x | var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(90039u, 0u, 33732u, u_input.a.x), vec4<u32>(0u, 7156u, 0u, 4294967295u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_0.xxz, vec3<u32>(u_input.e.x, 0u, var_0.x) | var_0.yxx), var_0.x & ~global0.x), ~_wgslsmith_mult_u32(12237u | u_input.a.x, 84819u)));
    let var_2 = true;
    var_0 = vec4<u32>(firstTrailingBit((countOneBits(u_input.d) | 0u) << (_wgslsmith_clamp_u32(var_1.d.x, ~var_1.d.x, 0u) % 32u)), 4294967295u, abs((var_1.d.x ^ 3010u) & ~0u) & 78310u, var_0.x);
    return ~u_input.a.x;
}

fn func_1() -> bool {
    global0 = vec2<u32>(~global0.x, ~func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-503f, -2001f, 472f), vec3<f32>(824f, -1285f, -138f), false)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-475f, -481f, 992f), vec3<f32>(-738f, -298f, -451f)))), ~(~u_input.b.ywz)));
    return all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, any(vec2<bool>(true, false)))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, all(vec2<bool>(false, true)), u_input.d > 56429u, any(vec2<bool>(true, false))), vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, 221f <= _wgslsmith_f_op_f32(ceil(1324f)), func_1());
    global0 = vec2<u32>(global0.x, ~4294967295u) & ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(~4294967295u >> ((global0.x ^ global0.x) % 32u), ~u_input.e.x | u_input.d), _wgslsmith_sub_u32(u_input.e.x, u_input.a.x | u_input.e.x)), abs(-select(2369i, 2147483647i, false)));
}

