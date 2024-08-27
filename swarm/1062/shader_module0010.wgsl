struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-362f, -1818f)) * _wgslsmith_f_op_f32(f32(-1f) * -564f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2444f - -758f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(645f - _wgslsmith_f_op_f32(f32(-1f) * -889f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1690f), 388f, arg_3.c))))));
    let var_1 = ~firstLeadingBit(~global0.x);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(-var_0))) + var_0), var_0));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_0) + 1898f)))));
    return var_1;
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = vec3<u32>(~(~_wgslsmith_add_u32(u_input.e.x, 43072u)), firstTrailingBit(~u_input.e.x) ^ ~4294967295u, _wgslsmith_mod_u32(0u, ~min(15809u, 40297u))) >> (vec3<u32>(69497u << (u_input.e.x % 32u), u_input.a, u_input.e.x) % vec3<u32>(32u));
    let var_1 = 23846u;
    global0 = var_0 | (vec3<u32>(_wgslsmith_sub_u32(func_3(9019i, true, vec4<u32>(global0.x, 9492u, 8022u, var_0.x), Struct_1(vec3<bool>(false, arg_1, true), arg_0, true, vec4<bool>(arg_1, false, true, true), vec3<i32>(arg_0, -13388i, -17693i))), 1u), 4294967295u, select(_wgslsmith_mult_u32(61181u, global0.x), ~1u, !arg_1)) << (var_0 % vec3<u32>(32u)));
    var var_2 = Struct_1(vec3<bool>(true, arg_1, true), firstLeadingBit(~firstTrailingBit(u_input.c)) >> (~u_input.a % 32u), true, vec4<bool>(any(vec3<bool>(!arg_1, any(vec2<bool>(false, true)), true)), true, any(select(vec3<bool>(false, true, false), !vec3<bool>(false, arg_1, true), true)), all(vec2<bool>(true, all(vec2<bool>(true, true))))), -u_input.d);
    var_2 = Struct_1(var_2.a, var_2.e.x, all(select(vec2<bool>(arg_1, arg_1), !(!var_2.a.yy), all(vec2<bool>(var_2.a.x, var_2.a.x)))), !var_2.d, firstTrailingBit(vec3<i32>(~arg_0, ~arg_0, -arg_0)));
    return var_2.d.x;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = ~(~u_input.e);
    let var_1 = Struct_1(!arg_0.zww, 1i, true, arg_0, vec3<i32>(countOneBits(_wgslsmith_mult_i32(-1i, u_input.c) | u_input.d.x), 2147483647i, ~4806i));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(350f - 1549f), _wgslsmith_f_op_f32(f32(-1f) * -1512f), -872f), vec4<f32>(-146f, -1686f, -615f, -431f), var_1.d)))));
    let var_3 = true;
    let var_4 = 388f;
    return !all(!vec3<bool>(!arg_0.x, var_1.c | true, func_2(13978i, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(!select(false, true, true), func_1(vec4<bool>(true, true, true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true), vec3<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)), !all(vec3<bool>(true, false, false)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec2<bool>(false, false))), vec3<bool>(true, true, any(vec2<bool>(true, false))), all(vec4<bool>(true, true, false, true))), !vec3<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true, any(vec2<bool>(true, true)) | true));
    var_0 = !select(vec3<bool>(all(!vec3<bool>(false, var_0.x, var_0.x)), false, true), !select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(true, var_0.x, true), true), select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(false, !var_0.x, false), global0.x >= reverseBits(4294967295u)));
    var_0 = vec3<bool>(var_0.x, !(!(-u_input.b == u_input.c)), !any(vec3<bool>(var_0.x && false, !var_0.x, var_0.x)));
    var var_1 = Struct_1(!select(vec3<bool>(false, func_2(32731i, true), true), select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(false, var_0.x, var_0.x)), !any(vec2<bool>(true, var_0.x))), -2147483647i, any(vec2<bool>(var_0.x, true)), !(!(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)))), ~firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -12847i, -1i), u_input.d), -vec3<i32>(47918i, 20346i, u_input.b))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f * -807f))), _wgslsmith_f_op_f32(183f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1385f))));
    let var_3 = Struct_1(!select(var_1.a, !var_1.d.yxw, true), ~1i, true, select(vec4<bool>(var_0.x, var_1.a.x, var_0.x, var_1.c), !vec4<bool>(any(var_1.d.xwy), false, false, false), (var_2 != var_2) | var_0.x), ~vec3<i32>(-1i, 1i, -1i));
    let var_4 = u_input.e;
    var var_5 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.e.x, -2147483647i, ~u_input.d.x >> (~u_input.e.x % 32u), select(var_3.e.x << (u_input.a % 32u), -4032i, true)), -max(~vec4<i32>(var_1.b, -1i, u_input.b, u_input.d.x), ~vec4<i32>(6499i, var_3.b, -33575i, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0.yx));
}

