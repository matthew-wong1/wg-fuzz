struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec3<bool>(false, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    return arg_0.a;
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global0 = Struct_3(true, select(vec3<bool>(true, true, true), global0.b, vec3<bool>(true, ~arg_0 < 1u, !global0.b.x)), !vec4<bool>(global0.a != func_1(Struct_4(Struct_2(global0.c, global0.b, -79152i, vec4<f32>(arg_1, 119f, arg_1, arg_1)))).b.x, global0.c.x, global0.a, all(!global0.c)));
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(158f))))) >= arg_1, vec3<bool>(true, max(abs(u_input.a.x), 6223u) < arg_0, (~0i >> (_wgslsmith_div_u32(19923u, arg_0) % 32u)) < ~(-1i)), select(global0.c, vec4<bool>(true, any(!vec3<bool>(global0.c.x, true, global0.b.x)), func_1(Struct_4(Struct_2(vec4<bool>(true, true, true, global0.a), global0.c.yzx, 37513i, vec4<f32>(1212f, arg_1, -546f, -2402f)))).a.x, min(1u, 4294967295u) < max(arg_0, 44459u)), vec4<bool>(all(select(global0.c.xyw, vec3<bool>(true, global0.a, true), vec3<bool>(true, false, global0.a))), all(vec2<bool>(false, false)) | func_1(Struct_4(Struct_2(global0.c, global0.c.xyx, 0i, vec4<f32>(arg_1, -2190f, arg_1, arg_1)))).b.x, all(global0.b), global0.c.x)));
    global0 = Struct_3(true, !global0.c.yyz, select(global0.c, !vec4<bool>(arg_1 < 159f, true, true, true), any(!(!vec3<bool>(false, true, global0.c.x)))));
    global0 = Struct_3(all(global0.c.zx), vec3<bool>(global0.b.x, global0.a, global0.a), vec4<bool>(true, true, true, global0.c.x));
    let var_0 = reverseBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, func_1(Struct_4(Struct_2(global0.c, vec3<bool>(false, true, global0.b.x), 2147483647i, vec4<f32>(-583f, 1000f, 342f, 1000f)))).c), 1i));
    return (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(33411u, arg_0)), u_input.a.yz) != 1u) == global0.a;
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = select(vec3<bool>(global0.a, true, any(vec4<bool>(!global0.c.x, global0.a, true, global0.a))), !global0.c.xxy, true);
    let var_1 = !(!select(!vec3<bool>(false, arg_0, global0.a), vec3<bool>(true, !global0.b.x, true), true));
    var var_2 = Struct_4(func_1(Struct_4(Struct_2(vec4<bool>(var_0.x, true, false, true), vec3<bool>(true, arg_0, var_1.x), _wgslsmith_div_i32(-55975i, -18730i), vec4<f32>(803f, 459f, -124f, 821f)))));
    var var_3 = var_2.a.c;
    var_2 = Struct_4(func_1(Struct_4(var_2.a)));
    return Struct_5(vec4<i32>(~_wgslsmith_mult_i32(var_2.a.c, 2147483647i) | ~_wgslsmith_mod_i32(var_2.a.c, var_2.a.c), _wgslsmith_sub_i32(var_2.a.c, var_2.a.c), _wgslsmith_sub_i32(var_2.a.c, _wgslsmith_div_i32(func_1(Struct_4(var_2.a)).c, _wgslsmith_add_i32(58218i, 27729i))), var_2.a.c), func_3(_wgslsmith_mod_u32(~u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1029f * -339f)))), ~(i32(-1i) * -(var_2.a.c | 0i)), _wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, u_input.a.x), Struct_2(vec4<bool>(!var_2.a.b.x, !all(vec2<bool>(global0.c.x, true)), var_2.a.a.x, true), !vec3<bool>(!arg_0, var_0.x, false), -max(-25861i >> (u_input.a.x % 32u), _wgslsmith_div_i32(-2147483647i, 2147483647i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(905f, -378f, _wgslsmith_f_op_f32(round(253f)), _wgslsmith_f_op_f32(sign(var_2.a.d.x))), _wgslsmith_f_op_vec4_f32(-var_2.a.d)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5) -> Struct_4 {
    let var_0 = -52259i;
    let var_1 = Struct_4(func_1(Struct_4(arg_2.e)));
    var var_2 = !select(!func_2(arg_2.e.d.x <= -1109f).e.b.yy, select(var_1.a.b.xz, !vec2<bool>(arg_0.c.x, true), select(1i != arg_2.c, func_3(61098u, 1000f), any(vec4<bool>(global0.a, arg_2.e.b.x, true, false)))), arg_2.e.a.xy);
    var_2 = vec2<bool>(func_2(true).b | arg_0.b.x, !(!all(arg_2.e.b)));
    global0 = Struct_3(arg_2.e.a.x, select(select(!select(vec3<bool>(global0.a, var_1.a.b.x, false), vec3<bool>(var_2.x, arg_2.e.b.x, false), vec3<bool>(var_1.a.a.x, var_2.x, global0.c.x)), global0.c.zzw, !(global0.b.x || arg_0.a)), vec3<bool>(arg_2.e.b.x, (4294967295u <= u_input.a.x) & (arg_0.c.x | true), all(global0.c)), vec3<bool>(any(!arg_2.e.b.yx), true, all(arg_2.e.a.xzz))), vec4<bool>(false, !var_1.a.b.x, arg_2.e.c < -_wgslsmith_clamp_i32(arg_2.a.x, 0i, -17603i), any(var_1.a.a)));
    return Struct_4(arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(Struct_4(Struct_2(global0.c, vec3<bool>(global0.b.x, global0.c.x, false), ~(-2147483647i), vec4<f32>(-180f, 316f, 872f, -125f)))));
    global0 = Struct_3(func_1(func_4(Struct_3(true, !vec3<bool>(true, true, var_0.a.b.x), select(var_0.a.a, global0.c, var_0.a.a.x)), 1000f, func_2(global0.c.x))).b.x, vec3<bool>((var_0.a.d.x < _wgslsmith_f_op_f32(-1616f * var_0.a.d.x)) | true, func_4(Struct_3(global0.b.x, !var_0.a.b, vec4<bool>(false, false, false, false)), var_0.a.d.x, Struct_5(~vec4<i32>(var_0.a.c, -10851i, -2147483647i, var_0.a.c), var_0.a.b.x, var_0.a.c | 2147483647i, u_input.a.x, func_2(global0.b.x).e)).a.b.x, !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u)) != firstLeadingBit(u_input.a.x))), func_2(-2104f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x - var_0.a.d.x) * _wgslsmith_f_op_f32(-var_0.a.d.x))).e.a);
    let var_1 = ~u_input.a.yx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.d.x), func_2(true).e.d.x))) + 233f) * func_1(Struct_4(func_4(Struct_3(false, var_0.a.b, global0.c), _wgslsmith_f_op_f32(-1000f * var_0.a.d.x), func_2(var_0.a.a.x)).a)).d.x);
    let var_3 = var_0;
    let var_4 = Struct_4(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, abs(vec2<i32>(min(reverseBits(var_0.a.c), 2147483647i << (var_1.x % 32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_4.a.c, -1i)), -vec2<i32>(var_4.a.c, var_3.a.c)))));
}

