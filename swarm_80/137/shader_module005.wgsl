struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<f32>(957f, 139f), Struct_1(vec4<bool>(true, true, true, false), -1161f, vec2<bool>(true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), Struct_2(vec2<f32>(-1416f, 930f), Struct_1(vec4<bool>(false, true, false, false), 827f, vec2<bool>(true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), vec4<bool>(false, true, true, false)), Struct_2(vec2<f32>(-1176f, -668f), Struct_1(vec4<bool>(false, false, true, false), 887f, vec2<bool>(false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), vec4<bool>(true, false, true, true)));

var<private> global4: array<f32, 5>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_1(select(!(!vec4<bool>(global2.x, true, true, false)), select(vec4<bool>(any(global2.xx), any(vec3<bool>(global2.x, global2.x, false)), any(global2.zz), !global2.x), !select(vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), false), vec4<bool>(true, true, any(vec2<bool>(global2.x, true)), true)), vec4<bool>(!global2.x, false, false, !global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, arg_0)), ~global1.x), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f * 1492f))) - 282f), select(global2.yx, !global2.yy, true), select(vec3<bool>(all(vec2<bool>(true, global2.x)), all(select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(true, global2.x, global2.x, true))), global2.x | any(global2.yz)), !select(!vec3<bool>(global2.x, true, false), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, global2.x, global2.x), false), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x)), any(select(select(vec3<bool>(false, false, global2.x), vec3<bool>(true, true, global2.x), global2.x), select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, false, global2.x), false), global2.x || true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global4[_wgslsmith_index_u32(0u, 5u)], var_0.b)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, var_0.b, global4[_wgslsmith_index_u32(36660u, 5u)]) + vec3<f32>(global4[_wgslsmith_index_u32(6782u, 5u)], var_0.b, -1344f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4[_wgslsmith_index_u32(global1.x, 5u)], -786f, var_0.b))), vec3<f32>(global4[_wgslsmith_index_u32(66032u, 5u)], global4[_wgslsmith_index_u32(global1.x, 5u)], 1068f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, global4[_wgslsmith_index_u32(0u, 5u)], -141f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-171f, -1921f, 438f) * vec3<f32>(var_0.b, var_0.b, -1000f)), false)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(0u, 5u)], var_0.b, 536f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4[_wgslsmith_index_u32(0u, 5u)], global4[_wgslsmith_index_u32(1495u, 5u)]))))));
    global4 = array<f32, 5>();
    global4 = array<f32, 5>();
    global1 = max(firstTrailingBit(reverseBits(vec2<u32>(~4294967295u, ~arg_1))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(101776u, global1.x), 53068u), vec2<u32>(_wgslsmith_clamp_u32(arg_1, 27710u, arg_1), min(arg_0, arg_0))));
    return ~max(~min(vec2<u32>(arg_0, 5572u), vec2<u32>(44229u, arg_1)) << (vec2<u32>(countOneBits(4294967295u), arg_1) % vec2<u32>(32u)), firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(global1.x, arg_1))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 16222u;
    global1 = func_3(_wgslsmith_clamp_u32(31194u & global1.x, ~global1.x, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(18504u, 82724u, global1.x, global1.x)), ~(~vec4<u32>(37615u, global1.x, global1.x, global1.x)))), countOneBits(42040u));
    let var_1 = arg_0.c;
    global3 = array<Struct_2, 3>();
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~global1.x, select(44270u & global1.x, 1u | global1.x, true), ~(~1u), countOneBits(global1.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 21680u), ~vec4<u32>(global1.x, global1.x, 4294967295u, 33794u)) >> ((vec4<u32>(global1.x, global1.x, 4294967295u, global1.x) >> ((vec4<u32>(global1.x, 7635u, 51699u, global1.x) ^ vec4<u32>(global1.x, global1.x, global1.x, 24456u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return global3[_wgslsmith_index_u32(global1.x, 3u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = func_2(Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.c, arg_1.a, -2147483647i), vec4<i32>(arg_1.a, u_input.d.x, u_input.a.x, 39879i), arg_1.c.a), ~vec4<i32>(0i, 1i, arg_1.a, arg_1.a)), -2147483647i), _wgslsmith_f_op_vec3_f32(-arg_1.e), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global1.x, 5u)], global4[_wgslsmith_index_u32(global1.x, 5u)])) - _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(2533u, 5u)], -1000f), arg_0.a)) * vec2<f32>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_f_op_f32(floor(arg_1.d.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(429f)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1.x, 5u)], arg_0.b.b), _wgslsmith_f_op_f32(trunc(-1124f))) * arg_1.e)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, 947f))), Struct_1(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(993f - global4[_wgslsmith_index_u32(global1.x, 5u)]) - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 5u)])), vec2<bool>(all(arg_1.c.d.zy), !arg_1.c.a.x), arg_0.c), !arg_1.c.d, !(!(!arg_1.c.a))));
    let var_1 = arg_0.d;
    global2 = !var_0.c;
    let var_2 = func_2(arg_1, arg_0);
    let var_3 = arg_1.b;
    return _wgslsmith_mod_vec4_u32(~abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.x, 20077u, 4294967295u), vec4<u32>(global1.x, 0u, global1.x, global1.x), vec4<u32>(1u, global1.x, global1.x, global1.x))), vec4<u32>(abs(global1.x), 1u, global1.x, ~_wgslsmith_mod_u32(~0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(~(6582u << (~(~global1.x) % 32u)), _wgslsmith_mod_u32(global1.x, countOneBits(0u)));
    var var_0 = ~vec2<u32>(~4294967295u, ~_wgslsmith_dot_vec4_u32(func_1(Struct_2(vec2<f32>(global4[_wgslsmith_index_u32(0u, 5u)], global4[_wgslsmith_index_u32(global1.x, 5u)]), Struct_1(vec4<bool>(false, global2.x, global2.x, global2.x), -698f, vec2<bool>(global2.x, global2.x), vec3<bool>(true, global2.x, true)), vec3<bool>(true, true, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), Struct_3(u_input.a.x, vec3<f32>(global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(global1.x, 5u)]), Struct_1(vec4<bool>(false, false, global2.x, global2.x), -849f, vec2<bool>(false, global2.x), vec3<bool>(false, global2.x, global2.x)), vec2<f32>(139f, -190f), vec3<f32>(global4[_wgslsmith_index_u32(29818u, 5u)], -158f, -454f))), vec4<u32>(1u, global1.x, global1.x, global1.x) | vec4<u32>(0u, global1.x, 1u, 17828u)));
    global4 = array<f32, 5>();
    global3 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(max(~(vec3<u32>(58245u, var_0.x, 1u) >> (vec3<u32>(var_0.x, 3474u, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(1u, global1.x, var_0.x)), ~(~vec3<u32>(var_0.x, 1u, global1.x))), global4[_wgslsmith_index_u32(21495u, 5u)], vec2<u32>(1u, countOneBits(_wgslsmith_mult_u32(select(98085u, var_0.x, false), reverseBits(global1.x)))), ~(vec2<u32>(_wgslsmith_mult_u32(global1.x, global1.x), ~60742u) & _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, var_0.x), true), max(vec2<u32>(var_0.x, global1.x), vec2<u32>(var_0.x, var_0.x)))));
}

