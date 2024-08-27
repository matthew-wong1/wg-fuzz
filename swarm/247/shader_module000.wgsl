struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<i32>(-1892i, -1i, i32(-2147483648)), false);

var<private> global1: array<f32, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = arg_0.b.a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(515f + global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), 1028f);
    var_1 = global1[_wgslsmith_index_u32(select(1u, ~firstTrailingBit(1u), false), 31u)];
    var var_2 = vec2<bool>(true, any(vec4<bool>(false, all(vec2<bool>(false, arg_0.b.c.x)), arg_1.b.x, _wgslsmith_div_f32(-1887f, var_0) != _wgslsmith_f_op_f32(-535f - 1090f))));
    var var_3 = Struct_5(-vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, arg_0.a.x), arg_0.a.x, 2147483647i), any(arg_0.b.b.yzx));
    return any(select(!vec3<bool>(-5876i == global0.a.x, any(arg_1.b.zyy), 1302f <= arg_0.b.a), arg_1.c.ywy, vec3<bool>(any(vec3<bool>(var_2.x, true, false)), var_3.b, true)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_5(global0.a, !(false && all(vec2<bool>(global0.b, true))));
    let var_0 = select(vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 42078u, u_input.a.x, 46010u), _wgslsmith_add_vec4_u32(vec4<u32>(11218u, 4294967295u, 59834u, u_input.a.x), vec4<u32>(4294967295u, 62823u, u_input.a.x, u_input.a.x))) != 64578u), vec2<bool>(!global0.b && true, !func_3(Struct_2(vec4<i32>(global0.a.x, 1i, global0.a.x, -13543i), Struct_1(-280f, vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(global0.b, false, true, global0.b)), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(true, global0.b, true, true))), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], vec4<bool>(true, false, false, false), vec4<bool>(global0.b, true, global0.b, global0.b)))), !vec2<bool>(global0.b, false));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 31u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.a.xz), 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(598f + 928f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 31u)] + global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), !global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1829f, 659f))))));
    var var_2 = Struct_5(vec3<i32>(-1i) * -vec3<i32>(~(-19464i), _wgslsmith_mod_i32(-2541i, 1i), abs(-2147483647i)), !any(select(vec4<bool>(var_0.x, global0.b, global0.b, global0.b), vec4<bool>(global0.b, global0.b, false, var_0.x), true)) && all(var_0));
    var var_3 = Struct_5(~(~(var_2.a & _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, 29325i, global0.a.x), global0.a))), true);
    return Struct_2(_wgslsmith_add_vec4_i32(-(~vec4<i32>(var_2.a.x, global0.a.x, var_2.a.x, var_3.a.x) ^ (vec4<i32>(var_2.a.x, var_3.a.x, 18285i, -2147483647i) << (vec4<u32>(u_input.a.x, 4294967295u, 29698u, u_input.a.x) % vec4<u32>(32u)))), ~(~vec4<i32>(global0.a.x, var_2.a.x, 1i, global0.a.x) >> (~vec4<u32>(u_input.a.x, 10829u, u_input.a.x, 1u) % vec4<u32>(32u)))), Struct_1(var_1.x, select(select(!vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, global0.b, true), vec4<bool>(false, false, var_2.b, var_2.b), false), var_3.b), select(vec4<bool>(false, var_3.b, false, true), !vec4<bool>(global0.b, global0.b, global0.b, var_2.b), vec4<bool>(global0.b, var_0.x, var_0.x, false)), vec4<bool>(global0.a.x > 4404i, var_3.b, !var_2.b, all(vec2<bool>(var_3.b, false)))), vec4<bool>(!(var_2.a.x > 56276i), var_2.b, true, true)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1092f, var_1.x, false)) - 955f), -581f), !select(select(vec4<bool>(var_2.b, true, true, false), vec4<bool>(false, var_0.x, var_2.b, var_2.b), var_2.b), !vec4<bool>(var_2.b, var_2.b, false, true), vec4<bool>(false, false, global0.b, global0.b)), select(vec4<bool>(true, var_0.x, false, true & var_3.b), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_3.b, var_3.b, global0.b, global0.b), true), select(vec4<bool>(var_2.b, false, var_2.b, var_0.x), select(vec4<bool>(var_3.b, true, false, var_3.b), vec4<bool>(true, true, false, true), vec4<bool>(true, false, var_3.b, false)), any(vec3<bool>(var_2.b, var_2.b, global0.b))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2041f)))) == global1[_wgslsmith_index_u32(1u, 31u)];
    let var_1 = func_2();
    var_0 = global0.b;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), firstLeadingBit(-1i), global0.a.x);
    var_0 = true;
    return _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.a.x, -46664i & var_2.x) << (countOneBits(u_input.a.zz) % vec2<u32>(32u)), vec2<i32>(var_2.x, -(global0.a.x | 17013i)), arg_0.zy), vec2<i32>(i32(-1i) * -(i32(-1i) * -2182i), ~global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    global0 = Struct_5(global0.a, true);
    let var_0 = Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.a.x, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~(~u_input.a.x)), 31u)]), vec4<bool>(false, !(!global0.b), true, true), vec4<bool>(global0.b, (global0.b | all(vec4<bool>(false, false, global0.b, false))) && all(vec3<bool>(true, global0.b, global0.b)), (global0.b && global0.b) & (func_1(vec3<bool>(global0.b, false, global0.b), Struct_1(global1[_wgslsmith_index_u32(1u, 31u)], vec4<bool>(false, global0.b, global0.b, global0.b), vec4<bool>(false, global0.b, global0.b, global0.b)), 4294967295u) != ~global0.a.x), !global0.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1656f, -1000f, -1000f, global1[_wgslsmith_index_u32(4294967295u, 31u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(8347u, 31u)], -1000f, global1[_wgslsmith_index_u32(7120u, 31u)], global1[_wgslsmith_index_u32(10887u, 31u)]), vec4<f32>(var_0.a, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(57977u, 31u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 31u)], var_0.a, -476f))))));
    var var_2 = false;
    let var_3 = true;
    let var_4 = vec3<u32>(~(u_input.a.x ^ 1u), ~4294967295u, 0u);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-685f, var_0.a), _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), _wgslsmith_f_op_f32(428f * 368f)), vec4<f32>(-710f, _wgslsmith_f_op_f32(-var_1.x), global1[_wgslsmith_index_u32(~26725u, 31u)], _wgslsmith_f_op_f32(-var_1.x)), !func_2().c.b))));
    let var_5 = Struct_3(390f, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~25984i, _wgslsmith_div_vec3_i32(var_5.b, (select(global0.a, var_5.b, false) >> (~vec3<u32>(19159u, u_input.a.x, 0u) % vec3<u32>(32u))) | ~var_5.b));
}

