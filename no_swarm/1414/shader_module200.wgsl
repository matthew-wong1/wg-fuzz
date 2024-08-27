struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -175f, _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3224f, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(arg_0 - 396f), arg_0) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -632f, arg_0))), vec3<f32>(arg_0, arg_0, 1695f), vec3<bool>(true, false, false))))));
    var var_1 = Struct_1(select(1u, ~(~26892u), false) >= 1u, !(!(true | all(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)))));
    var var_2 = Struct_1(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), var_1.b), vec2<bool>(all(vec2<bool>(var_1.b, var_1.a)), var_1.a == var_1.a), var_1.b)), true, _wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, -314f))), vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x - -1000f), var_0.x)))));
    var var_3 = Struct_1(!all(!select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_2.a, false, true), vec3<bool>(var_1.a, var_1.b, false))), (var_1.c.x < var_0.x) == true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, var_0.x) * _wgslsmith_f_op_vec2_f32(var_1.c - vec2<f32>(arg_0, var_1.c.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -891f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1280f, var_0.x)), vec2<bool>(true, true))))));
    var_2 = Struct_1(true & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(1664f - arg_0), _wgslsmith_f_op_f32(-var_0.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), true || var_1.a, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))));
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = ~(~firstTrailingBit(~vec3<u32>(0u, 19248u, 22776u)));
    let var_1 = arg_1;
    global0 = !(!var_1.a);
    var_0 = select(firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(23788u, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, 54151u, 7794u)) | ~vec3<u32>(31698u, var_0.x, var_0.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(53725u, var_0.x, 4294967295u), vec3<u32>(4294967295u, var_0.x, 23138u)), vec3<u32>(var_0.x, 0u, var_0.x)), ~(vec3<u32>(1u, 67593u, var_0.x) & vec3<u32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(max(var_0.x, var_0.x), var_0.x & var_0.x)), var_0.x), !(!(!vec3<bool>(var_1.b, true, false))));
    global0 = any(!select(vec3<bool>(true, var_1.a, false & arg_1.b), !select(vec3<bool>(var_1.a, arg_1.b, arg_1.a), vec3<bool>(true, false, false), vec3<bool>(arg_1.a, false, arg_1.b)), select(!vec3<bool>(var_1.a, var_1.a, arg_1.b), vec3<bool>(true, var_1.b, var_1.b), select(vec3<bool>(var_1.a, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
    return _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(26651i, ~arg_0) ^ 61039i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec4<i32>(abs(u_input.a), countOneBits(i32(-1i) * -4749i), ~(-(30896i & u_input.a)), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), vec3<i32>(0i, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, 2147483647i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)))) | vec4<i32>(~_wgslsmith_add_i32(u_input.a, u_input.a) & u_input.a, firstTrailingBit(1i), func_4(~(-2147483647i), Struct_1(true, func_3(-124f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(792f, arg_1.c.x)))), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(u_input.a, -1i, u_input.a, -18948i), vec4<i32>(u_input.a, u_input.a, -2147483647i, 13220i), vec4<bool>(arg_1.b, true, arg_0.b, arg_0.b)), vec4<i32>(u_input.a, func_4(0i, Struct_1(arg_1.b, arg_0.b, arg_0.c)), u_input.a, ~u_input.a)));
    global0 = !((~(2147483647i | var_0.x) == _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, 1i), 1i)) & arg_0.b);
    return vec2<f32>(887f, _wgslsmith_f_op_f32(-arg_0.c.x));
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_1(select(true, false, true || any(vec3<bool>(false, true, true))) == false, all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1632f, 317f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(181f, -210f) + vec2<f32>(-329f, -363f)), all(vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(true, false, vec2<f32>(-776f, -443f)), Struct_1(false, true, vec2<f32>(2452f, -1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1761f, -644f) * vec2<f32>(167f, 3650f))))));
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 43568u, 23040u, 1u)), vec4<u32>(19312u, 0u, 51451u, 4294967295u)), firstLeadingBit(1u)), ~firstTrailingBit(4294967295u) & 0u) >> (firstLeadingBit(vec2<u32>(0u, ~(~4294967295u))) % vec2<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(func_2(arg_0, arg_0)).x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1773f * arg_0.c.x)), -694f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, 330f) * arg_0.c) - _wgslsmith_f_op_vec2_f32(func_2(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(arg_0.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x)))))));
    let var_1 = vec4<i32>(firstTrailingBit(-2147483647i), -max(u_input.a, func_4(func_4(0i, Struct_1(var_0.b, true, vec2<f32>(1384f, 1178f))), var_0)), u_input.a, _wgslsmith_add_i32(u_input.a, -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, u_input.a), vec4<i32>(9002i, 29753i, -2147483647i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 44000i), vec2<i32>(u_input.a, 0i)))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_3 = Struct_1(true, !(true & all(!vec3<bool>(var_0.b, false, true))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-690f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-188f, var_0.c.x)), arg_0.c.x))))));
    var_2 = 245f;
    return Struct_1(true, ~countOneBits(-u_input.a) != -(_wgslsmith_sub_i32(var_1.x, -66568i) & -var_1.x), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(any(vec3<bool>(true, true, true)), true, vec2<f32>(_wgslsmith_f_op_f32(-373f + _wgslsmith_f_op_f32(370f + 540f)), -344f)), countOneBits(~vec2<u32>(1u, 1u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 36267u), select(vec2<u32>(2940u, 1u), vec2<u32>(27680u, 4294967295u), false), func_1()) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(vec2<u32>(8142u, 4294967295u), abs(~vec2<u32>(1u, 31111u))), _wgslsmith_mod_i32(countOneBits(_wgslsmith_clamp_i32(9641i, -2147483647i, u_input.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -21183i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i))) & _wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(260f))), 394f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(594f)) - _wgslsmith_f_op_f32(select(684f, 426f, var_0.b))))));
}

