struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-869f, -3185f, 1575f), vec3<f32>(1353f, -295f, -481f), vec3<f32>(-1000f, 242f, -1510f), vec3<f32>(980f, 977f, -1071f), vec3<f32>(1111f, -1000f, -1270f), vec3<f32>(-988f, 855f, -678f), vec3<f32>(175f, 1452f, -1187f), vec3<f32>(-1000f, -645f, -736f), vec3<f32>(321f, -1295f, -325f), vec3<f32>(-1447f, -1606f, 285f), vec3<f32>(-876f, 740f, -225f), vec3<f32>(-730f, -1015f, 424f), vec3<f32>(-285f, 1357f, 130f), vec3<f32>(-1967f, -1238f, 428f), vec3<f32>(-746f, -784f, 413f), vec3<f32>(725f, -243f, 1550f), vec3<f32>(-766f, -960f, 1285f), vec3<f32>(214f, -356f, 1441f));

var<private> global2: array<i32, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_3;
    let var_1 = arg_3;
    global1 = array<vec3<f32>, 18>();
    global2 = array<i32, 7>();
    global0 = vec3<bool>(!(var_0.c >= var_0.c), global0.x, false);
    return arg_1;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<vec3<f32>, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c, arg_0.a, arg_0.a, arg_0.c), vec4<f32>(807f, arg_0.c, arg_0.c, arg_0.a)))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(690f - 176f), 1000f)), 767f, 1812f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-267f, -909f, arg_0.c, 819f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, 1613f, -390f, arg_0.a))))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x) == -1133f;
    var var_2 = min(abs(reverseBits(1u) >> (1u % 32u)), ~(~u_input.e));
    global0 = select(!select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, true)), vec3<bool>(74642i <= arg_0.b, true, func_2(true, global0.yy, 19285i, arg_0).x), select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, false), true)), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, false, true), true), !vec3<bool>(false, global0.x, false), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x))), select(vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, false), global0.x), any(vec3<bool>(global0.x, global0.x, global0.x))), !vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, true, global0.x));
    return any(select(select(global0.zy, vec2<bool>(all(vec2<bool>(global0.x, true)), true), !global0.yz), select(vec2<bool>(true, select(false, global0.x, global0.x)), vec2<bool>(2081f != var_0.x, u_input.e <= 4294967295u), global0.x), false));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(~u_input.e, 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.c, arg_0.a))) + 1889f))), _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(arg_0.b, ~u_input.b)), -56572i), _wgslsmith_f_op_f32(floor(arg_0.c)));
    let var_2 = !vec3<bool>(global2[_wgslsmith_index_u32(~50559u, 7u)] >= arg_0.b, global0.x, !(!global0.x));
    global0 = vec3<bool>(any(func_2(all(select(vec3<bool>(false, true, global0.x), vec3<bool>(true, var_2.x, global0.x), global0.x)), vec2<bool>(true, false), 36209i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -706f), firstLeadingBit(2147483647i), _wgslsmith_f_op_f32(-arg_0.a)))), false, true);
    global1 = array<vec3<f32>, 18>();
    return vec4<bool>(all(select(vec4<bool>(all(vec4<bool>(true, true, global0.x, false)), func_3(arg_0), var_2.x, any(vec3<bool>(global0.x, true, false))), vec4<bool>(true, !var_2.x, var_2.x, global0.x), select(select(vec4<bool>(false, var_2.x, true, global0.x), vec4<bool>(global0.x, true, false, true), true), vec4<bool>(false, var_2.x, true, true), select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(global0.x, var_2.x, global0.x, true), var_2.x)))), true, var_2.x, any(var_2));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = ~(-2147483647i);
    var var_1 = select(arg_1, vec4<bool>(global0.x, !func_2(global0.x & true, global0.yx, min(var_0, var_0), arg_2).x, arg_2.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, -1000f)) * _wgslsmith_f_op_f32(abs(arg_2.a))), false), !(!arg_1.x));
    var_1 = select(vec4<bool>(func_1(Struct_1(arg_2.c, u_input.c.x, _wgslsmith_f_op_f32(-arg_2.c))).x, !all(!vec2<bool>(true, arg_1.x)), any(!arg_1), reverseBits(arg_2.b) == ~var_0), select(vec4<bool>(any(global0.xz), true, all(vec3<bool>(global0.x, false, false)), select(func_1(arg_2).x, true, true)), arg_1, global0.x), !vec4<bool>(!func_1(Struct_1(-1199f, 16686i, -1145f)).x, any(!arg_1), !func_2(true, vec2<bool>(var_1.x, false), -2147483647i, arg_2).x, !arg_1.x));
    var_1 = vec4<bool>(var_1.x, !(true && arg_1.x), !func_1(arg_2).x, global0.x);
    var var_2 = arg_2;
    return StorageBuffer(1u << (~arg_0 % 32u), 31212u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -904f), -984f)), _wgslsmith_f_op_f32(735f - var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 18>();
    var var_0 = 18439u;
    var var_1 = select(false | (true == all(vec2<bool>(global0.x, false))), global0.x, global0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(1000f)), -5714i, _wgslsmith_f_op_f32(min(627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -263f)))))));
    let var_3 = global0.x;
    global1 = array<vec3<f32>, 18>();
    let x = u_input.a;
    s_output = func_4(select(u_input.e, u_input.e, !(!all(vec4<bool>(true, global0.x, global0.x, false)))), select(vec4<bool>(global0.x, true, false, all(!vec4<bool>(global0.x, false, global0.x, true))), !vec4<bool>(u_input.e < 4294967295u, true, any(vec3<bool>(global0.x, true, false)), global0.x), func_1(var_2)), var_2);
}

