struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<bool> {
    let var_0 = max(_wgslsmith_mod_vec3_i32(firstLeadingBit((vec3<i32>(-1881i, -24392i, u_input.a.x) << (vec3<u32>(global0.a, global0.a, 2497u) % vec3<u32>(32u))) | countOneBits(u_input.a.yxx)), ~u_input.a.ywx), u_input.a.wxx);
    let var_1 = Struct_1(global0.a);
    var var_2 = global0.a;
    var var_3 = var_1;
    let var_4 = Struct_1(u_input.c.x);
    return select(vec3<bool>(all(vec4<bool>(true, true, true, false)), all(vec2<bool>(any(vec2<bool>(true, false)), true)), select(all(vec3<bool>(true, true, true)), true || select(false, true, true), true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true || (true || (var_4.a > 14753u)), true, true));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_1(global0.a);
    let var_1 = vec2<i32>(2147483647i, i32(-1i) * -4242i);
    let var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-969f, -584f)), _wgslsmith_f_op_f32(max(165f, 495f)))))));
    var var_3 = select(!(!(!vec4<bool>(true, arg_0.x, false, arg_0.x))), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(select(arg_0.x, any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, true, arg_0.x))), arg_0.x), all(!(!arg_0)), func_2().x, true));
    let var_4 = Struct_1(var_0.a);
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = arg_1;
    global0 = Struct_1(abs(96860u));
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(false, true)), vec2<bool>(true, true), !vec2<bool>(!(u_input.c.x > 1u), !(global0.a != 1u)));
    var var_1 = arg_0;
    let var_2 = abs(u_input.a.yx);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-408f - -586f))))) < _wgslsmith_f_op_f32(trunc(-1000f));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = Struct_1(1u | ((firstLeadingBit(global0.a) | ~4294967295u) >> ((arg_0 << (global0.a % 32u)) % 32u)));
    let var_1 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, true), arg_1), func_2()), !vec3<bool>(arg_1, arg_1, arg_1), !(!vec3<bool>(true, false, arg_1))), vec3<bool>(arg_1, abs(u_input.b) <= -2401i, func_4(func_3(vec2<bool>(true, arg_1)), Struct_1(10436u))), vec3<bool>(arg_1, all(vec2<bool>(arg_1, false)), true)), vec3<bool>(!arg_1, firstLeadingBit(2147483647i) == u_input.a.x, !(true && any(vec2<bool>(true, true)))), select(select(select(func_2(), vec3<bool>(false, arg_1, arg_1), u_input.b >= -2147483647i), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), arg_1), arg_2 != _wgslsmith_f_op_f32(arg_2 + arg_2)), vec3<bool>(arg_1, false, !(arg_1 || false)), false));
    let var_2 = false;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(643f, 834f) + vec2<f32>(arg_2, 2544f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(arg_2, arg_2)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -231f), vec2<f32>(arg_2, arg_2), arg_1))))))));
    let var_4 = Struct_1(~_wgslsmith_dot_vec4_u32(~abs(u_input.c), vec4<u32>(arg_0, arg_0, ~4294967295u, arg_0)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((_wgslsmith_sub_u32(50756u, global0.a) | func_1(min(0u, global0.a), false, _wgslsmith_f_op_f32(f32(-1f) * -391f))) << (~(~(~global0.a)) % 32u));
    var var_1 = Struct_1(min((firstLeadingBit(u_input.c.x) | (101664u << (u_input.c.x % 32u))) ^ ~1u, u_input.c.x));
    let var_2 = vec3<f32>(-974f, 805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945f * -333f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1288f, -652f)), _wgslsmith_f_op_f32(round(-3757f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -520f))));
    let var_3 = Struct_1(var_0.a);
    let var_4 = var_3;
    let var_5 = var_2.x;
    var var_6 = vec2<bool>(any(!vec2<bool>(var_2.x >= var_5, u_input.b < u_input.b)), ((true | all(vec4<bool>(false, true, true, true))) | any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))) & func_4(u_input.a.x, var_4));
    var var_7 = Struct_1(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), select(u_input.a.yw, u_input.a.yy, vec2<bool>(var_6.x, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5, -328f, var_5, var_2.x), vec4<f32>(443f, 528f, var_5, -712f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1221f, 183f, var_2.x, var_5))), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 153f, 605f, var_2.x)) * vec4<f32>(_wgslsmith_f_op_f32(step(var_5, var_5)), _wgslsmith_f_op_f32(-var_2.x), -1128f, _wgslsmith_f_op_f32(-var_2.x)))), u_input.c.zy, _wgslsmith_sub_vec4_i32(-min(vec4<i32>(-1i, -18857i, u_input.a.x, u_input.b), u_input.a), u_input.a), select(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-34113i, ~u_input.a.x), _wgslsmith_mod_i32(-51406i, _wgslsmith_div_i32(-2147483647i, -2147483647i))), -12360i, false));
}

