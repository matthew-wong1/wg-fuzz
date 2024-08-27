struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: Struct_3 = Struct_3(62682u, vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, false, false, true), 459f, vec4<f32>(692f, -1000f, 1252f, 943f), vec2<u32>(1u, 20299u), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, false), 878f, vec4<f32>(1892f, 560f, -2038f, 949f), vec2<u32>(44394u, 4294967295u), vec2<bool>(false, false)));

var<private> global1: Struct_3;

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-471f, 1496f, 702f), vec3<f32>(-1216f, 102f, 1817f), vec3<f32>(718f, -201f, -2502f), vec3<f32>(-629f, 107f, 1363f), vec3<f32>(675f, 825f, -1173f), vec3<f32>(-1000f, 319f, 1064f), vec3<f32>(-146f, -491f, -667f), vec3<f32>(-840f, 1000f, 1137f), vec3<f32>(-301f, -605f, -225f), vec3<f32>(-1288f, 951f, -468f), vec3<f32>(-2054f, -809f, 1361f), vec3<f32>(1900f, 948f, 472f), vec3<f32>(547f, 1192f, -1034f));

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global0 = Struct_3(_wgslsmith_mult_u32(firstTrailingBit(4294967295u) & ~109168u, 4294967295u) | (1u | ~arg_3.d.x), select(select(!arg_2.b, !global3.a, vec4<bool>(arg_2.b.x, true, u_input.a.x != u_input.a.x, any(arg_3.a.wwz))), vec4<bool>(global1.d.c.x > -276f, global1.d.c.x > _wgslsmith_f_op_f32(global0.d.c.x * -1266f), global3.e.x, true), all(!(!arg_3.a))), Struct_1(vec4<bool>(all(!vec4<bool>(arg_3.a.x, arg_2.b.x, global3.e.x, global0.c.e.x)), true, arg_2.a.x, global0.d.a.x), global0.d.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2098f, -513f, arg_3.c.x, 1000f) + vec4<f32>(-1437f, 402f, global0.c.c.x, global0.d.b))), arg_3.c), ~(~select(vec2<u32>(1u, 0u), arg_3.d, global3.a.x)), arg_2.b.yz), Struct_1(global1.b, _wgslsmith_f_op_f32(-283f - -437f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global3.c, _wgslsmith_f_op_vec4_f32(ceil(global0.d.c)))))), arg_0, !(!select(vec2<bool>(global1.b.x, global1.d.e.x), vec2<bool>(global0.c.a.x, true), global0.d.e.x))));
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_1, global1.c.d.x, global1.a, 1u), vec4<u32>(global1.a, global0.d.d.x, arg_1, global3.d.x)), ~vec4<u32>(14446u, arg_0.x, arg_2.c.x, 0u)), firstTrailingBit(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(global3.d.x, 1u), _wgslsmith_dot_vec2_u32(global3.d, vec2<u32>(arg_1, arg_3.d.x)), _wgslsmith_add_u32(arg_3.d.x, arg_2.c.x)))));
    global0 = Struct_3(var_0.x, vec4<bool>(arg_3.a.x, global1.d.e.x, !global3.e.x, global0.c.e.x && all(select(arg_2.b, vec4<bool>(arg_2.b.x, arg_3.a.x, true, false), arg_2.a.x))), global1.d, Struct_1(select(global0.d.a, !vec4<bool>(arg_3.e.x, global3.e.x, global3.a.x, arg_2.a.x), !arg_3.e.x), -363f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_3.c * _wgslsmith_f_op_vec4_f32(-arg_3.c)), global3.c)), vec2<u32>(~1u, abs(~global1.a)), arg_2.b.xx));
    global3 = global1.c;
    var_0 = vec4<u32>(max(~_wgslsmith_mult_u32(49021u, 1u), firstLeadingBit(2465u)), global0.d.d.x, var_0.x, abs(global3.d.x)) >> (~(vec4<u32>(abs(0u), global0.d.d.x, ~0u, countOneBits(1u)) ^ vec4<u32>(arg_2.c.x, ~global3.d.x, ~3482u, arg_3.d.x)) % vec4<u32>(32u));
    return -1932f;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(select(!global3.a, global3.a, global3.e.x), -1442f, _wgslsmith_div_vec4_f32(vec4<f32>(global0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c.x)), global0.d.b, _wgslsmith_f_op_f32(func_3(global0.c.d, ~0u, Struct_2(vec3<bool>(global1.b.x, global1.c.e.x, global3.e.x), global3.a, global1.d.d), global0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.x, global0.c.c.x, -1396f, -2039f))))), global3.d, vec2<bool>(all(global1.d.a.xy), select(global0.d.e.x, !global0.b.x, true)));
    var_0 = Struct_1(global1.c.a, _wgslsmith_f_op_f32(-1277f * _wgslsmith_f_op_f32(func_3(vec2<u32>(global0.a, 0u), ~4294967295u, Struct_2(!vec3<bool>(true, global0.d.e.x, var_0.e.x), global0.c.a, vec2<u32>(global0.c.d.x, arg_0)), Struct_1(select(global3.a, global0.d.a, global1.c.a), _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_vec4_f32(step(global1.c.c, vec4<f32>(1097f, global0.d.c.x, var_0.b, -840f))), abs(global3.d), vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.d.c))))), vec2<u32>(4294967295u, ~7370u), select(vec2<bool>(any(!vec4<bool>(global0.b.x, global3.a.x, false, false)), !(!global3.e.x)), !global1.c.e, global0.d.e.x));
    let var_1 = Struct_3(33881u, vec4<bool>(!global1.c.e.x, true | global0.d.a.x, global3.a.x, global3.e.x), global0.c, global0.c);
    var var_2 = !(global3.a.x & (_wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, true), -4284i) < _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, -19377i)), vec2<i32>(-2147483647i, -2147483647i))));
    var_2 = true;
    return Struct_2(var_1.d.a.yyw, vec4<bool>(global1.c.a.x, false, true, select(!(!global3.e.x), any(global1.d.a), false)), var_1.d.d);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    global3 = global1.d;
    let var_0 = u_input.a;
    let var_1 = ~23175u;
    var var_2 = global3.b;
    var var_3 = global1.c;
    return 39390u;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~func_4(-22908i, vec3<f32>(565f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.c.x), -883f)), _wgslsmith_f_op_f32(min(-291f, _wgslsmith_f_op_f32(global3.b * arg_0.c.c.x)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 10423i), vec3<i32>(-25629i, u_input.a.x, u_input.a.x))), func_2(~(~global0.d.d.x)));
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(arg_1.d, firstLeadingBit(global0.c.d)), !(!(!vec4<bool>(false, true, global0.c.e.x, global0.b.x))), global1.c, Struct_1(!arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.b, 1201f), _wgslsmith_f_op_f32(ceil(arg_1.b)), false)) - global3.b), arg_0.c.c, select(_wgslsmith_mult_vec2_u32(min(global3.d, vec2<u32>(global3.d.x, global1.c.d.x)), arg_1.d), global3.d, select(vec2<bool>(true, true), global3.a.wz, vec2<bool>(false, true))), select(vec2<bool>(global0.d.a.x, arg_0.d.a.x), arg_0.d.e, arg_0.d.e)));
    let var_1 = arg_1.b;
    var var_2 = Struct_2(select(vec3<bool>(true, all(select(arg_0.c.e, vec2<bool>(true, global0.d.e.x), false)), true), arg_1.a.yzz, vec3<bool>(all(select(vec2<bool>(global3.e.x, false), vec2<bool>(false, false), false)), arg_1.e.x, func_2(var_0).b.x)), vec4<bool>(!arg_0.c.e.x, select(true, true, true), true, func_2(4593u).a.x), _wgslsmith_mod_vec2_u32(~(vec2<u32>(global1.a, 7471u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 6411u), vec2<u32>(global3.d.x, 33051u)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(abs(global1.c.d), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 48863u), arg_0.c.d)), func_4(-u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(197f, -402f, arg_1.c.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), func_2(0u)))));
    global1 = arg_0;
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_3(~18000u, global0.c.a, global0.d, global0.c), Struct_1(vec4<bool>(all(!global0.d.a.yxz), true, false, false), -1480f, vec4<f32>(_wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(select(-453f, global0.c.b, global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3.c.x)), -202f)), global1.d.b), vec2<u32>(global0.d.d.x, global3.d.x & global3.d.x) & firstLeadingBit(~global1.c.d), !(!(!global3.e))));
    global1 = Struct_3(~global0.d.d.x, global3.a, global0.d, global1.d);
    let var_0 = Struct_3(1u, vec4<bool>(-1004f > global3.c.x, !func_1(Struct_3(0u, global3.a, Struct_1(global0.c.a, global3.b, vec4<f32>(-1744f, global3.c.x, 2231f, global1.d.c.x), vec2<u32>(global3.d.x, global1.c.d.x), vec2<bool>(false, global3.e.x)), global0.d), global0.c).e.x, all(func_1(Struct_3(55673u, global0.c.a, Struct_1(global1.d.a, -173f, vec4<f32>(global3.c.x, global1.c.b, global1.d.b, 1000f), global1.d.d, global1.c.a.yy), global1.d), Struct_1(vec4<bool>(true, global1.d.e.x, global1.d.a.x, true), global0.c.c.x, vec4<f32>(global3.b, global0.c.c.x, global1.d.c.x, 741f), global1.d.d, global1.b.ww)).e), global1.d.e.x), func_1(Struct_3(1u, func_1(Struct_3(1u, global1.d.a, Struct_1(vec4<bool>(global3.a.x, false, true, false), global1.d.b, global1.c.c, global0.d.d, global3.a.wz), global0.c), func_1(Struct_3(1u, vec4<bool>(false, global3.e.x, global0.d.a.x, global3.e.x), global0.d, global1.c), Struct_1(vec4<bool>(false, true, true, false), -243f, global3.c, vec2<u32>(41680u, global0.a), vec2<bool>(global0.b.x, true)))).a, func_1(Struct_3(global1.a, global3.a, global1.d, global0.c), global0.d), func_1(Struct_3(global1.a, vec4<bool>(global3.e.x, true, global3.e.x, global1.b.x), Struct_1(global3.a, 669f, global0.d.c, vec2<u32>(global1.d.d.x, global1.a), vec2<bool>(false, global0.d.a.x)), Struct_1(vec4<bool>(false, global1.d.a.x, true, false), global1.c.b, global0.d.c, global1.d.d, vec2<bool>(false, true))), global0.c)), func_1(Struct_3(~global0.c.d.x, vec4<bool>(global1.c.a.x, true, global0.b.x, true), func_1(Struct_3(global0.a, vec4<bool>(global1.d.a.x, global1.c.e.x, global1.d.e.x, global1.c.e.x), global0.d, global1.d), global1.d), Struct_1(vec4<bool>(false, global1.b.x, global1.b.x, true), global1.c.b, global0.c.c, global0.d.d, vec2<bool>(global1.d.e.x, global1.b.x))), global0.d)), global0.c);
    global3 = global0.c;
    let var_1 = Struct_2(global0.c.a.xwz, global1.d.a, min(func_2(var_0.c.d.x).c, _wgslsmith_sub_vec2_u32(~var_0.c.d | global0.c.d, global0.d.d)));
    var var_2 = Struct_2(!(!(!func_2(83381u).a)), func_1(Struct_3(26100u, func_2(global1.a).b, var_0.d, global0.c), global1.c).a, reverseBits(vec2<u32>(func_2(var_0.a).c.x, 45858u) | vec2<u32>(_wgslsmith_sub_u32(1u, global1.d.d.x), 23564u)));
    var_2 = Struct_2(vec3<bool>(select(u_input.a.x >> (global3.d.x % 32u), 0i & u_input.a.x, true) >= countOneBits(u_input.a.x), var_2.b.x, any(!vec4<bool>(global0.c.e.x, false, global1.c.e.x, true))), !(!vec4<bool>(all(var_1.b.yz), global1.d.a.x, all(var_1.b.yzw), var_1.c.x < 6661u)), ~vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(5083u), 23262u), var_0.c.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(0i));
}

