struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, false, true, false, false, false, false, true, false, false, false, false, true, false, true, true, true, true, true, true, true, true, true);

var<private> global1: bool = false;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global2 = vec3<bool>(false, true, all(select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1.a.x, 25u)], false), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], false), !vec4<bool>(false, false, global2.x, global0[_wgslsmith_index_u32(25093u, 25u)])), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(41785u, 25u)], global0[_wgslsmith_index_u32(13908u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global2.x), global0[_wgslsmith_index_u32(4294967295u, 25u)]), (1u >> (arg_1.a.x % 32u)) <= 15029u)));
    global1 = _wgslsmith_clamp_u32(698u, ~93480u, 67062u) <= (_wgslsmith_clamp_u32(~1u ^ (arg_1.a.x & 7439u), 1u, 31131u) & 65139u);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, 927f, 700f)))) * vec4<f32>(-591f, arg_0.x, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -273f))))));
    var var_1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(max(u_input.a, -u_input.a), abs(2147483647i), u_input.a)));
    global0 = array<bool, 25>();
    return arg_1.a.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = firstLeadingBit(vec3<u32>(19494u, select(19094u, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-229f, 451f), vec2<f32>(-1481f, 994f)), Struct_1(arg_2)), global2.x), ~41028u << (arg_2.x % 32u)));
    let var_1 = vec4<bool>(false, !(_wgslsmith_f_op_f32(-1015f + _wgslsmith_f_op_f32(f32(-1f) * -444f)) <= _wgslsmith_f_op_f32(floor(-1334f))), true, (u_input.c.x != (4294967295u << (var_0.x % 32u))) || true);
    let var_2 = Struct_1(u_input.b.zzy << (~(~(~var_0)) % vec3<u32>(32u)));
    let var_3 = u_input.a;
    let var_4 = Struct_1(vec3<u32>(arg_2.x, func_3(vec2<f32>(1000f, _wgslsmith_f_op_f32(ceil(299f))), var_2), 4294967295u));
    return ~arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = ~arg_0.a.x;
    global1 = global2.x;
    var_1 = firstTrailingBit(~min(~_wgslsmith_mult_u32(0u, 1u), 51666u));
    global0 = array<bool, 25>();
    return Struct_1(vec3<u32>(select(firstLeadingBit(52889u), arg_3.a.x, global2.x), _wgslsmith_div_u32(8469u, ~u_input.b.x), 4294967295u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.zy, vec2<u32>(4294967295u, 0u)), ~12174u, u_input.b.x), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c.x, arg_3.a.x, 4294967295u), vec3<u32>(4294967295u, arg_3.a.x, 0u), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], true)), arg_3.a), vec3<u32>(_wgslsmith_sub_u32(arg_3.a.x, arg_3.a.x), 7576u, ~17783u)) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(select(u_input.b.wzy, _wgslsmith_mod_vec3_u32(~vec3<u32>(9021u, 1u, 4294967295u), ~u_input.b.xyz) & ~countOneBits(u_input.b.wyy), select(!(!vec3<bool>(true, global2.x, global2.x)), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global2.x, false), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(22669u, 25u)], global0[_wgslsmith_index_u32(30670u, 25u)]), vec3<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)]), vec3<bool>(global2.x, global0[_wgslsmith_index_u32(4381u, 25u)], false))))));
    global1 = global0[_wgslsmith_index_u32(~1u, 25u)];
    var var_1 = u_input.c.x;
    var var_2 = arg_0;
    let var_3 = Struct_1(vec3<u32>(~4294967295u >> (var_2.a.x % 32u), var_2.a.x, func_3(vec2<f32>(1000f, arg_1), Struct_1(arg_0.a))) << (~var_0.a % vec3<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.yyx);
    let var_1 = func_5(func_4(Struct_1(~func_2(true, true, u_input.b.wxy, vec2<bool>(global2.x, global0[_wgslsmith_index_u32(34312u, 25u)]))), -671f, vec4<bool>(!(!global0[_wgslsmith_index_u32(4294967295u, 25u)]), select(global0[_wgslsmith_index_u32(32594u, 25u)], global2.x, true) & true, global2.x, global0[_wgslsmith_index_u32(arg_0, 25u)]), var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f - 1730f)))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1396f), -1664f)))));
    var var_3 = !global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(u_input.b.x, var_0.a.x), 0u) >> (~3738u % 32u), 25u)];
    let var_4 = arg_1;
    return !select(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 25u)], global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), true), !vec3<bool>(global2.x, global2.x, true)), !select(vec3<bool>(false, false, true), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, true)), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global2.x), vec3<bool>(global2.x, false, true), true)), vec3<bool>(true, all(vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(~select(4147u, u_input.b.x, global2.x), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec2<bool>(all(func_1(~53929u, select(vec4<i32>(31931i, u_input.a, -39002i, -55841i), vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), true))), true));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1194f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(463f - 1756f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-549f)), -281f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f - 1000f)), global0[_wgslsmith_index_u32(u_input.b.x, 25u)])))));
    var var_1 = func_4(func_4(Struct_1(abs(u_input.b.xwz)), -760f, !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global2.x, true, global0[_wgslsmith_index_u32(54963u, 25u)]), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 25u)], true))), func_5(func_4(func_5(Struct_1(vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u)), 701f), _wgslsmith_f_op_f32(abs(-602f)), select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), Struct_1(u_input.b.wyw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f + 157f)))), 1833f, !(!(!(!vec4<bool>(true, global2.x, global2.x, true)))), func_5(func_5(func_4(Struct_1(u_input.b.ywx), _wgslsmith_f_op_f32(-489f - 1432f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), func_4(Struct_1(vec3<u32>(92988u, 34437u, u_input.b.x)), 380f, vec4<bool>(false, true, global0[_wgslsmith_index_u32(37909u, 25u)], false), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x)))), _wgslsmith_f_op_f32(2525f + _wgslsmith_f_op_f32(sign(644f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-561f, -382f, global0[_wgslsmith_index_u32(1u, 25u)])) * _wgslsmith_f_op_f32(1000f * 218f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1134f * 128f), _wgslsmith_f_op_f32(295f * 657f))))));
    global2 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -697f)))), 828f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-567f)), -1000f)), -1029f)), 1669f)));
}

