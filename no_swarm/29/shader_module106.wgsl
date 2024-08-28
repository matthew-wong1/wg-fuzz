struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 27>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-520f, vec4<u32>(0u, 0u, 0u, 1u), 0u), Struct_2(-1576f, vec4<u32>(1u, 13897u, 29932u, 0u), 4294967295u), Struct_2(2479f, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 20641u), Struct_2(-2101f, vec4<u32>(4294967295u, 1u, 82481u, 21905u), 13973u), Struct_2(-813f, vec4<u32>(1u, 4294967295u, 0u, 13821u), 61657u), Struct_2(-1430f, vec4<u32>(35604u, 1u, 23234u, 29643u), 0u), Struct_2(1151f, vec4<u32>(37787u, 0u, 28799u, 1u), 26353u), Struct_2(-987f, vec4<u32>(4294967295u, 0u, 6469u, 293u), 77471u), Struct_2(938f, vec4<u32>(1u, 84319u, 4294967295u, 0u), 1u), Struct_2(-1211f, vec4<u32>(23651u, 1u, 1u, 36527u), 38754u), Struct_2(1407f, vec4<u32>(4294967295u, 112812u, 1u, 37368u), 51984u), Struct_2(594f, vec4<u32>(99861u, 31441u, 42650u, 35438u), 57144u), Struct_2(-440f, vec4<u32>(1u, 17797u, 5435u, 0u), 1u), Struct_2(-1891f, vec4<u32>(47659u, 3292u, 0u, 1u), 1u), Struct_2(-2322f, vec4<u32>(16111u, 8090u, 42782u, 0u), 4294967295u), Struct_2(-1236f, vec4<u32>(1u, 28023u, 4294967295u, 18915u), 0u), Struct_2(-759f, vec4<u32>(0u, 0u, 1u, 1u), 14252u), Struct_2(-180f, vec4<u32>(5104u, 0u, 53402u, 0u), 1u), Struct_2(-1000f, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 33279u), Struct_2(-1000f, vec4<u32>(10487u, 0u, 51170u, 4766u), 69228u));

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    global2 = array<Struct_2, 20>();
    var var_0 = ~11231i;
    let var_1 = 462f;
    var var_2 = ~(~(u_input.d.x << (u_input.d.x % 32u)));
    global2 = array<Struct_2, 20>();
    return global2[_wgslsmith_index_u32(1u, 20u)];
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> vec2<f32> {
    global1 = array<f32, 27>();
    let var_0 = _wgslsmith_sub_i32(global3.x, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.b, -22608i, ~8825i), arg_2.c.c.x));
    var var_1 = arg_2.a;
    var var_2 = !select(vec3<bool>(true, arg_2.c.d.x, true), !select(vec3<bool>(true, arg_2.c.d.x, true), vec3<bool>(arg_2.c.d.x, false, arg_2.c.d.x), all(vec2<bool>(arg_2.c.d.x, true))), arg_2.c.d.x);
    var var_3 = _wgslsmith_f_op_f32(sign(arg_2.d.a.x));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_3.a - 476f)), vec2<f32>(_wgslsmith_f_op_f32(-1064f * 1f), _wgslsmith_f_op_f32(round(-1103f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 27u)]));
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(41158i, func_2(Struct_1(vec3<f32>(-1336f, global1[_wgslsmith_index_u32(5078u, 27u)], arg_0.a.x), 33945u, arg_0.c), vec2<bool>(select(true, arg_2.x, arg_2.x), false)), Struct_4(arg_0, Struct_1(arg_0.a, func_2(arg_0, arg_2).c, ~vec2<u32>(u_input.d.x, u_input.d.x)), Struct_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], -1042f, 1000f), 0u, vec2<u32>(81064u, 0u)), Struct_1(vec3<f32>(220f, arg_0.a.x, 1128f), 4294967295u, vec2<u32>(arg_0.c.x, 4294967295u)), u_input.c.xx, select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, true), false), 732f), Struct_1(arg_0.a, arg_3.c, arg_0.c), Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_0.a, vec3<bool>(true, false, arg_2.x))), ~26197u, _wgslsmith_sub_vec2_u32(u_input.d, u_input.d))), Struct_2(-308f, arg_3.b, ~arg_0.c.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.zy - arg_0.a.zy))));
    let var_2 = 1i;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2203f, 1000f) * arg_0.a), vec3<f32>(2316f, -606f, 205f), true))), ~0u, arg_3.b.ww), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.a, -959f, arg_3.a), vec3<f32>(var_1.x, arg_3.a, 1033f))) * arg_0.a), u_input.a, arg_3.b.zx << (abs(vec2<u32>(0u, 10454u)) % vec2<u32>(32u))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, var_1.x, arg_0.a.x)))), ~18538u, _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(4294967295u, arg_3.b.x))), Struct_1(arg_0.a, u_input.a, firstLeadingBit(vec2<u32>(u_input.a, u_input.d.x))), select(-u_input.c.wy << (arg_0.c % vec2<u32>(32u)), select(vec2<i32>(-2147483647i, -1i) ^ u_input.c.xx, ~u_input.c.zy, all(vec2<bool>(arg_2.x, false))), true), vec2<bool>(all(select(arg_2, arg_2, arg_2.x)), !arg_2.x), -1100f), Struct_1(arg_0.a, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_3.c, u_input.a), arg_3.b.x) & ~arg_0.c.x, u_input.d), arg_0);
    return ~(~u_input.d | ~abs(vec2<u32>(u_input.d.x, var_3.d.b)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> u32 {
    global2 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~1u, 27u)], global1[_wgslsmith_index_u32(u_input.d.x, 27u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~29551u, 27u)] - arg_0.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(1137f, arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_1.x, 27u)])) + _wgslsmith_f_op_f32(f32(-1f) * -1761f)), arg_0.a)));
    let var_1 = vec3<f32>(-1579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-326f, _wgslsmith_f_op_f32(-func_2(Struct_1(vec3<f32>(var_0.x, 732f, var_0.x), 0u, arg_0.b.yz), vec2<bool>(true, true)).a)))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(16781u, 27u)], -204f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0.a, var_0.x) + vec3<f32>(185f, arg_0.a, 1505f)), vec3<bool>(true, true, false))), (u_input.d.x << (arg_0.c % 32u)) & arg_1.x, _wgslsmith_mult_vec2_u32(u_input.d, u_input.d)), vec2<bool>(true, true)).a);
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(-180f, _wgslsmith_f_op_vec2_f32(func_3(51694i, Struct_2(global1[_wgslsmith_index_u32(0u, 27u)], vec4<u32>(arg_0.b.x, 4294967295u, arg_1.x, 77829u), 59300u), Struct_4(Struct_1(vec3<f32>(var_0.x, -873f, 357f), u_input.d.x, vec2<u32>(16507u, arg_1.x)), Struct_1(vec3<f32>(1376f, arg_0.a, var_1.x), u_input.d.x, vec2<u32>(arg_0.c, arg_1.x)), Struct_3(Struct_1(var_1, arg_1.x, arg_1), Struct_1(var_1, arg_1.x, arg_1), vec2<i32>(1i, global3.x), vec2<bool>(true, true), -1041f), Struct_1(var_1, 66314u, vec2<u32>(u_input.d.x, arg_1.x)), Struct_1(vec3<f32>(var_1.x, var_0.x, -1811f), arg_0.b.x, vec2<u32>(u_input.d.x, arg_0.c))), Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 27u)], arg_0.b, arg_1.x))).x, _wgslsmith_f_op_f32(-var_0.x))), 42217u, vec2<u32>(44170u, ~firstLeadingBit(69090u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1)) * _wgslsmith_f_op_vec3_f32(-var_1)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 27u)], var_0.x, -1566f)))), ~firstTrailingBit(2406u), vec2<u32>(arg_1.x, 0u)), u_input.c.xx, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(true, true, false)), 1059f);
    var_0 = vec2<f32>(func_2(Struct_1(vec3<f32>(arg_0.a, _wgslsmith_div_f32(-166f, var_1.x), var_1.x), u_input.d.x ^ ~15067u, u_input.d), !var_2.d).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-817f)))));
    return _wgslsmith_sub_u32(var_2.a.b, ~59192u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -194f), ~vec4<u32>(u_input.d.x, u_input.a, u_input.a, 4294967295u), u_input.a), _wgslsmith_sub_vec2_u32(func_1(Struct_1(vec3<f32>(813f, global1[_wgslsmith_index_u32(0u, 27u)], 963f), u_input.d.x, u_input.d), -53641i, vec2<bool>(false, true), Struct_2(global1[_wgslsmith_index_u32(1u, 27u)], vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 1366u), u_input.a)), ~vec2<u32>(u_input.a, 21201u))), u_input.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.d, u_input.d), u_input.d << (u_input.d % vec2<u32>(32u)))), vec3<i32>(u_input.b, u_input.b, global3.x));
}

