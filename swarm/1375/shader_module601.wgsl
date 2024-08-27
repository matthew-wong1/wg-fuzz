struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1008f, 574f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(sign(-117f)))));
    let var_1 = vec4<f32>(1696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1359f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f + 748f) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(1833f - -285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -426f))));
    var_0 = _wgslsmith_f_op_f32(floor(-1138f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1331f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, -1409f), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), !vec2<bool>(true, !(u_input.a == 4294967295u)), Struct_2(Struct_1(u_input.c.x, vec2<bool>(false, true), _wgslsmith_mod_u32(~0u, 18754u), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -859f)), 33458u >> ((1u ^ u_input.a) % 32u)), 1000f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1070f)), u_input.a < firstLeadingBit(0u)));
    var var_3 = vec4<i32>(0i, ~countOneBits(_wgslsmith_add_i32(var_2.c.a.a, -34064i)), i32(-1i) * -26826i, 2147483647i) & vec4<i32>(-(firstLeadingBit(-2147483647i) << ((u_input.b.x & 1u) % 32u)), var_2.c.a.a ^ 1i, 1i, -((var_2.c.a.a | var_2.c.a.a) & _wgslsmith_sub_i32(var_2.c.a.a, -27900i)));
    return u_input.a;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(20597u, u_input.a, 4294967295u))), max(vec3<u32>(func_3(), min(u_input.a << (1646u % 32u), countOneBits(4294967295u)), 0u & (u_input.a | 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 94181u, 1u), vec3<u32>(u_input.b.x, u_input.a, 1u))) & select(vec3<u32>(1u, u_input.b.x, u_input.b.x) ^ vec3<u32>(1u, u_input.b.x, u_input.a), abs(vec3<u32>(28436u, 4294967295u, 11708u)), arg_0)));
    var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(94975u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(41729u, var_0.x, 35272u), reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.a)))), ~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 22594u, u_input.a), vec3<u32>(var_0.x, var_0.x, 4294967295u)) >> (~vec3<u32>(34792u, var_0.x, 24090u) % vec3<u32>(32u)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2400f, -1480f))) + vec2<f32>(-629f, -276f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(460f, -257f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(878f, -845f)))));
    let var_2 = all(!select(select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, true, true, true))), select(!vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, true, false)), arg_0));
    var var_3 = var_0.x;
    return Struct_1(min(abs(select(-2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), false && var_2)), 1i), vec2<bool>(select(!any(vec3<bool>(arg_0, arg_0, true)), any(vec2<bool>(var_2, var_2)), var_1.a.x == _wgslsmith_f_op_f32(-var_1.a.x)), arg_0), var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f * 458f)), _wgslsmith_f_op_f32(-1384f - 269f))), reverseBits(_wgslsmith_sub_u32(~(~u_input.b.x), ~abs(u_input.a))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_5(vec2<bool>(true, true), func_2(!(!(u_input.b.x < 1u))), vec3<f32>(-1917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f)) * 1149f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -873f)))), u_input.c.x);
    var var_1 = u_input.c.x;
    let var_2 = !(!select(vec3<bool>(all(vec3<bool>(false, var_0.b.b.x, var_0.a.x)), var_0.a.x || var_0.a.x, any(vec2<bool>(var_0.b.b.x, false))), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.b.b.x), true));
    var_1 = abs(var_0.d);
    var var_3 = u_input.c.x;
    return Struct_3(vec4<f32>(func_2(var_0.a.x).d.x, var_0.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-479f, _wgslsmith_f_op_f32(var_0.c.x - var_0.b.d.x))) + 1142f), -662f), vec2<bool>(false, any(vec3<bool>(func_2(var_0.b.b.x).b.x, true, !var_0.b.b.x))), Struct_2(func_2(false), func_2(true).b.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = func_1().c.a.d.x;
    var_1 = _wgslsmith_f_op_f32(max(func_1().a.x, _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_2 = 42007u | _wgslsmith_sub_u32(4294967295u, max((u_input.b.x ^ 28051u) >> (~10034u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(68076u, u_input.b.x, 49691u), vec3<u32>(u_input.b.x, var_0.c.a.e, 13442u)) ^ ~0u));
    let var_3 = var_0.a.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec3<u32>(var_0.c.a.e, var_0.c.a.c, 81083u)), var_0.a);
}

