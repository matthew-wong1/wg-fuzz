struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
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

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, true, true, false, false, true, true, false, true, false, true, true, false, true, true, false, true, false, true);

var<private> global1: array<bool, 31> = array<bool, 31>(true, false, true, true, true, true, true, false, false, false, false, false, true, false, false, false, true, false, true, true, false, false, false, true, true, true, true, true, false, true, false);

var<private> global2: vec2<u32> = vec2<u32>(0u, 3986u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_3(u_input.d.ww, false, true, Struct_1(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(global2.x, 24u)], global1[_wgslsmith_index_u32(14114u, 31u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(17787u, 24u)], global1[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 24u)], false)), !(!global1[_wgslsmith_index_u32(17515u, 31u)])), _wgslsmith_div_i32(~(~2147483647i), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, 32279i), reverseBits(u_input.d.x))), _wgslsmith_dot_vec3_i32(max(u_input.d.ywx, ~vec3<i32>(u_input.d.x, 48553i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, 20252i), ~u_input.d.xxz)), vec3<bool>(true, (45790i & u_input.d.x) >= ~(-1i), true)), ~vec4<u32>(u_input.b.x, 0u, u_input.a.x, max(u_input.c.x, firstLeadingBit(25864u))));
    return 30403u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = func_3();
    let var_1 = _wgslsmith_clamp_u32(0u, global2.x, ~(~(~(~1u))));
    var var_2 = abs((_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(66688u, 8499u, var_1, var_1)), u_input.a) | _wgslsmith_add_vec4_u32(u_input.a ^ u_input.a, u_input.a)) >> ((vec4<u32>(~33101u, 64795u, abs(var_0), u_input.a.x) | vec4<u32>(arg_2, 1u, var_0, u_input.a.x)) % vec4<u32>(32u)));
    let var_3 = Struct_2(Struct_1(vec3<bool>((u_input.b.x == 1u) & (global0[_wgslsmith_index_u32(20887u, 24u)] || global1[_wgslsmith_index_u32(1u, 31u)]), true, true), reverseBits(~(~arg_1.b)), 1i ^ arg_1.b, arg_1.d), arg_0.x, u_input.d.xy, vec4<i32>(0i, 0i, _wgslsmith_div_i32(2338i, firstLeadingBit(_wgslsmith_mod_i32(0i, -1i))), -u_input.d.x), ~arg_2);
    let var_4 = vec2<u32>(~1u, abs(u_input.a.x));
    return reverseBits(min(firstTrailingBit(~firstTrailingBit(19358u)), arg_2));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global1 = array<bool, 31>();
    let var_0 = ~(~_wgslsmith_add_vec2_u32(arg_0.e.wx, select(vec2<u32>(19131u, 4294967295u), abs(arg_1.e.zx), !vec2<bool>(global1[_wgslsmith_index_u32(1775u, 31u)], arg_1.c))));
    var var_1 = u_input.d.x;
    var var_2 = ~var_0.x;
    var_1 = u_input.d.x;
    return arg_1.d;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], all(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(0u, 24u)])), true), ~u_input.d.x, -34437i, vec3<bool>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))) != _wgslsmith_div_f32(133f, _wgslsmith_f_op_f32(arg_2.x - -1090f)), global1[_wgslsmith_index_u32(~u_input.c.x, 31u)], !all(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(52151u, 31u)], true))));
    let var_1 = vec2<i32>(u_input.d.x & u_input.d.x, -29612i);
    global2 = vec2<u32>(~4294967295u, arg_1);
    let var_2 = Struct_3(vec2<i32>(u_input.d.x, 1i), true, !global0[_wgslsmith_index_u32(arg_3, 24u)], func_4(Struct_3(vec2<i32>(33826i, 1i), 51402u >= func_2(vec2<f32>(911f, -102f), Struct_1(var_0.a, -1i, 1i, var_0.a), 40865u), any(!vec4<bool>(global0[_wgslsmith_index_u32(49026u, 24u)], false, var_0.a.x, false)), Struct_1(!var_0.d, -50322i, _wgslsmith_dot_vec3_i32(u_input.d.wxz, vec3<i32>(-945i, var_0.c, 0i)), !var_0.d), _wgslsmith_mod_vec4_u32(~u_input.a, u_input.a)), Struct_3(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, -2147483647i)), -u_input.d.ww), var_0.d.x, all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 24u)], var_0.d.x, global0[_wgslsmith_index_u32(0u, 24u)], var_0.a.x)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), -var_1.x, u_input.d.x & -29138i, vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 31u)], var_0.d.x, global1[_wgslsmith_index_u32(11129u, 31u)])), vec4<u32>(1u, ~u_input.c.x, ~global2.x, 87833u))), ~u_input.a);
    let var_3 = Struct_3(_wgslsmith_sub_vec2_i32(firstTrailingBit((vec2<i32>(2758i, u_input.d.x) & vec2<i32>(-2861i, var_2.d.b)) & ~var_2.a), -vec2<i32>(-29453i, var_0.c) | _wgslsmith_clamp_vec2_i32(var_1 | u_input.d.wx, -vec2<i32>(var_2.d.c, -2147483647i), var_2.a)), !any(!vec3<bool>(false, var_2.d.d.x, global1[_wgslsmith_index_u32(arg_1, 31u)])), !(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)) <= _wgslsmith_f_op_f32(select(arg_2.x, -1232f, !global0[_wgslsmith_index_u32(arg_1, 24u)]))), var_2.d, ~(~(~var_2.e) << (max(u_input.a, ~var_2.e) % vec4<u32>(32u))));
    return Struct_1(var_0.d, ~(-(_wgslsmith_mult_i32(var_1.x, var_2.a.x) | ~var_0.b)), 1i, var_2.d.d);
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    var var_0 = reverseBits(u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(916f, 1267f, _wgslsmith_f_op_f32(select(680f, _wgslsmith_f_op_f32(select(-1629f, 1120f, !arg_2.a.x)), func_1(u_input.c.x, 4294967295u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(567f, 377f, 714f, 1045f), vec4<f32>(505f, -246f, 2583f, 1225f), false)), u_input.a.x).a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f + _wgslsmith_f_op_f32(max(1538f, 151f))) * _wgslsmith_f_op_f32(sign(-2040f)))));
    let var_2 = Struct_3(vec2<i32>(u_input.d.x, -4370i), all(vec2<bool>(true, all(!vec2<bool>(arg_2.a.x, true)))), !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.x, var_0.x, 47248u)), ~var_0.zxy), 31u)], arg_2, ~countOneBits(u_input.a));
    return 307f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec3<u32>(reverseBits(u_input.b.x), _wgslsmith_add_u32(1u, u_input.a.x), 1u) ^ u_input.a.yyx);
    global0 = array<bool, 24>();
    global1 = array<bool, 31>();
    let var_1 = _wgslsmith_add_u32(var_0.x, 4294967295u);
    global1 = array<bool, 31>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-357f))) + _wgslsmith_f_op_f32(func_5(u_input.d.zxy, -u_input.d.x, func_1(4294967295u, 70791u, vec4<f32>(1000f, 2279f, 122f, -556f), 0u), reverseBits(u_input.d.yww)))))) + 425f);
    let var_3 = -u_input.d.x;
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -2287f);
}

