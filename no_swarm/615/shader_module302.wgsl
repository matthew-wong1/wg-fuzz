struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = ~(-(~(6243i << (~arg_2.x % 32u))));
    var_0 = -max(2147483647i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(0i, 0i, -1i), arg_1.x), vec3<i32>(u_input.b << (u_input.c.x % 32u), u_input.b, 0i)));
    var var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), 491f)), any(!vec4<bool>(true, arg_1.x & global0.a.x, global0.a.x, true)), !(!(!(true == global0.a.x))), all(!(!select(vec3<bool>(false, false, global0.a.x), vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(arg_1.x, true, global0.a.x)))));
    let var_2 = Struct_1(global0.a);
    var_0 = u_input.b;
    return (vec2<i32>(_wgslsmith_add_i32(abs(u_input.b), u_input.b), -33821i) >> (arg_2.zz % vec2<u32>(32u))) >> ((firstTrailingBit((u_input.c | u_input.c) >> (u_input.c % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.c), _wgslsmith_clamp_vec2_u32(arg_2.zz, vec2<u32>(4294967295u, u_input.a), abs(u_input.c)))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 1667f > arg_1.x;
    var var_1 = ~max(-func_3(_wgslsmith_f_op_f32(-arg_1.x), !vec2<bool>(false, var_0), vec3<u32>(u_input.a, u_input.c.x, u_input.a)), vec2<i32>(-_wgslsmith_mod_i32(u_input.b, 1i), -u_input.b));
    let var_2 = Struct_1(arg_0.yz);
    let var_3 = ~vec4<u32>(33828u, ~74386u, _wgslsmith_sub_u32(u_input.a, 0u), u_input.c.x);
    var var_4 = select(!vec4<bool>(all(!vec4<bool>(arg_0.x, true, false, global0.a.x)), arg_2.a.x, true | !global0.a.x, false), select(select(vec4<bool>(any(arg_0), u_input.b > -18857i, true, true), select(!vec4<bool>(false, global0.a.x, false, var_2.a.x), !vec4<bool>(true, arg_2.a.x, global0.a.x, true), !vec4<bool>(var_0, false, false, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_0, arg_2.a.x, var_2.a.x), arg_0.x)), vec4<bool>(all(vec2<bool>(false, false)), !arg_2.a.x || (arg_1.x == arg_1.x), select(all(var_2.a), var_0, true), _wgslsmith_f_op_f32(-arg_1.x) == -1438f), all(!vec4<bool>(var_0, global0.a.x, true, true))), all(!vec4<bool>(true, true, arg_2.a.x, var_1.x > 1i)));
    return select(vec4<bool>(!var_0, !(!var_0 || false), !(!global0.a.x), false), !select(!vec4<bool>(arg_0.x, false, arg_2.a.x, var_0), vec4<bool>(true, all(arg_2.a), true, true), select(!vec4<bool>(true, var_0, var_4.x, var_2.a.x), vec4<bool>(true, true, true, global0.a.x), !vec4<bool>(arg_2.a.x, false, global0.a.x, true))), false);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = select(vec4<bool>(global0.a.x || any(func_2(vec3<bool>(arg_0.x, arg_0.x, false), vec2<f32>(-1000f, -474f), Struct_1(arg_1.zz))), global0.a.x, arg_1.x, !((arg_1.x & global0.a.x) & any(vec3<bool>(true, true, true)))), !vec4<bool>(true, arg_1.x | (arg_1.x & true), true, !arg_0.x), !vec4<bool>(all(select(arg_1.zz, global0.a, arg_1.zy)), !(u_input.c.x < 20296u), global0.a.x, true));
    var var_1 = var_0.zx;
    let var_2 = Struct_1(var_0.xx);
    var var_3 = _wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(1168f - _wgslsmith_f_op_f32(1942f - _wgslsmith_f_op_f32(356f - _wgslsmith_f_op_f32(365f - 831f)))));
    let var_4 = ~_wgslsmith_add_vec3_u32(select(~firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x)), vec3<u32>(_wgslsmith_div_u32(9398u, u_input.a), 1u, 43887u), true), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 32110u, u_input.c.x), vec3<u32>(4294967295u, u_input.a, u_input.c.x))));
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(var_4.x, 87545u, (u_input.a << (u_input.a % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(107062u, 0u, 25307u, 1u), vec4<u32>(46692u, var_4.x, u_input.a, u_input.c.x)) % 32u)), var_4);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1916f, 1605f)))))));
    var_0 = -1590f;
    var var_1 = arg_2.a;
    var var_2 = arg_0;
    return vec4<u32>((arg_3.x & countOneBits(arg_3.x >> (arg_3.x % 32u))) << (countOneBits(reverseBits(countOneBits(22788u))) % 32u), ~(~(~(~u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u | arg_3.x, 37381u, _wgslsmith_sub_u32(arg_3.x, arg_3.x), ~arg_3.x), ~(vec4<u32>(4294967295u, 1u, 13893u, arg_3.x) ^ vec4<u32>(arg_3.x, u_input.a, 4294967295u, 11905u))), vec4<u32>(0u, arg_3.x, _wgslsmith_mult_u32(~u_input.c.x, 0u & u_input.a), ~u_input.c.x)), abs(3863u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(Struct_1(vec2<bool>(u_input.b > 44158i, u_input.a == 0u)), true, Struct_1(!global0.a), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 7764u, 0u), func_1(vec4<bool>(global0.a.x, true, false, global0.a.x), vec3<bool>(true, false, true)), firstTrailingBit(vec3<u32>(u_input.c.x, u_input.a, 0u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1813f)) - 275f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-987f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(352f, 1150f), -592f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1270f, -349f), vec2<f32>(286f, -1252f), global0.a)))), global0.a)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-192f + -1172f), _wgslsmith_f_op_f32(-var_1.x)));
    var var_2 = select(!select(vec3<bool>(true, true || global0.a.x, !global0.a.x), select(!vec3<bool>(global0.a.x, false, true), vec3<bool>(global0.a.x, global0.a.x, false), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), max(4294967295u, u_input.c.x) == 4294967295u), vec3<bool>(false, true, u_input.c.x >= max(u_input.c.x, max(45619u, 13702u))), true);
    let var_3 = u_input.b;
    let var_4 = Struct_1(!vec2<bool>(true, !all(var_2.xy)));
    let var_5 = Struct_1(global0.a);
    let var_6 = _wgslsmith_f_op_f32(sign(845f));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(func_4(Struct_1(var_4.a), any(vec4<bool>(var_5.a.x, true, global0.a.x, var_5.a.x)), var_5, func_4(var_5, false, Struct_1(global0.a), var_0.xwx).yyx).x, 1u), _wgslsmith_mult_vec2_u32(abs(~var_0.wx), vec2<u32>(104228u, _wgslsmith_add_u32(1u, 1u))), var_5.a));
}

