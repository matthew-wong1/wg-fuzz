struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

var<private> global1: bool = false;

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(1000f, -821f, -330f, -777f), vec4<f32>(1000f, -366f, -1057f, -532f), vec4<f32>(1398f, -288f, -1024f, 913f), vec4<f32>(-1239f, -426f, 169f, 892f), vec4<f32>(155f, -798f, -1073f, 2108f), vec4<f32>(1000f, 1765f, 437f, -1235f), vec4<f32>(-487f, 526f, -765f, -283f), vec4<f32>(368f, 435f, 1000f, 1000f), vec4<f32>(-1239f, 1000f, -1476f, -342f), vec4<f32>(-562f, 419f, 1625f, 377f), vec4<f32>(-748f, -1727f, 920f, 896f), vec4<f32>(563f, 1149f, 217f, 114f), vec4<f32>(-640f, 946f, -619f, 145f), vec4<f32>(-1346f, -393f, 493f, -968f), vec4<f32>(-1071f, 127f, -181f, -1369f), vec4<f32>(174f, 1000f, -588f, 295f), vec4<f32>(719f, -1029f, -1000f, 438f), vec4<f32>(-1231f, -1950f, 1032f, 655f), vec4<f32>(-1000f, -730f, 1834f, 969f), vec4<f32>(3031f, 965f, 272f, -796f), vec4<f32>(-1018f, 1190f, 1000f, -167f), vec4<f32>(1022f, 882f, 420f, 865f), vec4<f32>(819f, 1272f, 500f, -684f), vec4<f32>(-519f, -390f, 362f, 447f), vec4<f32>(-1552f, -928f, 229f, -1320f), vec4<f32>(-620f, -501f, -486f, 446f), vec4<f32>(458f, -983f, 1023f, -480f), vec4<f32>(-127f, 1634f, -436f, -1903f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e, u_input.d), 11043u), 28u)];
    var var_1 = reverseBits(countOneBits(select(~firstTrailingBit(vec2<u32>(u_input.a, u_input.e)), abs(vec2<u32>(76086u, 12464u) | vec2<u32>(1u, u_input.e)), !arg_2.xz)));
    global3 = array<vec4<f32>, 28>();
    var var_2 = abs(-vec2<i32>(~u_input.c, 1i));
    var var_3 = i32(-1i) * -2147483647i;
    return arg_1;
}

