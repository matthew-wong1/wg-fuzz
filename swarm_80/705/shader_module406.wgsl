struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, -3182i), 1077f, vec2<bool>(false, true));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-23988i, 25276i), 368f, vec2<bool>(true, false)), Struct_1(vec2<i32>(i32(-2147483648), 29492i), 318f, vec2<bool>(false, true)));

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: f32 = -268f;

var<private> global4: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-670f * _wgslsmith_f_op_f32(max(global0.b, global0.b))))), global0.b);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) * _wgslsmith_f_op_f32(exp2(global0.b))), 475f));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_1 = Struct_1(global0.a, 1000f, global0.c);
    return -1674f;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    let var_0 = all(vec3<bool>(~1i < arg_0, !all(vec4<bool>(arg_2, arg_3.x, arg_3.x, true)) | all(!arg_3), global0.c.x));
    global4 = vec2<bool>(any(select(select(select(arg_3.zx, arg_3.yx, false), select(arg_3.xx, arg_3.yx, arg_3.x), select(vec2<bool>(global0.c.x, false), global0.c, false)), vec2<bool>(any(vec3<bool>(arg_2, true, false)), arg_1 > arg_1), true)), false);
    let var_1 = global1[_wgslsmith_index_u32(max(4478u, u_input.a.x) & (u_input.a.x | u_input.a.x), 2u)];
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-897f))))) - 645f);
    global2 = array<vec2<u32>, 31>();
    return 21221i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    global3 = global0.b;
    global1 = array<Struct_1, 2>();
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(16630u, u_input.b)), 2u)];
    let var_0 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(func_3(reverseBits(global0.a.x), _wgslsmith_f_op_f32(-global0.b), false == arg_3.x, select(vec3<bool>(false, false, false), vec3<bool>(global4.x, true, global4.x), vec3<bool>(global0.c.x, false, false))), arg_2)), _wgslsmith_add_i32(2147483647i, global0.a.x));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 2u)];
    return _wgslsmith_f_op_f32(1156f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(~15675u, 41012u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-894f)))), global0.a.x >> ((abs(~31292u) >> (~_wgslsmith_div_u32(u_input.b, 1u) % 32u)) % 32u), vec3<bool>(true, !global4.x || any(!vec4<bool>(false, global0.c.x, global0.c.x, true)), any(select(vec3<bool>(global0.c.x, global4.x, false), select(vec3<bool>(true, global4.x, global0.c.x), vec3<bool>(global0.c.x, true, global4.x), global0.c.x), !vec3<bool>(global4.x, true, false))))));
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, global0.c.x)));
    global2 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(47369i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b)), _wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(f32(-1f) * -756f)));
}

