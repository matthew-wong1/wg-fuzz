struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(vec4<i32>(-71791i, 57714i, 1i, -35404i), vec2<f32>(-141f, 1013f), Struct_1(false, vec3<bool>(true, true, false), vec3<bool>(true, true, false), -5532i), vec4<bool>(true, false, false, true))), Struct_4(Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -31376i, -16671i), vec2<f32>(-1075f, -832f), Struct_1(true, vec3<bool>(false, false, true), vec3<bool>(true, false, true), -54568i), vec4<bool>(false, false, false, false))), Struct_4(Struct_2(vec4<i32>(2147483647i, -1i, 1i, 13127i), vec2<f32>(-2303f, 718f), Struct_1(true, vec3<bool>(true, true, false), vec3<bool>(true, false, false), -4908i), vec4<bool>(false, true, true, false))), Struct_4(Struct_2(vec4<i32>(0i, 2147483647i, 1i, 15790i), vec2<f32>(-441f, 1353f), Struct_1(true, vec3<bool>(false, false, false), vec3<bool>(false, false, true), i32(-2147483648)), vec4<bool>(false, true, true, true))), Struct_4(Struct_2(vec4<i32>(1i, i32(-2147483648), -13820i, 7366i), vec2<f32>(-1131f, -1000f), Struct_1(false, vec3<bool>(true, true, false), vec3<bool>(true, false, true), 0i), vec4<bool>(false, false, false, true))), Struct_4(Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 31119i), vec2<f32>(-2406f, -679f), Struct_1(false, vec3<bool>(false, false, false), vec3<bool>(false, false, true), 10918i), vec4<bool>(false, true, false, true))), Struct_4(Struct_2(vec4<i32>(0i, i32(-2147483648), -1i, 1i), vec2<f32>(-277f, 3234f), Struct_1(false, vec3<bool>(false, true, true), vec3<bool>(true, false, false), -10204i), vec4<bool>(false, false, true, true))), Struct_4(Struct_2(vec4<i32>(-30422i, 2147483647i, 0i, 16562i), vec2<f32>(-107f, -943f), Struct_1(false, vec3<bool>(false, true, true), vec3<bool>(false, false, false), 0i), vec4<bool>(true, false, true, true))), Struct_4(Struct_2(vec4<i32>(-48335i, 2147483647i, -1i, -1i), vec2<f32>(-355f, 858f), Struct_1(false, vec3<bool>(false, true, false), vec3<bool>(false, false, true), 13735i), vec4<bool>(true, false, true, false))), Struct_4(Struct_2(vec4<i32>(-16289i, 24213i, -985i, -1i), vec2<f32>(604f, -557f), Struct_1(false, vec3<bool>(true, false, true), vec3<bool>(false, true, false), 30204i), vec4<bool>(true, false, true, true))), Struct_4(Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648)), vec2<f32>(1323f, -796f), Struct_1(false, vec3<bool>(false, true, false), vec3<bool>(true, true, false), i32(-2147483648)), vec4<bool>(false, false, false, true))), Struct_4(Struct_2(vec4<i32>(19818i, -28053i, 31956i, i32(-2147483648)), vec2<f32>(-1000f, 161f), Struct_1(false, vec3<bool>(true, true, false), vec3<bool>(true, true, true), 0i), vec4<bool>(true, false, true, true))), Struct_4(Struct_2(vec4<i32>(0i, -12320i, i32(-2147483648), 1i), vec2<f32>(1062f, -443f), Struct_1(true, vec3<bool>(false, false, false), vec3<bool>(true, true, true), 90039i), vec4<bool>(true, false, false, false))), Struct_4(Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -9500i), vec2<f32>(347f, -640f), Struct_1(true, vec3<bool>(true, false, true), vec3<bool>(true, true, true), 1i), vec4<bool>(true, true, false, false))), Struct_4(Struct_2(vec4<i32>(-14341i, -6356i, i32(-2147483648), 35944i), vec2<f32>(538f, -610f), Struct_1(true, vec3<bool>(false, true, false), vec3<bool>(false, false, false), i32(-2147483648)), vec4<bool>(false, false, false, false))), Struct_4(Struct_2(vec4<i32>(-41443i, 47294i, -21667i, 1i), vec2<f32>(-484f, 567f), Struct_1(true, vec3<bool>(true, true, true), vec3<bool>(true, true, true), 0i), vec4<bool>(false, false, true, true))), Struct_4(Struct_2(vec4<i32>(0i, -5127i, 17156i, 0i), vec2<f32>(-258f, -354f), Struct_1(false, vec3<bool>(true, true, false), vec3<bool>(true, true, true), -3126i), vec4<bool>(false, false, false, true))), Struct_4(Struct_2(vec4<i32>(2147483647i, 9367i, i32(-2147483648), -5376i), vec2<f32>(-855f, 781f), Struct_1(true, vec3<bool>(true, true, true), vec3<bool>(true, true, true), 2147483647i), vec4<bool>(true, false, false, false))), Struct_4(Struct_2(vec4<i32>(2147483647i, 202i, 7619i, -13075i), vec2<f32>(985f, -2867f), Struct_1(false, vec3<bool>(false, false, false), vec3<bool>(false, true, true), -48890i), vec4<bool>(true, true, true, true))), Struct_4(Struct_2(vec4<i32>(0i, i32(-2147483648), -1i, 5823i), vec2<f32>(1430f, 128f), Struct_1(false, vec3<bool>(false, false, false), vec3<bool>(true, false, true), 34975i), vec4<bool>(false, true, false, true))), Struct_4(Struct_2(vec4<i32>(1i, -1i, 8622i, i32(-2147483648)), vec2<f32>(763f, 115f), Struct_1(true, vec3<bool>(false, true, false), vec3<bool>(false, true, true), -11289i), vec4<bool>(false, false, false, false))), Struct_4(Struct_2(vec4<i32>(-33016i, -27034i, -3059i, -27382i), vec2<f32>(-1021f, -659f), Struct_1(false, vec3<bool>(false, false, true), vec3<bool>(false, true, true), -1i), vec4<bool>(true, true, true, false))), Struct_4(Struct_2(vec4<i32>(2147483647i, 1i, 4164i, 0i), vec2<f32>(264f, -724f), Struct_1(false, vec3<bool>(true, true, true), vec3<bool>(true, false, false), -1i), vec4<bool>(true, true, false, false))), Struct_4(Struct_2(vec4<i32>(-1i, -33341i, 1i, -6712i), vec2<f32>(302f, 155f), Struct_1(true, vec3<bool>(true, false, true), vec3<bool>(false, true, true), -23798i), vec4<bool>(true, true, false, true))), Struct_4(Struct_2(vec4<i32>(1i, 0i, -19189i, -1i), vec2<f32>(-112f, -627f), Struct_1(true, vec3<bool>(true, true, false), vec3<bool>(true, false, false), -14782i), vec4<bool>(false, true, false, true))), Struct_4(Struct_2(vec4<i32>(0i, -1i, -35504i, 1i), vec2<f32>(370f, -111f), Struct_1(true, vec3<bool>(true, false, false), vec3<bool>(true, true, true), -64014i), vec4<bool>(false, false, true, true))), Struct_4(Struct_2(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 26296i), vec2<f32>(-1738f, 785f), Struct_1(false, vec3<bool>(true, false, true), vec3<bool>(true, true, false), 2147483647i), vec4<bool>(true, false, false, true))), Struct_4(Struct_2(vec4<i32>(-1i, -1i, -34870i, -34254i), vec2<f32>(-272f, 1000f), Struct_1(false, vec3<bool>(true, false, true), vec3<bool>(false, false, true), -33490i), vec4<bool>(false, false, true, true))), Struct_4(Struct_2(vec4<i32>(22125i, i32(-2147483648), 0i, i32(-2147483648)), vec2<f32>(-1078f, 408f), Struct_1(true, vec3<bool>(false, true, false), vec3<bool>(false, true, false), 11275i), vec4<bool>(false, true, false, false))));

