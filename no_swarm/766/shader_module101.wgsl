struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = 0u;
    var var_1 = ~(~u_input.d) > -u_input.d;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 29933u)), ~(~u_input.c.x)), _wgslsmith_sub_u32(firstLeadingBit(~(~u_input.c.x)), 1u));
    var var_2 = abs(~u_input.c.xz);
    var_0 = u_input.c.x;
    return ~1u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-1757f)), u_input.d, vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, u_input.d) & 16668i), -2147483647i, _wgslsmith_div_i32(u_input.d, _wgslsmith_add_i32(u_input.d, -1i)) >> (select(~u_input.c.x, u_input.c.x, select(true, true, true)) % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(1338f - -1000f), ~_wgslsmith_sub_i32(14609i, ~var_0.c.x), var_0.c);
    let var_1 = u_input.d;
    var var_2 = Struct_1(var_0.a, ~_wgslsmith_div_i32(u_input.b.x, 2147483647i), -var_0.c);
    var var_3 = Struct_1(-1717f, var_0.c.x, _wgslsmith_sub_vec3_i32(var_0.c, -abs(~var_0.c)));
    return Struct_1(var_2.a, min(0i, (0i >> (max(u_input.c.x, u_input.c.x) % 32u)) << (func_3(~(-44168i)) % 32u)), vec3<i32>(u_input.d, select(i32(-1i) * -2147483647i, 0i, var_1 != 1i), -9879i));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.a + -1000f))) - _wgslsmith_f_op_f32(sign(var_0.a))), 1i, abs(var_0.c));
    let var_2 = ~(~_wgslsmith_clamp_u32(1u, ~(~4294967295u), ~u_input.c.x));
    var_0 = func_2();
    return select(select(vec3<bool>(!all(vec2<bool>(false, true)), !select(true, true, true), all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(true, true, true)), !(!vec3<bool>(all(vec4<bool>(true, false, false, true)), false, true)), !vec3<bool>(false, true, !any(vec3<bool>(false, true, true))));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    global0 = min(1u, 65149u);
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = Struct_1(var_0.a, _wgslsmith_mod_i32(0i, i32(-1i) * -1i), var_0.c);
    var var_3 = var_2;
    return ~(~_wgslsmith_clamp_u32(4294967295u, 72872u, _wgslsmith_add_u32(76654u, 42435u)) | ~(~(~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let var_1 = func_2();
    global0 = _wgslsmith_dot_vec4_u32(u_input.c, u_input.c);
    let var_2 = vec2<u32>(~_wgslsmith_clamp_u32(~(~1u), ~1u, 27145u << (u_input.c.x % 32u)), abs(select(4294967295u, reverseBits(0u), true & any(vec3<bool>(false, false, true)))));
    global0 = abs(47485u);
    let var_3 = var_1.b;
    var var_4 = u_input.d;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -491f)))), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-172f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * -641f) * var_1.a)))));
    let var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_div_u32(u_input.c.x, ~10314u), _wgslsmith_sub_i32(61940i, 4020i), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_6.c.x, var_1.c.x), ~(-45904i)), u_input.b.x), -u_input.b.x | (min(var_6.b, u_input.d) << (~32980u % 32u)), ~(-12933i), u_input.d), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(max(u_input.c.zyx, u_input.c.wyy), vec3<u32>(0u, var_2.x, u_input.c.x))));
}

