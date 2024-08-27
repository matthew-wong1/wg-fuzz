struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(~53989u), u_input.c, u_input.c, abs(_wgslsmith_mult_u32(u_input.c, u_input.c))), abs(vec4<u32>(~u_input.c, 69326u, u_input.c, u_input.c)));
    var var_1 = -u_input.b.x;
    return vec4<bool>(any(!vec4<bool>(any(vec4<bool>(true, false, false, true)), false, any(vec3<bool>(false, true, false)), true)), _wgslsmith_div_i32(abs(-17310i), arg_0.c.x) >= ~(-35092i), true, false);
}

fn func_2(arg_0: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~_wgslsmith_add_i32(-53546i, u_input.b.x), ~_wgslsmith_add_i32(u_input.b.x, 2147483647i)), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.a.x, u_input.b.x))), func_3(Struct_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1985f, -805f))), -2147483647i, abs(u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = func_2(!(!(true && any(vec2<bool>(arg_1, false)))));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-var_0.c) == 1f, any(vec2<bool>(any(vec4<bool>(true, var_0.b.x, var_0.b.x, arg_0.a.b.x)), arg_0.a.b.x)), arg_3.x, all(vec4<bool>(arg_1 || arg_1, func_2(true).b.x, arg_3.x, true)) & arg_1);
    var_0 = Struct_1(-11889i << (u_input.c % 32u), !arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c)))) + 118f));
    var var_2 = _wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(ceil(arg_0.a.c))) > _wgslsmith_f_op_f32(351f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -960f), 1130f));
    var var_3 = -2147483647i;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_2 >> (arg_2 % vec4<u32>(32u)), vec4<u32>(13899u, min(u_input.c, arg_2.x << (4294967295u % 32u)), 1u & (4294967295u | u_input.c), ~35650u >> (1u % 32u))), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)))), _wgslsmith_f_op_f32(1262f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), 1f)));
    let var_1 = _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(4294967295u, min(4294967295u, u_input.c)), vec2<u32>(func_1(Struct_2(Struct_1(u_input.b.x, vec4<bool>(false, false, false, true), var_0.x), vec3<i32>(-17019i, 4803i, u_input.b.x)), var_0.x != var_0.x, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.c, 14170u, 0u, 1u)), vec4<bool>(true, true, true, false)), reverseBits(~54148u)), all(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, true)), func_2(false).b.x))), vec2<u32>(_wgslsmith_sub_u32(1u, 1u) << (~_wgslsmith_clamp_u32(u_input.c, 4294967295u, 117702u) % 32u), u_input.c), vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(min(4294967295u, u_input.c), _wgslsmith_sub_u32(36034u, u_input.c))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, max(u_input.c, u_input.c)), u_input.c)));
    let var_2 = Struct_5(var_0, -1i >> (var_1.x % 32u), vec4<i32>(-func_2(all(vec4<bool>(false, false, true, false))).a, u_input.a.x, u_input.b.x, -_wgslsmith_add_i32(u_input.b.x, u_input.b.x)));
    var var_3 = abs(min(_wgslsmith_mult_vec2_u32(abs(var_1), var_1), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4324u), vec2<u32>(u_input.c, u_input.c)), var_1, vec2<bool>(false, all(vec2<bool>(false, true))))));
    let var_4 = func_2(-245f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(var_0.x * -558f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - var_0.x)))).b;
    var var_5 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_div_f32(var_0.x, -799f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1490f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(709f))))))), u_input.a.x, _wgslsmith_sub_vec4_i32(var_2.c, u_input.b) | ~u_input.b);
    let var_6 = firstLeadingBit(vec3<i32>(107033i, select(~var_2.c.x, _wgslsmith_div_i32(0i, -98599i) | select(23788i, 60871i, var_4.x), false), 1i >> (_wgslsmith_div_u32(~var_1.x, min(var_3.x, u_input.c)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.a.x))))))), 1u >> (firstLeadingBit(~u_input.c) % 32u), var_2.c.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) + 2807f));
}

