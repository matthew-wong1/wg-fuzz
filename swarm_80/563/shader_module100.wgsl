struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(-164f, -1136f, 129f, -1078f, 1124f, -418f, -612f, -366f, 1778f, 801f, 324f, 762f, -1384f, -1621f, -434f, 295f);

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(1i, 0i), vec2<i32>(18269i, 69342i), vec2<i32>(-1i, 1i), vec2<i32>(37432i, -8203i), vec2<i32>(-5944i, 5356i), vec2<i32>(15465i, -1i), vec2<i32>(-1i, -43351i), vec2<i32>(-15208i, i32(-2147483648)), vec2<i32>(-1i, 70326i), vec2<i32>(1i, -35922i), vec2<i32>(5887i, 18138i), vec2<i32>(i32(-2147483648), -23583i), vec2<i32>(1131i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 6437i), vec2<i32>(17994i, 0i), vec2<i32>(-1i, 13071i), vec2<i32>(-1i, 13716i), vec2<i32>(-39564i, -56979i));

var<private> global2: vec2<f32> = vec2<f32>(1074f, 578f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_4(Struct_3(~0u, vec4<bool>(true, !(-33946i != arg_0), true, all(vec3<bool>(false, true, false)))), global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1771f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(max(1u, u_input.b) ^ ~u_input.b, 16u)], 234f, -1044f, _wgslsmith_f_op_f32(sign(-301f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1193f, -1431f, global0[_wgslsmith_index_u32(u_input.b, 16u)], -1000f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(52938u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)])), vec4<f32>(global2.x, -160f, -796f, 403f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -144f, -584f, -1115f), vec4<f32>(-1425f, -126f, -249f, -112f), false)))))), vec2<bool>(true, true));
    var var_1 = var_0.d.x;
    var var_2 = Struct_5(1i, Struct_3(68875u, !select(!vec4<bool>(var_0.e.x, false, var_0.e.x, var_0.a.b.x), !var_0.a.b, any(vec2<bool>(var_0.e.x, false)))), _wgslsmith_f_op_vec3_f32(-var_0.d.wxx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) + 759f) - _wgslsmith_f_op_f32(-var_0.d.x)));
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2072f, var_0.c.x))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_2.c.zy, vec2<f32>(1099f, 157f))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -221f))))))));
    return var_0.d;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_3 {
    global1 = array<vec2<i32>, 18>();
    var var_0 = vec4<f32>(-654f, 361f, -1301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(f32(-1f) * -2995f)) * _wgslsmith_f_op_f32(434f - -252f)) - -122f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 16u)]), -326f, _wgslsmith_f_op_f32(trunc(arg_0)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(u_input.c.x)))))));
    var var_1 = Struct_3(_wgslsmith_sub_u32(~(u_input.b >> (u_input.b % 32u)), u_input.b), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)));
    var var_2 = ~var_1.a;
    return Struct_3(abs(~u_input.b) ^ _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.b, 12610u, 0u), abs(abs(1u))), !vec4<bool>(any(vec4<bool>(true, false, true, var_1.b.x)), any(!var_1.b.wz), true, all(select(var_1.b.zxw, vec3<bool>(var_1.b.x, false, false), var_1.b.wxy))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_sub_u32(~1u, ~firstTrailingBit(~u_input.b)) > abs(firstTrailingBit(4294967295u));
    global1 = array<vec2<i32>, 18>();
    let var_1 = !arg_0.b.x;
    return Struct_1(arg_0.b.wzz, all(!select(func_2(853f, vec4<i32>(9061i, 0i, u_input.a.x, u_input.a.x)).b.xw, !arg_0.b.yy, vec2<bool>(arg_0.b.x, arg_0.b.x))), all(vec2<bool>(all(select(arg_0.b, arg_0.b, arg_0.b)), !func_2(-1520f, vec4<i32>(u_input.a.x, u_input.c.x, -1i, u_input.c.x)).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1610f) - 1000f)));
}

