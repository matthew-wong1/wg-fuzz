struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.c;
    var_0 = 20285u & ~u_input.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.yx * vec2<f32>(arg_0.b.x, 333f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(var_1.x)), arg_0.b);
    var var_3 = ~u_input.d;
    return _wgslsmith_f_op_f32(1165f + var_2.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(9747i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(36342i, -26180i)), select(u_input.a, 56631i, true)), vec4<i32>(u_input.a, firstTrailingBit(-53841i), -1i, abs(u_input.b.x))), vec4<i32>(-u_input.a >> (select(var_0, arg_1.x, false) % 32u), _wgslsmith_mult_i32(15300i, _wgslsmith_mult_i32(-2147483647i, u_input.a)), -42945i >> (_wgslsmith_clamp_u32(arg_1.x, 32470u, u_input.d.x) % 32u), u_input.b.x & -2147483647i) << (~vec4<u32>(1u, countOneBits(u_input.c), arg_0 & 1u, _wgslsmith_mod_u32(u_input.c, 134461u)) % vec4<u32>(32u)));
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(1972f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1201f, 330f, 407f), vec3<f32>(-2259f, 1218f, 629f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 514f, 195f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f * -1014f) - _wgslsmith_div_f32(-1226f, 1088f)), vec3<f32>(1000f, -1787f, -103f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1467f, -1000f, -1316f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, 896f, -1875f)))))));
    var var_4 = var_3;
    return Struct_1(_wgslsmith_f_op_f32(max(var_4.a, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a, var_4.b.x, true)) - var_3.b.x), var_3.a), _wgslsmith_f_op_f32(-var_4.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = -2147483647i;
    var_0 = -68882i;
    var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, arg_0.a));
    var var_2 = func_2(u_input.c, ~min(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, u_input.d.x, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 35241u, 1u, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u))), firstTrailingBit(vec4<u32>(0u, u_input.c, 105578u, u_input.d.x) & vec4<u32>(18888u, u_input.c, 26133u, 23496u))));
    return vec4<bool>(arg_1, true, !arg_1, arg_1 & any(!vec2<bool>(arg_1, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-202f)), -1965f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + -676f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f), 1485f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f + 1406f))), -967f));
    let var_1 = vec3<bool>(true, false, any(select(func_1(var_0, false, vec4<f32>(var_0.b.x, var_0.b.x, var_0.a, 834f)), vec4<bool>(false, true, true, true), any(vec4<bool>(true, false, true, true)))) & true);
    var var_2 = firstTrailingBit(u_input.d);
    var_2 = u_input.d;
    var var_3 = vec2<bool>(all(var_1), var_1.x);
    var var_4 = countOneBits(firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(max(vec3<u32>(53273u, 49996u, 27097u), vec3<u32>(1u, 43089u, 1u)), ~vec3<u32>(u_input.c, u_input.c, 54788u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~var_2.x))));
}

