struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a >> (~u_input.a % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 39339u, 38622u, 16248u) << (vec4<u32>(11787u, u_input.a.x, 45062u, 1u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(35195u, u_input.a.x, 1u, 47108u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    var_0 = u_input.a;
    var_0 = u_input.a;
    var_0 = abs(~(~(~vec4<u32>(61692u, 0u, u_input.a.x, 29735u))));
    let var_1 = _wgslsmith_f_op_f32(673f - -1278f);
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(reverseBits(vec3<u32>(abs(4294967295u), ~17768u, ~u_input.a.x))), (u_input.a.yxz & _wgslsmith_clamp_vec3_u32(min(vec3<u32>(18649u, 40733u, 10927u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a.wxz, select(vec3<u32>(1u, 0u, u_input.a.x), u_input.a.zyw, vec3<bool>(arg_0, true, true)))) << (vec3<u32>(~(u_input.a.x & u_input.a.x), ~(~0u), u_input.a.x) % vec3<u32>(32u)));
    let var_2 = select(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 6110i, u_input.c.x, 0i), vec4<i32>(u_input.b, u_input.c.x, 0i, u_input.c.x)), 1i, _wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i), reverseBits(-1i)), -(_wgslsmith_div_vec4_i32(abs(vec4<i32>(26027i, 49190i, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.c.x)) | vec4<i32>(~u_input.b, _wgslsmith_mod_i32(-17054i, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-22936i, -8413i, 2147483647i, u_input.b)), ~u_input.c.x)), !(!(!arg_1.b.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(336f, 366f), vec2<f32>(-271f, 168f), vec2<bool>(true, arg_1.b.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-126f, -581f) - vec2<f32>(-281f, 453f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, 1283f) + vec2<f32>(-460f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -1412f)))))));
    var var_4 = arg_1;
    return _wgslsmith_div_u32(0u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u) & u_input.a.yzz, var_1)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(arg_2.b, !select(!vec2<bool>(true, arg_2.a.x), select(arg_2.b, vec2<bool>(arg_2.a.x, true), false), arg_2.a));
    var var_1 = vec4<u32>(u_input.a.x, 43695u, u_input.a.x << (firstLeadingBit(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0)) % 32u), u_input.a.x);
    var_1 = ~u_input.a;
    let var_2 = Struct_1(vec2<bool>(all(var_0.b), u_input.c.x > ((u_input.b ^ u_input.b) ^ u_input.c.x)), vec2<bool>(true, true));
    var_1 = ~(arg_1 ^ vec4<u32>(~arg_1.x, func_3(var_2.b.x, Struct_1(vec2<bool>(true, var_0.b.x), var_0.a)) | _wgslsmith_add_u32(u_input.a.x, 2539u), var_1.x, abs(_wgslsmith_sub_u32(arg_1.x, u_input.a.x))));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(44286u, 0u, 6223u), vec3<u32>(u_input.a.x, var_1.x, 1u)), ~vec3<u32>(0u, 1u, 44582u)), ~4294967295u, _wgslsmith_mult_u32(5920u, var_1.x), _wgslsmith_mod_u32(u_input.a.x, 73432u) >> ((10004u >> (var_1.x % 32u)) % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(41969u, var_1.x), _wgslsmith_sub_u32(u_input.a.x, 54u), var_1.x, 4294967295u), vec4<u32>(1u, reverseBits(arg_1.x), ~u_input.a.x, ~10506u))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.a, vec4<u32>(41036u, 45506u, arg_1.x, u_input.a.x)), countOneBits(countOneBits(arg_1)), u_input.a), _wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(21063u, 0u, 1u, u_input.a.x))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 5796u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, func_1(-573f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true)))), ~4294967295u));
    var var_1 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), !(!vec2<bool>(true, all(vec2<bool>(false, false)))));
    let var_2 = any(!select(!(!vec3<bool>(var_1.b.x, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.b.x, false, false), vec3<bool>(false, var_1.a.x, var_1.b.x), var_1.b.x), select(vec3<bool>(var_1.a.x, var_1.b.x, true), vec3<bool>(false, var_1.b.x, var_1.a.x), var_1.b.x), vec3<bool>(true, false, false))));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(var_0.x, ~(~reverseBits(var_0.x))), u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~41495u, u_input.a.x), ~1u));
    let var_4 = 1059f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

