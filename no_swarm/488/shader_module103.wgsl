struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<u32> = vec4<u32>(15750u, 1u, 1u, 4294967295u);

var<private> global2: array<i32, 30>;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-235f, 1567f, -431f), vec3<f32>(420f, 104f, 1478f), vec3<f32>(114f, -130f, 281f), vec3<f32>(824f, -197f, 291f), vec3<f32>(-877f, 369f, 1304f), vec3<f32>(-1260f, -1841f, 308f), vec3<f32>(175f, 498f, -1721f), vec3<f32>(1591f, -1255f, -102f), vec3<f32>(-1000f, -1000f, 575f), vec3<f32>(-357f, -851f, -1748f), vec3<f32>(336f, -1378f, -1000f), vec3<f32>(366f, 819f, 730f), vec3<f32>(-741f, 1000f, -250f), vec3<f32>(1725f, 968f, -663f), vec3<f32>(-666f, 1447f, -176f), vec3<f32>(269f, -222f, -346f), vec3<f32>(-1752f, 552f, -1000f), vec3<f32>(870f, -412f, -1470f), vec3<f32>(527f, 297f, 866f), vec3<f32>(1212f, 1923f, -844f), vec3<f32>(-575f, -1205f, 1000f), vec3<f32>(106f, 1000f, -129f), vec3<f32>(1677f, 2239f, -1409f), vec3<f32>(1602f, 2607f, 1205f), vec3<f32>(163f, -1421f, 922f));

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.a;
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-634f, arg_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1943f + _wgslsmith_f_op_f32(round(arg_0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(step(-361f, -323f))) + _wgslsmith_f_op_f32(arg_0.d - -154f))));
    let var_1 = true;
    global0 = reverseBits(vec3<u32>(arg_0.c, ~global1.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x | 57171u, countOneBits(arg_0.e.x)), 1u)));
    var var_2 = Struct_3(!select(select(select(vec3<bool>(true, true, var_1), arg_0.b.zxz, true), arg_0.b.zxw, false), select(vec3<bool>(arg_0.b.x, false, false), arg_0.b.yww, false), vec3<bool>(global0.x >= arg_0.c, var_1, !arg_0.b.x)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-146f * -679f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-238f, arg_0.d))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1223f, 602f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 230f))))), 20104u, vec2<bool>(!(global4.x && all(vec3<bool>(arg_0.b.x, var_1, arg_0.b.x))), arg_0.a != arg_0.d));
    return 70762u;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global1 = countOneBits(u_input.a);
    let var_0 = u_input.a;
    var var_1 = Struct_1(-1000f, !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, arg_1.a.x), vec4<bool>(false, global4.x, arg_0.c.a.x, arg_0.c.d.x)), vec4<bool>(!arg_1.d.x, arg_1.d.x, !arg_1.d.x, global4.x), arg_0.c.d.x), ((_wgslsmith_div_u32(10037u, var_0.x) >> (countOneBits(arg_0.c.c) % 32u)) << (func_3(Struct_1(1000f, vec4<bool>(true, arg_1.a.x, true, false), global0.x, arg_0.e, var_0)) % 32u)) | _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(26540u, 8740u, global0.x), global1.wxw, vec3<bool>(arg_1.a.x, arg_0.a.d.x, true))), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(21937u, var_0.x, global1.x), vec3<u32>(global0.x, arg_0.c.c, u_input.a.x)), ~vec3<u32>(global1.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(global1.zxw, var_0.ywy))), arg_0.d.b.b.x, min(var_0, abs(min(vec4<u32>(var_0.x, 4294967295u, arg_1.c, 4294967295u), vec4<u32>(var_0.x, 0u, var_0.x, u_input.a.x)) >> (~vec4<u32>(global1.x, 0u, arg_1.c, 10787u) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(var_1.c, 25u)])))))), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(arg_1.c, 25u)])));
    global0 = (vec3<u32>(~_wgslsmith_sub_u32(arg_1.c, 3563u), _wgslsmith_mod_u32(arg_1.c, 1u), ~_wgslsmith_mult_u32(arg_1.c, 52714u)) << (vec3<u32>(~var_1.e.x, 37021u, ~43230u) % vec3<u32>(32u))) >> (~var_1.e.yxy % vec3<u32>(32u));
    return -1721f;
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global2 = array<i32, 30>();
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(238f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(arg_0, Struct_2(-580f, vec2<f32>(364f, -915f)), 1u, vec2<bool>(global4.x, true)), global0.x, Struct_3(vec3<bool>(arg_0.x, global4.x, false), Struct_2(1452f, vec2<f32>(109f, -109f)), u_input.a.x, global4.xx), Struct_3(vec3<bool>(arg_0.x, global4.x, false), Struct_2(373f, vec2<f32>(332f, 1450f)), 1u, arg_0.yz), 367f), Struct_3(vec3<bool>(true, true, global4.x), Struct_2(1287f, vec2<f32>(524f, 807f)), 2583u, arg_0.yy)))))), 1472f, -408f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(var_1.yx));
    global3 = array<vec3<f32>, 25>();
    return Struct_4(Struct_3(arg_0, Struct_2(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(vec3<bool>(true, false, global4.x), Struct_2(1059f, vec2<f32>(-785f, 136f)), global0.x, vec2<bool>(arg_0.x, false)), 0u, Struct_3(vec3<bool>(false, global4.x, false), Struct_2(var_1.x, vec2<f32>(var_2.x, var_2.x)), global0.x, vec2<bool>(arg_0.x, true)), Struct_3(vec3<bool>(arg_0.x, true, false), Struct_2(var_1.x, var_1.zz), global1.x, arg_0.zz), 1871f), Struct_3(vec3<bool>(false, arg_0.x, true), Struct_2(var_1.x, var_1.zx), 0u, global4.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -1223f))))), ~(~countOneBits(global0.x)), !(!(!global4.xz))), _wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(global0.x), 0u), ~54398u), Struct_3(select(!arg_0, arg_0, _wgslsmith_f_op_f32(round(var_1.x)) != _wgslsmith_f_op_f32(select(-815f, 958f, true))), Struct_2(_wgslsmith_div_f32(-1910f, _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.yy), _wgslsmith_f_op_vec2_f32(-var_2)))), global1.x, select(global4.xx, vec2<bool>(true, true), select(var_1.x < var_2.x, var_2.x >= 1000f, true))), Struct_3(vec3<bool>(!(global1.x > 1u), _wgslsmith_f_op_f32(-var_2.x) <= var_2.x, -global2[_wgslsmith_index_u32(64698u, 30u)] > -2147483647i), Struct_2(var_2.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2 + vec2<f32>(963f, var_1.x)), vec2<f32>(var_2.x, var_2.x)))), global1.x, global4.zx), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -3021f)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    global3 = array<vec3<f32>, 25>();
    let var_0 = firstTrailingBit(vec3<u32>(62637u, 4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, global0.x, global1.x, 42054u)), ~vec4<u32>(19918u, arg_0.d.c, 0u, global1.x)))) & countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.c, global0.x, 16562u) | u_input.a.xxz, global1.xxx));
    global3 = array<vec3<f32>, 25>();
    let var_1 = Struct_4(func_1(vec3<bool>(arg_0.d.a.x, select(-1i, 0i, false) > _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(var_0.x, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)]), func_1(arg_0.c.a).a.d.x)).d, 4294967295u, Struct_3(!vec3<bool>(arg_0.d.d.x || arg_0.c.d.x, all(vec4<bool>(arg_0.d.d.x, global4.x, false, true)), global1.x == var_0.x), Struct_2(_wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(step(-1000f, 447f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1091f, arg_3.x))))), ~global1.x, arg_0.c.a.yy), func_1(!func_1(arg_0.d.a).c.a).a, _wgslsmith_f_op_f32(f32(-1f) * -1059f));
    var var_2 = arg_1;
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global3[_wgslsmith_index_u32(4294967295u, 25u)], vec4<f32>(1f, 1f, 1f, 1f), func_4(func_1(select(vec3<bool>(false, true, global4.x), select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, global4.x, global4.x)), vec3<bool>(false, true, true))), max(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-27933i, 2147483647i, -104284i), vec3<i32>(33592i, global2[_wgslsmith_index_u32(503u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)])), -vec3<i32>(global2[_wgslsmith_index_u32(17656u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], 0i)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(33923i, -1i, global2[_wgslsmith_index_u32(global0.x, 30u)]), vec3<i32>(7444i, global2[_wgslsmith_index_u32(872u, 30u)], -1i)))), -840f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-923f + 716f), _wgslsmith_f_op_f32(557f + -440f), -932f, _wgslsmith_f_op_f32(f32(-1f) * -234f))))), countOneBits(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(min(firstTrailingBit(646u), abs(global1.x)), 30u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 30u)], reverseBits(0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1220f, -1000f)))))));
    global3 = array<vec3<f32>, 25>();
    var var_1 = vec3<bool>(!select(true, all(vec4<bool>(global4.x, global4.x, global4.x, false)), true), !(_wgslsmith_div_f32(var_0.b.x, 731f) <= 559f), false);
    global3 = array<vec3<f32>, 25>();
    let var_2 = var_0.d;
    global4 = !(!select(vec3<bool>(true, true, true), func_1(!vec3<bool>(var_1.x, var_1.x, false)).a.a, func_1(select(vec3<bool>(global4.x, true, var_1.x), vec3<bool>(var_1.x, true, true), vec3<bool>(global4.x, var_1.x, false))).d.d.x));
    global2 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global1.yyy & (select(global1.xzw, u_input.a.yyx, vec3<bool>(var_1.x, false, false)) << (vec3<u32>(global1.x, 0u, 17273u) % vec3<u32>(32u)))));
}

