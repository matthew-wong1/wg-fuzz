struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, 0i, -15232i);

var<private> global1: array<u32, 18> = array<u32, 18>(4294967295u, 6010u, 1840u, 1u, 4294967295u, 28859u, 68806u, 60236u, 1u, 19896u, 1u, 86011u, 5189u, 49305u, 34202u, 4294967295u, 0u, 27067u);

var<private> global2: vec2<f32> = vec2<f32>(-180f, 1036f);

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, global2.x), vec2<f32>(-107f, global2.x)))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-385f, _wgslsmith_f_op_f32(376f - global2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 985f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, global2.x) * vec2<f32>(global2.x, global2.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(245f, global2.x), vec2<f32>(global2.x, global2.x), global3.wy))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, 650f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, 1404f), vec2<f32>(global2.x, global2.x)))))));
    let var_0 = Struct_1(abs(26327u), vec2<u32>(countOneBits(_wgslsmith_div_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62708u, 18u)], 18u)], 18u)], 40553u), 0u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~29545u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], 65287u, 0u)), vec4<u32>(4901u, global1[_wgslsmith_index_u32(6803u, 18u)], global1[_wgslsmith_index_u32(35849u, 18u)], 9094u) << (vec4<u32>(29768u, 3373u, global1[_wgslsmith_index_u32(30558u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)]) % vec4<u32>(32u)))), 18u)], 18u)]), max(_wgslsmith_mod_i32(~0i, select(_wgslsmith_mult_i32(u_input.a.x, global0.x), 1i, global3.x)), ~1i), true, _wgslsmith_f_op_f32(round(310f)));
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    global3 = vec4<bool>(true, !(!(-u_input.a.x >= 1i)), var_0.d, false);
    return ~(~_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 1u, 48863u, var_0.a), vec4<u32>(46158u, global1[_wgslsmith_index_u32(var_0.a, 18u)], var_0.a, global1[_wgslsmith_index_u32(var_0.a, 18u)])), ~(vec4<u32>(15735u, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_0.b.x, 18u)], var_0.b.x) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)], 1u, 0u) % vec4<u32>(32u)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(4294967295u | func_3(), firstLeadingBit(min(vec2<u32>(30763u, 0u), select(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 25483u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 88203u), vec2<u32>(28469u, 1u)), global3.xx))), reverseBits(39727i), all(select(!(!vec4<bool>(global3.x, global3.x, global3.x, false)), !(!vec4<bool>(false, global3.x, global3.x, global3.x)), vec4<bool>(all(vec4<bool>(false, false, false, false)), global3.x, any(vec4<bool>(global3.x, global3.x, global3.x, false)), global3.x))), 2060f);
    let var_1 = !(!all(select(select(global3.xzy, vec3<bool>(false, false, false), vec3<bool>(global3.x, global3.x, true)), !vec3<bool>(global3.x, var_0.d, true), 1i != global0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1828f, _wgslsmith_f_op_f32(var_0.e + 494f), _wgslsmith_f_op_f32(max(-716f, var_0.e)), _wgslsmith_div_f32(859f, 755f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, var_0.e, global2.x, var_0.e))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e, -741f, var_0.e, global2.x), vec4<f32>(1436f, -935f, var_0.e, global2.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, -390f, _wgslsmith_div_f32(-1000f, -2023f), _wgslsmith_f_op_f32(-var_0.e)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, var_0.e, 750f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, -916f, global2.x, global2.x) * vec4<f32>(var_0.e, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1933f, global2.x, 250f, global2.x))), true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.xzw, _wgslsmith_f_op_vec3_f32(exp2(var_2.zxx)))), var_2.zyx)))));
    let var_4 = -max(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x), -global0.wx), vec2<i32>(-15036i, 4941i) ^ -countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)));
    return !(!(!(!(!vec4<bool>(true, false, var_0.d, global3.x)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>) -> vec4<i32> {
    global1 = array<u32, 18>();
    var var_0 = 62496u;
    var var_1 = global1[_wgslsmith_index_u32(max(0u, firstLeadingBit(arg_2.x)), 18u)] | ((arg_2.x & 4294967295u) | 1u);
    global3 = select(select(!vec4<bool>(true, any(vec3<bool>(global3.x, false, false)), u_input.a.x != 0i, false), func_2(), select(func_2(), vec4<bool>(all(global3.xwz), select(false, global3.x, false), !global3.x, true), true & global3.x)), select(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(true, true, true, true), false), vec4<bool>(global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, global0.x), global0.xyx) <= 7389i, (arg_1 != -866f) | func_2().x, all(vec4<bool>(true, global3.x, global3.x, global3.x))), true), false | global3.x);
    var var_2 = 14328u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(func_1(vec3<i32>(-26417i << (firstTrailingBit(0u) % 32u), global0.x, 22320i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.x, -824f)), _wgslsmith_div_f32(global2.x, global2.x)))), countOneBits(abs(vec2<u32>(112017u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(1u, 18u)]) % vec2<u32>(32u))))), abs(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3858u, 18u)], 18u)] % 32u), min(global0.x, u_input.a.x), abs(global0.x), 39524i), vec4<i32>(u_input.a.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)] % 32u), 1i, i32(-1i) * -16796i, func_1(u_input.a.xzw, -698f, vec2<u32>(21137u, 0u)).x))));
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(1u), 18u)];
    let var_1 = false || !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, 564f), _wgslsmith_f_op_f32(-global2.x), any(vec3<bool>(global3.x, global3.x, global3.x)))) != -543f);
    let var_2 = ~(~(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78291u, 18u)], 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])))) << (_wgslsmith_add_vec2_u32(~(~vec2<u32>(3806u, 0u)) >> ((countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(64297u, 18u)], 43468u)) ^ vec2<u32>(global1[_wgslsmith_index_u32(24199u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27472u, 18u)], 18u)], 18u)], ~0u, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43798u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4990u, 18u)], 18u)])), func_3())) % vec2<u32>(32u));
    var var_3 = ~(~vec3<u32>(_wgslsmith_clamp_u32(select(var_2.x, var_2.x, var_1), var_2.x >> (73453u % 32u), ~var_2.x), var_2.x, select(abs(global1[_wgslsmith_index_u32(1u, 18u)]), ~49532u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, u_input.a.x, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(27711i, global0.x, global0.x, u_input.a.x), u_input.a))), ~global1[_wgslsmith_index_u32(~(var_3.x | ~16410u), 18u)]);
}

