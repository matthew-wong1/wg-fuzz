struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 29>;

var<private> global2: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global3: vec3<i32> = vec3<i32>(-38520i, -10547i, i32(-2147483648));

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<i32>(29327i, -33566i), -2564f), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), -2146f), Struct_2(vec2<i32>(-33822i, -1i), 1000f), Struct_2(vec2<i32>(2147483647i, 37278i), 815f), Struct_2(vec2<i32>(1i, 44263i), -399f), Struct_2(vec2<i32>(-67470i, -5552i), -769f), Struct_2(vec2<i32>(5418i, 0i), 157f), Struct_2(vec2<i32>(-20505i, 31879i), 2314f), Struct_2(vec2<i32>(1i, -21024i), 279f), Struct_2(vec2<i32>(i32(-2147483648), 41716i), -219f), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), 625f), Struct_2(vec2<i32>(2147483647i, -11668i), 724f), Struct_2(vec2<i32>(-12956i, -44762i), -878f), Struct_2(vec2<i32>(-1i, 7952i), -399f), Struct_2(vec2<i32>(1i, 1i), -1444f), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), 2564f), Struct_2(vec2<i32>(1i, -30267i), -445f), Struct_2(vec2<i32>(-37779i, 16089i), 568f), Struct_2(vec2<i32>(i32(-2147483648), -63541i), -1006f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = vec4<u32>(9278u, u_input.b, ~((37233u ^ u_input.b) | (~u_input.b << (0u % 32u))), ~(~(4294967295u & global0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(sign(global0.b.b));
    var var_2 = -392f;
    let var_3 = 83363u;
    let var_4 = ~global0.a.xz;
    return u_input.a;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.a.x;
    let var_1 = func_3(Struct_1(_wgslsmith_f_op_f32(-global0.b.b), -u_input.a, any(vec2<bool>(true, all(vec4<bool>(false, true, false, true))))));
    global3 = vec3<i32>(-func_3(Struct_1(466f, u_input.a, true)).x ^ select(u_input.a.x, firstLeadingBit(30090i), !any(vec2<bool>(false, true))), countOneBits(var_0), min(-1i, -1i));
    global4 = array<Struct_2, 19>();
    global3 = vec3<i32>(1i, var_0, -17610i);
    return Struct_3(global0.a, global4[_wgslsmith_index_u32(u_input.b, 19u)], global0.d.a, Struct_2(countOneBits(var_1.zz), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1115f - _wgslsmith_f_op_f32(-1141f * global0.d.b))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = Struct_1(-608f, vec3<i32>(_wgslsmith_mult_i32(arg_2.b.x, -49090i), 55404i, arg_2.b.x), true);
    global0 = arg_3;
    var var_1 = arg_2;
    var var_2 = 1i;
    return !arg_2.c || !any(!vec4<bool>(var_1.c, arg_2.c, false, arg_0.x));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    global4 = array<Struct_2, 19>();
    let var_0 = select(vec4<bool>(!(!select(false, true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), true)), vec4<bool>(!func_4(vec4<bool>(true, true, true, true), Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), global0.d, vec2<i32>(-26503i, global0.d.a.x), global0.b), Struct_1(-598f, vec3<i32>(u_input.a.x, global3.x, global3.x), false), func_2()), select(false, true, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.x, 29u)]) > -823f), true, func_4(vec4<bool>(true, true, global0.d.b >= 233f, true), Struct_3(global0.a, Struct_2(global0.d.a, arg_0.x), global3.yz, Struct_2(vec2<i32>(global0.d.a.x, global0.c.x), -780f)), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 29u)]), u_input.a, false), Struct_3(vec3<u32>(global0.a.x, 42366u, global0.a.x) ^ vec3<u32>(1u, 4294967295u, 1u), global4[_wgslsmith_index_u32(u_input.b, 19u)], global0.c, func_2().b))));
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(25952u, 29u)], -304f)), -1000f)))));
    let var_3 = ~(~vec3<u32>(firstTrailingBit(max(u_input.b, global0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.a.x), ~global0.a.xz), u_input.b | func_2().a.x));
    return select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(any(var_0.zy), func_4(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_3(vec3<u32>(u_input.b, 1u, var_3.x), Struct_2(u_input.a.yz, 1100f), u_input.a.yx, global4[_wgslsmith_index_u32(18808u, 19u)]), Struct_1(-1330f, vec3<i32>(-2147483647i, global0.b.a.x, 2147483647i), true), func_2()) & !select(var_0.x, true, var_0.x), max(~u_input.b, min(u_input.b, 0u)) == 22961u), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), firstTrailingBit(1u)), 15u)]);
}

fn func_5(arg_0: vec3<bool>) -> f32 {
    global1 = array<f32, 29>();
    global4 = array<Struct_2, 19>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 29u)] * global1[_wgslsmith_index_u32(32429u, 29u)]), _wgslsmith_f_op_f32(-global0.d.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1517f - _wgslsmith_f_op_f32(step(1116f, global0.d.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-139f, global0.d.b, false)))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: u32) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.xz), _wgslsmith_f_op_f32(-arg_1));
    global4 = array<Struct_2, 19>();
    global3 = _wgslsmith_div_vec3_i32(abs(u_input.a), u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(global0.b.b - global0.b.b))), -(~min(abs(vec3<i32>(global0.c.x, 0i, var_0.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, var_0.a.x, -1280i), vec3<i32>(var_0.a.x, -1i, var_0.a.x)))), !all(vec2<bool>(true, true)));
    global4 = array<Struct_2, 19>();
    return StorageBuffer(vec3<f32>(1437f, _wgslsmith_f_op_f32(-arg_1), 1335f), abs(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 15>();
    global4 = array<Struct_2, 19>();
    global1 = array<f32, 29>();
    var var_0 = _wgslsmith_clamp_vec2_u32(global0.a.xx, abs(global0.a.yz), ~vec2<u32>(global0.a.x, countOneBits(1u)));
    global2 = array<vec3<bool>, 15>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) + global0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 29u)], 402f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-760f, global0.d.b), vec2<f32>(global0.b.b, 911f))))), _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b, 122f, -1012f))))), 247f, global0.a.x);
}

