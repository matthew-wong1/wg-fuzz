struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -727f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, global0.x, global0.x) - vec3<f32>(118f, 1114f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1232f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-304f, _wgslsmith_f_op_f32(trunc(-238f)), _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -625f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1158f, global0.x) * vec3<f32>(461f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, -1180f, global0.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x), vec3<f32>(-729f, global0.x, global0.x))))));
    let var_0 = Struct_3(~u_input.a.x);
    var var_1 = Struct_4(1314f);
    global3 = array<vec2<bool>, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(126f)), global0.x)))) - var_1.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x * 204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - -1551f)))), arg_0) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(arg_0.x + -423f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    global2 = 14081i ^ (_wgslsmith_mult_i32(49170i, -24161i | _wgslsmith_sub_i32(-2147483647i, u_input.c)) & -arg_1.a);
    let var_1 = arg_1;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1529f, 1368f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, arg_0.x), _wgslsmith_f_op_f32(step(arg_2.x, var_0.x)), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(23597u))), _wgslsmith_f_op_f32(arg_0.x + -176f))));
    let var_2 = arg_1;
    return Struct_3(_wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.e, u_input.c), 1i));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(_wgslsmith_sub_i32(var_0.x, u_input.b));
    var var_2 = Struct_2(arg_2, arg_2);
    let var_3 = u_input.d.x;
    var var_4 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(876f)), _wgslsmith_f_op_f32(select(1942f, -1227f, true)))), _wgslsmith_f_op_f32(step(-813f, _wgslsmith_f_op_f32(-arg_2.a.x))))), var_2.a);
    return Struct_4(_wgslsmith_f_op_f32(exp2(arg_2.a.x)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = firstTrailingBit(~(~(~vec3<u32>(63186u, 1u, 107010u)))) >> (~vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 30459u, 28865u)), ~vec3<u32>(0u, 9620u, 1u)), 1u, 0u) % vec3<u32>(32u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(-831f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f - -507f) - _wgslsmith_f_op_f32(step(global0.x, 531f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1121f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(round(global0.x)), arg_2)) - -370f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(255f * arg_3.a)) * global0.x)), -2412f);
    var var_2 = -vec2<i32>(-(-u_input.e | (9868i | u_input.a.x)), u_input.d.x);
    var var_3 = -u_input.a.zxy;
    global2 = firstTrailingBit(u_input.c);
    return u_input.a.yxw;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> bool {
    global2 = ~(-20755i);
    let var_0 = -func_5(func_4(vec3<u32>(1u, 1u, _wgslsmith_mod_u32(0u, 4294967295u)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, arg_1.a.a.x, global0.x) - vec3<f32>(-975f, global0.x, global0.x)), Struct_3(-31091i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.a.x, -1467f, -2789f, arg_1.a.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.b.a)), global1.x), Struct_4(arg_1.a.a.x), false, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -482f)));
    var var_1 = arg_0;
    global2 = -51926i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(!vec4<bool>(func_1(false, Struct_2(Struct_1(vec2<f32>(1000f, global0.x)), Struct_1(vec2<f32>(global0.x, global0.x)))), !global1.x, true, true));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + func_4(vec3<u32>(0u, 112718u, 1u), Struct_3(u_input.a.x), Struct_1(global0.xz), true).a), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-440f, -901f, 1081f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 923f), vec3<f32>(global0.x, global0.x, -746f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-224f, -1153f, 1146f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2391f, global0.x)) - vec3<f32>(-815f, global0.x, global0.x)))));
    let var_1 = Struct_1(global0.xz);
    global2 = -_wgslsmith_div_i32(u_input.d.x | u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.e)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.b), vec4<i32>(u_input.c, u_input.e, u_input.a.x, u_input.b)), firstLeadingBit(u_input.e))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x)))), 1000f, global0.x)), Struct_3(-50604i), vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~0u)), 1020f), var_1.a.x, _wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f + var_1.a.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 292f, var_1.a.x) - vec3<f32>(-1293f, var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(628f, global0.x, global0.x) * vec3<f32>(-685f, global0.x, var_1.a.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1.a.x, global0.x))))));
    let var_3 = 1707i;
    let var_4 = ~2998i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~(~firstLeadingBit(54393u)));
}

