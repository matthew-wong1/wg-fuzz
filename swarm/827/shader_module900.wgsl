struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.c.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(exp2(arg_0.a))))), vec4<i32>(53656i, arg_0.c.c, ~(u_input.b.x >> (firstLeadingBit(var_0.x) % 32u)), -33350i), arg_0.b.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), -2147483647i), -2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yx, min(vec2<i32>(-52121i, 1i), ~vec2<i32>(arg_0.c.c, 0i)))), arg_0.c.d);
    var var_2 = var_1.d;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(sign(-670f)), true)))), 827f)), select(~max(arg_0.c.b ^ arg_0.c.b, ~arg_0.c.b), select(arg_0.c.b, ~(arg_0.c.b & vec4<u32>(20979u, u_input.a, var_0.x, var_0.x)), !(!vec4<bool>(var_1.e, var_1.e, false, true))), !(!(!vec4<bool>(var_1.e, var_1.e, false, false)))), 7052i, any(vec4<bool>(var_1.e, var_1.e, _wgslsmith_mod_u32(1u, var_0.x) <= _wgslsmith_div_u32(arg_0.c.b.x, u_input.a), var_1.e)), _wgslsmith_f_op_f32(arg_0.c.e * var_1.a));
    var_2 = u_input.b.x << (u_input.a % 32u);
    return var_3.d;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = all(vec2<bool>(func_3(Struct_3(1f, _wgslsmith_f_op_vec3_f32(vec3<f32>(507f, -433f, -740f) + vec3<f32>(717f, -877f, -721f)), Struct_2(-938f, vec4<u32>(u_input.a, u_input.a, u_input.a, 29015u), -23895i, false, 265f))), false));
    var var_1 = _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(-1i) * -vec4<i32>(1i, -2035i, 12374i, -29078i))), -(~(~vec4<i32>(1i, arg_0.x, arg_0.x, -41892i) | ~vec4<i32>(15791i, 16832i, u_input.b.x, arg_0.x))));
    var var_2 = Struct_1(565f, vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), -u_input.b.x)), 17469i, 42922i, i32(-1i) * -(7527i & u_input.b.x)), 357f, arg_0.x, any(vec3<bool>(true, true, true)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(168f, var_2.c)))))), select(firstLeadingBit(select(var_2.b >> (vec4<u32>(6289u, 0u, u_input.a, u_input.a) % vec4<u32>(32u)), var_2.b, vec4<bool>(true, false, true, false))), var_2.b, !select(select(vec4<bool>(false, var_2.e, var_2.e, var_2.e), vec4<bool>(var_2.e, var_2.e, var_2.e, var_2.e), false), !vec4<bool>(var_2.e, true, var_2.e, var_2.e), !var_2.e)), 982f, -20877i, any(!select(vec4<bool>(var_2.e, var_2.e, true, var_2.e), vec4<bool>(false, var_2.e, var_2.e, false), vec4<bool>(false, true, false, false))) || false);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2274f)) - -2183f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, var_2.c, var_2.e)) * _wgslsmith_f_op_f32(var_2.c + var_2.a)))), Struct_2(_wgslsmith_f_op_f32(sign(var_2.c)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(16688u, 4294967295u, u_input.a, u_input.a))), u_input.b.x, _wgslsmith_f_op_f32(ceil(-521f)) >= 180f, var_2.c));
    return -(arg_0.x & _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(var_2.b, vec4<i32>(-4376i, u_input.b.x, var_2.d, var_2.d), vec4<i32>(var_3.c.c, var_2.d, arg_0.x, u_input.b.x)), vec4<i32>(arg_0.x >> (u_input.a % 32u), _wgslsmith_mult_i32(0i, var_2.d), arg_0.x ^ -7445i, 1i)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1279f + -1203f), _wgslsmith_f_op_f32(-1316f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1017f, -909f)) + _wgslsmith_f_op_f32(f32(-1f) * -1409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(489f * -655f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1291f)) + 996f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-864f, -1016f, 635f, 181f), vec4<f32>(-882f, 984f, 1993f, 1602f), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(238f, 1746f, -152f, 370f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1280f, 583f, 272f))))));
    var var_1 = min(~vec3<u32>(4294967295u, 54273u, u_input.a), ~abs(~(vec3<u32>(0u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))));
    var var_2 = u_input.b.x & func_2(u_input.b);
    var_2 = ~u_input.b.x;
    var var_3 = u_input.b;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(~0u, 29388u), 1u) & vec2<u32>(_wgslsmith_add_u32(func_1(), 0u), 0u), ~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.b.x << (~4294967295u % 32u)), u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, -1127f, -522f, 2557f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -348f, 104f, -546f))))), vec4<f32>(-1320f, _wgslsmith_f_op_f32(1188f + _wgslsmith_f_op_f32(-481f - -764f)), _wgslsmith_f_op_f32(-652f * _wgslsmith_div_f32(-887f, 480f)), _wgslsmith_f_op_f32(284f - 1618f)), select(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, true, true))), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(916f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1338f, -712f))))));
}

