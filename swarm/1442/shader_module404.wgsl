struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(17134u, 1u), -843f, 0i, vec4<f32>(-166f, 1243f, 2265f, -193f)), Struct_1(vec2<u32>(15978u, 0u), 434f, 0i, vec4<f32>(196f, -296f, -1034f, -266f)), Struct_1(vec2<u32>(25505u, 114701u), 751f, -39667i, vec4<f32>(-1178f, -821f, 1000f, -1076f)), Struct_1(vec2<u32>(14228u, 4294967295u), 1770f, 2147483647i, vec4<f32>(-128f, 845f, -320f, 1056f)), Struct_1(vec2<u32>(47089u, 59580u), -1096f, 0i, vec4<f32>(329f, 280f, -599f, 680f)), Struct_1(vec2<u32>(4294967295u, 11909u), -1767f, 0i, vec4<f32>(-526f, 952f, 877f, -1000f)), Struct_1(vec2<u32>(1967u, 4294967295u), 881f, 21221i, vec4<f32>(721f, -1871f, -498f, 1647f)), Struct_1(vec2<u32>(60028u, 22817u), 706f, i32(-2147483648), vec4<f32>(-367f, 1252f, -1061f, -1000f)), Struct_1(vec2<u32>(69856u, 9135u), 1746f, 2147483647i, vec4<f32>(742f, -649f, 725f, -329f)), Struct_1(vec2<u32>(15551u, 1u), 834f, 1514i, vec4<f32>(1463f, -352f, 330f, -349f)), Struct_1(vec2<u32>(50887u, 27961u), 1000f, 32175i, vec4<f32>(-1667f, 1000f, 804f, 1317f)), Struct_1(vec2<u32>(1u, 18313u), 957f, 21846i, vec4<f32>(-169f, 770f, 709f, 948f)), Struct_1(vec2<u32>(4294967295u, 0u), -1896f, i32(-2147483648), vec4<f32>(941f, -576f, 782f, -291f)), Struct_1(vec2<u32>(64088u, 0u), -1207f, -78218i, vec4<f32>(-634f, 436f, 1659f, 1603f)), Struct_1(vec2<u32>(0u, 2908u), 1553f, -13665i, vec4<f32>(1136f, 1183f, 459f, 911f)));

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 49181u), -995f, -33577i, vec4<f32>(-730f, 288f, 517f, 1205f));

