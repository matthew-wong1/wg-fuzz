struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(19819u, 18948u, 1u), Struct_1(i32(-2147483648), vec4<u32>(10208u, 0u, 41456u, 4294967295u), vec2<i32>(-51676i, i32(-2147483648))), vec2<f32>(-679f, 440f));

var<private> global1: array<Struct_3, 13>;

var<private> global2: array<f32, 28>;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(0i, vec4<u32>(4709u, 26002u, 29406u, 23725u), vec2<i32>(3251i, -1i)), Struct_1(10239i, vec4<u32>(10449u, 25844u, 1463u, 7710u), vec2<i32>(-34147i, 1i)), Struct_1(2147483647i, vec4<u32>(0u, 6898u, 0u, 56745u), vec2<i32>(7002i, -8545i)), Struct_1(5252i, vec4<u32>(44321u, 0u, 32524u, 74274u), vec2<i32>(0i, 2423i)), Struct_1(i32(-2147483648), vec4<u32>(66991u, 0u, 4294967295u, 4003u), vec2<i32>(36822i, -38071i)), Struct_1(-12312i, vec4<u32>(4294967295u, 8098u, 15940u, 0u), vec2<i32>(-1i, i32(-2147483648))), Struct_1(17721i, vec4<u32>(0u, 69868u, 1u, 20304u), vec2<i32>(42768i, i32(-2147483648))), Struct_1(-49245i, vec4<u32>(1u, 79u, 1u, 55302u), vec2<i32>(-1i, -6924i)), Struct_1(i32(-2147483648), vec4<u32>(1u, 39149u, 40198u, 4294967295u), vec2<i32>(24883i, 0i)), Struct_1(0i, vec4<u32>(1u, 1u, 0u, 0u), vec2<i32>(i32(-2147483648), -31455i)), Struct_1(2147483647i, vec4<u32>(0u, 4336u, 9099u, 1u), vec2<i32>(2147483647i, -1i)), Struct_1(33241i, vec4<u32>(59083u, 42356u, 1u, 0u), vec2<i32>(4983i, 11191i)), Struct_1(-36432i, vec4<u32>(4294967295u, 28858u, 0u, 0u), vec2<i32>(-47819i, 12736i)), Struct_1(-18087i, vec4<u32>(15597u, 64113u, 2764u, 4294967295u), vec2<i32>(2147483647i, 1i)), Struct_1(-44663i, vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<i32>(i32(-2147483648), -4038i)), Struct_1(24041i, vec4<u32>(43543u, 21791u, 1u, 36183u), vec2<i32>(i32(-2147483648), 2172i)), Struct_1(14863i, vec4<u32>(4294967295u, 71781u, 24436u, 40817u), vec2<i32>(-1i, 1i)), Struct_1(2147483647i, vec4<u32>(1u, 1u, 1u, 1u), vec2<i32>(28425i, -55047i)), Struct_1(40838i, vec4<u32>(49303u, 4294967295u, 5805u, 1u), vec2<i32>(62413i, 2147483647i)), Struct_1(-18476i, vec4<u32>(4294967295u, 58670u, 31881u, 4294967295u), vec2<i32>(26073i, 31344i)), Struct_1(-1i, vec4<u32>(69500u, 34536u, 1u, 17627u), vec2<i32>(i32(-2147483648), -44928i)), Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 15645u, 0u, 58326u), vec2<i32>(-18082i, 0i)));