var<private> global2: vec3<i32> = vec3<i32>(-11946i, -28271i, i32(-2147483648));

var<private> global3: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = Struct_5(~52259u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(f32(-1f) * -493f))) * -747f));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    return Struct_3(arg_0, arg_0.c.b, u_input.b.yxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(func_3()))));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_3 {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    let var_1 = _wgslsmith_add_i32(firstLeadingBit(var_0.a.x) & select(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_1, arg_0.c.x), 2147483647i), ~12597i, all(vec2<bool>(arg_0.b.x, arg_0.a.d.x))), -_wgslsmith_mod_i32(-global2.x, 18270i));
    var var_2 = arg_0;
    global2 = vec3<i32>(var_1, (~arg_0.c.x >> (arg_3 % 32u)) ^ 35433i, ~14888i);
    return func_2(arg_0.a, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~var_0.c.d, _wgslsmith_mod_i32(29286i, 1i), ~1i, abs(2147483647i)), vec4<i32>(select(var_0.a.x, global2.x, true), -1i, arg_0.c.x, global2.x)), ~firstLeadingBit(var_2.a.a)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec3<i32> {
    var var_0 = !(!(!arg_0.a.d));
    var var_1 = Struct_5(0u);
    global1 = array<Struct_4, 29>();
    global0 = array<vec4<i32>, 22>();
    global2 = func_2(arg_0.a, vec4<i32>(-1i) * -vec4<i32>(-34537i, ~2147483647i, -4106i, func_2(Struct_2(vec4<i32>(global2.x, -23042i, global2.x, arg_0.a.c.d), arg_0.a.b, arg_0.a.c, vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<i32>(arg_0.c.x, u_input.b.x, -1i, u_input.a.x)).a.c.d)).c;
    return _wgslsmith_clamp_vec3_i32(select(~select(u_input.b.xxz >> (vec3<u32>(var_1.a, 0u, var_1.a) % vec3<u32>(32u)), u_input.a ^ u_input.a, !arg_0.a.d.wyy), -reverseBits(vec3<i32>(arg_0.c.x, -2147483647i, -2147483647i)), !vec3<bool>(true, all(arg_0.a.d.wx), !arg_0.a.c.b.x)), select(vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, -22088i, -2147483647i) >> (_wgslsmith_clamp_u32(43160u, 1u, 0u) % 32u), i32(-1i) * -1i, firstTrailingBit(1253i) & abs(-2147483647i)), u_input.c.wxx, arg_0.b.x), ~(func_2(func_2(arg_0.a, global0[_wgslsmith_index_u32(49411u, 22u)]).a, global0[_wgslsmith_index_u32(~4294967295u, 22u)]).a.a.zxx & -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global2.x, 8689i), vec3<i32>(-13170i, 2147483647i, arg_0.a.c.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec2<bool>(global2.x != -1i, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(global3.x > global3.x, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, true), true), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))));
    var var_1 = 5807i;
    var_0 = false;
    let var_2 = abs(62427u);
    let var_3 = vec3<bool>(true, true, true);
    let var_4 = ~abs(func_4(func_1(Struct_3(Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec2<f32>(global3.x, global3.x), Struct_1(true, var_3, var_3, 2147483647i), vec4<bool>(var_3.x, false, false, true)), vec3<bool>(var_3.x, false, true), vec3<i32>(global2.x, global2.x, -2147483647i), global3.x), _wgslsmith_dot_vec3_i32(u_input.b.wxw, u_input.b.zww), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-643f, global3.x))), var_2), global3.x));
    let var_5 = func_1(func_2(func_1(func_1(Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_2, 22u)], vec2<f32>(-234f, -494f), Struct_1(true, var_3, var_3, var_4.x), vec4<bool>(var_3.x, false, false, var_3.x)), var_3, vec3<i32>(1i, 20725i, -1943i), -1234f), 52397i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1000f)), var_2), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(-1024f, global3.x))), 55651u).a, u_input.c), ~(-1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(step(global3.x, global3.x))), -1564f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1220f, global3.x)), global3.x))), select(1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 28987u, 0u)) << ((vec3<u32>(6353u, 4294967295u, 86390u) ^ vec3<u32>(var_2, 0u, 0u)) % vec3<u32>(32u)), select(vec3<u32>(1u, var_2, var_2), vec3<u32>(16178u, 64987u, 32280u), false) | ~vec3<u32>(49854u, 30753u, 4294967295u)), var_3.x)).a;
    let var_6 = firstTrailingBit(~reverseBits(vec3<u32>(~var_2, ~25004u, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), vec4<f32>(_wgslsmith_f_op_f32(var_5.b.x * global3.x), 1097f, global3.x, -2129f), var_5.b, vec4<f32>(var_5.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(527f))))), var_5.b.x, _wgslsmith_f_op_f32(-var_5.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_5.b.x, var_5.b.x, var_5.b.x))))))));
}

