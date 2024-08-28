struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(vec2<i32>(-7004i, 1i), vec4<u32>(4294967295u, 1u, 45734u, 93708u), vec3<f32>(-968f, 1608f, -845f), vec3<u32>(4294967295u, 1u, 1u), -333f), vec3<u32>(32685u, 29174u, 1u), 405f, 0u), Struct_3(Struct_1(vec2<i32>(-1i, -37702i), vec4<u32>(1u, 53797u, 53333u, 0u), vec3<f32>(-855f, -1000f, 421f), vec3<u32>(45239u, 61711u, 0u), 927f), vec3<u32>(33620u, 1u, 0u), 979f, 1u), Struct_3(Struct_1(vec2<i32>(-40846i, 1715i), vec4<u32>(1u, 4294967295u, 49769u, 15409u), vec3<f32>(186f, 332f, 1193f), vec3<u32>(7211u, 61580u, 11028u), 1429f), vec3<u32>(52610u, 4294967295u, 1764u), 1570f, 0u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    let var_0 = ~(min(1i, u_input.a) >> (19929u % 32u)) == ~1i;
    let var_1 = ~0u;
    let var_2 = 0u;
    global0 = array<Struct_3, 3>();
    var var_3 = ~vec4<u32>(var_1, 57448u, ~var_1 | _wgslsmith_div_u32(_wgslsmith_div_u32(24534u, var_1), ~84565u), ~4294967295u);
    return var_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<Struct_3, 3>();
    let var_0 = abs(_wgslsmith_sub_u32(0u, ~arg_0.x));
    let var_1 = select(~(~vec2<i32>(i32(-1i) * -1i, -arg_1.a.a.x)), abs(vec2<i32>(select(1i, i32(-1i) * -1i, false), -1i)), vec2<bool>(true, false));
    var var_2 = global0[_wgslsmith_index_u32(~(~(arg_0.x & 27775u)), 3u)];
    let var_3 = Struct_2(arg_1.a, 57201u);
    return select(!select(vec4<bool>(all(vec2<bool>(false, false)), -1i == var_2.a.a.x, any(vec2<bool>(false, true)), true), vec4<bool>(true, true, select(true, false, false), false), vec4<bool>(true, true, true, true)), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), -2147483647i <= -var_2.a.a.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), false, 2951u <= arg_1.b, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, false)), true, false), !any(vec4<bool>(true, true, true, true))), vec4<bool>(!all(vec3<bool>(true, false, true)), true, true, true)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<f32> {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    let var_0 = arg_0;
    let var_1 = !vec2<bool>(((arg_0.a.a.x >= -1i) && true) | select(true, func_2(), true), firstTrailingBit(0i) < -15299i);
    let var_2 = func_3(~arg_0.a.b.ww, Struct_2(arg_0.a, _wgslsmith_sub_u32(~select(arg_0.b.x, 35786u, var_1.x), var_0.d)));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.e)), _wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))), -526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(f32(-1f) * -324f)) * arg_0.a.e));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-418f * arg_1.x))) - arg_0.x), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], ~1i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    global0 = array<Struct_3, 3>();
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true);
    var var_2 = Struct_1(vec2<i32>(-16184i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -22508i), -vec2<i32>(-4594i, -2147483647i)) | (5630i << (max(0u, 1u) % 32u))), select(vec4<u32>(43290u, max(select(1722u, 5021u, var_1.x), select(0u, 82450u, true)), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 30604u), select(4294967295u, 1u, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), ~vec4<u32>(46896u, min(151992u, 23652u), countOneBits(0u), 22508u), func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_0.x), -308f), vec3<f32>(_wgslsmith_f_op_f32(select(-769f, var_0.x, false)), _wgslsmith_f_op_f32(934f - arg_0.x), _wgslsmith_f_op_f32(1074f * 247f)))) + _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(1u, 3u)], 6137i)).zxy), abs(vec3<u32>(1u, 9609u, 1u)), arg_0.x);
    var_2 = Struct_1(~var_2.a, _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.d.x, var_2.d.x, var_2.d.x, 18337u) & vec4<u32>(_wgslsmith_add_u32(var_2.d.x, var_2.b.x), var_2.b.x, var_2.b.x, 1u >> (var_2.b.x % 32u)), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4309u, var_2.d.x, var_2.b.x, var_2.b.x), vec4<u32>(3542u, var_2.d.x, var_2.b.x, 29170u), var_2.b), var_2.b, true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(~var_2.d.x, 3u)], 1i)).x, _wgslsmith_f_op_f32(max(var_0.x, -1189f)), _wgslsmith_div_f32(-1074f, arg_1.x)))), ~select(firstLeadingBit(min(vec3<u32>(var_2.d.x, 17368u, 32357u), var_2.b.wzz)), ~vec3<u32>(53720u, 1u, 41080u), func_3(select(vec2<u32>(1u, var_2.d.x), var_2.d.xx, false), Struct_2(Struct_1(var_2.a, vec4<u32>(4294967295u, var_2.b.x, var_2.d.x, 0u), var_0.yyy, var_2.b.wwx, var_2.c.x), var_2.b.x)).wxz), _wgslsmith_f_op_f32(-var_0.x));
    return global0[_wgslsmith_index_u32(14810u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-376f, -808f, 2127f, -811f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_1(vec2<i32>(1i, u_input.a), vec4<u32>(57530u, 31720u, 4294967295u, 4294967295u), vec3<f32>(-876f, 278f, -1334f), vec3<u32>(22861u, 5356u, 0u), -892f), vec3<u32>(4294967295u, 0u, 56829u), 478f, 0u), u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1401f)) * _wgslsmith_f_op_f32(f32(-1f) * -540f)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 1400f), _wgslsmith_f_op_f32(max(399f, -983f)), true)), 312f)), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e, -717f, var_0.c, 3105f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(342f, -462f, var_0.c, var_0.c), vec4<f32>(var_0.c, var_0.c, -1370f, var_0.c)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_0.c, var_0.c, -765f), vec4<f32>(var_0.c, var_0.c, -450f, 1913f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1559f, 1801f, 1000f, var_0.c))))))).a;
    let var_2 = Struct_2(Struct_1(firstLeadingBit(min(~var_0.a.a, var_1.a)), ~(~func_4(vec4<f32>(1000f, -205f, -1203f, -1392f), vec4<f32>(328f, var_1.c.x, var_1.e, var_0.c)).a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.c)))), vec3<u32>(25786u, ~4294967295u, ~var_1.b.x), var_1.c.x), min(~31315u, min(_wgslsmith_dot_vec3_u32(func_4(vec4<f32>(var_0.a.e, var_1.c.x, 540f, -2113f), vec4<f32>(-774f, var_0.a.e, var_1.c.x, var_1.e)).b, var_0.b), 61596u)));
    let var_3 = vec2<u32>(0u, firstTrailingBit(1u));
    global0 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, -var_0.a.a, -1176f);
}

