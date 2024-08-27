struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(2142f, -1023f, 1000f, 1000f);

var<private> global1: u32 = 0u;

var<private> global2: Struct_1 = Struct_1(-26i, vec4<f32>(576f, -244f, -471f, 1662f), 29729i, false);

var<private> global3: array<f32, 4> = array<f32, 4>(1000f, 268f, 1328f, 1712f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global3 = array<f32, 4>();
    let var_0 = Struct_1(select(-17484i, 1i, any(vec3<bool>(true, true, all(vec2<bool>(false, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), _wgslsmith_div_i32(u_input.a.x, abs(-2147483647i)), true);
    global2 = Struct_1(-10489i, var_0.b, -1i, false);
    let var_1 = var_0;
    let var_2 = vec4<u32>(~(~select(32543u, u_input.c, !global2.d)), u_input.c, 30911u, ~(~(~u_input.b & _wgslsmith_mult_u32(u_input.c, u_input.b))));
    return select(~var_2.wx, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.c, 18979u)), abs(countOneBits(vec2<u32>(105373u, 1u)))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.x, u_input.c), countOneBits(vec2<u32>(4294967295u, u_input.b)))), !vec2<bool>(all(!vec4<bool>(true, true, global2.d, var_1.d)), any(select(vec4<bool>(arg_0, var_1.d, true, false), vec4<bool>(true, true, false, global2.d), vec4<bool>(true, global2.d, true, true)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -286f), global3[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 4u)])) + _wgslsmith_f_op_f32(ceil(arg_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + global2.b.x) * _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1059f)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1091f, -1006f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 1000f, arg_3.b.x, 610f) - vec4<f32>(global0.x, -238f, -621f, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.b.x, global2.b.x, 1175f, global2.b.x)))) + vec4<f32>(-719f, -703f, _wgslsmith_f_op_f32(f32(-1f) * -1164f), -1021f)) + arg_3.b), vec4<bool>(global2.d, all(!(!vec2<bool>(global2.d, true))), select(!arg_3.d, true, global2.d), false)));
    global3 = array<f32, 4>();
    var var_0 = -global2.c;
    var var_1 = ~u_input.b;
    return _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(global2.a | arg_0.x, -35474i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = u_input.c;
    let var_2 = ~func_4(~(-(~vec4<i32>(global2.a, -2147483647i, 1i, 12454i))), 4294967295u, max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.c) | vec2<u32>(2200u, u_input.c), func_3(global2.d), select(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, 4294967295u), global2.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, u_input.b), select(vec2<u32>(u_input.c, var_1), vec2<u32>(var_1, 0u), false))), Struct_1(0i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b * global2.b))), 0i, global2.d));
    var var_3 = ~93883u;
    var var_4 = true;
    return Struct_1(~(~(_wgslsmith_add_i32(var_2, global2.a) << (1u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(global2.b)))), vec4<f32>(416f, global3[_wgslsmith_index_u32(27037u, 4u)], _wgslsmith_f_op_f32(min(global0.x, global2.b.x)), 500f)), arg_0, global2.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = arg_1;
    global2 = func_2(~0i);
    var var_1 = func_2(~global2.c | 0i).b.x;
    global1 = _wgslsmith_add_u32(u_input.c, select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_3, ~9176u, countOneBits(1u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(41065u, arg_3, u_input.b), ~vec3<u32>(arg_3, arg_3, arg_3))), true));
    global0 = arg_1.b;
    return select(!vec3<bool>(!var_0.d, min(arg_3, 1u) <= u_input.c, false), vec3<bool>(!(true & arg_2.d), global2.d, arg_2.d & arg_2.d), select(select(vec3<bool>(false, all(vec2<bool>(false, arg_2.d)), arg_0.x <= 1i), select(vec3<bool>(global2.d, arg_2.d, arg_1.d), select(vec3<bool>(arg_2.d, false, false), vec3<bool>(false, false, global2.d), vec3<bool>(arg_1.d, false, var_0.d)), vec3<bool>(false, false, arg_1.d)), select(vec3<bool>(global2.d, arg_2.d, false), vec3<bool>(false, arg_2.d, arg_1.d), !global2.d)), !vec3<bool>(global2.d, false, true), vec3<bool>(false, false, (u_input.b < 1u) | arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(i32(-1i) * -1282i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) * _wgslsmith_f_op_vec4_f32(global2.b - global2.b))), global2.b), global2.c, any(select(func_1(~vec3<i32>(1i, -61665i, -22103i), Struct_1(global2.a, vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], global2.b.x, 369f, global0.x), 0i, false), Struct_1(global2.a, vec4<f32>(global2.b.x, global3[_wgslsmith_index_u32(u_input.c, 4u)], 520f, global3[_wgslsmith_index_u32(0u, 4u)]), u_input.a.x, true), ~u_input.b), func_1(vec3<i32>(u_input.a.x, -2147483647i, global2.c) | vec3<i32>(u_input.a.x, u_input.a.x, -13507i), Struct_1(u_input.a.x, global2.b, u_input.a.x, global2.d), func_2(u_input.a.x), _wgslsmith_add_u32(4294967295u, u_input.b)), func_1(vec3<i32>(1i, -2147483647i, global2.c), func_2(u_input.a.x), Struct_1(global2.a, vec4<f32>(390f, global0.x, -1871f, -930f), -7013i, global2.d), abs(0u)))));
    let var_0 = -global2.c;
    var var_1 = func_2(55312i);
    global3 = array<f32, 4>();
    let var_2 = func_2(var_1.a);
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c, var_2.a), vec2<i32>(global2.a, var_2.c)), u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global3[_wgslsmith_index_u32(u_input.b, 4u)], 576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2603f + 1318f))) * vec4<f32>(_wgslsmith_f_op_f32(-781f * 963f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 4u)])), 303f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2424f - -487f), _wgslsmith_div_f32(-1385f, global2.b.x))), global2.b.x)), global2.c, !global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-560f, var_1.b.x))) + _wgslsmith_f_op_f32(select(-1606f, -102f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1351f)), firstLeadingBit(abs(firstTrailingBit(vec4<i32>(global2.a, global2.a, var_1.c, -2147483647i))) >> (~(~vec4<u32>(u_input.b, u_input.c, u_input.c, 42341u)) % vec4<u32>(32u))), ~u_input.c);
}

