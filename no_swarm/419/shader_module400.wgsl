struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = !vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false, true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(arg_0.a)), arg_0.a)), arg_0.b);
    var var_2 = arg_0;
    let var_3 = select(var_0.xxx, select(select(select(var_0.xzy, select(vec3<bool>(true, false, var_0.x), var_0.wxx, var_0.xxz), true), select(var_0.yxw, vec3<bool>(true, true, var_0.x), true), select(!vec3<bool>(var_0.x, false, false), var_0.yyz, true)), var_0.xzx, var_0.zwx), vec3<bool>(!(29032u != ~arg_1), all(!vec2<bool>(var_0.x, var_0.x)), ~u_input.a <= 65166u));
    var_1 = arg_0;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1163f * -223f));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 22225u) << (vec2<u32>(5674u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(28083u, 41036u)), vec2<u32>(~u_input.a, 55504u))) << (~vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(5827u, u_input.a, u_input.a)))) % vec2<u32>(32u));
    var_1 = select(countOneBits(vec2<u32>(abs(min(var_1.x, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1.x, u_input.a), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x)) ^ ~var_1.x)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(92470u, 1u ^ var_1.x)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1.x), vec2<u32>(var_1.x, u_input.a)))), vec2<bool>(all(!arg_0.xwx), any(arg_1.xx)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-735f, var_0, var_0), vec3<f32>(var_0, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-158f, 420f, var_0), vec3<f32>(var_0, var_0, 414f)))))))), vec2<i32>(20982i, 0i));
    var_1 = ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), select(vec2<u32>(var_1.x, 44051u), vec2<u32>(21813u, u_input.a), arg_1.yy)) >> (vec2<u32>(~(~0u), 34029u) % vec2<u32>(32u)));
    return !select(vec2<bool>(func_3(Struct_1(vec3<f32>(-1127f, 413f, var_0), vec2<i32>(u_input.b, var_2.b.x)), _wgslsmith_mult_u32(1u, u_input.a)), arg_1.x), vec2<bool>(-820f != var_0, !all(vec2<bool>(arg_1.x, true))), arg_0.zw);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = select(vec4<u32>(~u_input.a, 0u, _wgslsmith_add_u32(~u_input.a, ~64226u), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 20667u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 25719u, 36454u), vec4<u32>(0u, u_input.a, u_input.a, 35128u), vec4<u32>(0u, 9345u, u_input.a, u_input.a))), !(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))) ^ (vec4<u32>(4294967295u | u_input.a, _wgslsmith_sub_u32(u_input.a, 34087u) ^ ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 42550u, u_input.a), vec4<u32>(27521u, 4890u, 59706u, u_input.a)), 1u) ^ vec4<u32>(68584u, u_input.a << (30699u % 32u), u_input.a, ~u_input.a));
    var var_1 = arg_2;
    var var_2 = select(func_4(select(vec4<bool>(true, !arg_0, arg_2.b.x <= -1i, !arg_0), !select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, true, true, false), false), vec4<bool>(false, true, func_3(arg_1, var_0.x), !arg_0)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true)), vec2<bool>(func_4(vec4<bool>(true, arg_0, all(vec3<bool>(arg_0, arg_0, false)), true), !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0))).x, arg_0), func_4(!select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, false, arg_0)), !vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, true)), vec3<bool>(true, true, arg_0)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1509f, arg_2.a.x, 337f) * vec3<f32>(739f, arg_1.a.x, arg_1.a.x)) * vec3<f32>(arg_1.a.x, arg_1.a.x, arg_2.a.x)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_1.a.x, -158f)))))), vec2<i32>(countOneBits(var_1.b.x), -22497i));
    var var_3 = var_1.a.x;
    return ~1u;
}

fn func_1() -> vec4<u32> {
    return ~(~(~(~vec4<u32>(4294967295u, 22577u, 0u, u_input.a))) ^ max(select(vec4<u32>(0u, 28398u, u_input.a, 4294967295u) | vec4<u32>(u_input.a, 1u, 10711u, 5675u), _wgslsmith_sub_vec4_u32(vec4<u32>(48889u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 32448u, 1u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), vec4<u32>(u_input.a, func_2(true, Struct_1(vec3<f32>(775f, -772f, -554f), vec2<i32>(-2147483647i, u_input.b)), Struct_1(vec3<f32>(252f, -746f, -353f), vec2<i32>(1i, u_input.b)), vec2<i32>(-56082i, -1i)), u_input.a, ~7122u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -415f, 1542f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, 1055f, arg_2))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2, -1151f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, 1220f), vec3<f32>(arg_2, 1044f, arg_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, -372f, -1481f))) + vec3<f32>(arg_2, arg_2, 799f)))), select(vec2<i32>(arg_1 >> (40792u % 32u), -(arg_1 >> (u_input.a % 32u))), vec2<i32>(u_input.b, ~u_input.b), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 1000f, -638f))), -vec2<i32>(arg_1, 15339i)), ~_wgslsmith_add_u32(26203u, arg_0.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))))), countOneBits(_wgslsmith_add_vec2_i32(var_0.b, ~select(var_0.b, var_0.b, vec2<bool>(true, true)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), vec2<i32>(~(~1i), ~(-20324i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, -1755f, var_0.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(-184f, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, 561f) + vec3<f32>(-211f, arg_2, 550f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(809f, 2434f, -424f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, -155f) * var_0.a)))), vec2<i32>(u_input.b, -4341i));
    let var_1 = select(vec3<bool>(true, !func_3(Struct_1(var_0.a, var_0.b), 48261u), false), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_3(Struct_1(vec3<f32>(arg_2, -552f, arg_2), var_0.b), 1u)), !vec3<bool>(func_3(Struct_1(var_0.a, vec2<i32>(-77650i, -1i)), arg_0.x), true, true)), !any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)));
    return -select(-2147483647i, arg_1, any(vec4<bool>(all(var_1), true, any(var_1.xx), u_input.a == u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~select(~vec3<u32>(u_input.a, u_input.a, 33884u), ~vec3<u32>(0u, 14754u, 39320u), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec4<i32>(1i, reverseBits(-1i), 0i, ~func_5(func_1(), u_input.b, -1173f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3062f, -1107f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -669f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-554f, 1361f), vec2<f32>(-305f, -1121f)), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1545f, -1000f))))))));
}