var<private> global4: array<vec2<f32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(0u), 13u)];
    var var_1 = Struct_2(-1219f, _wgslsmith_f_op_f32(var_0.c.x - -1000f), _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.a, var_0.b.a, u_input.a, u_input.a) | vec4<i32>(var_0.b.a, var_0.b.a, u_input.a, global0.b.c.x)), vec4<i32>(-1i) * -vec4<i32>(var_0.b.c.x, 12430i, u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 51654u), var_0.a.yx), vec2<u32>(~21976u, _wgslsmith_add_u32(var_0.b.b.x, 57053u))), countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, global0.b.b.x, global0.b.b.x, 0u), var_0.b.b), ~27574u))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -136f))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -182f)))), var_0.c.x, -global0.b.c.x, vec2<u32>(~(~abs(28727u)), 0u));
    return global1[_wgslsmith_index_u32(global0.b.b.x, 13u)];
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-853f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.a.x, 28u)]), -490f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.b.b.x, 28u)]), _wgslsmith_f_op_f32(floor(-154f)), _wgslsmith_f_op_f32(ceil(-1258f))))))));
    let var_1 = max(select(min(vec4<i32>(-arg_0, arg_0 & arg_0, 73670i, ~1i), _wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.b.a, u_input.a, 724i, u_input.a), vec4<i32>(1i, 28980i, -18898i, arg_0)), abs(vec4<i32>(-14660i, arg_0, arg_0, arg_0)))), ~(-vec4<i32>(arg_0, u_input.a, -46563i, u_input.a)) << (global0.b.b % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), select(reverseBits(vec4<i32>(-u_input.a, _wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_mod_i32(global0.b.c.x, arg_0), _wgslsmith_add_i32(u_input.a, arg_0))), -vec4<i32>(global0.b.c.x, u_input.a, ~global0.b.a, abs(15597i)), vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))));
    global0 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1630f, global2[_wgslsmith_index_u32(0u ^ global0.b.b.x, 28u)])), _wgslsmith_f_op_f32(-var_0.x))) + global2[_wgslsmith_index_u32(~global0.a.x, 28u)]);
    global4 = array<vec2<f32>, 10>();
    return false;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global2 = array<f32, 28>();
    let var_0 = func_2();
    let var_1 = vec3<bool>(!(func_3(var_0.b.a) && true), !all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))) | (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 28u)]), global2[_wgslsmith_index_u32(select(51064u, 0u, true), 28u)])) == 558f), any(vec2<bool>(true, true)));
    global4 = array<vec2<f32>, 10>();
    global1 = array<Struct_3, 13>();
    return global3[_wgslsmith_index_u32(31737u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.b.b.zwz, func_1(-67508i, global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)));
    let var_0 = ~global0.b.b.x;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1022f, -1620f, global2[_wgslsmith_index_u32(0u, 28u)], -124f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, 1118f, global2[_wgslsmith_index_u32(1u, 28u)], global0.c.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-590f, global0.c.x, global0.c.x, global2[_wgslsmith_index_u32(var_0, 28u)]))), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, _wgslsmith_f_op_f32(step(-867f, -1000f)), _wgslsmith_f_op_f32(860f + 1790f), -513f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.yzz);
    var var_3 = false;
    var var_4 = Struct_5(all(vec2<bool>(true, true)), global0.b.b.x, Struct_1(-37212i, vec4<u32>(_wgslsmith_div_u32(~53177u, global0.b.b.x), select(24776u, 4294967295u, true) | var_0, _wgslsmith_dot_vec4_u32(select(global0.b.b, global0.b.b, vec4<bool>(true, true, false, false)), global0.b.b), _wgslsmith_mod_u32(var_0, 4144u)), _wgslsmith_add_vec2_i32(select(countOneBits(vec2<i32>(u_input.a, u_input.a)), ~global0.b.c, vec2<bool>(false, false)), vec2<i32>(global0.b.c.x, ~u_input.a))), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), Struct_3(vec3<u32>(min(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), global0.b.b.zwx)), var_0, var_0), Struct_1(-abs(u_input.a), func_1(-31528i, var_2.x).b, abs(-global0.b.c)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, global2[_wgslsmith_index_u32(var_0, 28u)]) * _wgslsmith_f_op_vec2_f32(-var_1.yw))))));
    var_1 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(-372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-836f)) * _wgslsmith_f_op_f32(trunc(global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(165f - var_4.e.c.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-968f, var_4.e.c.x)), var_1.x, false))) - -138f));
    var_3 = all(!select(!vec4<bool>(false, false, var_4.a, true), !vec4<bool>(false, var_4.a, false, var_4.a), select(vec4<bool>(var_4.d, true, var_4.a, var_4.d), vec4<bool>(var_4.d, var_4.d, var_4.a, var_4.d), vec4<bool>(var_4.d, false, var_4.d, true)))) || true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-163f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, global0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -501f)))));
}

