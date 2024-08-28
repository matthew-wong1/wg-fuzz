struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 42070i;

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(2187f, -651f), vec2<f32>(-925f, -412f), vec2<f32>(-2501f, -1519f), vec2<f32>(410f, -2279f), vec2<f32>(-1087f, -2102f), vec2<f32>(276f, -1293f), vec2<f32>(176f, -1678f), vec2<f32>(1723f, 193f), vec2<f32>(2640f, 486f), vec2<f32>(-2285f, -1615f), vec2<f32>(-1005f, -1502f), vec2<f32>(-1051f, 2313f), vec2<f32>(-155f, 686f), vec2<f32>(-582f, -1586f));

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(vec2<u32>(1u, 0u), Struct_1(-1i, -948f, vec4<i32>(0i, 49506i, -14718i, -31339i), vec2<bool>(true, false), true), Struct_1(i32(-2147483648), 794f, vec4<i32>(i32(-2147483648), 34160i, 17828i, -4922i), vec2<bool>(true, false), true), Struct_1(-9205i, -882f, vec4<i32>(0i, 1i, -1i, -9000i), vec2<bool>(false, true), true), Struct_3(-1323f, vec2<bool>(true, true), -1999f, -577f));

var<private> global4: Struct_2 = Struct_2(Struct_1(-46083i, 1167f, vec4<i32>(-52287i, 51840i, 2147483647i, 39052i), vec2<bool>(true, true), true), 189f, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec3<f32> {
    global0 = 1i;
    var var_0 = 1u;
    var var_1 = vec3<i32>(-(~(~1i)), -1i, -(~22515i));
    global2 = Struct_4(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(global2.a.x, global2.a.x)), abs(_wgslsmith_div_vec2_u32(~arg_1.a.zx, vec2<u32>(global3.a.x, 38014u)))), Struct_1(arg_1.b.a, 494f, -global2.d.c, arg_0.b, !global4.a.e), Struct_1(_wgslsmith_dot_vec2_i32(global4.a.c.wz, vec2<i32>(arg_1.b.c.x, -1i)) & -var_1.x, _wgslsmith_f_op_f32(global2.c.b + global2.d.b), vec4<i32>(global3.c.c.x, -_wgslsmith_clamp_i32(global2.d.c.x, var_1.x, -1i), ~(~global4.a.c.x), u_input.b.x), vec2<bool>(false, select(global3.e.b.x, true, arg_0.b.x)), !((global2.a.x ^ global3.a.x) >= _wgslsmith_clamp_u32(1u, 70627u, arg_1.a.x))), Struct_1(1i, -244f, max(arg_1.b.c, select(arg_1.b.c, -vec4<i32>(var_1.x, global2.d.a, -4514i, -2147483647i), false)), select(select(!global2.e.b, select(arg_1.b.d, global2.b.d, vec2<bool>(global3.b.e, false)), true), global3.d.d, !select(arg_0.b, vec2<bool>(true, false), global3.c.d)), arg_0.b.x), global3.e);
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(1u, countOneBits(global3.a.x)), 53133u), vec2<u32>(15927u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global3.a.x, 55472u), 39019u)));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, -1168f, arg_1.b.b) + vec3<f32>(-569f, global4.b, 1018f)) - vec3<f32>(arg_1.b.b, global2.e.d, arg_0.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.b, arg_1.b.b, arg_1.b.b))), vec3<f32>(1638f, arg_0.a, global3.b.b), all(global2.c.d)))))), vec3<f32>(global3.d.b, global2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f * global2.e.c) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-828f * -785f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_3) -> i32 {
    var var_0 = Struct_4(~(~_wgslsmith_clamp_vec2_u32(global3.a ^ global2.a, reverseBits(arg_1.a.zy), global2.a)), Struct_1(17546i, arg_1.b.b, global3.c.c, select(select(select(vec2<bool>(false, arg_1.b.e), global2.b.d, true), global4.a.d, vec2<bool>(arg_1.b.d.x, false)), select(global2.e.b, !arg_2.b, false), arg_2.b.x), !(!arg_2.b.x) != (~u_input.a < global2.c.c.x)), global2.d, global2.b, arg_2);
    global3 = Struct_4(global3.a, Struct_1(firstLeadingBit(-abs(-66432i)), _wgslsmith_f_op_f32(f32(-1f) * -1792f), ~var_0.d.c, var_0.d.d, !select(false, arg_1.b.d.x, var_0.c.d.x)), var_0.b, var_0.c, Struct_3(1489f, global2.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b + global3.e.a)), 3272f));
    var var_1 = global4.a.c.xw;
    var var_2 = arg_1.a;
    var var_3 = ~var_1.x;
    return _wgslsmith_mod_i32(11397i, ~global3.d.c.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_4 {
    global2 = Struct_4(countOneBits(select(vec2<u32>(58678u, firstTrailingBit(global2.a.x)), ~countOneBits(global2.a), all(!global4.a.d))), Struct_1(firstLeadingBit(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(-1000f, vec2<bool>(global3.d.e, true), -205f, 2043f), Struct_5(vec4<u32>(global2.a.x, 0u, global2.a.x, 11802u), Struct_1(global4.a.c.x, -2222f, vec4<i32>(8453i, global3.d.a, global4.a.c.x, 22986i), vec2<bool>(false, false), global2.c.e)))), Struct_5(vec4<u32>(global3.a.x, global2.a.x, 1294u, global3.a.x), global2.b), global2.e)), _wgslsmith_f_op_f32(f32(-1f) * -527f), ~reverseBits(global3.d.c), vec2<bool>(true, all(!vec4<bool>(false, global4.a.d.x, arg_0.x, global4.c))), true), Struct_1(20262i, 1146f, vec4<i32>(min(48996i, -27016i), min(0i, u_input.b.x), 1i, 40181i) & -firstTrailingBit(global3.c.c), select(select(global4.a.d, select(global4.a.d, arg_0, arg_0.x), select(global4.a.d, vec2<bool>(global2.c.e, global2.c.d.x), false)), select(vec2<bool>(true, arg_0.x), select(vec2<bool>(false, true), global4.a.d, true), false), true), select(false, true, false)), global3.b, global3.e);
    global0 = ~global4.a.a;
    global1 = array<vec2<f32>, 14>();
    var var_0 = u_input.b.xx;
    var var_1 = vec2<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(45571u, global2.a.x), abs(firstTrailingBit(global2.a.x)))), global2.a.x);
    return Struct_4(global2.a, global2.d, global3.c, global2.b, global3.e);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = global3.c.a;
    var var_1 = -(~(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -6115i, global3.b.a), global2.c.c.xwz)) & -vec3<i32>(9816i, -5063i, arg_0.x)));
    var var_2 = func_2(global4.a.d, global3.c.b);
    let var_3 = false;
    let var_4 = Struct_1(var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f + 844f)), global3.c.c, global4.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1487f * -974f)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 314f)))));
    return !(!select(!(!vec3<bool>(var_3, false, false)), !select(vec3<bool>(global4.a.e, global4.c, var_2.e.b.x), vec3<bool>(var_2.c.e, var_2.b.e, true), vec3<bool>(false, global3.e.b.x, global4.a.e)), vec3<bool>(-2147483647i < var_2.d.a, !global3.d.d.x, true != global4.a.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(global4.c | global3.b.e, global2.c.d.x, global3.d.d.x)), func_1(global4.a.c.wzz >> (abs(vec3<u32>(0u, global3.a.x, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b))), global4.a.d.x);
    var var_1 = Struct_2(global2.b, -490f, global4.c);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.a, vec3<f32>(-171f, global2.d.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b - -470f) * func_2(vec2<bool>(var_2, false), var_1.a.b).e.a)))));
}

