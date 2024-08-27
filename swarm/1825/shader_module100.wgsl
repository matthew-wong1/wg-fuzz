struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 3> = array<f32, 3>(-916f, -137f, -650f);

var<private> global3: array<bool, 27>;

var<private> global4: array<i32, 11> = array<i32, 11>(28828i, 0i, -29854i, -1i, 38975i, 0i, 1i, -18008i, 0i, i32(-2147483648), 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    global3 = array<bool, 27>();
    global1 = u_input.b.zww;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(104443u, 3u)] * -591f) + global2[_wgslsmith_index_u32(firstTrailingBit(arg_2.a), 3u)]), global2[_wgslsmith_index_u32(global1.x, 3u)]) * arg_1.xzw));
    let var_1 = arg_0.x;
    let var_2 = all(arg_0);
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(10228u, ~4294967295u), 11u)], ~(0i ^ global4[_wgslsmith_index_u32(u_input.b.x, 11u)]) & max(firstLeadingBit(2147483647i), global4[_wgslsmith_index_u32(global1.x, 11u)])), -max(0i, ~global4[_wgslsmith_index_u32(4294967295u, 11u)] ^ _wgslsmith_add_i32(-69519i, global4[_wgslsmith_index_u32(arg_2.a, 11u)])));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(-1i, max(max(2147483647i, _wgslsmith_sub_i32(1i >> (0u % 32u), global4[_wgslsmith_index_u32(u_input.a ^ 1u, 11u)])), firstTrailingBit(global4[_wgslsmith_index_u32(abs(0u), 11u)])), max(-1i, -global4[_wgslsmith_index_u32(global1.x, 11u)]), _wgslsmith_mod_i32(func_3(!select(vec3<bool>(global3[_wgslsmith_index_u32(36093u, 27u)], false, global3[_wgslsmith_index_u32(5977u, 27u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 27u)], true), vec3<bool>(false, true, global3[_wgslsmith_index_u32(1u, 27u)])), vec4<f32>(-307f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] - -302f), global2[_wgslsmith_index_u32(6541u, 3u)], _wgslsmith_f_op_f32(f32(-1f) * -1467f)), Struct_2(u_input.a | 16987u), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(global1.x, 27u)], true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(-27995i, global4[_wgslsmith_index_u32(global1.x, 11u)] & -2147483647i, -5381i), select(vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], -2147483647i) | vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(global1.x, 11u)], 0i), vec3<i32>(global4[_wgslsmith_index_u32(17729u, 11u)], -21608i, global4[_wgslsmith_index_u32(107431u, 11u)]) << (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)), select(vec3<bool>(global3[_wgslsmith_index_u32(3235u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], true), vec3<bool>(true, false, false), false)))));
    let var_1 = Struct_2(min(global1.x, 17238u));
    let var_2 = select(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(var_1.a, 27u)]))), select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 27u)], false), select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 27u)], false), vec2<bool>(false, true), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 27u)])), vec2<bool>(global3[_wgslsmith_index_u32(7488u, 27u)], true)), vec2<bool>(true, !global3[_wgslsmith_index_u32(1u, 27u)]), !vec2<bool>(global3[_wgslsmith_index_u32(44295u, 27u)], false)), select(select(select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 27u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)])), select(vec2<bool>(global3[_wgslsmith_index_u32(9077u, 27u)], true), vec2<bool>(false, true), false), true), !vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 27u)], true), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 27u)], true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(4466u, 27u)], true), vec2<bool>(true, true))), vec2<bool>(true, true), select(!vec2<bool>(global3[_wgslsmith_index_u32(20000u, 27u)], global3[_wgslsmith_index_u32(13046u, 27u)]), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 27u)], false), vec2<bool>(global3[_wgslsmith_index_u32(100319u, 27u)], global3[_wgslsmith_index_u32(26591u, 27u)])), global3[_wgslsmith_index_u32(~var_1.a, 27u)]))), select(vec2<bool>(true, !all(vec2<bool>(global3[_wgslsmith_index_u32(9545u, 27u)], false))), vec2<bool>(all(select(vec2<bool>(false, global3[_wgslsmith_index_u32(global1.x, 27u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(var_1.a, 27u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(global1.x, 27u)]))), !global3[_wgslsmith_index_u32(1u, 27u)]), any(vec4<bool>(global3[_wgslsmith_index_u32(77095u, 27u)], true, all(vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.a, 27u)], false)), all(vec3<bool>(false, true, false))))));
    global0 = -10680i;
    let var_3 = Struct_2(u_input.b.x ^ ((_wgslsmith_clamp_u32(0u, global1.x, var_1.a) & abs(var_1.a)) >> (_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(13321u, var_1.a, 0u, 4294967295u)) % 32u)));
    return Struct_2(firstLeadingBit(45490u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, global2[_wgslsmith_index_u32(53236u, 3u)], 1000f, global2[_wgslsmith_index_u32(global1.x, 3u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(var_0.a, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], 197f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(var_0.a, 3u)], global2[_wgslsmith_index_u32(var_0.a, 3u)], -117f), vec4<f32>(-305f, global2[_wgslsmith_index_u32(global1.x, 3u)], 721f, -1000f), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a, 27u)], true, global3[_wgslsmith_index_u32(28529u, 27u)], global3[_wgslsmith_index_u32(global1.x, 27u)]))))))));
    let var_2 = Struct_2(global1.x);
    var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(29842u, ~var_0.a, 4294967295u | var_2.a, select(var_2.a, var_2.a, global3[_wgslsmith_index_u32(var_0.a, 27u)])), vec4<u32>(var_0.a, 0u, 0u, u_input.b.x ^ u_input.b.x)));
    var_0 = Struct_2(41013u);
    return Struct_1(select(true, global3[_wgslsmith_index_u32(54448u, 27u)], true), true, !select(vec3<bool>(false, var_1.x >= global2[_wgslsmith_index_u32(var_0.a, 3u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34139u, 12128u, 31203u), 27u)]), vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(15350u, 27u)], true, global3[_wgslsmith_index_u32(3253u, 27u)])), !global3[_wgslsmith_index_u32(var_0.a, 27u)], global3[_wgslsmith_index_u32(countOneBits(var_2.a), 27u)]), global3[_wgslsmith_index_u32(global1.x, 27u)]));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(~func_2().a);
    var var_1 = Struct_2(1u);
    var var_2 = select(func_1(1i).c, arg_1.c, vec3<bool>(false, arg_3.b && any(arg_1.c.zx), (reverseBits(8852i) & _wgslsmith_sub_i32(23332i, global4[_wgslsmith_index_u32(global1.x, 11u)])) > abs(global4[_wgslsmith_index_u32(abs(0u), 11u)])));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * 482f), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(53458u, 3u)], -406f) - _wgslsmith_f_op_f32(1993f * arg_0.x)))), 683f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), ~0u), 3u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 3u)] + -178f) + global2[_wgslsmith_index_u32(select(var_1.a, var_1.a, arg_3.a), 3u)]))) * arg_0);
    let var_4 = vec2<i32>(22057i, 0i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, -993f, 1000f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 3u)], -1232f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 3u)], 2002f, true)), global2[_wgslsmith_index_u32(u_input.b.x, 3u)]) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-598f, global2[_wgslsmith_index_u32(0u, 3u)], -363f))))))), func_1(global4[_wgslsmith_index_u32(1u, 11u)]), Struct_2(countOneBits(6362u)), func_1(-(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 11u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-475f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_0.a, 3u)], global2[_wgslsmith_index_u32(select(~17792u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), !global3[_wgslsmith_index_u32(1u, 27u)]), 3u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(15757u, ~global1.x), 27u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f - 1000f)))))));
    var var_2 = var_0;
    global1 = vec3<u32>(u_input.a & ~1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(33005u, ~48619u, abs(0u), 1u)), _wgslsmith_clamp_u32(func_2().a, u_input.a, 4294967295u));
    let var_3 = ~20811i;
    global4 = array<i32, 11>();
    var var_4 = 2147483647i;
    let var_5 = Struct_2(1u);
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_0.a, 3u)] - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-634f, -1051f) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3223u, 3u)]))), global2[_wgslsmith_index_u32(reverseBits(select(var_5.a, u_input.b.x, true)), 3u)], 171f), _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 11u)], var_3, -53742i)), -54327i | -global4[_wgslsmith_index_u32(var_5.a, 11u)]), vec2<i32>(firstLeadingBit(~var_3), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global4[_wgslsmith_index_u32(var_0.a, 11u)]), vec2<i32>(var_3, -13436i))))), -1127f, abs(firstTrailingBit(vec3<u32>(~4294967295u, min(4294967295u, 1u), select(var_0.a, var_0.a, global3[_wgslsmith_index_u32(26193u, 27u)])))));
}

