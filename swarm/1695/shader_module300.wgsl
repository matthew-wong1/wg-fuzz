struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, true, true, false, true, false, true, false, true, false, false);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, -1126f), Struct_1(false, 1044f), Struct_1(false, 114f), Struct_1(true, 735f), Struct_1(false, 460f), Struct_1(false, 681f), Struct_1(false, 2619f), Struct_1(false, 1000f), Struct_1(false, -506f), Struct_1(true, -296f), Struct_1(true, 1562f), Struct_1(false, -414f), Struct_1(false, -1760f), Struct_1(true, 298f), Struct_1(true, 1253f), Struct_1(true, -2744f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(true, arg_1.b);
    global1 = Struct_2(select(vec3<bool>(arg_0.x, var_0.a, global1.a.x), global1.a, !arg_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(-694f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(f32(-1f) * -279f)), -1000f), vec4<f32>(var_0.b, 1726f, -651f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -653f)))));
    var var_1 = global1.b.x;
    var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f - -154f) * _wgslsmith_f_op_f32(f32(-1f) * -1692f)))));
    var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-479f, _wgslsmith_f_op_f32(-global1.b.x))))));
    return !select(!(!select(global1.a, global1.a, global0[_wgslsmith_index_u32(4294967295u, 13u)])), !global1.a, vec3<bool>(arg_0.x, true, var_0.a));
}

fn func_2() -> u32 {
    var var_0 = u_input.b;
    let var_1 = Struct_2(func_3(select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), select(select(global1.a.yy, global1.a.xx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false)), select(vec2<bool>(global1.a.x, true), vec2<bool>(global0[_wgslsmith_index_u32(7250u, 13u)], true), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global1.a.x))), Struct_1(select(all(global1.a), true, any(vec4<bool>(false, global1.a.x, false, global1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.b.x)), global1.b.x))), ~29608u), global1.b);
    var_0 = vec4<i32>(~(-_wgslsmith_dot_vec2_i32(u_input.b.wx, var_0.yz)), min(-(~2147483647i), abs(-(6960i >> (u_input.a.x % 32u)))), min(11140i, _wgslsmith_mult_i32(select(abs(1791i), 0i, false), _wgslsmith_clamp_i32(~u_input.b.x, -u_input.b.x, -43155i))), u_input.b.x);
    let var_2 = global1.b.xy;
    let var_3 = vec4<u32>(abs(u_input.a.x), countOneBits(~select(reverseBits(u_input.a.x), u_input.a.x, global1.a.x)), ~u_input.a.x, select(_wgslsmith_mult_u32(u_input.a.x, ~(~39469u)), _wgslsmith_add_u32(max(abs(29702u), 1u), 1u), any(vec4<bool>(u_input.a.x == u_input.a.x, select(var_1.a.x, global1.a.x, true), any(vec2<bool>(var_1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), -2147483647i >= var_0.x))));
    return ~(~3698u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_2 {
    global2 = array<Struct_1, 16>();
    global0 = array<bool, 13>();
    var var_0 = global2[_wgslsmith_index_u32(func_2(), 16u)];
    var_0 = Struct_1(all(select(global1.a, select(global1.a, vec3<bool>(false, global1.a.x, true), var_0.a || global0[_wgslsmith_index_u32(0u, 13u)]), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, global1.b.x))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-816f, 1000f, global0[_wgslsmith_index_u32(598u, 13u)])), global1.b.x)) + 1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))), false));
    return Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(max(global1.b, vec4<f32>(-694f, -1518f, var_0.b, global1.b.x)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> bool {
    let var_0 = 4294967295u;
    global1 = arg_0;
    return any(arg_0.a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(select(!select(!vec3<bool>(global0[_wgslsmith_index_u32(15448u, 13u)], true, global1.a.x), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global1.a.x, global1.a.x), vec3<bool>(global1.a.x, false, global1.a.x)), vec3<bool>(!(global1.b.x > global1.b.x), !(false | global0[_wgslsmith_index_u32(1u, 13u)]), !(!global1.a.x)), func_4(func_1(vec3<u32>(u_input.a.x, 9375u, 80962u) | u_input.a, vec2<u32>(1u, 1u)), func_3(!global1.a.xz, Struct_1(false, -934f), 0u | u_input.a.x).xz, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.xz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, -899f, 401f, -1224f))))));
    var var_0 = Struct_1(~_wgslsmith_mod_u32(1u, u_input.a.x) != _wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x), 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.x), 470f, func_4(Struct_2(vec3<bool>(global1.a.x, global1.a.x, false), global1.b), global1.a.zx, 99115u)))), 905f)));
    global0 = array<bool, 13>();
    var_0 = Struct_1(u_input.a.x <= 4294967295u, _wgslsmith_f_op_f32(step(var_0.b, global1.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.b)))), var_0.b) * 642f));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(265f + global1.b.x), _wgslsmith_div_f32(global1.b.x, var_0.b))) - -374f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, max(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a.x, 0u, 0u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 2541u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), max(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(34272u, 45320u, 39736u, 0u))), ~(~(vec4<u32>(776u, 85076u, u_input.a.x, u_input.a.x) ^ vec4<u32>(10523u, 4294967295u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -1023f))), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(var_0.b - 1261f))))));
}

