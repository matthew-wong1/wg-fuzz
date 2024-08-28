struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1386f, 289f, -213f, -660f), vec4<f32>(-1965f, 2029f, 329f, 249f), vec4<f32>(-175f, 502f, -518f, -973f), vec4<f32>(-349f, -426f, 847f, 522f), vec4<f32>(-1379f, 1772f, 1269f, 677f), vec4<f32>(-1348f, -1000f, 1605f, 248f), vec4<f32>(-1000f, 1059f, 851f, -859f), vec4<f32>(-951f, 887f, -1667f, 696f), vec4<f32>(1714f, 1008f, -550f, 326f), vec4<f32>(-901f, -3124f, 924f, -1168f), vec4<f32>(-665f, 1127f, 545f, -1000f), vec4<f32>(269f, 186f, 414f, 1651f), vec4<f32>(1453f, -1729f, 714f, 1010f), vec4<f32>(-1000f, 505f, -1192f, -1542f), vec4<f32>(778f, 1000f, 533f, -542f), vec4<f32>(-581f, 355f, 1085f, -1105f), vec4<f32>(1000f, 895f, 1745f, 1282f), vec4<f32>(-549f, 515f, 962f, 645f), vec4<f32>(1894f, -2331f, 377f, -1560f), vec4<f32>(-469f, -621f, 704f, -1108f), vec4<f32>(-1389f, 108f, -676f, 224f), vec4<f32>(128f, 585f, 1000f, 237f), vec4<f32>(190f, -738f, -828f, -2020f), vec4<f32>(1000f, 751f, 1703f, -358f));

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), -1000f, vec4<bool>(false, true, true, true), vec4<f32>(-871f, 1005f, 211f, -329f), 0i);

var<private> global3: bool = false;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<f32> {
    var var_0 = firstLeadingBit(select(1u, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(151538u, u_input.a), vec2<u32>(u_input.a, 1u))), global2.b > _wgslsmith_f_op_f32(-global2.d.x)));
    global2 = Struct_1(!global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 1304f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(753f)), _wgslsmith_f_op_f32(round(1673f)))), -1074f, false != global2.a.x))), select(select(vec4<bool>(global2.a.x && global2.c.x, any(global2.a.yxx), global2.e <= -1i, select(false, false, global2.c.x)), global2.c, !(!vec4<bool>(global2.c.x, global2.a.x, false, global2.a.x))), vec4<bool>(global2.a.x, true && (global2.c.x & false), any(vec4<bool>(false, global2.c.x, global2.c.x, false)) || global2.c.x, !global2.a.x == select(global2.a.x, true, global2.c.x)), !any(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true))), global2.d, arg_1);
    global3 = any(vec3<bool>(false && global2.c.x, 1066f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-590f - -450f), global2.b), all(global2.a.wy) && !(!global2.a.x)));
    global2 = Struct_1(global2.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.d.x)) + _wgslsmith_f_op_f32(abs(1216f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -155f)) - -669f))), select(global2.c, select(global2.c, vec4<bool>(all(vec2<bool>(global2.c.x, false)), true, !global2.c.x, true), select(!global2.c, global2.c, !global2.c.x)), select(!global2.c, !select(vec4<bool>(false, global2.a.x, true, true), global2.a, true), global2.c.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * global2.d.x)), -1088f, _wgslsmith_f_op_f32(max(arg_0, global2.b))), vec4<f32>(-1065f, _wgslsmith_f_op_f32(step(-239f, _wgslsmith_f_op_f32(floor(global2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + global2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.d.x, global2.b)), _wgslsmith_f_op_f32(max(-522f, 222f)))))), 1i);
    global3 = true;
    return global2.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = ~(vec2<u32>(firstTrailingBit(~arg_0.x), ~abs(1u)) << (~((vec2<u32>(arg_2, u_input.a) >> (arg_0.yy % vec2<u32>(32u))) | vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u)));
    var var_1 = Struct_1(global2.a, arg_3, global2.c, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -213f), -1i)), global2.e);
    var var_2 = 3154u;
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(var_1.b - 1000f)), _wgslsmith_f_op_f32(-arg_3))))), global2.a, vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1.d.x, u_input.d)).x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), -220f, any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(step(325f, 1f))), _wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.e.yw));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> bool {
    var var_0 = all(!vec4<bool>(any(global2.a) || arg_2, false, false, arg_2 & !global2.c.x));
    global2 = func_2(select(vec3<u32>(firstLeadingBit(4294967295u) >> (firstTrailingBit(u_input.a) % 32u), 0u, ~(~14032u)), vec3<u32>(u_input.a, u_input.a, 1u), arg_2), vec2<bool>(arg_2, global2.a.x), max(~40415u, u_input.a), global2.b);
    var var_1 = func_2(~vec3<u32>(firstLeadingBit(max(26884u, 0u)), ~0u, select(13944u, u_input.a << (54173u % 32u), !arg_2)), vec2<bool>(!(arg_2 && true), arg_2), firstTrailingBit(~(u_input.a ^ u_input.a)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 96731u), vec2<u32>(u_input.a, u_input.a), false), min(vec2<u32>(u_input.a, 5639u), vec2<u32>(0u, 4294967295u))), 0u) % 32u), 1422f).c;
    global0 = array<vec4<f32>, 24>();
    var var_2 = Struct_3(Struct_2(vec2<i32>(max(2147483647i, 26637i), func_2(vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(arg_2, false), 89651u, 498f).e) & (~vec2<i32>(global2.e, -91984i) << (vec2<u32>(44343u, u_input.a) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, 13480i, 2147483647i, -20743i), -u_input.e), _wgslsmith_div_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -24439i, 1i, -18700i), u_input.e))), u_input.d), arg_1, Struct_1(!global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), global2.c, global2.d, u_input.d), Struct_2(-vec2<i32>(-2147483647i, _wgslsmith_mult_i32(global2.e, u_input.d))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(u_input.c.zz), ~(vec2<i32>(_wgslsmith_add_i32(global2.e, global2.e), i32(-1i) * -34762i) & firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.c.zz, u_input.c.zz))), (vec2<i32>(-1i) * -u_input.e.wy) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 65978u)), u_input.a) % vec2<u32>(32u)), Struct_1(select(vec4<bool>(true, func_1(vec4<f32>(global2.d.x, -1629f, global2.d.x, global2.b), u_input.e.ww, global2.a.x), all(global2.a), true), global2.c, global2.c.x == global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)) - global2.b), select(vec4<bool>(func_2(vec3<u32>(u_input.a, 0u, u_input.a), global2.c.yw, 2496u, global2.b).c.x, any(global2.c), global2.c.x, global2.c.x), global2.a, all(global2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), global2.d.x, global2.b, 1244f) + vec4<f32>(_wgslsmith_f_op_f32(882f - 873f), global2.b, global2.b, _wgslsmith_f_op_f32(global2.d.x - -409f))), global2.e), Struct_2(vec2<i32>(38069i, global2.e)));
    let var_1 = Struct_2(-(~abs(var_0.c) ^ _wgslsmith_mod_vec2_i32(u_input.c.yy, vec2<i32>(-2147483647i, -439i))));
    let x = u_input.a;
    s_output = StorageBuffer(-4440i);
}

