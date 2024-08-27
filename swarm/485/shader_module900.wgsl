struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-68726i, 26442i), vec2<i32>(-1i, 1i), 0u, vec4<i32>(52071i, -42815i, -1i, 53166i));

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 43540i);

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, false, true, true, false, false, true, false, true, false, false, false, true, true, false, false, false, true, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~32065u | ~max(~(~14937u), select(u_input.d.x, select(0u, arg_1.c, arg_0), any(vec4<bool>(true, true, arg_0, true)))), 21u)];
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.d, min(vec4<u32>(~(~34613u), u_input.d.x | min(1u, u_input.d.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(42194u, arg_1.c)), _wgslsmith_dot_vec3_u32(u_input.d.wzy, u_input.d.zxy)), u_input.d));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), 1825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 822f)))))));
    global0 = arg_1;
    let var_3 = min(~(-(_wgslsmith_dot_vec4_i32(u_input.c, global0.d) >> (1u % 32u))), -49814i);
    return !select(vec4<bool>(arg_0, any(select(vec4<bool>(arg_0, arg_2.x, global2[_wgslsmith_index_u32(arg_1.c, 21u)], false), vec4<bool>(arg_2.x, true, false, arg_0), global2[_wgslsmith_index_u32(var_1.x, 21u)])), true, !arg_2.x), !vec4<bool>(global2[_wgslsmith_index_u32(18637u, 21u)] && arg_0, true, true, true), true);
}

fn func_2() -> bool {
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    var var_0 = Struct_1(global0.b, -min(~u_input.c.zx & vec2<i32>(global1.x, u_input.a), vec2<i32>(~(-1i), u_input.a)), 27658u, global0.d);
    var var_1 = select(vec4<bool>(false, any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(7714u, 21u)], true, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.c, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(var_0.c, 21u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)], true, true)), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global2[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.c, 21u)], true, global2[_wgslsmith_index_u32(u_input.d.x, 21u)], true))), global2[_wgslsmith_index_u32(0u, 21u)] || all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], false, false)), all(func_3(true, Struct_1(global0.d.yw, vec2<i32>(-1i, -19890i), var_0.c, u_input.c), vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false, true)))), !(!func_3(!global2[_wgslsmith_index_u32(65546u, 21u)], Struct_1(vec2<i32>(global1.x, 2147483647i), u_input.c.yz, 34261u, global0.d), vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(68488u, 21u)]);
    let var_2 = select(!vec2<bool>(any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 21u)]), var_1.wz, var_1.xy)), !(!var_1.x)), vec2<bool>(true, true), true);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = arg_0;
    let var_0 = vec3<i32>(-abs(u_input.c.x), select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(41250i, _wgslsmith_mult_i32(global0.a.x, arg_0.d.x)), arg_0.b), !func_2()), global0.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(935f))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1895f + -689f))), _wgslsmith_f_op_f32(sign(-404f))))));
    let var_2 = ~1u;
    global2 = array<bool, 21>();
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(241f - -314f)) + _wgslsmith_f_op_f32(f32(-1f) * -238f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~firstLeadingBit(u_input.d.zwy), ~((u_input.d.xxz >> (u_input.d.zwx % vec3<u32>(32u))) << (vec3<u32>(0u, global0.c, global0.c) % vec3<u32>(32u))), vec3<bool>(false, global2[_wgslsmith_index_u32(global0.c, 21u)], func_1(Struct_1(u_input.c.xx, global0.d.zz, 44034u, vec4<i32>(global0.d.x, 11937i, -2147483647i, global0.d.x)), global2[_wgslsmith_index_u32(global0.c, 21u)]) < u_input.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(exp2(var_0))))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -126f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -1614f, global2[_wgslsmith_index_u32(1u, 21u)])) * _wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(trunc(-158f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 889f, -1295f, var_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 467f, var_0, 1192f) - vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-620f, var_0, var_0, 625f), vec4<f32>(339f, 1324f, -680f, -406f), true))), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global2[_wgslsmith_index_u32(global0.c, 21u)], true, global2[_wgslsmith_index_u32(0u, 21u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, 2543f, 1000f, 426f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1526f, 1655f, -307f) + vec4<f32>(-2422f, -732f, 1462f, -611f))))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -u_input.b, 12564i), _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.yx)));
}

