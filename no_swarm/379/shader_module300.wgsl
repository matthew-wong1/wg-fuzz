struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = 701f;
    let var_1 = ~1u;
    var var_2 = Struct_1(true);
    var var_3 = vec3<i32>(33806i, reverseBits(-17248i), 1i);
    let var_4 = arg_2;
    return -441f;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f + -842f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec4<f32>(-103f, -627f, -1967f, 1408f), Struct_4(-1570f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xy), vec3<bool>(true, false, true), Struct_3(vec2<bool>(false, true), 1i, vec3<f32>(-1034f, -311f, -463f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-204f, 503f))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + 671f), -402f)), u_input.a, u_input.a.xz);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 735f) * var_0.x)), 1298f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2466f, _wgslsmith_f_op_f32(f32(-1f) * -884f)))), _wgslsmith_f_op_f32(1780f * _wgslsmith_f_op_f32(sign(var_1.a))));
    var_0 = vec3<f32>(402f, var_1.a, _wgslsmith_f_op_f32(select(152f, _wgslsmith_f_op_f32(1464f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_1.a) + 213f)), !(!any(vec3<bool>(true, false, false))))));
    let var_2 = -31330i;
    return true;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = -22664i;
    var var_1 = Struct_2(vec2<bool>(all(!vec4<bool>(arg_0.d.a, arg_0.a.x, true, true)), !any(select(vec4<bool>(arg_0.a.x, true, arg_0.d.a, false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), vec4<bool>(arg_0.d.a, arg_0.e.a, arg_0.e.a, false)))), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_0.b) ^ (i32(-1i) * -1022i), arg_0.c) | (~42919i & _wgslsmith_sub_i32(arg_0.b, u_input.a.x)), Struct_1(arg_0.e.a), Struct_1(true));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(4294967295u >> (0u % 32u), 1u), firstTrailingBit(select(select(~0u, 40663u, true), 1u, func_2(var_1.b))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 12258u), reverseBits(77567u)), _wgslsmith_add_u32(4294967295u, firstTrailingBit(17466u))));
    let var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(~4294967295u, ~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_2.x, var_2.x), ~vec4<u32>(var_2.x, var_2.x, 28496u, 0u)), countOneBits(var_2.x)), vec4<u32>(var_2.x, ~42611u << (var_2.x % 32u), var_2.x, 46052u));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(2269f)))) * -519f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(sign(506f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f * 450f) + _wgslsmith_f_op_f32(step(-519f, -1122f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2115f + _wgslsmith_f_op_f32(f32(-1f) * -752f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), -766f);
    return vec2<bool>(true, arg_0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(!func_1(Struct_2(vec2<bool>(true, true), u_input.a.x, u_input.a.x, Struct_1(true), Struct_1(true))), vec2<bool>(all(vec3<bool>(true, false, true)), select(true, true, false)), all(vec2<bool>(true, true)) & true));
    var var_1 = 0i;
    let var_2 = Struct_3(select(func_1(Struct_2(func_1(Struct_2(vec2<bool>(false, false), u_input.a.x, 26619i, Struct_1(false), Struct_1(var_0.x))), firstLeadingBit(u_input.a.x), -1i, Struct_1(false), Struct_1(false))), vec2<bool>(true, true), true), max(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, 1i), u_input.a.yz), abs(countOneBits(u_input.a.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, 394f, -550f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(585f, 600f, 775f) * vec3<f32>(895f, -459f, 179f)))))));
    let var_3 = Struct_4(-601f, ~(u_input.a ^ min(abs(vec3<i32>(u_input.a.x, 0i, var_2.b)), vec3<i32>(u_input.a.x, var_2.b, -728i) >> (vec3<u32>(13143u, 17100u, 1u) % vec3<u32>(32u)))), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, var_2.b), abs(u_input.a.x & _wgslsmith_add_i32(var_2.b, var_2.b))));
    var_0 = var_2.a;
    var var_4 = var_3;
    var var_5 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(select(-125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(157f, var_4.a, var_0.x))), var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_4.a)), var_4.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1066f, var_3.a)) + 307f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a, -107f, var_3.a, var_3.a), vec4<f32>(-1378f, var_3.a, var_3.a, var_3.a))), Struct_4(-1056f, var_3.b, var_4.b.yy), vec3<bool>(false, true, var_2.a.x), var_2)), _wgslsmith_f_op_f32(f32(-1f) * -663f)))));
}