fn func_2() -> f32 {
    global3 = array<vec4<f32>, 28>();
    global1 = true;
    global1 = any(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(func_3(false, vec3<bool>(true, true, true), vec4<bool>(true, false, false, false)), vec3<bool>(true, true, true), false)), !vec3<bool>(true, true, any(vec2<bool>(false, true))), true));
    global2 = global3[_wgslsmith_index_u32(4294967295u, 28u)];
    global0 = array<Struct_5, 7>();
    return global2.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = 0i;
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), 125f, 1581f, global2.x));
    var_1 = countOneBits(2147483647i);
    var var_3 = !(!(!(!(!vec4<bool>(false, arg_2, true, false)))));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(any(select(vec4<bool>(true, arg_1.a.b, arg_3.a.b, arg_1.a.b), select(select(vec4<bool>(arg_3.a.b, arg_1.a.b, arg_1.a.b, true), vec4<bool>(false, true, arg_1.a.b, true), vec4<bool>(false, arg_1.a.b, true, arg_1.a.b)), vec4<bool>(false, true, arg_3.a.b, arg_1.a.b), false), all(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_3.a.b, arg_1.a.b), vec3<bool>(false, arg_1.a.b, arg_3.a.b))))), arg_1.a, -1416f, Struct_2(select(~(-1i), arg_3.a.c, all(!vec4<bool>(true, true, arg_3.a.b, true))), true, arg_3.a.a, ~vec4<u32>(arg_1.a.d.x | arg_3.a.d.x, u_input.d, 82797u, func_1(vec3<i32>(-1i, u_input.c, arg_1.a.c), u_input.e, arg_1.a.b))), !vec4<bool>(arg_3.a.b, arg_3.a.b, arg_1.a.b, any(!vec3<bool>(true, false, arg_1.a.b))));
    var var_1 = _wgslsmith_sub_vec3_u32(select(select(arg_3.a.d.zxw, vec3<u32>(u_input.e, arg_3.a.d.x, 4294967295u) | arg_3.a.d.zyx, false), vec3<u32>(1u, 1u, 1u), !var_0.e.x) << (_wgslsmith_mod_vec3_u32(~reverseBits(arg_1.a.d.xzw), _wgslsmith_add_vec3_u32(arg_1.a.d.www, vec3<u32>(arg_1.a.d.x, 72504u, 1u) << (arg_1.a.d.yxx % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<u32>(arg_0, 6989u, arg_1.a.d.x));
    var_0 = Struct_4(arg_3.a.b, Struct_2(-u_input.c, _wgslsmith_dot_vec4_u32(~arg_1.a.d, firstTrailingBit(vec4<u32>(arg_1.a.d.x, arg_1.a.d.x, arg_0, 0u))) < max(func_1(vec3<i32>(var_0.d.a, 4402i, -25853i), 0u, var_0.d.b), 4294967295u), arg_1.a.a, firstTrailingBit(vec4<u32>(1u, 16993u, 0u, arg_1.a.d.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.d.d.x, arg_0, arg_0), vec4<u32>(arg_1.a.d.x, arg_0, 1u, 25352u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1036f, 910f)))), arg_1.a, vec4<bool>(false, true, (min(arg_3.a.d.x, 596u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, 0u), vec3<u32>(u_input.a, var_0.b.d.x, arg_3.a.d.x))) | false, false));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.b.d.zyx, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, select(arg_1.a.d.x, u_input.e, var_0.a), _wgslsmith_add_u32(arg_3.a.d.x, 14544u)), ~vec3<u32>(28499u, var_1.x, var_1.x) << (~vec3<u32>(arg_0, 31616u, 27087u) % vec3<u32>(32u)))), var_0.b.d.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global2.x, arg_2))))))));
    return Struct_4(!arg_1.a.b, arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f - global2.x)), var_0.d, !vec4<bool>(!(arg_3.a.b & arg_1.a.b), any(var_0.e) || true, !all(var_0.e), all(select(vec2<bool>(var_0.e.x, arg_3.a.b), vec2<bool>(false, arg_3.a.b), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(firstLeadingBit(~vec3<i32>(-26883i, -1i, 14613i)), 1u, false), Struct_3(Struct_2(abs(1550i), !func_3(true, vec3<bool>(false, true, false), vec4<bool>(false, false, false, false)).x, -5058i, max(abs(vec4<u32>(u_input.a, u_input.e, 10601u, u_input.d)), abs(vec4<u32>(u_input.d, u_input.a, u_input.e, u_input.a))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(global2.x, global2.x)))) - _wgslsmith_f_op_f32(ceil(global2.x))))), Struct_3(Struct_2(u_input.b, !all(vec3<bool>(false, true, false)), -2147483647i, firstTrailingBit(~vec4<u32>(u_input.e, 4294967295u, u_input.a, 14703u)))));
    let var_1 = all(select(vec3<bool>(var_0.e.x, all(select(vec4<bool>(var_0.e.x, false, true, true), var_0.e, false)), var_0.a), select(var_0.e.yyw, !var_0.e.xzw, vec3<bool>(true, false, true)), !vec3<bool>(var_0.b.b, !var_0.b.b, global2.x < global2.x)));
    let var_2 = Struct_2(_wgslsmith_mod_i32(select(-2147483647i, -2147483647i, var_0.b.b), u_input.c), false, u_input.c, ~_wgslsmith_sub_vec4_u32(var_0.d.d, select(countOneBits(var_0.b.d), ~var_0.b.d, select(vec4<bool>(false, true, false, true), vec4<bool>(var_1, true, var_0.d.b, var_0.d.b), vec4<bool>(true, var_1, var_1, false)))));
    global1 = func_3(select(true, true, !(!(true || var_1))), var_0.e.wyz, !var_0.e).x;
    let var_3 = func_4(_wgslsmith_dot_vec3_u32(var_0.d.d.zww, countOneBits(~vec3<u32>(12741u, 1u, u_input.e))), Struct_3(var_0.d), var_0.c, Struct_3(func_4(20850u, Struct_3(var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), -1410f)), Struct_3(var_0.d)).d)).b;
    var var_4 = var_1;
    var var_5 = Struct_1(~_wgslsmith_mod_u32(var_0.d.d.x, ~(~u_input.e)));
    global3 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.d.zw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global2.x, 658f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), vec3<i32>(var_3.a, var_2.c, var_0.b.a), _wgslsmith_div_i32(~_wgslsmith_sub_i32(select(1i, -3975i, false), var_3.a), -2147483647i), var_3.a);
}

