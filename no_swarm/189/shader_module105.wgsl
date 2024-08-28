struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3303i;

var<private> global1: array<i32, 23> = array<i32, 23>(-34226i, -37328i, -57780i, -26804i, 1i, 0i, 28379i, -21115i, -9967i, 62562i, i32(-2147483648), -1i, 1i, -83392i, -17367i, 4779i, -7570i, -24257i, -1i, -7078i, 11659i, -36386i, 1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = ~vec2<u32>(abs(_wgslsmith_mult_u32(49264u, arg_2.x)), _wgslsmith_mod_u32(~arg_2.x, 27578u)) >> ((arg_2.zx ^ (firstLeadingBit(arg_2.xx) ^ abs(arg_2.yz))) % vec2<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_2.x, u_input.a), arg_2, min(arg_2, arg_2)), arg_2) & (arg_2 | (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, u_input.a, 26275u), vec3<u32>(68016u, arg_2.x, 1u)) & ~arg_2)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(21576u, arg_2.x) ^ vec2<u32>(1u, 37802u), vec2<u32>(~u_input.a, arg_2.x))), (vec4<i32>(u_input.b, ~(-2147483647i), 24510i, global1[_wgslsmith_index_u32(u_input.a, 23u)]) >> (~vec4<u32>(1u, var_0.x, 69201u, 23585u) % vec4<u32>(32u))) ^ ~vec4<i32>(15311i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18662i, global1[_wgslsmith_index_u32(45924u, 23u)], arg_0, arg_0), vec4<i32>(13687i, 2147483647i, u_input.b, arg_0)), abs(-2147483647i), ~global1[_wgslsmith_index_u32(1u, 23u)]), !(!vec4<bool>(any(vec3<bool>(false, arg_1, arg_1)), true, arg_1, arg_2.x <= 21391u)));
    let var_2 = vec4<f32>(-1200f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-910f - 714f), _wgslsmith_f_op_f32(1137f - 1061f), all(var_1.d.wz))) - -536f), -840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -276f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1882f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f * -2274f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f * -444f)))))));
    global1 = array<i32, 23>();
    global0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(-vec4<i32>(-35449i, global1[_wgslsmith_index_u32(19820u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], 0i))), ~(var_1.c << (~vec4<u32>(36378u, arg_2.x, u_input.a, u_input.a) % vec4<u32>(32u)))));
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    global1 = array<i32, 23>();
    let var_0 = Struct_1(func_3(2147483647i, !(arg_0.d.x & true), max(~(~arg_0.a), arg_0.a)), countOneBits(~firstLeadingBit(vec2<u32>(u_input.a, arg_0.b.x))), -arg_0.c, vec4<bool>(true, true, arg_1 > arg_1, arg_0.d.x));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, arg_1, 741f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, -937f, -181f) - vec3<f32>(1000f, arg_1, arg_1))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1410f)) * vec3<f32>(-1351f, arg_1, arg_1)), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 - 2494f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1838f, arg_1, arg_1) * vec3<f32>(arg_1, -1000f, arg_1)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1112f, -377f, -908f))))));
    var var_2 = arg_0;
    var var_3 = vec4<u32>(~113843u, var_2.a.x & ~firstTrailingBit(4294967295u), ~1763u, ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(21874u, min(0u, 52500u))));
    return _wgslsmith_mod_i32(26645i, var_0.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(arg_1.c, select(~vec4<i32>(arg_0.c.x, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(103598u, 23u)], arg_0.c.x), max(vec4<i32>(arg_1.c.x, -1i, global1[_wgslsmith_index_u32(53436u, 23u)], global1[_wgslsmith_index_u32(arg_0.b.x, 23u)]), vec4<i32>(arg_1.c.x, global1[_wgslsmith_index_u32(0u, 23u)], arg_1.c.x, 63780i)), false), select(select(arg_1.d, vec4<bool>(false, arg_1.d.x, arg_0.d.x, false), arg_1.d.x), vec4<bool>(true, true, arg_1.d.x, arg_1.d.x), !vec4<bool>(arg_1.d.x, true, false, arg_1.d.x))), -vec4<i32>(arg_1.c.x, ~30271i, func_2(Struct_1(arg_1.a, vec2<u32>(1u, 4294967295u), arg_1.c, arg_0.d), -1490f), 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~global1[_wgslsmith_index_u32(u_input.a, 23u)] | ~1i, arg_1.c.x, ~firstLeadingBit(88225i), arg_0.c.x), -_wgslsmith_sub_vec4_i32(arg_0.c, ~arg_0.c), (arg_1.c ^ (arg_1.c | arg_1.c)) >> (abs(vec4<u32>(674u, arg_0.a.x, arg_1.a.x, u_input.a)) % vec4<u32>(32u))));
    global0 = -arg_0.c.x;
    let var_1 = arg_1;
    var var_2 = Struct_1(vec3<u32>(4294967295u, var_1.b.x, 18649u) ^ ~abs(countOneBits(vec3<u32>(arg_0.a.x, 18567u, arg_1.b.x))), _wgslsmith_mult_vec2_u32(var_1.a.xy >> (countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(12455u, arg_1.a.x), arg_0.a.yx)) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1.a.x) >> (arg_1.a.xz % vec2<u32>(32u)), ~vec2<u32>(0u, 55039u))), abs(firstLeadingBit(vec4<i32>(arg_1.c.x, 2147483647i, 13373i, global1[_wgslsmith_index_u32(33931u, 23u)]))) << (~countOneBits(vec4<u32>(var_1.b.x, arg_0.a.x, 39089u, 72313u)) % vec4<u32>(32u)), arg_0.d);
    let var_3 = !(any(arg_1.d) || true);
    return abs(-vec4<i32>(abs(_wgslsmith_add_i32(2147483647i, -1i)), arg_0.c.x, -10833i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.c.x, arg_0.c.x), vec3<i32>(-19170i, var_2.c.x, -1i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(select(arg_3.d.yzy, vec3<bool>(arg_2, arg_2, arg_3.d.x), vec3<bool>(!(arg_0.x >= -349f), all(vec3<bool>(arg_2, true, true)), select(arg_2, arg_2, arg_0.x != 333f))), select(arg_3.d.zxw, vec3<bool>(true, true, true), arg_3.d.x), arg_0.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(194f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 224f)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -941f) * vec2<f32>(-547f, 162f)))) * vec2<f32>(-851f, _wgslsmith_div_f32(-353f, -280f))), vec2<f32>(1f, 1f))), u_input.a, false, Struct_1(~vec3<u32>(u_input.a & u_input.a, u_input.a ^ u_input.a, ~u_input.a), ~vec2<u32>(4074u, u_input.a) & _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 0u), abs(vec2<u32>(11920u, 1u))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a & u_input.a, 23u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], -2147483647i, -1i), vec4<i32>(0i, 998i, global1[_wgslsmith_index_u32(u_input.a, 23u)], -2147483647i)), -u_input.b, -4851i) ^ -func_1(Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.a, 23u)], -1i), vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), vec2<u32>(u_input.a, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], u_input.b, global1[_wgslsmith_index_u32(1u, 23u)], -24121i), vec4<bool>(true, true, true, false))), vec4<bool>(~global1[_wgslsmith_index_u32(u_input.a, 23u)] == -20054i, true, true, 0u > u_input.a)));
    global0 = _wgslsmith_mult_i32(func_2(Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) & vec3<u32>(4294967295u, 4294967295u, 23995u), func_4(vec2<f32>(563f, 177f), 64700u, var_0.d.x, var_0).b, vec4<i32>(58319i, var_0.c.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(57558u, 23u)]), vec4<bool>(true, false, false, var_0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1205f, 745f))))) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(40117u, 0u, 71667u, 1u) | vec4<u32>(0u, u_input.a, var_0.a.x, 0u), vec4<u32>(var_0.a.x, 76278u, 4294967295u, 1u))) % 32u), _wgslsmith_clamp_i32(1i, -global1[_wgslsmith_index_u32(max(48501u, var_0.a.x), 23u)] ^ 27964i, global1[_wgslsmith_index_u32(firstLeadingBit(48976u) & u_input.a, 23u)]));
    global0 = global1[_wgslsmith_index_u32(~abs(14232u) << (select(4294967295u, var_0.a.x, all(var_0.d.xz)) % 32u), 23u)];
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1564f)), -107f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-518f, -1469f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1169f, -289f) * vec2<f32>(-107f, 754f))))), var_0.b.x, var_0.d.x, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1582f, 1421f))), vec2<f32>(1f, 1f)), 4294967295u, var_0.d.x, func_4(vec2<f32>(1f, 1f), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.x, 11390u, 48186u, 38496u), firstTrailingBit(vec4<u32>(var_0.b.x, 31637u, u_input.a, u_input.a))), true || any(vec3<bool>(true, var_0.d.x, true)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1186f, -1000f) * vec2<f32>(-292f, -1171f)), u_input.a ^ u_input.a, var_0.d.x, Struct_1(var_0.a, vec2<u32>(var_0.b.x, 0u), var_0.c, var_0.d)))));
    var var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(func_1(var_0, Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 0u, var_0.a.x), vec3<u32>(28334u, 31505u, 76663u)), abs(vec2<u32>(u_input.a, 0u)), vec4<i32>(var_0.c.x, var_1.c.x, u_input.b, global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(true, true, true, var_1.d.x))).xww, vec3<i32>(1i, var_0.c.x, firstTrailingBit(1i))));
}

