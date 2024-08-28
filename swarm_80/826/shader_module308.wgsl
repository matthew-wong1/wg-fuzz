struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<vec2<bool>, 18>();
    let var_0 = Struct_1(!any(select(global0[_wgslsmith_index_u32(1u, 18u)], vec2<bool>(false, true), false)) && false);
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let var_1 = Struct_2(var_0, ~(~45936i));
    return 919f;
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    var var_0 = 1u;
    global0 = array<vec2<bool>, 18>();
    var var_1 = _wgslsmith_f_op_f32(1244f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f), 359f), _wgslsmith_f_op_f32(1560f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(332f, -306f)) * _wgslsmith_f_op_f32(-1515f + 1341f))))));
    return 1929f;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec2<bool>, 18>();
    var var_0 = _wgslsmith_f_op_f32(round(602f));
    var_0 = arg_0.a.x;
    var var_1 = Struct_4(~u_input.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(221f * -1716f), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(func_2(arg_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(556i)), arg_0.a.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + arg_0.a.x) + _wgslsmith_f_op_f32(max(arg_0.a.x, 149f))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f * 576f))), select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false), vec4<bool>(true, true, true, false), true))), Struct_1(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))) && !(0i != u_input.b.x)), vec4<i32>(-1i) * -u_input.b, Struct_3(arg_0.a));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(433f, -2049f, var_1.c.a)))))));
    return Struct_1(!var_1.c.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_2.b.x), i32(-1i) * -arg_2.d);
    var var_1 = Struct_4(arg_2.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), arg_2.e.a.x, 249f, _wgslsmith_f_op_f32(1310f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1396f)) + _wgslsmith_f_op_f32(1000f + -358f)))), func_1(arg_2.e, Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1291f, arg_2.e.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.a.x, arg_2.e.a.x)))))), min(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(var_0.b, 0i, u_input.c, var_0.b) | vec4<i32>(0i, var_0.b, u_input.c, u_input.a)), countOneBits(countOneBits(u_input.b))) | (vec4<i32>(0i, -18767i | u_input.c, abs(-7539i), u_input.b.x) >> (vec4<u32>(arg_2.c ^ arg_2.c, arg_1.x, min(89287u, 109920u), 38047u) % vec4<u32>(32u))), arg_2.e);
    let var_2 = Struct_1(true);
    var var_3 = Struct_3(var_1.e.a);
    var var_4 = 0i;
    return func_1(arg_2.e, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, 942f)) + _wgslsmith_f_op_vec2_f32(floor(var_1.b.ww)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    global0 = array<vec2<bool>, 18>();
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1372f, arg_0.e.a.x), arg_0.b.yz)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1365f, 1090f), vec2<f32>(185f, arg_0.e.a.x)))))), arg_0.e.a));
    let var_1 = Struct_5(Struct_1(-2147483647i >= abs(u_input.b.x >> (0u % 32u))), !(!select(!vec3<bool>(arg_1.a.a, false, false), vec3<bool>(false, true, true), select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(false, arg_0.c.a, true), vec3<bool>(false, arg_0.c.a, false)))), _wgslsmith_div_u32(1u, 1u), ~1i, Struct_3(vec2<f32>(477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i)) * var_0.a.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(select(var_0.a.x, var_1.e.a.x, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-(i32(-1i) * -15182i))))));
    var var_3 = false;
    return !(!all(global0[_wgslsmith_index_u32(0u, 18u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 18>();
    let var_0 = vec3<bool>(func_5(Struct_4(~(~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(803f, 836f, 859f, 713f))), func_4(func_1(Struct_3(vec2<f32>(-586f, 1635f)), Struct_3(vec2<f32>(-127f, -327f))), vec3<u32>(58528u, 52445u, 4294967295u), Struct_5(Struct_1(true), vec3<bool>(true, false, false), 31237u, u_input.a, Struct_3(vec2<f32>(-360f, -2560f)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(28650u, 9847u, 0u, 84902u) % vec4<u32>(32u)), Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-273f, -984f))))), Struct_2(func_4(Struct_1(true), vec3<u32>(21957u, 614u, 1u), Struct_5(Struct_1(false), vec3<bool>(false, false, false), 64012u, u_input.c, Struct_3(vec2<f32>(946f, -1344f)))), ~min(u_input.a, u_input.a))), true, true);
    var var_1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(12171i, -1i ^ reverseBits(u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1455f), -2071f)) * -321f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1338f))))));
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(var_1.ww, vec2<f32>(-245f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), -181f))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-598f + var_1.x), var_1.x, _wgslsmith_f_op_f32(abs(979f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f - _wgslsmith_f_op_f32(515f - -453f))))));
    let var_3 = _wgslsmith_f_op_f32(-582f + 995f);
    let x = u_input.a;
    s_output = StorageBuffer(151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~u_input.b.x)) * var_1.x));
}

