struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<f32, 27> = array<f32, 27>(961f, 1000f, -506f, 369f, -332f, -731f, -120f, -143f, 556f, 286f, 813f, -373f, -522f, -1131f, -790f, -1513f, -2056f, -483f, 289f, 186f, -735f, -1000f, 284f, 1105f, 259f, -410f, 1000f);

var<private> global1: array<i32, 32> = array<i32, 32>(22955i, -22008i, 27365i, -12787i, i32(-2147483648), -37176i, -1i, i32(-2147483648), i32(-2147483648), -14172i, -1i, -1i, 6767i, 1i, 22119i, -1i, 4602i, 2147483647i, 72505i, 14489i, 31466i, -1i, 0i, 1i, -46424i, 2147483647i, 2147483647i, i32(-2147483648), 0i, 838i, 12319i, 1i);

var<private> global2: array<u32, 31>;

var<private> global3: array<vec2<bool>, 3>;

var<private> global4: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<i32, 32>();
    let var_0 = 1i;
    global2 = array<u32, 31>();
    global2 = array<u32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xy * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1.a.x, 27u)], arg_0.x, false)))), arg_0.x));
    return select(vec4<bool>(false, true, !select(global4.b.b.x, true, global4.a.b.x) | (global1[_wgslsmith_index_u32(1u, 32u)] >= -30186i), arg_2.b.x), select(!vec4<bool>(global4.b.b.x & arg_1.b.x, arg_1.b.x, all(vec4<bool>(true, global4.a.b.x, false, false)), all(vec3<bool>(arg_1.b.x, true, true))), select(vec4<bool>(false, true, arg_2.b.x, true), select(select(vec4<bool>(true, arg_1.b.x, false, arg_2.b.x), vec4<bool>(true, true, arg_1.b.x, global4.a.b.x), true), !vec4<bool>(false, global4.a.b.x, global4.b.b.x, global4.a.b.x), global4.b.b.x), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 32u)] > global1[_wgslsmith_index_u32(10101u, 32u)], true, u_input.b.x == u_input.a, var_1.x <= -505f)), select(select(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x), !vec4<bool>(false, true, arg_2.b.x, false), !arg_2.b.x), !select(vec4<bool>(global4.a.b.x, true, arg_2.b.x, arg_1.b.x), vec4<bool>(false, arg_2.b.x, arg_2.b.x, false), false), vec4<bool>(arg_2.b.x, any(vec4<bool>(global4.b.b.x, false, global4.b.b.x, false)), arg_2.b.x, arg_1.b.x))), arg_2.b.x);
}

fn func_3() -> vec2<f32> {
    global3 = array<vec2<bool>, 3>();
    var var_0 = Struct_3(vec4<bool>(true, false, global4.a.b.x, true), _wgslsmith_mod_vec2_u32(abs(abs(select(global4.a.a, global4.b.a, false))), global4.b.a), Struct_1(select(~global4.b.a, global4.a.a, !vec2<bool>(true, global4.b.b.x)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d) & vec2<u32>(u_input.d, 57597u), _wgslsmith_div_vec2_u32(vec2<u32>(13478u, 0u), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(20167u, 31u)]))) % vec2<u32>(32u)), !select(global4.a.b, global4.b.b, global4.a.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-74116i >> (u_input.d % 32u), countOneBits(global1[_wgslsmith_index_u32(33763u, 32u)])), _wgslsmith_dot_vec2_i32(~u_input.b.xz, u_input.c.xy << (global4.a.a % vec2<u32>(32u))), ~(21430i & global1[_wgslsmith_index_u32(global4.b.a.x, 32u)]), u_input.a), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 18762i, 2147483647i, 12364i), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(2298u, 32u)], -41899i, global1[_wgslsmith_index_u32(41234u, 32u)], u_input.a), vec4<i32>(11127i, u_input.c.x, 2147483647i, 2147483647i)))), global4.a);
    var_0 = Struct_3(vec4<bool>(true, global4.a.b.x || (true && global4.a.b.x), true, all(global4.b.b)), ~(vec2<u32>(0u, u_input.d) << (~vec2<u32>(0u, var_0.e.a.x) % vec2<u32>(32u))), global4.b, var_0.d, Struct_1(vec2<u32>(0u, ~1u), !(!func_1(vec4<f32>(-1719f, 1791f, global0[_wgslsmith_index_u32(global4.a.a.x, 27u)], global0[_wgslsmith_index_u32(74164u, 27u)]), Struct_1(vec2<u32>(var_0.b.x, 31314u), vec3<bool>(true, global4.b.b.x, var_0.c.b.x)), Struct_1(vec2<u32>(global4.b.a.x, 4294967295u), vec3<bool>(false, global4.b.b.x, global4.a.b.x))).yxx)));
    let var_1 = global4.b;
    let var_2 = firstLeadingBit(-6566i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1712f, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<f32>(global0[_wgslsmith_index_u32(64541u, 27u)], 894f))) - vec2<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.c.a.x, 27u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_f_op_f32(-287f + global0[_wgslsmith_index_u32(85955u << (1u % 32u), 27u)]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = ~(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, global4.a.a.x, u_input.d)) | (vec3<u32>(arg_2.a.x, 0u, 88110u) >> (vec3<u32>(1u, global2[_wgslsmith_index_u32(global4.a.a.x, 31u)], u_input.d) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global4.a.a.x, 31u)], 9317u, 7578u) >> (vec3<u32>(4294967295u, 59129u, 108634u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], u_input.d), vec3<u32>(global4.b.a.x, 32938u, arg_1.a.x)))) & _wgslsmith_sub_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(0u, 1086u, arg_2.a.x))), vec3<u32>(~global2[_wgslsmith_index_u32(55017u, 31u)], u_input.d, ~global4.a.a.x)));
    global1 = array<i32, 32>();
    let var_1 = any(vec4<bool>(_wgslsmith_f_op_f32(round(-818f)) < _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 27u)])), false, !arg_1.b.x, true));
    global2 = array<u32, 31>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, -1000f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))));
    return global0[_wgslsmith_index_u32(abs(~arg_2.a.x), 27u)] != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(max(arg_2.a.x, 0u), 27u)], var_2.x)), 854f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = -vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(1i, abs(_wgslsmith_add_i32(u_input.a, -2450i))), u_input.b.x ^ ~(-global1[_wgslsmith_index_u32(global4.a.a.x, 32u)]), u_input.a);
    let var_1 = !vec4<bool>(all(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36949u, 31u)], 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)], 626f, global0[_wgslsmith_index_u32(0u, 27u)])), global4.a, Struct_1(global4.a.a, vec3<bool>(true, global4.a.b.x, global4.b.b.x)))), global4.a.b.x, func_2(vec2<i32>(min(-1i, var_0.x), u_input.b.x << (global4.a.a.x % 32u)), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, 1u)), vec3<bool>(global4.a.b.x, false, false)), Struct_1(global4.b.a, select(global4.a.b, vec3<bool>(global4.a.b.x, false, true), false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12115u, 17154u, u_input.d, u_input.d), ~vec4<u32>(1u, 41083u, u_input.d, global4.a.a.x)), 32u)]), global4.a.b.x);
    let var_2 = countOneBits(countOneBits(global2[_wgslsmith_index_u32(global4.a.a.x, 31u)]));
    var var_3 = !var_1.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(abs(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(0i, 1i, -1i)))));
}

