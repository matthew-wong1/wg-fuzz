struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, true), 1u, false, vec3<i32>(-1i, 14913i, -1i)), Struct_1(vec2<bool>(true, true), 1u, true, vec3<i32>(-23652i, 1021i, 1i)), Struct_1(vec2<bool>(false, false), 0u, true, vec3<i32>(2147483647i, 2147483647i, -7558i)), Struct_1(vec2<bool>(false, false), 16478u, true, vec3<i32>(-44955i, -1238i, -1i)), Struct_1(vec2<bool>(false, false), 32181u, false, vec3<i32>(-1i, 54356i, 42770i)), Struct_1(vec2<bool>(true, true), 0u, true, vec3<i32>(25329i, -21401i, -20809i)), Struct_1(vec2<bool>(false, false), 0u, false, vec3<i32>(2147483647i, 0i, -1i)), Struct_1(vec2<bool>(false, false), 4294967295u, true, vec3<i32>(2147483647i, 25608i, -1i)), Struct_1(vec2<bool>(false, true), 1u, true, vec3<i32>(-1i, 6164i, 21799i)), Struct_1(vec2<bool>(false, true), 36887u, true, vec3<i32>(1647i, 32308i, -37060i)), Struct_1(vec2<bool>(true, true), 0u, true, vec3<i32>(1i, 27845i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), 4294967295u, false, vec3<i32>(2147483647i, -3154i, 0i)));

var<private> global1: Struct_5 = Struct_5(Struct_1(vec2<bool>(false, false), 65994u, false, vec3<i32>(-1i, 65160i, -1i)), Struct_2(vec4<bool>(false, false, true, true), 4294967295u, 39843u));

