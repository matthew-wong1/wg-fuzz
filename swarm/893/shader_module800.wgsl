struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(-1033f, 1029f), Struct_1(true), Struct_1(true));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(2458f, 271f), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(-106f, -1081f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(1000f, -338f), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(1000f, 591f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec2<f32>(305f, 1996f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(-423f, -1302f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(-726f, 936f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(479f, -725f), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(585f, 411f), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(1000f, -807f), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec2<f32>(-570f, -691f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(-916f, -1003f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(-1454f, -165f), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(1272f, 679f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(496f, -147f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec2<f32>(1233f, 372f), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), vec2<f32>(-252f, -2069f), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(-544f, -418f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(808f, 949f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec2<f32>(-394f, -186f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), vec2<f32>(-968f, -323f), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(-407f, -1415f), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), vec2<f32>(-411f, 2324f), Struct_1(true), Struct_1(false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec3<f32> {
    let var_0 = vec2<f32>(1507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * _wgslsmith_f_op_f32(select(-1088f, global1.c.x, global0.x))) - global1.c.x) - -333f));
    let var_1 = vec4<bool>(global1.b.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) != _wgslsmith_f_op_f32(-var_0.x), select(!global0.x, global1.d.a, !(global0.x && true)) && global1.d.a);
    let var_2 = vec2<u32>(4294967295u, max(abs(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) << (1u % 32u), ~(min(65668u, 24754u) >> (~u_input.b.x % 32u))));
    var var_3 = global0.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, -299f, 1250f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, var_0.x, 919f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, global1.c.x, -2117f)), vec3<f32>(-645f, -1859f, -758f)))))));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = select(abs(firstTrailingBit(45911i)) >> (_wgslsmith_add_u32(~(~46304u), abs(~u_input.b.x)) % 32u), 38709i, any(vec3<bool>(global1.d.a, global1.d.a, global0.x)));
    let var_1 = Struct_2(global1.b, Struct_1(global0.x), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-722f, 1593f) + global1.c.x))), global1.a, Struct_1(true));
    global1 = Struct_2(global1.a, global1.e, _wgslsmith_f_op_vec3_f32(func_1()).xy, Struct_1(var_1.a.a), global1.a);
    let var_2 = var_1;
    global2 = array<Struct_2, 23>();
    return select(select(select(select(vec3<bool>(true, var_1.d.a, false), !vec3<bool>(true, var_1.d.a, false), vec3<bool>(global1.d.a, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, var_1.d.a), false), !vec3<bool>(true, false, var_2.e.a)), select(!(!vec3<bool>(var_1.e.a, false, false)), select(!vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, global1.b.a), !global1.a.a), (global1.e.a & global1.b.a) && (var_1.b.a && global1.d.a)), var_1.c.x == _wgslsmith_f_op_f32(var_1.c.x + global1.c.x)), select(select(select(!vec3<bool>(var_1.b.a, global1.b.a, global0.x), vec3<bool>(global0.x, var_2.d.a, global0.x), false), vec3<bool>(var_1.e.a || var_1.e.a, global0.x, any(vec4<bool>(global0.x, var_2.b.a, var_2.a.a, var_1.d.a))), !select(false, var_2.b.a, true)), !select(!vec3<bool>(false, true, global0.x), select(vec3<bool>(var_1.b.a, false, global0.x), vec3<bool>(true, false, global1.a.a), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(var_2.e.a, var_2.a.a, var_2.b.a)), global1.d.a), all(select(vec2<bool>(true, global1.b.a), !vec2<bool>(var_1.a.a, true), !global0.yx)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(24480u, 23u)];
    var var_0 = global1.e;
    var var_1 = Struct_2(global1.d, global1.e, global1.c, Struct_1((-19184i <= _wgslsmith_div_i32(u_input.a, arg_0)) | any(func_3(2147483647i))), Struct_1(true));
    var_0 = var_1.e;
    let var_2 = global1.a;
    return Struct_2(Struct_1(var_2.a), global1.d, vec2<f32>(170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1002f, _wgslsmith_f_op_f32(-var_1.c.x))))), Struct_1(true), Struct_1(true));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global2 = array<Struct_2, 23>();
    var var_0 = func_2(i32(-1i) * -14067i);
    var var_1 = global0.x == !(!all(vec3<bool>(global1.e.a, false, var_0.a.a)));
    var_1 = false;
    var_1 = any(select(vec4<bool>(all(vec4<bool>(true, var_0.b.a, global0.x, true)) && any(vec4<bool>(global0.x, false, var_0.b.a, arg_1.e.a)), all(vec4<bool>(true, false, arg_1.b.a, global0.x)), global1.a.a, false), !(!select(vec4<bool>(false, global0.x, false, arg_1.a.a), vec4<bool>(global0.x, false, false, global1.d.a), true)), true));
    return Struct_2(var_0.a, Struct_1(any(!(!vec2<bool>(var_0.e.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.c, vec2<f32>(125f, 836f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(max(var_0.c, global1.c)))))), Struct_1(!any(!vec3<bool>(false, global1.d.a, false))), Struct_1(true));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(global0.x);
    var var_1 = !(false || global1.d.a);
    var var_2 = arg_1.e;
    let var_3 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1418f, arg_0, arg_1.c.x))) - vec3<f32>(_wgslsmith_div_f32(591f, 731f), -1156f, _wgslsmith_f_op_f32(-arg_0))), Struct_2(Struct_1(var_0.a || arg_1.e.a), Struct_1(func_2(15289i).d.a), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, -277f), _wgslsmith_f_op_vec2_f32(-global1.c)), Struct_1(!var_0.a), Struct_1(true)), -2147483647i >> (abs(1u) % 32u)).d, Struct_1(arg_1.d.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - -1000f) * arg_1.c.x), _wgslsmith_f_op_f32(-arg_0)), Struct_1(!select(!var_2.a, func_4(vec3<f32>(arg_0, arg_0, global1.c.x), Struct_2(global1.e, Struct_1(false), vec2<f32>(1000f, -563f), Struct_1(arg_1.a.a), arg_2), 2147483647i).b.a, false)), Struct_1(any(select(!vec3<bool>(true, true, var_0.a), vec3<bool>(true, true, true), !vec3<bool>(var_0.a, var_2.a, false)))));
    let var_4 = global1.d;
    return StorageBuffer(-786f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -43044i;
    let var_1 = Struct_1(true);
    global0 = vec3<bool>(-u_input.a != var_0, false, !(~(~u_input.c.x) > ~(-1i)));
    var var_2 = -1i;
    global0 = !(!select(vec3<bool>(all(global0.yy), true, !var_1.a), select(vec3<bool>(false, false, false), !vec3<bool>(global1.a.a, true, global1.b.a), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, true, true)));
    var var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 23u)];
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.c.x, 791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + var_3.c.x))) * _wgslsmith_f_op_vec3_f32(func_1())));
    let var_5 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_4.x)), var_4.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_4.x))))), vec3<f32>(440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * -236f)), global1.c.x)));
    let x = u_input.a;
    s_output = func_5(437f, func_4(var_5, func_2(~(u_input.a ^ 19407i)), var_0), func_2(-u_input.a).d);
}

