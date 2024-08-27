struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), -1480f, 853f);

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(6368i, -14190i, 1i, -1i), vec4<i32>(i32(-2147483648), 20759i, i32(-2147483648), 0i), vec4<i32>(0i, 33268i, 2147483647i, -50632i), vec4<i32>(47453i, -35817i, -22121i, i32(-2147483648)), vec4<i32>(10298i, 1i, 0i, 38142i), vec4<i32>(-19266i, 2147483647i, -40786i, -1i), vec4<i32>(-44664i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-21283i, -24755i, 0i, 44607i), vec4<i32>(1i, 18795i, 11551i, 13837i), vec4<i32>(-25474i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(19779i, 2147483647i, 1i, -35424i), vec4<i32>(-89690i, 53392i, -21507i, 2147483647i), vec4<i32>(-45325i, 35748i, 19662i, -1i), vec4<i32>(-68572i, 20434i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -20131i, 30771i, 48649i), vec4<i32>(50140i, 50966i, -61008i, -4503i), vec4<i32>(-10602i, -13665i, -23181i, 2147483647i), vec4<i32>(-36648i, 0i, 0i, 1i), vec4<i32>(1i, -1i, -20821i, 13640i), vec4<i32>(40572i, -69092i, 13568i, -31790i), vec4<i32>(2147483647i, 0i, -1i, 1i), vec4<i32>(3340i, 17330i, 2147483647i, i32(-2147483648)));

var<private> global2: i32 = -57624i;

var<private> global3: Struct_3 = Struct_3(-972f, true, vec3<i32>(2147483647i, 57832i, -8129i), Struct_1(vec4<bool>(false, false, false, false), -438f, 629f), vec4<bool>(false, false, false, false));

var<private> global4: i32 = -28333i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = Struct_1(!vec4<bool>(arg_0.a.x, global0.a.x, any(vec2<bool>(arg_0.a.x, global3.d.a.x)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_div_f32(927f, 499f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 380f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(1102f * global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(-379f * -1348f), true)) * -434f))));
    global1 = array<vec4<i32>, 22>();
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(-u_input.b) == _wgslsmith_add_i32(global3.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, global3.c.x, 0i), ~vec3<i32>(-21428i, -1i, global3.c.x)));
    global3 = Struct_3(-1027f, !(_wgslsmith_f_op_f32(654f * -393f) != arg_0.b), _wgslsmith_sub_vec3_i32(global3.c, -vec3<i32>(0i, _wgslsmith_div_i32(63752i, -12002i), 18571i)), Struct_1(vec4<bool>(any(select(vec4<bool>(false, global0.a.x, global0.a.x, true), var_0.a, true)), arg_0.a.x, true, var_1), 652f, _wgslsmith_f_op_f32(trunc(arg_0.c))), arg_0.a);
    return all(global0.a.yzy);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    global0 = Struct_1(vec4<bool>(false, false, select(!func_3(global3.d), any(vec2<bool>(global0.a.x, true)), global0.a.x), true || arg_2.x), 747f, -617f);
    global3 = Struct_3(_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1324f, -148f)))), global0.a.x, firstLeadingBit(countOneBits(vec3<i32>(arg_1, 0i, firstTrailingBit(arg_1)))), Struct_1(vec4<bool>(global3.b, all(!arg_2), arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), -943f), global0.a);
    let var_0 = ~(~(u_input.c.x | _wgslsmith_mod_u32(4294967295u, 101568u))) ^ u_input.d;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(global0.c)), false, _wgslsmith_sub_vec3_i32(arg_0, ~(~(-vec3<i32>(arg_1, 2147483647i, 28548i)))), Struct_1(global3.e, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d.c, -162f)))), global0.a);
    global2 = 0i;
    return Struct_3(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(ceil(global0.c))), true | all(vec4<bool>(var_1.e.x || global0.a.x, select(false, true, global0.a.x), global3.d.a.x, u_input.a.x < 103775u)), min(var_1.c, abs(vec3<i32>(-1i, arg_0.x, 28369i))), Struct_1(vec4<bool>(global3.b, !(!global3.b), false, true), _wgslsmith_f_op_f32(max(-1555f, 280f)), 569f), vec4<bool>(arg_2.x, false, var_1.d.a.x, all(vec3<bool>(!var_1.d.a.x, true, !global0.a.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    global3 = arg_1;
    let var_0 = u_input.a.x;
    global0 = Struct_1(global3.e, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), -595f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.b))));
    let var_1 = u_input.a;
    var var_2 = select(arg_2.e.yy, global0.a.wy, any(func_2(~global3.c, (global3.c.x << (14180u % 32u)) & arg_2.c.x, func_2(vec3<i32>(0i, u_input.b, 18295i), global3.c.x, global3.e.xy).e.zw).d.a));
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    var var_0 = global3.a;
    let var_1 = all(!(!arg_2.e));
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, _wgslsmith_f_op_f32(max(-222f, -124f)), -1614f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -147f, 825f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -132f, global0.b) - vec3<f32>(558f, -774f, global0.c)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(142f, -1000f, -543f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.b, global0.c)) + vec3<f32>(arg_2.a, global3.a, 619f))))), arg_2, func_2(~vec3<i32>(abs(global3.c.x), countOneBits(-1i), -arg_2.c.x), ~_wgslsmith_sub_i32(-6618i, global3.c.x), select(vec2<bool>(global3.c.x > u_input.e, true), vec2<bool>(!arg_1.x, all(vec4<bool>(global0.a.x, global3.e.x, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(arg_1.x, false), vec2<bool>(global0.a.x, true), global0.a.xy), select(global0.a.xx, vec2<bool>(arg_1.x, global3.e.x), true))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(step(-1118f, 132f)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), arg_2, arg_2)), _wgslsmith_f_op_f32(select(var_2, arg_0.c, global3.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.b, 1000f, global3.d.b), vec3<f32>(global3.d.c, arg_2.a, global0.b), vec3<bool>(true, global0.a.x, arg_2.b))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, -232f, arg_0.b), vec3<f32>(global3.a, global3.a, global0.b), true))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(692f, -340f, -1818f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, arg_2.d.c, 859f)), func_2(arg_2.c, -2147483647i, vec2<bool>(arg_2.d.a.x, true)).b))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, 268f, 538f))))))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, _wgslsmith_div_f32(185f, global0.b)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(997f, 1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3.d.b, 615f), global3.d.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, global0.c))))));
    global4 = _wgslsmith_div_i32(-(~(~func_1(Struct_1(global0.a, -374f, global0.c), vec2<bool>(false, true), Struct_3(global3.d.b, true, vec3<i32>(global3.c.x, -1i, global3.c.x), Struct_1(vec4<bool>(global3.e.x, false, global3.b, false), 2017f, global3.d.c), vec4<bool>(false, false, true, false))))), firstLeadingBit(-(~func_2(global3.c, -4512i, vec2<bool>(true, global0.a.x)).c.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f + _wgslsmith_f_op_f32(trunc(global3.d.b))) * 1040f);
    let x = u_input.a;
    s_output = StorageBuffer(min(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.a.x) << (u_input.a.x % 32u)));
}