var<private> global2: array<vec3<u32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = -(vec4<i32>(countOneBits(24438i), global1.a.d.x, 2147483647i, select(-988i, global1.a.d.x, false)) & -vec4<i32>(u_input.c.x, global1.a.d.x, u_input.c.x, 0i)) << (select(~countOneBits(~vec4<u32>(1u, 34859u, global1.a.b, 4294967295u)), ~(~vec4<u32>(4294967295u, global1.a.b, u_input.b, 4294967295u)), vec4<bool>(all(!vec3<bool>(true, false, arg_0)), 0u >= ~u_input.b, global1.a.c, any(!vec3<bool>(global1.a.a.x, true, false)))) % vec4<u32>(32u));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(~(firstLeadingBit(u_input.b) | global1.b.c), 12u)], Struct_2(select(!(!global1.b.a), global1.b.a, !global1.b.a.x), u_input.d, max(global1.a.b, _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, global1.b.b), 5836u))));
    let var_2 = var_1;
    global0 = array<Struct_1, 12>();
    var var_3 = Struct_4(Struct_2(!vec4<bool>(-32637i <= u_input.c.x, any(vec3<bool>(false, true, true)), global1.b.a.x && arg_0, true), _wgslsmith_div_u32(min(4294967295u, min(u_input.d, var_1.a.b)), _wgslsmith_sub_u32(var_1.a.b, 4294967295u)), firstLeadingBit(global1.b.c << (global1.b.b % 32u))));
    return all(!var_3.a.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: u32) -> vec3<f32> {
    let var_0 = arg_2.x;
    var var_1 = global1.a;
    global1 = Struct_5(global0[_wgslsmith_index_u32(~arg_3, 12u)], Struct_2(global1.b.a, global1.a.b, ~(~(~1u))));
    let var_2 = 541f;
    var_1 = Struct_1(vec2<bool>(func_3(true), any(!(!vec3<bool>(true, var_1.c, var_1.c)))), firstTrailingBit(countOneBits(1u)), all(vec2<bool>(var_1.c, true)), ~(-max(arg_2.wwx, global1.a.d << (vec3<u32>(arg_1.x, 61794u, var_1.b) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-397f, -305f, 915f), vec3<f32>(2477f, -154f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2, -350f))), arg_0.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_5 {
    global0 = array<Struct_1, 12>();
    global1 = Struct_5(global1.a, Struct_2(select(!select(vec4<bool>(global1.a.a.x, false, true, true), global1.b.a, vec4<bool>(global1.a.a.x, true, global1.b.a.x, false)), !select(vec4<bool>(global1.a.c, true, true, false), vec4<bool>(global1.a.c, global1.a.c, global1.a.a.x, true), vec4<bool>(global1.b.a.x, global1.b.a.x, true, false)), global1.b.a.x), abs(33058u), 47712u));
    let var_0 = select(select(!global1.a.a, select(select(vec2<bool>(global1.a.c, false), !vec2<bool>(true, global1.b.a.x), false), global1.a.a, select(global1.a.a.x, 0u > global1.a.b, select(global1.a.a.x, global1.a.c, false))), select(!select(vec2<bool>(global1.b.a.x, global1.a.c), global1.b.a.ww, global1.b.a.x), !(!vec2<bool>(global1.a.a.x, false)), _wgslsmith_f_op_f32(arg_0.x * -235f) == _wgslsmith_f_op_f32(-arg_0.x))), global1.b.a.xw, !vec2<bool>(select(!global1.b.a.x, any(global1.b.a.yx), true), _wgslsmith_f_op_f32(arg_0.x * arg_0.x) >= _wgslsmith_f_op_f32(f32(-1f) * -227f)));
    let var_1 = true;
    let var_2 = Struct_1(!var_0, 1u, any(vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.d.x, global1.a.d.x, arg_1), vec3<i32>(728i, u_input.c.x, 19975i)) != arg_1, true, var_1)), ~(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, global1.a.d.x, 1i), ~vec3<i32>(u_input.c.x, global1.a.d.x, 1i), vec3<i32>(u_input.c.x, 1i, u_input.c.x))));
    return Struct_5(global0[_wgslsmith_index_u32(~u_input.d, 12u)], global1.b);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-737f - -613f), _wgslsmith_f_op_f32(abs(-1731f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(980f, 609f, 834f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, -1409f, -324f) - vec3<f32>(-730f, 774f, 1575f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, 1865f, -890f)), _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, global1.b.a.x), u_input.a.yz, vec4<i32>(global1.a.d.x, 0i, 1i, 63478i), 41547u))))), all(vec4<bool>(global1.a.a.x, false, false, true)) | any(select(global1.b.a.wwy, global1.b.a.wxx, global1.b.a.zzy)))), -2147483647i);
    var var_1 = all(func_4(vec3<f32>(443f, -884f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1069f, -986f))), -1i).b.a.zw);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-365f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, 277f))))), 581f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1323f)), _wgslsmith_f_op_f32(101f + -455f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + _wgslsmith_f_op_vec3_f32(func_2(var_0.a.a, vec2<u32>(global1.a.b, 46537u), -vec4<i32>(-10832i, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), 4294967295u)).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-491f, -641f, 493f, -296f), vec4<f32>(444f, -574f, 778f, 1312f))))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f * _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1485f, _wgslsmith_f_op_f32(min(-1737f, 242f))))), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-451f)))), 1482f), _wgslsmith_div_f32(var_2.x, -336f));
    let var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b, u_input.b, 24565u, global1.b.c), vec4<u32>(43332u, 26931u, 33862u, 40348u))), _wgslsmith_div_vec4_u32(~vec4<u32>(78654u, global1.a.b, arg_0, u_input.b), select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.b.c, 35612u), vec4<u32>(48306u, 90793u, u_input.d, var_0.b.c)), firstTrailingBit(vec4<u32>(28156u, 1u, 40599u, u_input.a.x)), false)))), 1u)];
    return firstTrailingBit(countOneBits(countOneBits(vec4<u32>(_wgslsmith_mult_u32(54320u, arg_0), u_input.d << (43798u % 32u), u_input.d, 28050u))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_5(func_4(vec3<f32>(1f, 674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-599f * -298f) + _wgslsmith_f_op_f32(f32(-1f) * -284f))), -_wgslsmith_sub_i32(0i, 894i)).a, Struct_2(!global1.b.a, _wgslsmith_clamp_u32(~5050u, 1u, 0u) >> (_wgslsmith_div_u32(min(arg_0.b, 4294967295u), u_input.a.x) % 32u), u_input.d));
    let var_2 = select(!(!select(!vec3<bool>(var_0, var_0, true), !arg_0.a.yyw, arg_0.a.x)), vec3<bool>(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1063f, -620f) + vec3<f32>(1424f, -1000f, 902f))), var_1.a.d.x).a.a.x, var_1.b.a.x, global1.a.a.x), reverseBits(_wgslsmith_sub_i32(global1.a.d.x, -1i ^ u_input.c.x)) == _wgslsmith_add_i32(-64490i, -10669i));
    let var_3 = ~(_wgslsmith_add_vec2_u32(firstTrailingBit(arg_2.yz) | _wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(arg_0.b, 0u)), u_input.a.zx) & ~arg_2.zx);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-579f, -251f)))));
    return func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(-var_4.a))), var_4.a, var_4.a)), global1.a.d.x).b;
}

