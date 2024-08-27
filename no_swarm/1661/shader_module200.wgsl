struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648), i32(-2147483648), -33024i, 0i, 1i, 0i, -50787i, 2147483647i, i32(-2147483648), 18852i, 0i, 43349i, 1i, 0i, 2147483647i, 0i);

var<private> global1: f32 = 781f;

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: u32 = 20968u;

var<private> global4: vec4<i32> = vec4<i32>(48081i, -1i, -37987i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = 94320u;
    let var_1 = vec4<i32>(i32(-1i) * -63943i, -25122i, arg_1.x, i32(-1i) * -1i);
    global0 = array<i32, 19>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(135f - -1134f), _wgslsmith_f_op_f32(max(488f, -446f))))))) * 1296f);
    var var_2 = vec3<bool>(true & arg_0.a, !(!arg_0.a), ~_wgslsmith_sub_i32(global4.x, -2147483647i) >= -1i);
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f));
    global3 = 83634u;
    global3 = 16207u;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1530f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-204f, 1358f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-249f * 782f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(745f, -1023f)))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> f32 {
    global2 = array<vec2<i32>, 25>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(5543i, -8362i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 70561u), arg_0.a), 25u)]);
    let var_1 = ~(~(~(~(vec4<u32>(arg_0.a, 1u, u_input.a, 0u) ^ vec4<u32>(17976u, arg_0.a, 0u, u_input.a)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f));
    global0 = array<i32, 19>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2822f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-738f * -1000f)), _wgslsmith_f_op_f32(240f - _wgslsmith_div_f32(-549f, -1000f)))))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(func_4(func_3(func_2(Struct_2(false), vec2<i32>(global0[_wgslsmith_index_u32(arg_1.x, 19u)], arg_0)), vec3<bool>(true, true, true)), -1i, func_2(func_2(Struct_2(false), vec2<i32>(global0[_wgslsmith_index_u32(0u, 19u)], global4.x)), global4.zw >> (arg_1.zz % vec2<u32>(32u)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) * 1416f))));
    var var_1 = func_3(Struct_2(any(vec2<bool>(true, true)) && all(vec3<bool>(true, true, true))), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), false), vec3<bool>(57262i >= global0[_wgslsmith_index_u32(27272u, 19u)], false, true), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var var_2 = !select(true, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) | !(arg_1.x <= u_input.a));
    var var_3 = select(select(vec3<bool>(any(vec2<bool>(true, true)), false, !func_2(Struct_2(true), vec2<i32>(global4.x, global0[_wgslsmith_index_u32(61914u, 19u)])).a), vec3<bool>(!any(vec4<bool>(false, true, false, false)), !any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), all(vec4<bool>(var_0.x > var_0.x, true, true, true))), !(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true)), vec3<bool>(false, true, true == select(all(vec4<bool>(false, false, true, false)), true, all(vec2<bool>(true, true)))));
    var_2 = !(!(var_3.x && ((var_3.x || var_3.x) | (353f < var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1626f, var_0.x) * _wgslsmith_f_op_f32(var_0.x * var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(2147483647i, ~(~vec4<u32>(7766u, 1u, u_input.a, 1u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) * _wgslsmith_f_op_f32(func_1(70539i, vec4<u32>(88018u, 4294967295u, 1u, u_input.a)))))));
    var var_1 = func_2(Struct_2(func_2(func_2(func_2(Struct_2(true), vec2<i32>(0i, 0i)), global2[_wgslsmith_index_u32(~u_input.a, 25u)]), -abs(vec2<i32>(-38773i, global4.x))).a), global2[_wgslsmith_index_u32(16770u, 25u)]);
    var var_2 = -_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global4.x, 1i, global0[_wgslsmith_index_u32(u_input.a, 19u)], -2147483647i), vec4<i32>(69125i, 1i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 19u)]), var_1.a), vec4<i32>(global4.x, global0[_wgslsmith_index_u32(0u, 19u)], global4.x, -2147483647i))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global4.x, -2147483647i, -31541i), vec4<i32>(-1i, -20980i, global0[_wgslsmith_index_u32(51712u, 19u)], 2147483647i)), -global0[_wgslsmith_index_u32(4294967295u, 19u)])), ~firstTrailingBit(0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(max(-134f, -1104f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(570f + -1361f), _wgslsmith_div_f32(579f, 257f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f * 1150f)), 283f)));
}

