struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(sign(104f)))) + 1f), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-563f))))))), ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_add_u32(arg_0, arg_0)), arg_0));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), 479f);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), ~_wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.d.x, arg_0), min(vec2<u32>(var_0.b, 0u), vec2<u32>(arg_0, 47663u))), u_input.d));
    var var_2 = !(!select(true, false, true)) == true;
    var var_3 = !vec2<bool>(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(sign(527f)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(-1646f, 948f))), var_1.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(4294967295u));
    var var_1 = 1f;
    return Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false), true), vec3<bool>(true, !(any(vec3<bool>(false, false, false)) && true), false));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(vec3<i32>(u_input.a.x, firstLeadingBit(i32(-1i) * -u_input.a.x), 0i), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-291f, 915f, 679f), vec3<f32>(2374f, -183f, -1011f))))), firstTrailingBit(_wgslsmith_mult_u32(7014u, 1u)) & abs(0u)), Struct_1(vec3<f32>(-2098f, 1132f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1206f * 1175f), 586f))), min(_wgslsmith_sub_u32(u_input.c ^ 4294967295u, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), ~u_input.d.x)), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, -216f, 158f, 833f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(419f, -1697f, 459f, 279f))))))));
    var var_1 = vec4<u32>(~_wgslsmith_add_u32(u_input.c, (var_0.c.b << (1u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(3353u, 89161u)) % 32u)), 48234u, ~13925u << ((var_0.c.b >> (min(23361u, var_0.b.b) % 32u)) % 32u), 1u);
    var var_2 = var_1.x;
    var_2 = 48443u;
    var_2 = _wgslsmith_mod_u32(var_0.b.b, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(var_1.xzy, abs(vec3<u32>(var_0.c.b, 90226u, 4294967295u))), 26610u, min(_wgslsmith_div_u32(abs(var_1.x), 4294967295u), ~var_0.b.b)));
    return var_0.c;
}

fn func_1() -> f32 {
    var var_0 = u_input.d.x == 1u;
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-244f, 125f, 2009f, -199f), vec4<f32>(549f, 404f, 270f, -803f)))))));
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x + -1751f), _wgslsmith_f_op_f32(step(1839f, 2363f)), var_1.a.x, _wgslsmith_f_op_f32(ceil(-826f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, var_1.a.x, var_1.a.x, var_1.a.x)))).a, select(func_2(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * -664f), _wgslsmith_f_op_f32(-1304f + var_1.a.x), _wgslsmith_f_op_vec2_f32(func_3(var_1.b)).x)).b, select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), any(vec2<bool>(true, true))));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))), -448f, _wgslsmith_f_op_f32(-203f + var_1.a.x), _wgslsmith_f_op_f32(sign(func_4(var_2).a.x)))));
    let var_4 = Struct_2(var_3.b.yy, !vec3<bool>(true & any(var_3.a), !func_2(vec4<f32>(var_1.a.x, var_1.a.x, -225f, var_1.a.x)).b.x, all(vec4<bool>(true, true, false, true))));
    return 486f;
}

fn func_5(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1134f, 1121f, -559f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_4(Struct_2(vec2<bool>(false, false), vec3<bool>(false, false, true))).a.x, _wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(-353f - 1000f)))) + 1000f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-474f, _wgslsmith_f_op_f32(min(var_1.x, -1107f)), arg_0.x), _wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(ceil(532f)))) - var_1), 34568u);
    var var_4 = ~(~u_input.d);
    return Struct_3(firstLeadingBit(vec3<i32>((u_input.a.x | var_0.x) ^ -var_0.x, _wgslsmith_div_i32(u_input.a.x >> (80877u % 32u), ~(-37949i)), (var_0.x & 1i) | var_0.x)), var_3, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2642f + 407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(16450u)).x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_3.b, 0u, 0u), vec4<u32>(var_3.b, 4294967295u, var_3.b, u_input.c)), u_input.c) >> (~firstLeadingBit(38656u) % 32u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-182f, var_2, var_1.x, var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -7917i;
    let var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(-122f, -491f))));
    var var_2 = -15625i;
    var_2 = _wgslsmith_mod_i32(var_1.a.x, func_5(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, -729f, -729f, var_1.c.a.x)))).a.xz).a.x);
    var var_3 = var_1.c.a.x;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.a.x))))));
}

