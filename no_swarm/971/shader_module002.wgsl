struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: Struct_2 = Struct_2(4294967295u, vec4<u32>(53697u, 0u, 64822u, 1u), 2147483647i, Struct_1(true, vec3<i32>(2147483647i, 25399i, -1i), 0i, 13132u), Struct_1(false, vec3<i32>(-2549i, 4825i, 4671i), -1927i, 17658u));

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(213f, -751f, 1177f, 1573f), vec4<f32>(-1191f, -917f, -1000f, 432f), vec4<f32>(-831f, -856f, -1168f, 117f), vec4<f32>(-1000f, 1000f, 1679f, 1000f), vec4<f32>(-202f, 1180f, 1429f, 1000f), vec4<f32>(-836f, 1528f, 600f, -556f), vec4<f32>(-335f, -1019f, 1743f, 169f), vec4<f32>(503f, -242f, 1421f, 1000f), vec4<f32>(412f, -362f, -324f, 503f), vec4<f32>(-938f, 811f, 362f, 578f), vec4<f32>(-2307f, -468f, 573f, 889f), vec4<f32>(699f, 703f, 1932f, 1086f), vec4<f32>(-1036f, -1234f, -590f, -795f), vec4<f32>(1185f, 278f, 1000f, -1136f), vec4<f32>(-354f, 605f, -1506f, -666f), vec4<f32>(-668f, -380f, 833f, -527f), vec4<f32>(-333f, 446f, -743f, 797f), vec4<f32>(-2029f, 817f, 1117f, -157f), vec4<f32>(273f, -117f, -1447f, 2574f), vec4<f32>(534f, 1451f, 531f, 2385f), vec4<f32>(-535f, -603f, -1000f, -361f), vec4<f32>(-710f, 1219f, -745f, -1000f), vec4<f32>(-750f, 2005f, 1289f, -286f), vec4<f32>(-587f, -1976f, 196f, -964f), vec4<f32>(-818f, -1272f, -154f, -1066f), vec4<f32>(-745f, -1753f, 194f, -1085f), vec4<f32>(-767f, -1369f, 102f, -929f), vec4<f32>(-1739f, -1293f, 564f, 2093f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> bool {
    var var_0 = global1.d.c;
    let var_1 = true;
    global1 = Struct_2(0u, vec4<u32>(1u, ~(~1u), ~(~0u & (u_input.b.x ^ 4294967295u)), ~0u), -2147483647i, global1.d, global1.e);
    var_0 = -33982i;
    return var_1 && false;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_3.d;
    var var_1 = _wgslsmith_f_op_f32(round(1f));
    var var_2 = Struct_2(40834u, firstLeadingBit(~u_input.b), global1.e.b.x, var_0, Struct_1(global0[_wgslsmith_index_u32(global1.a, 11u)], vec3<i32>(_wgslsmith_clamp_i32(-1i, arg_3.c, 41715i), _wgslsmith_add_i32(arg_1.b.x, -29348i), arg_3.d.b.x) >> (arg_3.b.wzz % vec3<u32>(32u)), -25911i, arg_2.d.d & abs(min(63496u, 51663u))));
    var var_3 = 75800u | global1.e.d;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 231f)), 214f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f * _wgslsmith_div_f32(1294f, 2186f)))));
    return var_2.d.b.zy;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(func_3(vec3<bool>(global1.e.a, arg_1.a, func_2()), arg_1, Struct_2(_wgslsmith_mod_u32(12900u, 6933u), u_input.b, global1.d.c, global1.d, Struct_1(true, vec3<i32>(59393i, arg_1.b.x, -45005i) << (vec3<u32>(0u, 1u, 11257u) % vec3<u32>(32u)), ~0i, 57935u)), Struct_2(1u, ~vec4<u32>(u_input.b.x, u_input.a, arg_1.d, 88187u) << (min(vec4<u32>(1u, u_input.a, 0u, 0u), vec4<u32>(arg_1.d, arg_1.d, 69804u, u_input.a)) % vec4<u32>(32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -1i, -4410i), vec4<i32>(arg_0.x, arg_1.b.x, arg_0.x, arg_1.c)), arg_1, Struct_1(true, global1.e.b & vec3<i32>(global1.e.c, 1i, -40673i), ~18672i, 24316u))), select(_wgslsmith_sub_vec2_i32(reverseBits(global1.d.b.yz) | (arg_1.b.xz ^ global1.e.b.zz), max(_wgslsmith_div_vec2_i32(global1.d.b.xz, vec2<i32>(893i, -15721i)), countOneBits(vec2<i32>(global1.c, -38187i)))), vec2<i32>(~arg_1.b.x, arg_1.b.x & ~arg_1.b.x), !vec2<bool>(global1.d.a, any(vec4<bool>(global1.d.a, global1.d.a, arg_1.a, true)))));
    var var_1 = ~firstTrailingBit(4294967295u);
    var var_2 = global1.e;
    var var_3 = Struct_2(var_2.d, u_input.b, 1i, global1.d, arg_1);
    let var_4 = -1066f;
    return Struct_2(var_3.a, vec4<u32>(reverseBits(_wgslsmith_div_u32(abs(0u), ~var_2.d)), reverseBits(0u), var_2.d, 73657u), -56543i, var_3.d, Struct_1(arg_1.a, firstLeadingBit(vec3<i32>(0i, -9701i, -17006i) ^ ~var_3.e.b), arg_1.b.x, 28352u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_f32(ceil(-1203f));
    var var_1 = func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-9366i, reverseBits(global1.e.b.x)) >> (_wgslsmith_sub_vec2_u32(global1.b.zx, vec2<u32>(u_input.b.x, u_input.a) ^ vec2<u32>(u_input.b.x, 1188u)) % vec2<u32>(32u)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.c, 46200i), vec2<i32>(global1.d.c, 5624i))) ^ vec2<i32>(~global1.e.c, 1i)), global1.d);
    global2 = array<vec4<f32>, 28>();
    var var_2 = func_1(-vec2<i32>(72534i, 1i), Struct_1(func_2(), vec3<i32>(_wgslsmith_sub_i32(-var_1.e.b.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.c, 1i, 0i, 55129i), vec4<i32>(var_1.e.b.x, -18758i, -60927i, 5744i)), _wgslsmith_mod_i32(-23192i, min(var_1.c, 1i))), -(-9724i | var_1.c) | -11947i, ~_wgslsmith_mult_u32(global1.a, 41790u))).d;
    var var_3 = ~abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.d.d, u_input.b.x, var_2.d, u_input.b.x), vec4<u32>(0u, var_2.d, 4294967295u, 56452u))) | ~reverseBits(global1.b));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0), -929f) + _wgslsmith_f_op_f32(select(var_0, 224f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0)), 515f, false))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1151f, -1243f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1424f, -705f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * -543f))), _wgslsmith_f_op_f32(514f - -607f)), vec3<bool>(true, false, _wgslsmith_mult_u32(1u, 1u) <= u_input.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 1281f, var_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1414f, var_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, 352f, -456f), vec3<f32>(var_0, -792f, var_0))))), select(select(select(vec3<bool>(var_1.d.a, false, var_1.e.a), vec3<bool>(global0[_wgslsmith_index_u32(30101u, 11u)], global1.e.a, true), vec3<bool>(true, global0[_wgslsmith_index_u32(3072u, 11u)], global1.d.a)), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(24463u, 11u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, var_2.a)), !vec3<bool>(global1.e.a, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.xx, -firstTrailingBit(select(-vec4<i32>(global1.d.b.x, global1.c, 0i, 0i), max(vec4<i32>(global1.d.b.x, global1.c, -39198i, var_1.e.b.x), vec4<i32>(global1.d.c, global1.e.c, -40440i, var_2.b.x)), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(18666u, 11u)], global1.d.a, var_2.a), vec4<bool>(var_2.a, false, true, var_1.d.a)))), global1.e.b, min(vec4<u32>(73694u, abs(~10334u), _wgslsmith_mod_u32(global1.d.d, var_3.x) | var_1.e.d, _wgslsmith_mod_u32(17680u, var_3.x ^ 27434u)), global1.b), 634f);
}

