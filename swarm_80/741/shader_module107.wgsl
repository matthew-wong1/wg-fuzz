struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: array<i32, 2>;

var<private> global2: array<u32, 1>;

var<private> global3: array<u32, 5>;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<f32>(-1033f, -2074f)), vec4<u32>(50718u, 1u, 4294967295u, 20104u), Struct_2(-332f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<bool> {
    global2 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f + arg_0) + 1712f) * arg_0));
    let var_1 = -2147483647i | global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4281u, 5u)], 5u)]), _wgslsmith_mult_u32(17846u, global4.b.x))), 4294967295u), 2u)];
    let var_2 = abs(_wgslsmith_sub_vec3_i32((abs(vec3<i32>(global1[_wgslsmith_index_u32(50841u, 2u)], 8178i, var_1)) | -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])) | _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], -14421i, 1136i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33424u, 1u)], 2u)])), min(vec3<i32>(global1[_wgslsmith_index_u32(global4.b.x, 2u)], 2458i, global1[_wgslsmith_index_u32(0u, 2u)]), vec3<i32>(global1[_wgslsmith_index_u32(0u, 2u)], var_1, -23674i))), vec3<i32>(1i << (global4.b.x % 32u), ~0i, 1i)));
    global2 = array<u32, 1>();
    return vec4<bool>(arg_1, false, false, (!arg_1 & arg_1) || arg_1);
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    global2 = array<u32, 1>();
    global0 = array<vec4<f32>, 7>();
    let var_0 = vec2<bool>(!arg_0, !arg_0);
    var var_1 = select(!(!select(select(vec3<bool>(var_0.x, true, arg_0), vec3<bool>(var_0.x, var_0.x, arg_0), vec3<bool>(true, var_0.x, arg_0)), !vec3<bool>(false, arg_0, var_0.x), true)), vec3<bool>(all(!(!vec4<bool>(false, false, arg_0, arg_0))), any(!vec4<bool>(arg_0, var_0.x, true, true)), all(func_3(_wgslsmith_f_op_f32(select(global4.c.a, global4.a.a.x, arg_0)), !var_0.x))), !select(!func_3(global4.c.a, true).wwy, !func_3(global4.a.a.x, arg_0).zwx, select(func_3(global4.c.a, false).zyx, vec3<bool>(true, var_0.x, false), true)));
    global1 = array<i32, 2>();
    return arg_1;
}

fn func_1() -> Struct_3 {
    let var_0 = 1u;
    var var_1 = global4.a;
    var var_2 = select(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), !vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), true, !all(vec4<bool>(true, false, false, true))));
    let var_3 = 25665i;
    let var_4 = _wgslsmith_f_op_f32(abs(-978f));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(1208f, var_4))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, -1020f) * global4.a.a), _wgslsmith_div_vec2_f32(vec2<f32>(global4.a.a.x, -884f), global4.a.a))))), global4.b, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(false, var_1.a.x)), 1829f))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_1().c;
    let var_1 = arg_2;
    global4 = Struct_3(global4.a, ~global4.b, Struct_2(_wgslsmith_f_op_f32(abs(global4.a.a.x))));
    global0 = array<vec4<f32>, 7>();
    var var_2 = max(4294967295u, 23551u);
    return func_1().c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_1();
    global4 = var_0;
    var var_1 = Struct_2(1034f);
    global1 = array<i32, 2>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 5u)], firstLeadingBit(_wgslsmith_mod_u32(4294967295u, u_input.a))), 2u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, arg_1.a.a.x))), _wgslsmith_f_op_vec2_f32(-var_0.a.a), vec2<bool>(!select(false, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(global4.a, ~min(u_input.a, _wgslsmith_mult_u32(23303u, global2[_wgslsmith_index_u32(71607u, 1u)])), func_1()), Struct_3(global4.a, vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(0u, u_input.a)), global4.b.x, 0u), Struct_2(-473f)));
    var var_1 = global4.a.a.x;
    let var_2 = 0i;
    global4 = func_1();
    var_0 = Struct_1(vec2<f32>(1000f, 1130f));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)) + _wgslsmith_f_op_f32(func_2(true, -1000f))), 133f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global4.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-190f))), var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, 390f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * global4.a.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.a.a.x, 683f, 2817f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1187f, var_0.a.x, global4.a.a.x), vec3<f32>(-633f, -168f, -1050f)))), vec3<f32>(var_0.a.x, -761f, _wgslsmith_f_op_f32(1268f + 572f)), vec3<bool>(any(vec3<bool>(true, false, false)), true, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.a, var_0.a.x, _wgslsmith_f_op_f32(select(673f, -502f, true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.a, var_0.a.x, 697f)))));
}

