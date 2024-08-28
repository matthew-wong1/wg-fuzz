struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(740f, -2474f);

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<f32>(-1000f, -979f, -1724f, 1668f), vec2<i32>(0i, 2147483647i)), Struct_2(vec4<f32>(644f, 954f, -1237f, -1000f), vec2<i32>(i32(-2147483648), 27869i)), Struct_2(vec4<f32>(-1100f, -1560f, 570f, 1642f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(vec4<f32>(-127f, -1000f, -353f, 690f), vec2<i32>(1i, -23059i)));

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1090f, -793f), vec2<f32>(-203f, 650f), vec2<f32>(-2077f, -1503f), vec2<f32>(-1146f, 509f), vec2<f32>(3054f, 222f), vec2<f32>(-671f, 881f), vec2<f32>(1000f, -439f), vec2<f32>(-739f, -323f), vec2<f32>(243f, -1000f), vec2<f32>(477f, -518f), vec2<f32>(-188f, 598f), vec2<f32>(950f, -2091f), vec2<f32>(1171f, 1455f), vec2<f32>(-213f, -674f), vec2<f32>(-213f, 1804f), vec2<f32>(-1162f, 1163f), vec2<f32>(181f, 1096f), vec2<f32>(204f, 1000f), vec2<f32>(227f, -1969f), vec2<f32>(-228f, -552f), vec2<f32>(688f, 501f), vec2<f32>(512f, -773f), vec2<f32>(1762f, 573f), vec2<f32>(-376f, -109f), vec2<f32>(1654f, -1400f), vec2<f32>(404f, -1654f), vec2<f32>(757f, -457f), vec2<f32>(-1407f, -1602f), vec2<f32>(-377f, -2281f), vec2<f32>(-975f, -2000f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    global1 = array<Struct_2, 4>();
    var var_0 = 1f;
    let var_1 = min(arg_0.d & firstTrailingBit(1i), ~(i32(-1i) * -5060i));
    var_0 = 805f;
    return firstTrailingBit(~(-(arg_0.d << ((12988u >> (arg_0.a % 32u)) % 32u))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = select(arg_0.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_1(23173u, global2[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<bool>(true, true), 28965i), vec3<f32>(global0.x, global0.x, -1125f), global1[_wgslsmith_index_u32(74675u, 4u)]), 10052i, firstLeadingBit(arg_0.x), 2147483647i | u_input.c.x), arg_0), 1i, 1i > max(u_input.c.x, arg_0.x | arg_0.x));
    var_0 = -2147483647i;
    global1 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, min(~3707u, u_input.a.x)), ~u_input.a.x >> (u_input.a.x % 32u));
    let var_2 = vec4<bool>(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, true), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), any(!vec2<bool>(any(vec3<bool>(true, true, false)), true)), all(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)), false, true, 0u >= ~u_input.a.x)), !(!(!any(vec3<bool>(false, true, true)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(184f * 1000f), -406f, _wgslsmith_f_op_f32(-global0.x), -219f)), vec4<f32>(1051f, global0.x, global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - -1073f)))), vec4<bool>(all(!vec4<bool>(true, var_2.x, false, true)), var_2.x, all(vec4<bool>(false, var_2.x, true, false)), _wgslsmith_div_u32(80499u, u_input.a.x) < firstLeadingBit(1u)))), (vec2<i32>(u_input.b, -2147483647i) | u_input.c.wz) << ((vec2<u32>(1u, 1u) ^ ~min(u_input.a, vec2<u32>(1u, 50737u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), -1187f)))), vec2<bool>(true, true), 2147483647i);
    var var_2 = func_2(vec4<i32>(var_1.d, var_1.d, abs(var_1.d), 1i));
    var var_3 = var_1;
    let var_4 = any(!(!select(!var_1.c, select(vec2<bool>(var_3.c.x, var_3.c.x), vec2<bool>(true, false), false), true)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x << (min(u_input.a.x, u_input.a.x) % 32u), ~15753u), 4u)];
    let var_1 = func_1(var_0.b.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(var_0.a.yxy)))));
    var var_2 = vec2<bool>(var_1.c.x, !(!var_1.c.x));
    global1 = array<Struct_2, 4>();
    global2 = array<vec2<f32>, 30>();
    let var_3 = select(max(1u, 0u), u_input.a.x ^ ~21559u, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.c.zw), var_0.a.x);
}

