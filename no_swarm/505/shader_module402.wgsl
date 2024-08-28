struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(2147483647i, 0i, 0i, 20436i, i32(-2147483648), -17983i, i32(-2147483648), -13951i, 0i, 1i, i32(-2147483648), -1i, -12470i, -1i);

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(78144u, 31342u), vec2<u32>(1u, 28331u), vec2<u32>(75509u, 1u), vec2<u32>(4596u, 1u), vec2<u32>(1u, 30251u), vec2<u32>(1u, 4294967295u), vec2<u32>(47140u, 17192u), vec2<u32>(0u, 12757u), vec2<u32>(6475u, 19354u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4458u), vec2<u32>(1u, 1u), vec2<u32>(87569u, 0u), vec2<u32>(0u, 29450u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(45702u, 4294967295u), vec2<u32>(49097u, 74299u), vec2<u32>(63638u, 0u), vec2<u32>(26326u, 98712u), vec2<u32>(11319u, 6619u), vec2<u32>(27456u, 56695u));

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_add_u32(countOneBits(117339u) >> (1u % 32u), ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ u_input.b.x), Struct_1(~(vec4<u32>(36400u, 18939u, 0u, u_input.b.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(16774u, 35920u, 46550u, 24319u), vec4<u32>(1u, 4294967295u, u_input.b.x, 1u))), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f - 942f)), _wgslsmith_f_op_f32(-462f + 222f)), true));
    global2 = _wgslsmith_div_i32(7973i, -22664i);
    global1 = array<vec2<u32>, 22>();
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = Struct_3(u_input.b.x, var_0.b);
    return var_2.b;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = func_2();
    global2 = global0[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(39216u, _wgslsmith_div_u32(arg_0 & u_input.b.x, var_0.b)), _wgslsmith_mult_u32(var_0.b, abs(55522u))), 14u)];
    let var_1 = select(!(!select(vec2<bool>(false, var_0.d), vec2<bool>(true, true), false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(var_0.d, var_0.d, arg_2.a.b.d)), u_input.c.x != (global0[_wgslsmith_index_u32(4294967295u, 14u)] ^ global0[_wgslsmith_index_u32(arg_0, 14u)])), select(vec2<bool>(true, var_0.d), vec2<bool>(any(vec4<bool>(true, false, false, arg_2.a.b.d)), false), vec2<bool>(true, any(vec4<bool>(arg_2.a.b.d, true, true, var_0.d))))));
    var var_2 = arg_2;
    var_2 = arg_2;
    return arg_2.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = false;
    let var_1 = ~select(~(~vec2<u32>(u_input.b.x, 4294967295u)), vec2<u32>(0u, countOneBits(countOneBits(u_input.b.x))), any(select(select(vec3<bool>(arg_2.b.d, var_0, true), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, var_0, arg_0.x)), !vec3<bool>(var_0, true, arg_2.b.d), !vec3<bool>(false, arg_2.b.d, true))));
    global0 = array<i32, 14>();
    let var_2 = max(57533u, ~_wgslsmith_add_u32(func_3(~4294967295u, 4294967295u, Struct_4(arg_2, arg_0.x, arg_2.b.a.x, 23793u)).a, u_input.b.x | _wgslsmith_add_u32(arg_2.a, arg_2.a)));
    var var_3 = -1841f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1342f))))) + arg_2.b.c.x);
    return Struct_2(Struct_1(~abs(vec4<u32>(0u, var_2, var_2, var_1.x)), ~select(u_input.b.x, 1u, arg_0.x) << (max(~4294967295u, u_input.b.x) % 32u), _wgslsmith_f_op_vec2_f32(-arg_2.b.c), func_2().d));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> vec2<f32> {
    var var_0 = func_4(arg_0.wx, u_input.a, func_3(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b.x), ~arg_2.c, 10823u), ~(~arg_2.a.b.a.zwz)), Struct_4(Struct_3(u_input.b.x, func_2()), !(arg_2.d > arg_1.b.b), (124058u << (u_input.b.x % 32u)) >> (arg_2.a.a % 32u), firstLeadingBit(arg_2.c) >> (_wgslsmith_add_u32(arg_2.a.b.a.x, arg_2.d) % 32u))));
    var_0 = Struct_2(Struct_1(~(~(vec4<u32>(arg_1.a, arg_1.a, u_input.b.x, 0u) >> (arg_1.b.a % vec4<u32>(32u)))), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-198f, -1454f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.c.x, -698f), arg_2.a.b.c, arg_0.zz)))), true));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -abs(vec3<i32>(global0[_wgslsmith_index_u32(0u, 14u)], 1i, -42422i) << (vec3<u32>(1u, arg_1.b.b, 20423u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a), -global0[_wgslsmith_index_u32(arg_1.a, 14u)], -1i), (global0[_wgslsmith_index_u32(25917u, 14u)] | global0[_wgslsmith_index_u32(104660u, 14u)]) << (arg_1.b.a.x % 32u), countOneBits(~u_input.d.x)) << (reverseBits(~firstTrailingBit(u_input.b)) % vec3<u32>(32u)));
    let var_2 = vec3<i32>(~select(global0[_wgslsmith_index_u32(20979u, 14u)], max(-9396i, u_input.c.x), true), -firstLeadingBit(~17509i) ^ ~max(var_1, -3115i), ~(~(-1i)));
    var var_3 = u_input.e;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.b.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1021f, var_0.a.c.x) + vec2<f32>(-530f, arg_1.b.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(false, false, true, false), Struct_3(u_input.b.x, Struct_1(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), 1u, vec2<f32>(889f, -1000f), false)), Struct_4(Struct_3(u_input.b.x, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), u_input.b.x, vec2<f32>(-2137f, 1000f), false)), false, 9229u, 18011u), true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1049f, -387f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1043f, 2072f), vec2<f32>(481f, -1193f), true)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1417f, -502f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(555f, 826f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, -1163f))) - vec2<f32>(_wgslsmith_f_op_f32(step(-268f, -1196f)), -1262f))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, -1000f))))))));
    global0 = array<i32, 14>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, func_4(vec2<bool>(true, true), -1i, Struct_3(0u, Struct_1(vec4<u32>(5223u, u_input.b.x, 50807u, u_input.b.x), u_input.b.x, vec2<f32>(1919f, -1074f), false))).a.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-464f, -1833f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -200f) * vec2<f32>(var_0.x, 795f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -263f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -1873f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) + _wgslsmith_f_op_f32(trunc(var_0.x))), 439f)));
    global2 = _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4527u, 14u)], global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.b.x, 0u), ~u_input.b.x), 14u)])), min(35331i << (u_input.b.x % 32u), max(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.c.x, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -24660i, 206i), u_input.e))) << (0u % 32u));
    var var_1 = 42453u;
    global1 = array<vec2<u32>, 22>();
    var var_2 = Struct_5(_wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.b.x), u_input.b.x), 0u), u_input.b, !(958f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1788f, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec4<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(12189u, var_2.a), vec2<u32>(u_input.b.x, u_input.b.x)), var_2.b.yy << (u_input.b.zz % vec2<u32>(32u)))), 0u, _wgslsmith_sub_u32(var_2.a, min(48021u, var_2.a) ^ ~111507u), 56044u), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