var<private> global3: array<bool, 26> = array<bool, 26>(false, true, true, false, true, false, false, false, true, false, false, true, true, true, true, true, true, true, true, true, false, false, false, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<Struct_1, 15>();
    global1 = _wgslsmith_div_i32(74218i, arg_1.c);
    var var_0 = arg_0.b.a.x;
    var_0 = 5228u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global2.d))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.a.d * arg_1.d)))))));
    return !(_wgslsmith_f_op_f32(-152f + global2.b) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(select(-1000f, global2.d.x, true))) * arg_0.a.b));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_1, 15>();
    let var_0 = select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(0u, 4294967295u, global2.a.x)), 26u)], countOneBits(1185i) != _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, -1i), vec4<i32>(arg_2, -1i, -169i, arg_0.x)))), vec4<bool>(any(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)], true, true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(67579u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]))), global2.a.x > 0u, global3[_wgslsmith_index_u32(global2.a.x, 26u)], global3[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 1u, 49629u, 1u), vec4<u32>(43255u, global2.a.x, 13617u, global2.a.x))), 26u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 26u)], (arg_1 == arg_0.x) & func_3(Struct_2(Struct_1(vec2<u32>(4431u, global2.a.x), global2.d.x, arg_0.x, global2.d), global0[_wgslsmith_index_u32(global2.a.x, 15u)], vec2<u32>(global2.a.x, global2.a.x)), global0[_wgslsmith_index_u32(global2.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 26u)]), !(global2.d.x < -873f), !(!global3[_wgslsmith_index_u32(global2.a.x, 26u)])), select(vec4<bool>(all(vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(global2.a.x, 26u)])), all(vec2<bool>(false, global3[_wgslsmith_index_u32(49723u, 26u)])), true, !global3[_wgslsmith_index_u32(global2.a.x, 26u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(global2.a.x, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global2.a.x, 26u)]), true), any(!vec2<bool>(global3[_wgslsmith_index_u32(global2.a.x, 26u)], true)) != global3[_wgslsmith_index_u32(74242u, 26u)]));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a.x, 98660u), 15u)];
    let var_2 = global0[_wgslsmith_index_u32(1u, 15u)];
    global3 = array<bool, 26>();
    return Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 15u)], Struct_1(~(select(var_1.a, var_1.a, var_0.wx) & select(vec2<u32>(var_2.a.x, 59832u), vec2<u32>(global2.a.x, global2.a.x), vec2<bool>(true, global3[_wgslsmith_index_u32(var_2.a.x, 26u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d.x), var_1.b)), ~abs(arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, _wgslsmith_f_op_f32(-1000f - -640f), global2.d.x, -770f))), global2.a ^ ~var_1.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<u32> {
    global2 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1998f))) * _wgslsmith_f_op_f32(1064f + -2019f)))), arg_2.b));
    let var_1 = global2.c;
    global1 = _wgslsmith_mod_i32(-62733i, arg_2.c);
    let var_2 = arg_1.b;
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_3.x, 0u), abs(vec2<u32>(1u, 2289u) & arg_1.a.a)) >> (~arg_2.a % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(min(global2.a, func_4(all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, global3[_wgslsmith_index_u32(global2.a.x, 26u)], global3[_wgslsmith_index_u32(4693u, 26u)])), func_2(vec3<i32>(u_input.c, global2.c, 33698i), 2147483647i, global2.c), Struct_1(vec2<u32>(810u, 0u), global2.b, 0i, global2.d), reverseBits(global2.a))) & vec2<u32>(55654u, ~global2.a.x >> (4294967295u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1315f, global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1057f), true))) * _wgslsmith_f_op_f32(sign(952f))), ~global2.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(trunc(global2.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2083f + global2.b) * _wgslsmith_f_op_f32(-global2.d.x))), global2.d.x, -674f));
    global3 = array<bool, 26>();
    var_0 = func_2(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.c, _wgslsmith_div_i32(38935i, u_input.c), ~57643i), select(firstTrailingBit(vec3<i32>(u_input.c, -25395i, -39746i)), vec3<i32>(var_0.c, u_input.c, -16125i) ^ vec3<i32>(var_0.c, u_input.c, var_0.c), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], true, true))), vec3<i32>(0i, abs(u_input.a), abs(1i))), reverseBits(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, var_0.c, 6124i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 13066i, var_0.c), vec3<i32>(8456i, global2.c, global2.c), vec3<i32>(var_0.c, -2147483647i, var_0.c)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-var_0.c, 2147483647i), -5001i)).b;
    var_0 = func_2(vec3<i32>(~max(var_0.c, -1i), _wgslsmith_dot_vec2_i32(~u_input.b, u_input.b), ~(~global2.c)) ^ vec3<i32>(_wgslsmith_mod_i32(var_0.c, abs(933i)), _wgslsmith_div_i32(var_0.c, u_input.b.x) | firstTrailingBit(47213i), ~(-1i)), 35969i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 1i, -29578i), ~(vec3<i32>(-1i) * -vec3<i32>(-1i, -1i, 2147483647i)))).a;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, 1u, global2.a.x), vec3<u32>(1u, var_0.a.x, 0u)), vec3<u32>(37863u, var_0.a.x, 4294967295u), select(vec3<u32>(67094u, 9569u, var_0.a.x), vec3<u32>(var_0.a.x, 1u, global2.a.x), true))), vec3<u32>(31623u, 33522u, 1u)), 15u)];
    return Struct_1(vec2<u32>(45135u, 52115u), _wgslsmith_f_op_f32(floor(780f)), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f), 203f);
    global3 = array<bool, 26>();
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-647f * 1395f);
    let var_3 = vec2<u32>(~32755u, global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_mod_u32(~var_1.a.x, 4294967295u), var_1.a.x, 24379u, _wgslsmith_div_u32(var_1.a.x, var_3.x)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 2094u, 0u), vec4<u32>(global2.a.x, 4294967295u, var_1.a.x, global2.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, 23515u, 6553u, 0u), vec4<u32>(var_1.a.x, var_3.x, global2.a.x, global2.a.x))) >> (~abs(vec4<u32>(4294967295u, 61337u, var_1.a.x, 4294967295u)) % vec4<u32>(32u)), !select(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2.a.x, 26u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global2.a.x, 26u)], false), true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(var_1.a.x, 26u)]), false)));
}

