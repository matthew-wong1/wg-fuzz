struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-510f, 922f);

var<private> global1: f32 = -616f;

var<private> global2: Struct_3 = Struct_3(2477f, vec2<bool>(true, true), Struct_1(2147483647i, 0i, 3126f, 1u, vec4<i32>(429i, i32(-2147483648), 2147483647i, 0i)), Struct_1(-20194i, 34680i, -202f, 65835u, vec4<i32>(2147483647i, -11370i, 13755i, -26314i)), -44165i);

var<private> global3: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(50444u, 1u, 6766u), vec3<u32>(0u, 30591u, 21080u), vec3<u32>(61742u, 56863u, 4294967295u), vec3<u32>(4294967295u, 0u, 2398u), vec3<u32>(2728u, 1u, 0u), vec3<u32>(51987u, 0u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 76328u, 0u), vec3<u32>(1u, 4294967295u, 27445u), vec3<u32>(1u, 1u, 1063u), vec3<u32>(43686u, 1128u, 41404u), vec3<u32>(20845u, 4294967295u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4729u, 1u, 23482u), vec3<u32>(22518u, 24663u, 1u), vec3<u32>(35368u, 2548u, 0u), vec3<u32>(0u, 104081u, 23519u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 71477u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(55155u, 48527u, 0u), vec3<u32>(44360u, 4294967295u, 0u), vec3<u32>(0u, 9275u, 1u), vec3<u32>(0u, 37347u, 67493u), vec3<u32>(45669u, 1432u, 10620u), vec3<u32>(1u, 47796u, 0u), vec3<u32>(27709u, 1u, 121821u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 81242u), vec3<u32>(1u, 0u, 1u), vec3<u32>(28687u, 13771u, 4294967295u), vec3<u32>(77245u, 0u, 58577u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    global0 = Struct_2(-1604f, 457f);
    let var_0 = false;
    global0 = Struct_2(1708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.d.c, global2.d.c, true)), -871f)))));
    global3 = array<vec3<u32>, 32>();
    let var_1 = !(!(14871i != firstTrailingBit(1i))) || var_0;
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global2.c.a, firstLeadingBit(1i)), ~(~select(u_input.e.x, -1i, false))), u_input.c.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(-1216f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.c))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_add_u32(~arg_2.d.d, arg_2.d.d);
    let var_3 = ~(~(~firstTrailingBit(~global2.c.d)));
    global2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3, global0.b))), -629f)), select(global2.b, select(select(var_1.b, vec2<bool>(var_1.b.x, true), false), var_1.b, true), global2.b.x), global2.c, Struct_1(arg_0.x, var_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-205f, 173f)), 546f), ~_wgslsmith_dot_vec2_u32(arg_1.zz, firstTrailingBit(vec2<u32>(24454u, 4294967295u))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, arg_0.x, global2.c.b, 37371i), global2.d.e), ~vec4<i32>(global2.d.a, arg_0.x, -17422i, -2147483647i), firstLeadingBit(arg_0)) << (arg_1 % vec4<u32>(32u))), 2147483647i);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), 469f))), _wgslsmith_f_op_f32(-arg_3));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = max(abs(global2.d.b), arg_0);
    var var_1 = func_3(-(global2.d.e ^ vec4<i32>(-1i, arg_0 ^ -7201i, u_input.d.x, _wgslsmith_mod_i32(61796i, -2147483647i))), vec4<u32>(_wgslsmith_sub_u32(~max(49536u, global2.d.d), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.b, 32u)], _wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(global2.d.d, 32u)], vec3<u32>(global2.c.d, 1u, 30426u)))), ~45279u, _wgslsmith_add_u32(u_input.b, ~4294967295u), ~1u), Struct_3(1098f, !vec2<bool>(true, global2.b.x && global2.b.x), global2.c, Struct_1(arg_1, func_2(abs(global2.d.e.x), Struct_2(-278f, 1201f)), _wgslsmith_f_op_f32(-global0.b), u_input.b >> (_wgslsmith_mult_u32(u_input.b, 4141u) % 32u), -global2.c.e), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(188f, global0.a))));
    var var_2 = func_3(vec4<i32>(_wgslsmith_div_i32(-u_input.c.x, arg_1), _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_1, arg_1), vec3<i32>(global2.c.e.x, arg_0, -2154i))), -_wgslsmith_dot_vec3_i32(global2.d.e.wzz, vec3<i32>(u_input.a.x, arg_1, arg_1))), ~global2.c.a, -u_input.c.x), vec4<u32>(~(~26067u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b) | global3[_wgslsmith_index_u32(1592u, 32u)], global3[_wgslsmith_index_u32(~u_input.b, 32u)]) % 32u), global2.c.d, u_input.b, global2.c.d), Struct_3(global2.c.c, select(select(select(vec2<bool>(global2.b.x, global2.b.x), global2.b, global2.b.x), global2.b, global2.b.x && true), global2.b, !select(vec2<bool>(global2.b.x, false), vec2<bool>(false, false), vec2<bool>(true, global2.b.x))), Struct_1(arg_1, u_input.c.x, _wgslsmith_f_op_f32(global0.a + 1775f), u_input.b, global2.d.e), global2.d, 46799i), var_1.b);
    var_2 = func_3(global2.c.e, min(~vec4<u32>(1u, global2.c.d, global2.c.d, global2.d.d) ^ (select(vec4<u32>(1u, 1u, 4294967295u, 106190u), vec4<u32>(1u, 1u, 31740u, 8779u), true) & (vec4<u32>(1u, u_input.b, 36304u, u_input.b) ^ vec4<u32>(u_input.b, global2.d.d, 0u, global2.c.d))), abs(vec4<u32>(global2.d.d, global2.c.d, 18337u, global2.c.d) & _wgslsmith_mult_vec4_u32(vec4<u32>(global2.d.d, global2.d.d, 4294967295u, global2.d.d), vec4<u32>(37025u, global2.c.d, 71298u, 85276u)))), Struct_3(127f, global2.b, global2.d, Struct_1(u_input.e.x, _wgslsmith_sub_i32(858i, ~arg_1), _wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_mod_u32(countOneBits(global2.c.d), 1u), abs(reverseBits(vec4<i32>(-10884i, global2.e, 45527i, u_input.d.x)))), -10126i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b))) - var_2.a)));
    let var_3 = global3[_wgslsmith_index_u32(1u, 32u)];
    return global2.c;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    return arg_0.b != _wgslsmith_mult_i32(1i, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global2.b.x, !(true | func_4(func_1(u_input.a.x, u_input.a.x), global2.b.x)), false);
    var var_1 = Struct_3(global0.a, !vec2<bool>(var_0.x, any(vec2<bool>(global2.b.x, false))), global2.c, func_1(global2.c.b, global2.d.a), _wgslsmith_mod_i32(max(reverseBits(-37896i | u_input.d.x), 2147483647i), ~max(global2.d.b, i32(-1i) * -56743i)));
    var_1 = Struct_3(var_1.c.c, !select(select(select(vec2<bool>(var_0.x, var_1.b.x), vec2<bool>(false, false), false), !vec2<bool>(var_1.b.x, false), vec2<bool>(true, false)), var_0.zz, true), func_1(-2147483647i, ~(-select(21061i, -1i, global2.b.x))), func_1(_wgslsmith_dot_vec2_i32(global2.c.e.yz, u_input.a), (u_input.e.x ^ u_input.d.x) & ~firstLeadingBit(-1i)), u_input.d.x);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1189f, _wgslsmith_f_op_f32(max(-386f, -977f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.c * 435f) * 423f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.c, global0.b, _wgslsmith_f_op_f32(-global2.d.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.c, -293f, -937f), vec3<f32>(global2.a, global0.b, global0.b)))) + vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d.c))), _wgslsmith_f_op_f32(max(199f, func_3(vec4<i32>(global2.c.a, 1i, -23512i, u_input.d.x), vec4<u32>(var_1.c.d, global2.d.d, var_1.d.d, 32491u), Struct_3(-367f, vec2<bool>(var_1.b.x, var_1.b.x), var_1.c, global2.c, u_input.a.x), global2.c.c).a)))));
    let var_3 = func_1(12954i, -_wgslsmith_add_i32(21229i, _wgslsmith_sub_i32(var_1.e, u_input.a.x)));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f - var_1.c.c) - _wgslsmith_f_op_f32(-global0.a))))), _wgslsmith_f_op_f32(step(var_3.c, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 4294967295u);
}