fn func_1() -> Struct_3 {
    let var_0 = 0u != u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 701f, 465f, 312f))))));
    var var_2 = firstTrailingBit(0u);
    let var_3 = Struct_2(func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-377f))), ~countOneBits(vec4<i32>(38930i, u_input.c.x, -4031i, -2147483647i)))));
    var var_4 = Struct_4(Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 57454u, 14889u), vec3<u32>(u_input.b, 0u, 8277u)) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))), !select(select(vec4<bool>(false, false, true, var_0), vec4<bool>(false, var_0, var_3.a.c, false), vec4<bool>(false, false, var_3.a.c, var_0)), select(vec4<bool>(false, var_3.a.a.x, false, true), vec4<bool>(true, var_3.a.c, true, true), vec4<bool>(var_0, var_0, var_3.a.c, true)), u_input.a.x == 2147483647i)), 591f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.d, var_1.x) + vec2<f32>(var_1.x, global2.x)) * vec2<f32>(963f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-var_1), !select(vec2<bool>(true, !var_3.a.b), vec2<bool>(all(vec4<bool>(false, var_3.a.a.x, false, true)), var_3.a.b), !var_0 & false));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2679f, -854f) * 155f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26642u, 16u)] + 799f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.d))))), ((vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, u_input.c.x)) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.a.a, 40829u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 31355u, u_input.b, u_input.b)), ~vec4<u32>(1753u, var_4.a.a, 21027u, u_input.b), func_2(-529f, vec4<i32>(u_input.c.x, -41530i, 29971i, 401i)).b) % vec4<u32>(32u))) & max(-vec4<i32>(16736i, -52233i, 27528i, -59248i), countOneBits(vec4<i32>(6530i, -25551i, 28933i, 60815i))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = select(any(func_4(Struct_3(arg_1.a, !vec4<bool>(true, false, true, arg_2.a.b.x))).a), arg_2.e.x, arg_1.b.x);
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.d.wz)))))));
    global1 = array<vec2<i32>, 18>();
    global1 = array<vec2<i32>, 18>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, 627f), vec2<f32>(-1485f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, global2.x) + arg_0), select(arg_2.a.b.zz, vec2<bool>(true, false), arg_2.a.b.wy))))) * _wgslsmith_f_op_vec2_f32(-arg_0));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.d.wyy - arg_2.d.wxw), _wgslsmith_f_op_vec3_f32(-arg_2.d.yzx))) * _wgslsmith_div_vec3_f32(arg_2.d.yzw, arg_2.d.wyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.d.zww)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(abs(4294967295u), 18u)], global1[_wgslsmith_index_u32(max(~116420u, u_input.b), 18u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 1020f)))), func_1(), Struct_4(func_1(), global2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global0[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], -1663f, -808f, global2.x)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(594f)), global2.x, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-154f, _wgslsmith_f_op_f32(select(205f, -1000f, true)), global0[_wgslsmith_index_u32(0u, 16u)])))));
    let var_2 = u_input.c.x;
    let var_3 = Struct_4(func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]), firstTrailingBit(~(-vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, 0i)))), var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.xz, var_1.zx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-773f, global0[_wgslsmith_index_u32(85538u, 16u)]))))), vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b) >> (~u_input.b % 32u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1452f)) * -1389f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(186f, -428f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global0[_wgslsmith_index_u32(u_input.b, 16u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(u_input.b | u_input.b), 16u)] + 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.c.x)).x + global2.x)))), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !(!any(vec3<bool>(false, false, false)))));
    var var_4 = any(select(select(!func_4(var_3.a).a, !func_4(var_3.a).a, select(-34956i, var_0, true) <= min(-2147483647i, u_input.a.x)), !var_3.a.b.wzz, vec3<bool>(all(var_3.e), var_3.a.b.x, !func_4(var_3.a).c)));
    var var_5 = Struct_2(func_4(Struct_3(func_1().a, !var_3.a.b)));
    let var_6 = vec2<i32>(8310i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_3.a.a), vec2<u32>(var_3.a.a, var_3.a.a)), select(vec2<u32>(var_3.a.a, 7091u), vec2<u32>(u_input.b, u_input.b), true)), firstLeadingBit(~vec2<u32>(u_input.b, 42007u)), vec2<bool>(any(var_3.e), true)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 0u), firstLeadingBit(vec2<u32>(var_3.a.a, 0u))), firstTrailingBit(vec2<u32>(15955u, 20269u)) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))), vec4<u32>(62935u, _wgslsmith_clamp_u32(u_input.b, 53574u, var_3.a.a) | _wgslsmith_mod_u32(71528u, u_input.b), ~var_3.a.a, ~0u) >> (~vec4<u32>(~16028u, u_input.b, ~u_input.b, _wgslsmith_mult_u32(0u, 1u)) % vec4<u32>(32u)), _wgslsmith_div_i32(-40959i, _wgslsmith_clamp_i32(2147483647i, ~(~113i), reverseBits(-var_6.x))), ~var_6.x, u_input.a);
}