fn func_6(arg_0: Struct_2) -> vec4<bool> {
    global2 = array<vec3<u32>, 1>();
    var var_0 = -(select(firstLeadingBit(-u_input.c.x), -2147483647i, true) | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, -70172i), -23351i, u_input.c.x), firstTrailingBit(vec3<i32>(global1.a.d.x, global1.a.d.x, u_input.c.x) | vec3<i32>(global1.a.d.x, 5305i, u_input.c.x))));
    global2 = array<vec3<u32>, 1>();
    global1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1187f, 275f), 349f, -136f))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-807f, -115f)), -1046f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f - 1677f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(237f)), _wgslsmith_f_op_f32(1000f * 1014f), true)))), countOneBits(1i));
    global0 = array<Struct_1, 12>();
    return vec4<bool>(arg_0.a.x, any(arg_0.a.yz), ~2147483647i <= global1.a.d.x, !func_3(true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(global1.b, 4294967295u, min(~func_1(global1.b.c), abs(firstTrailingBit(vec4<u32>(global1.a.b, u_input.a.x, 4294967295u, global1.a.b)))), -38720i));
    var_0 = vec4<bool>(false, true, !(firstLeadingBit(1u) == _wgslsmith_mult_u32(~0u, select(global1.a.b, u_input.d, true))), global1.b.a.x);
    var_0 = !select(!vec4<bool>(any(global1.b.a.xy), any(vec4<bool>(true, true, var_0.x, var_0.x)), global1.a.a.x, all(vec2<bool>(global1.a.a.x, global1.b.a.x))), vec4<bool>(!var_0.x, !global1.a.c, var_0.x, true), !global1.b.a);
    var var_1 = global1.b.a.yyx;
    var_0 = func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2378f + -630f), _wgslsmith_f_op_f32(sign(-110f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) + _wgslsmith_f_op_f32(step(515f, -500f))), -1116f), -_wgslsmith_mult_i32(abs(u_input.c.x), -1i)).b, 4294967295u, ~(~firstTrailingBit(vec4<u32>(13111u, global1.b.c, 15504u, 4294967295u) << (vec4<u32>(1565u, 96084u, u_input.a.x, global1.b.b) % vec4<u32>(32u)))), 1i).a;
    var var_2 = func_5(Struct_2(vec4<bool>(any(vec2<bool>(true, true)), true, all(func_5(global1.b, 17724u, vec4<u32>(u_input.a.x, global1.b.b, 154951u, u_input.b), -5514i).a), all(func_4(vec3<f32>(321f, -511f, 1000f), u_input.c.x).b.a)), global1.b.b, ~43871u), ~u_input.a.x, vec4<u32>(~4294967295u, _wgslsmith_sub_u32(13820u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(57938u, 1u, 1u, u_input.d), vec4<u32>(63849u, 23146u, global1.a.b, global1.a.b), vec4<bool>(var_1.x, false, true, false)), vec4<u32>(global1.b.b, 4294967295u, 4294967295u, u_input.d))), min(u_input.a.x, countOneBits(global1.a.b)) ^ select(_wgslsmith_mult_u32(0u, u_input.d), abs(0u), var_1.x), _wgslsmith_sub_u32(61747u, 32307u)), 65711i);
    var_0 = !var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, global1.b.b, var_2.c, var_2.c) >> (vec4<u32>(67398u, 44906u, 39776u, global1.a.b) % vec4<u32>(32u))), ~vec4<u32>(0u, u_input.d, var_2.b, u_input.a.x)), ~0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, 683f)))), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, select(vec2<u32>(92218u, _wgslsmith_dot_vec4_u32(vec4<u32>(64668u, 1u, 107106u, 1u), vec4<u32>(56312u, 43359u, global1.a.b, 5022u))), ~(~u_input.a.zy), func_5(global1.b, 0u, vec4<u32>(0u, 65394u, 0u, var_2.c) >> (vec4<u32>(1u, u_input.b, 41356u, 0u) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(28682i, global1.a.d.x, global1.a.d.x), u_input.c)).a.yy)));
}

