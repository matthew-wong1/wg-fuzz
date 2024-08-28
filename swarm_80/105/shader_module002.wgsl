struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<f32>, 12>;

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_2(i32(-2147483648)), vec3<u32>(14788u, 12306u, 73637u), Struct_3(vec3<f32>(1000f, -104f, 285f), false)), Struct_4(Struct_2(-1i), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_3(vec3<f32>(1159f, 157f, 2088f), false)), Struct_4(Struct_2(1i), vec3<u32>(0u, 11772u, 4294967295u), Struct_3(vec3<f32>(-387f, 956f, 365f), false)), Struct_4(Struct_2(16867i), vec3<u32>(4294967295u, 42089u, 30472u), Struct_3(vec3<f32>(-1134f, 783f, 1598f), true)), Struct_4(Struct_2(8177i), vec3<u32>(23785u, 70609u, 55985u), Struct_3(vec3<f32>(-347f, -1286f, -291f), false)), Struct_4(Struct_2(7765i), vec3<u32>(1u, 34041u, 32620u), Struct_3(vec3<f32>(1555f, -470f, 411f), true)), Struct_4(Struct_2(1i), vec3<u32>(63029u, 1u, 73774u), Struct_3(vec3<f32>(1000f, 384f, -368f), false)), Struct_4(Struct_2(19858i), vec3<u32>(4294967295u, 1u, 16864u), Struct_3(vec3<f32>(-118f, 572f, 622f), true)), Struct_4(Struct_2(-1i), vec3<u32>(18684u, 10102u, 61285u), Struct_3(vec3<f32>(872f, 1198f, -1000f), true)), Struct_4(Struct_2(23507i), vec3<u32>(35477u, 4294967295u, 1u), Struct_3(vec3<f32>(353f, -456f, 1000f), true)), Struct_4(Struct_2(1317i), vec3<u32>(18668u, 4294967295u, 0u), Struct_3(vec3<f32>(-973f, -898f, 903f), false)), Struct_4(Struct_2(-1307i), vec3<u32>(20743u, 1u, 7414u), Struct_3(vec3<f32>(-313f, 529f, -205f), true)), Struct_4(Struct_2(1i), vec3<u32>(0u, 46599u, 4294967295u), Struct_3(vec3<f32>(-1000f, -1102f, 2330f), false)), Struct_4(Struct_2(0i), vec3<u32>(3751u, 4294967295u, 4294967295u), Struct_3(vec3<f32>(-124f, -200f, -1703f), true)), Struct_4(Struct_2(-2833i), vec3<u32>(1u, 1u, 1u), Struct_3(vec3<f32>(176f, -324f, -1569f), true)), Struct_4(Struct_2(i32(-2147483648)), vec3<u32>(0u, 1u, 4294967295u), Struct_3(vec3<f32>(1122f, -1264f, -523f), true)), Struct_4(Struct_2(i32(-2147483648)), vec3<u32>(48406u, 1u, 4294967295u), Struct_3(vec3<f32>(-2424f, -1764f, -1000f), false)), Struct_4(Struct_2(526i), vec3<u32>(52386u, 72594u, 1u), Struct_3(vec3<f32>(598f, -554f, 207f), true)), Struct_4(Struct_2(-35033i), vec3<u32>(0u, 0u, 0u), Struct_3(vec3<f32>(1325f, -1492f, 612f), true)), Struct_4(Struct_2(0i), vec3<u32>(47698u, 25874u, 1u), Struct_3(vec3<f32>(-1840f, -903f, 898f), false)), Struct_4(Struct_2(19198i), vec3<u32>(1u, 60216u, 4294967295u), Struct_3(vec3<f32>(-391f, -1674f, -965f), true)), Struct_4(Struct_2(0i), vec3<u32>(10737u, 69349u, 1u), Struct_3(vec3<f32>(1442f, 488f, -578f), false)), Struct_4(Struct_2(1i), vec3<u32>(11277u, 77558u, 1u), Struct_3(vec3<f32>(291f, -346f, 821f), true)), Struct_4(Struct_2(2147483647i), vec3<u32>(14332u, 4294967295u, 4294967295u), Struct_3(vec3<f32>(277f, -238f, 295f), false)), Struct_4(Struct_2(2147483647i), vec3<u32>(0u, 6375u, 10892u), Struct_3(vec3<f32>(1000f, 1000f, -662f), true)), Struct_4(Struct_2(i32(-2147483648)), vec3<u32>(0u, 33285u, 6631u), Struct_3(vec3<f32>(-125f, 1197f, 402f), true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> bool {
    global3 = array<Struct_4, 26>();
    let var_0 = vec4<u32>(4294967295u, 1u, 1u, ~(~(~3466u)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)), 1921f), -695f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_2.x, -1188f)))));
    global3 = array<Struct_4, 26>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1394f - _wgslsmith_f_op_f32(-arg_0.x)), 565f)), global1.x, global1.x, _wgslsmith_f_op_f32(-arg_0.x));
    return global0.x;
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(~arg_1.a.a), 58361i), reverseBits(i32(-1i) * -9175i));
    var var_2 = _wgslsmith_f_op_f32(max(-1000f, -485f));
    let var_3 = Struct_4(Struct_2(0i << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)), u_input.b, Struct_3(global1.zzy, false));
    global2 = array<vec2<f32>, 12>();
    return any(!(!global0.wz));
}

