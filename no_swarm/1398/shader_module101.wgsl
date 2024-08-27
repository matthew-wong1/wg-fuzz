struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<f32, 6> = array<f32, 6>(-1633f, 914f, -545f, -511f, -175f, -1334f);

var<private> global3: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 55410u, 4294967295u, 17182u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 73945u, 1u, 1u), vec4<u32>(1u, 1u, 43988u, 29674u), vec4<u32>(37659u, 26105u, 66200u, 0u), vec4<u32>(96984u, 64488u, 69387u, 18247u), vec4<u32>(20196u, 1u, 9317u, 8866u), vec4<u32>(24599u, 10618u, 42930u, 13335u), vec4<u32>(0u, 4294967295u, 39128u, 1u), vec4<u32>(4294967295u, 2241u, 1u, 4294967295u), vec4<u32>(60052u, 4294967295u, 4294967295u, 1u), vec4<u32>(4024u, 78802u, 0u, 2894u), vec4<u32>(0u, 1u, 9817u, 1u), vec4<u32>(51823u, 20799u, 4294967295u, 33074u), vec4<u32>(1252u, 46400u, 11879u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(75214u, 0u, 3228u, 1u), vec4<u32>(0u, 0u, 28701u, 4294967295u), vec4<u32>(31017u, 4149u, 7487u, 4294967295u), vec4<u32>(24617u, 0u, 5388u, 49226u), vec4<u32>(4294967295u, 49405u, 38566u, 1u), vec4<u32>(84765u, 25982u, 1u, 4294967295u), vec4<u32>(0u, 36436u, 1u, 0u), vec4<u32>(1u, 1u, 4294967295u, 52649u), vec4<u32>(44940u, 1u, 0u, 5520u), vec4<u32>(0u, 100093u, 14434u, 1u), vec4<u32>(10312u, 0u, 0u, 4294967295u), vec4<u32>(0u, 3394u, 35975u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(21u, 22677u, 0u, 84651u), vec4<u32>(1u, 0u, 10700u, 7102u), vec4<u32>(4294967295u, 146u, 9438u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_sub_i32(~4773i, u_input.a << (71792u % 32u));
    global4 = array<vec4<u32>, 32>();
    var var_1 = abs(2147483647i);
    global1 = select(!(!(!vec4<bool>(global1.x, false, global1.x, global1.x))), vec4<bool>(all(vec3<bool>(global1.x, false, global0.x >= 50906u)), false, global1.x, any(select(global1.zzz, select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, false, global1.x)), any(vec2<bool>(false, global1.x))))), any(vec3<bool>(true, !any(vec2<bool>(global1.x, global1.x)), all(select(vec2<bool>(global1.x, global1.x), global3[_wgslsmith_index_u32(62556u, 25u)], global1.x)))));
    let var_2 = Struct_2(-656f, vec4<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), abs(var_0), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0, 2147483647i, var_0, -4487i), vec4<i32>(-14477i, 18562i, var_0, u_input.a) & vec4<i32>(var_0, 2147483647i, var_0, 54427i))), !(!(!global1.xw)), true, Struct_1(global3[_wgslsmith_index_u32(abs(reverseBits(u_input.c)) | 74014u, 25u)]));
    return ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(18328u, 4294967295u), select(vec2<u32>(72700u, global0.x) ^ u_input.b, _wgslsmith_add_vec2_u32(u_input.b, u_input.b), global1.wx), u_input.b));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = func_3();
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, var_0.x), vec3<u32>(global0.x, var_0.x, 0u))), select(1u, global0.x, false) >> (reverseBits(4294967295u) % 32u)), var_0.x, ~u_input.b.x)), 32u)];
    global3 = array<vec2<bool>, 25>();
    global0 = reverseBits(vec2<u32>(~1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(28534u, 32u)], vec4<u32>(var_0.x, u_input.c, global0.x, u_input.b.x)), _wgslsmith_dot_vec3_u32(var_1.zzx, var_1.xzx))) & u_input.b);
    var var_2 = 0i;
    return vec4<bool>(any(select(select(select(vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(false, arg_1.a.x, global1.x, global1.x), vec4<bool>(true, true, false, global1.x)), select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), vec4<bool>(global1.x, global1.x, global1.x, false), true), select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(false, false, arg_1.a.x, false))), select(!vec4<bool>(global1.x, arg_1.a.x, arg_1.a.x, global1.x), vec4<bool>(true, true, true, true), true), all(global1.yzy))), !arg_1.a.x, global1.x, arg_1.a.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = select(!(!select(select(vec4<bool>(global1.x, true, true, true), vec4<bool>(true, arg_0.a.x, global1.x, global1.x), arg_0.a.x), !vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))), func_2(firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 57194i), vec2<i32>(1i, 30194i))), arg_0, _wgslsmith_f_op_f32(floor(-627f))), !select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, global1.x, arg_0.a.x, arg_0.a.x), true), arg_0.a.x), vec4<bool>(true, select(global1.x, true, false), global1.x, true), true));
    let var_0 = !(!vec4<bool>(-148f == _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global0.x, 6u)], -182f)), (true || global1.x) & true, !(-703f == global2[_wgslsmith_index_u32(46969u, 6u)]), !global1.x | global1.x));
    let var_1 = 1u;
    return Struct_2(-240f, ~(-(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, 1i, 38802i), vec4<i32>(1i, u_input.a, u_input.a, -29186i)) << (global4[_wgslsmith_index_u32(1u << (u_input.c % 32u), 32u)] % vec4<u32>(32u)))), global3[_wgslsmith_index_u32(var_1, 25u)], !(all(func_2(vec2<i32>(u_input.a, u_input.a), arg_0, -1100f).zzw) | all(arg_0.a)), Struct_1(select(var_0.yw, vec2<bool>(var_0.x, true), any(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(true, var_0.x, true, global1.x), var_0.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * -386f)), -1000f, arg_1.a) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1271f, -174f, 659f, -1394f) - vec4<f32>(-160f, arg_1.a, 555f, arg_1.a)))))));
    let var_1 = func_1(arg_2);
    global2 = array<f32, 6>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -340f) * _wgslsmith_f_op_f32(round(1502f)))) + -1363f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(511f, -507f)), arg_1.a));
    var var_3 = firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1.b.x), vec2<i32>(var_1.b.x, arg_1.b.x) ^ vec2<i32>(-33108i, var_1.b.x)), ~arg_1.b.xy << (countOneBits(vec2<u32>(u_input.c, 39171u)) % vec2<u32>(32u)))));
    return 1i >> (arg_0 % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    global4 = array<vec4<u32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-669f * global2[_wgslsmith_index_u32(20589u, 6u)]);
    global4 = array<vec4<u32>, 32>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(567f))), -(~_wgslsmith_div_vec4_i32(min(vec4<i32>(57245i, arg_2, -51137i, 3673i), vec4<i32>(9221i, u_input.a, u_input.a, arg_2)), -vec4<i32>(-70165i, -1i, arg_2, arg_2))), select(vec2<bool>(true, var_0.a.x), !global3[_wgslsmith_index_u32(u_input.b.x, 25u)], !any(vec4<bool>(var_0.a.x, arg_0.a.x, false, var_0.a.x))), var_0.a.x, func_1(func_1(Struct_1(vec2<bool>(var_0.a.x, false))).e).e);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(global3[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_f32(-1065f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) + -891f)), ~func_4(u_input.b.x, func_1(Struct_1(global3[_wgslsmith_index_u32(7710u, 25u)])), func_1(Struct_1(vec2<bool>(false, false))).e) >> ((~u_input.c ^ ~abs(1u)) % 32u));
    var var_1 = func_1(func_5(Struct_1(var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -214f), 29592i));
    global0 = vec2<u32>(u_input.b.x, min(global0.x | u_input.b.x, _wgslsmith_dot_vec4_u32(~global4[_wgslsmith_index_u32(u_input.b.x, 32u)], reverseBits(global4[_wgslsmith_index_u32(1u, 32u)]))));
    global2 = array<f32, 6>();
    var var_2 = func_1(func_5(func_1(var_1.e).e, var_1.a, -var_1.b.x));
    var_1 = Struct_2(502f, var_1.b, vec2<bool>(!var_1.d, global1.x && true), !any(!select(vec3<bool>(true, true, true), vec3<bool>(var_2.c.x, var_1.c.x, var_1.d), global1.x)), var_2.e);
    var var_3 = (vec2<u32>(global0.x, ~global0.x) | u_input.b) << ((vec2<u32>(countOneBits(~u_input.c), global0.x) & u_input.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-822i << (_wgslsmith_dot_vec4_u32(select(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], vec4<u32>(u_input.b.x, 19601u, 4570u, u_input.c), var_1.e.a.x) & ~vec4<u32>(1u, 10052u, var_3.x, u_input.c), reverseBits(global4[_wgslsmith_index_u32(78446u, 32u)] & global4[_wgslsmith_index_u32(u_input.c, 32u)])) % 32u), var_2.b.x & 2147483647i, -1000f);
}

