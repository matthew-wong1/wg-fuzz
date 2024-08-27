struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = arg_2 ^ u_input.a;
    var var_1 = arg_1;
    var_0 = ~41361u;
    var var_2 = Struct_2(select(arg_0.c.a, arg_0.b, vec4<bool>(select(true, u_input.b < -25797i, arg_1.b.x), true, all(arg_0.b), u_input.b <= (u_input.b << (arg_2 % 32u)))));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = Struct_1(~_wgslsmith_add_u32(func_3(Struct_3(arg_1, vec4<bool>(true, false, true, true), Struct_2(vec4<bool>(true, false, true, false)), Struct_1(16971u, vec2<bool>(false, false)), arg_1), Struct_1(14442u, vec2<bool>(false, false)), _wgslsmith_sub_u32(arg_2, 4294967295u)), arg_2), select(!vec2<bool>(0u >= arg_2, any(vec2<bool>(true, true))), vec2<bool>(true, true), true || any(vec2<bool>(true, true))));
    var_0 = Struct_1(~select(23504u, min(~arg_2, func_3(Struct_3(arg_1, vec4<bool>(false, false, var_0.b.x, var_0.b.x), Struct_2(vec4<bool>(var_0.b.x, true, false, true)), Struct_1(arg_2, var_0.b), arg_1), Struct_1(u_input.a, vec2<bool>(var_0.b.x, true)), 3150u)), !var_0.b.x == !var_0.b.x), !var_0.b);
    var_0 = Struct_1(1u, select(var_0.b, var_0.b, vec2<bool>(_wgslsmith_f_op_f32(ceil(arg_1)) > arg_1, var_0.b.x)));
    var var_1 = abs(arg_2);
    var var_2 = arg_0;
    return all(var_0.b);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    let var_0 = !vec4<bool>(func_4(-_wgslsmith_div_i32(u_input.b, -43083i), -247f, _wgslsmith_clamp_u32(func_3(arg_1, Struct_1(u_input.a, vec2<bool>(arg_3.x, true)), 39839u), max(4294967295u, arg_1.d.a), u_input.a)), !((arg_0 < arg_1.a) && arg_3.x), true, arg_1.b.x);
    var var_1 = Struct_1(abs(~countOneBits(~u_input.a)), !(!vec2<bool>(any(vec2<bool>(arg_3.x, true)), false)));
    let var_2 = Struct_3(531f, select(vec4<bool>(var_1.b.x, true, !any(vec3<bool>(true, var_0.x, false)), false), vec4<bool>(true, true, false, !(!var_1.b.x)), all(var_0.xzy)), arg_1.c, Struct_1(4294967295u, vec2<bool>(arg_1.c.a.x, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f * arg_0) * _wgslsmith_f_op_f32(floor(arg_0)))))));
    var_1 = arg_1.d;
    var_1 = Struct_1(min(21542u, ~(~_wgslsmith_mult_u32(u_input.a, var_1.a))), vec2<bool>(select(~var_2.d.a, u_input.a, var_2.d.a < 77338u) >= func_3(Struct_3(var_2.a, var_2.c.a, var_2.c, var_2.d, -243f), arg_1.d, abs(9734u)), all(var_0.zyy)));
    return ~firstLeadingBit(u_input.b);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1200f * 517f), -1990f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2318f)), 809f)))));
    var var_1 = false;
    var_1 = select(true, select(all(vec3<bool>(true, false, all(vec3<bool>(true, true, false)))), all(vec4<bool>(true, true, true, true)), true), !all(vec2<bool>(all(vec2<bool>(true, false)), true)));
    var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(2147483647i, u_input.b) | min(_wgslsmith_add_i32(u_input.b, 1i), 14804i | u_input.b), func_2(var_0, Struct_3(var_0, vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(false, false, true, true)), Struct_1(u_input.a, vec2<bool>(false, false)), 1678f), true, select(vec2<bool>(false, true), vec2<bool>(true, true), true)) << (u_input.a % 32u)), -u_input.b);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -1885f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(var_0 - var_0))), vec4<f32>(_wgslsmith_f_op_f32(floor(562f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(675f, -696f, false)), _wgslsmith_f_op_f32(trunc(var_0))), -349f, _wgslsmith_div_f32(var_0, -864f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(877f, var_0, -458f, var_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, _wgslsmith_f_op_f32(f32(-1f) * -529f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 743f, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = false;
    var var_2 = ~_wgslsmith_add_u32(0u, abs(u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_4 = vec4<bool>(var_1, false, true, any(select(!vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true | var_1, true, true | var_1, false), func_4(-2147483647i, _wgslsmith_div_f32(var_3.x, 193f), _wgslsmith_mult_u32(u_input.a, u_input.a)))));
    var var_5 = i32(-1i) * -17983i;
    var_2 = abs(38303u);
    var_5 = (_wgslsmith_sub_i32(select(u_input.b, func_2(var_3.x, Struct_3(var_3.x, var_4, Struct_2(vec4<bool>(true, var_4.x, var_4.x, var_1)), Struct_1(4294967295u, var_4.yw), -270f), false, vec2<bool>(var_4.x, var_1)), any(var_4.zyz)), var_0) >> (~firstTrailingBit(0u) % 32u)) ^ -(i32(-1i) * -2147483647i);
    let var_6 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-270f)))), var_4, Struct_2(vec4<bool>(false, any(vec3<bool>(var_1, var_1, false)) && true, false, true)), Struct_1(u_input.a, vec2<bool>(var_4.x, !select(var_1, true, true))), _wgslsmith_f_op_f32(-var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

