struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = 1i;
    let var_1 = select(select(select(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.x < -399f), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_f_op_f32(sign(1528f)) <= arg_0.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true))), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = any(select(vec4<bool>(all(!vec2<bool>(var_2.x, false)), true, arg_0.x >= _wgslsmith_f_op_f32(round(arg_0.x)), all(!vec4<bool>(false, var_1.x, false, var_1.x))), select(vec4<bool>(true, var_1.x, true, !var_2.x), !select(vec4<bool>(true, var_1.x, var_2.x, false), vec4<bool>(var_2.x, true, true, var_1.x), false), vec4<bool>(any(vec3<bool>(var_2.x, var_2.x, false)), true, !var_1.x, any(var_1))), var_1.x));
    return -(_wgslsmith_dot_vec2_i32(firstTrailingBit(abs(vec2<i32>(-21097i, 0i))), ~(-vec2<i32>(1i, 56061i))) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, select(0u, 65532u, var_1.x)), 43673u, u_input.a) % 32u));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-30474i, 1i), _wgslsmith_clamp_i32(func_3(vec3<f32>(arg_0, arg_0, -1717f)), ~func_3(vec3<f32>(-275f, arg_0, arg_0)), _wgslsmith_add_i32(-28963i, 1i))), Struct_2(min(~vec4<u32>(u_input.a, 4294967295u, 69576u, u_input.a), min(vec4<u32>(1u, 4294967295u, 105123u, u_input.a), vec4<u32>(36351u, 9963u, u_input.a, u_input.a))), Struct_1(!vec3<bool>(arg_1, arg_1, false), -1685f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0)))), arg_0, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, 328f))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1270f), vec2<f32>(455f, 1246f))) - vec2<f32>(1182f, -281f))));
    let var_2 = Struct_4(var_1.b, var_1.b.c, var_1.b);
    var var_3 = -var_1.a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1199f, arg_0))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0))))), arg_0)));
    return Struct_3(48026i, var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_1 {
    return Struct_1(vec3<bool>(all(vec4<bool>(arg_0.b.b.a.x && arg_0.b.b.a.x, true, false, arg_0.b.b.a.x)), arg_0.b.b.a.x, false), arg_0.b.b.b);
}

fn func_1() -> vec3<i32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(413f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2400f)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~(-1i), 22433i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 2147483647i), firstTrailingBit(-2822i))), 0i, -1i, ~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-44286i, 11937i, 36839i, 1i), vec4<i32>(2147483647i, -1i, -1i, 24067i)))));
    var var_1 = Struct_3(-func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-var_0.b)), all(vec4<bool>(true, true, false, false))).a, func_2(_wgslsmith_f_op_f32(ceil(774f)), true).b);
    var_0 = Struct_1(!vec3<bool>(true, var_1.b.b.a.x, var_1.b.b.a.x), _wgslsmith_div_f32(-783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.c.x)) * _wgslsmith_f_op_f32(floor(var_1.b.c.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) - var_0.b))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(abs(var_0.b)))), 1866f));
    let var_3 = false;
    return vec3<i32>(var_1.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f + var_1.b.c.x)), false && (var_1.b.b.a.x || var_0.a.x)).a, var_1.a) & _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(select(var_1.a, -1710i, var_1.b.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 0i, 39460i), vec4<i32>(var_1.a, var_1.a, -46789i, -7771i)), ~7042i), vec3<i32>(var_1.a, -8170i, func_2(598f, true).a)), -vec3<i32>(_wgslsmith_sub_i32(var_1.a, -1i), var_1.a & 38392i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 0i, var_1.a, 4668i), vec4<i32>(-42108i, -32590i, var_1.a, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(177f - 192f);
    var var_2 = -(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(-2147483647i, -1i, 49468i) << (vec3<u32>(var_0, 0u, var_0) % vec3<u32>(32u))), vec3<i32>(2147483647i, 53184i, -2147483647i) | func_1()) & reverseBits(vec3<i32>(func_2(359f, true).a, min(24512i, 0i), -20381i)));
    var var_3 = _wgslsmith_f_op_f32(2158f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -961f))))));
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 19635i, var_2.x, 12680i), vec4<i32>(-1i, var_2.x, var_2.x, -22353i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, 30375i, -52000i), vec4<i32>(-17056i, var_2.x, -1i, var_2.x))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, 15473i), vec3<i32>(var_2.x, var_2.x, 0i), vec3<i32>(var_2.x, 2147483647i, 1i))), _wgslsmith_sub_i32(var_2.x, var_2.x) | min(var_2.x, -var_2.x), var_2.x), i32(-1i) * -var_2.x, max(35931i, ~5420i));
    let var_5 = select(true, false, !select(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-515f - -424f), false).b.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