fn func_1(arg_0: bool) -> Struct_5 {
    global0 = select(select(select(select(vec4<bool>(false, false, false, false), !vec4<bool>(arg_0, false, global0.x, true), !vec4<bool>(arg_0, true, true, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, false, true, true), !vec4<bool>(arg_0, global0.x, global0.x, global0.x)), u_input.e.x > _wgslsmith_mod_i32(23642i, -2147483647i)), !vec4<bool>(global0.x, arg_0, !arg_0, func_2(global2[_wgslsmith_index_u32(1u, 12u)], u_input.a, vec2<f32>(-1243f, -1364f), u_input.e.x)), vec4<bool>(!(441f <= global1.x), func_3(firstLeadingBit(1u), global3[_wgslsmith_index_u32(~u_input.a, 26u)]), select(!arg_0, arg_0 && true, arg_0), false)), select(select(!vec4<bool>(false, arg_0, false, false), !select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, false, arg_0, global0.x), false), global1.x > -954f), select(vec4<bool>(u_input.b.x > 10512u, u_input.c.x != u_input.e.x, true, true), vec4<bool>(!arg_0, arg_0, true, global0.x), select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, arg_0, global0.x, global0.x), vec4<bool>(global0.x, true, false, arg_0))), !select(!vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, arg_0, arg_0, global0.x), arg_0)), !vec4<bool>(all(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, arg_0), global0.zyy)), _wgslsmith_div_f32(global1.x, global1.x) > _wgslsmith_f_op_f32(min(135f, 271f)), false, true));
    global0 = vec4<bool>(all(!vec4<bool>(u_input.b.x >= 0u, any(global0.zxx), true && arg_0, global1.x != 1659f)), select(func_2(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 12u)], _wgslsmith_f_op_vec2_f32(global1.yz + vec2<f32>(-227f, global1.x)), !global0.ww)), 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) * vec2<f32>(-3326f, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, global1.x) * global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), true)), 28187i), select(arg_0, any(select(global0.xyy, vec3<bool>(arg_0, false, false), global0.xzz)), arg_0), func_3(1u, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.a, u_input.b.x ^ 3642u), 26u)])), all(vec3<bool>(arg_0, !global0.x, false)), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), firstTrailingBit(u_input.b)) ^ _wgslsmith_add_u32(u_input.b.x, ~0u)) < _wgslsmith_mult_u32(u_input.a, 33181u));
    var var_0 = global0.xx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) * -1000f));
    global0 = select(select(vec4<bool>(arg_0, true, true, !(455f != global1.x)), !(!(!vec4<bool>(global0.x, true, true, true))), vec4<bool>(all(select(vec3<bool>(true, arg_0, true), vec3<bool>(var_0.x, arg_0, true), vec3<bool>(var_0.x, var_0.x, true))), false, true, arg_0)), select(vec4<bool>(arg_0, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, global1.x)), abs(u_input.a), vec2<f32>(global1.x, global1.x), abs(-2147483647i)), global0.x, true), vec4<bool>(arg_0, any(global0.wy), true, true), false | !all(global0.zzy)), true);
    return Struct_5(Struct_3(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1375f + 431f)))), max(_wgslsmith_sub_i32(50219i, u_input.d.x), u_input.c.x) > countOneBits(-39024i)), u_input.b.x > u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.x);
    var_0 = Struct_5(func_1(true).a, true);
    let var_1 = _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(_wgslsmith_mod_i32(~u_input.c.x, 8846i), u_input.e.x & 21182i));
    global0 = !vec4<bool>(global0.x, true, 1u >= u_input.b.x, _wgslsmith_mult_u32(42339u, u_input.a) >= countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(u_input.b.yx & u_input.b.yy), _wgslsmith_f_op_f32(sign(var_0.a.a.x)), _wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1174f) - 2019f))), _wgslsmith_f_op_f32(-func_1(false).a.a.x));
}

