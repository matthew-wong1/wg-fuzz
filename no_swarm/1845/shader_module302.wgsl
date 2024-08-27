struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<u32, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<f32> {
    global1 = array<u32, 20>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_1(arg_0, -firstLeadingBit(-(vec2<i32>(8111i, global0[_wgslsmith_index_u32(0u, 10u)]) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], arg_0.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1089f, 971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(141f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 20u)]), vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(59089u, 10u)]), vec3<f32>(-724f, -970f, 996f), false), Struct_1(arg_0, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 10u)]), vec3<f32>(763f, -176f, 531f), false), vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 10u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 20u)], 10u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(874f, 175f, 361f), vec3<f32>(-1896f, -1550f, 974f), vec3<bool>(true, false, false)))))))), true);
    let var_1 = vec2<bool>((var_0.c.x == _wgslsmith_f_op_vec3_f32(func_3(var_0, Struct_1(var_0.a, vec2<i32>(-1i, 1i), var_0.c, var_0.d), abs(vec2<i32>(16868i, var_0.b.x)))).x) | !(any(vec3<bool>(true, true, true)) && all(vec3<bool>(false, var_0.d, var_0.d))), var_0.d);
    var var_2 = !(!all(vec4<bool>(any(vec2<bool>(var_0.d, false)), var_0.d & true, var_0.d && true, any(vec2<bool>(var_0.d, false)))));
    global0 = array<i32, 10>();
    return 13162i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<u32, 20>();
    global1 = array<u32, 20>();
    return Struct_1(reverseBits(~vec2<u32>(4294967295u, ~90696u)), vec2<i32>(i32(-1i) * -func_2(vec2<u32>(arg_0, 22341u)), firstLeadingBit((global0[_wgslsmith_index_u32(1u, 10u)] >> (arg_0 % 32u)) << (global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(arg_0, 20u)]), 20u)] % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-412f + 543f), _wgslsmith_f_op_f32(max(594f, -1534f)), _wgslsmith_f_op_f32(ceil(-467f)))))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<u32, 20>();
    let var_0 = arg_0;
    var var_1 = any(vec4<bool>(var_0.d, !all(vec3<bool>(arg_0.d, var_0.d, var_0.d)), all(!select(vec2<bool>(arg_0.d, true), vec2<bool>(var_0.d, arg_1.d), arg_0.d)), false));
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~select(var_0.a, arg_1.a, vec2<bool>(true, arg_1.d)), var_0.a), _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, var_0.a.x)), func_1(~52765u).a)));
    let var_3 = vec2<i32>(countOneBits(-_wgslsmith_clamp_i32(firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.a.x, 10u)]), arg_1.b.x, 1i)), _wgslsmith_div_i32(func_2(min(var_0.a ^ var_0.a, vec2<u32>(23565u, 42164u))), countOneBits(-(~arg_1.b.x))));
    return Struct_1(vec2<u32>(~firstTrailingBit(~arg_1.a.x), ~(~_wgslsmith_mod_u32(arg_1.a.x, 4294967295u))), ~(~var_3), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x * arg_0.c.x), var_0.c.x, 191f), arg_1.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u | (1u & firstTrailingBit(arg_3.a.x)), select(global1[_wgslsmith_index_u32(func_1(~4294967295u).a.x, 20u)], 4294967295u, true)), _wgslsmith_mod_u32(34442u, global1[_wgslsmith_index_u32(reverseBits(arg_0.a.x), 20u)]));
    global1 = array<u32, 20>();
    global0 = array<i32, 10>();
    var var_1 = Struct_1(arg_3.a, u_input.a.xx, arg_0.c, arg_1);
    let var_2 = func_4(func_4(Struct_1(vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 20u)], 0u), 4294967295u ^ global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<i32>(firstLeadingBit(49645i), 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2321f, arg_3.c.x, arg_3.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -374f) > _wgslsmith_f_op_f32(arg_0.c.x * arg_3.c.x)), func_4(arg_3, Struct_1(arg_0.a, vec2<i32>(arg_3.b.x, var_1.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(494f, arg_0.c.x, 1000f), vec3<f32>(-354f, -1000f, -1017f), vec3<bool>(arg_0.d, arg_3.d, false))), any(vec4<bool>(arg_3.d, false, true, arg_1))))), func_1(~(~0u) >> (0u % 32u)));
    return Struct_1(max(_wgslsmith_sub_vec2_u32(var_2.a, arg_3.a), arg_0.a), reverseBits(vec2<i32>(abs(-1821i ^ var_1.b.x), var_1.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_1.c.x, arg_3.c.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.x, -446f, var_2.c.x), vec3<f32>(-177f, arg_0.c.x, 1009f)))) * _wgslsmith_f_op_vec3_f32(-arg_3.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, arg_0.c.x, -1178f)))))), !(!((-2147483647i >= var_1.b.x) & false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(370f)) * _wgslsmith_f_op_f32(772f - 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 860f, _wgslsmith_f_op_f32(round(1346f)), 1000f);
    let var_1 = func_5(func_4(func_1(~1u), func_1(44360u)), !(!(_wgslsmith_clamp_u32(4294967295u, 55579u, global1[_wgslsmith_index_u32(20895u, 20u)]) > global1[_wgslsmith_index_u32(countOneBits(0u), 20u)])), ~(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -37834i, u_input.a.x), vec4<i32>(0i, -10038i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 10u)], -2147483647i)))), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1864u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 4294967295u))), firstLeadingBit(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 0u))), _wgslsmith_div_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(34055u, 20u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 20u)], 4294967295u))), vec2<i32>(0i << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)] % 32u), -global0[_wgslsmith_index_u32(5821u, 10u)]), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, 816f)), _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x))), true));
    global0 = array<i32, 10>();
    let var_2 = func_5(func_5(func_5(func_4(var_1, func_5(var_1, true, vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(41615u, 10u)], global0[_wgslsmith_index_u32(32386u, 10u)]), Struct_1(vec2<u32>(1u, 4294967295u), var_1.b, var_1.c, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.d, var_1.d, var_1.d), true)), vec4<i32>(-var_1.b.x, u_input.a.x, u_input.a.x, 1i), Struct_1(vec2<u32>(var_1.a.x, global1[_wgslsmith_index_u32(var_1.a.x, 20u)]), vec2<i32>(u_input.a.x, 11359i), _wgslsmith_f_op_vec3_f32(trunc(var_1.c)), var_1.d & true)), u_input.a.x != (_wgslsmith_mult_i32(u_input.a.x, 1i) << (firstLeadingBit(121256u) % 32u)), firstLeadingBit(vec4<i32>(1i, var_1.b.x, u_input.a.x, _wgslsmith_add_i32(-1i, 9655i))), var_1), !func_1(_wgslsmith_div_u32(24498u, 64241u)).d & all(vec3<bool>(var_1.d & var_1.d, true, var_1.d)), select(vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 20u)], 10u)], _wgslsmith_div_i32(24194i, global0[_wgslsmith_index_u32(52088u, 10u)])) >> ((~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(9043u, 20u)], 80749u, 0u) & vec4<u32>(73891u, 65121u, 6539u, var_1.a.x)) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(40246u, 51973u, var_1.d), 20u)], 10u)] << (0u % 32u), max(var_1.b.x, u_input.a.x) >> (func_1(96933u).a.x % 32u), -1i, 1i), var_1.d & all(!vec3<bool>(var_1.d, var_1.d, true))), func_1(4294967295u ^ var_1.a.x));
    let var_3 = global0[_wgslsmith_index_u32(~38209u, 10u)];
    let var_4 = min(func_5(func_5(var_2, var_1.d, ~vec4<i32>(0i, -4387i, var_2.b.x, global0[_wgslsmith_index_u32(1u, 10u)]), Struct_1(max(vec2<u32>(var_1.a.x, global1[_wgslsmith_index_u32(57423u, 20u)]), var_1.a), var_1.b, func_1(var_2.a.x).c, var_2.d)), (u_input.a.x >= (var_1.b.x >> (4294967295u % 32u))) && true, select(select(countOneBits(vec4<i32>(var_2.b.x, 2147483647i, -45217i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 3899i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 10u)])), select(vec4<bool>(var_2.d, var_2.d, var_2.d, true), vec4<bool>(false, false, false, true), true)), abs(-vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 20u)], 20u)], 20u)], 10u)], -13924i, 1i, -26471i)), any(select(vec2<bool>(var_1.d, var_2.d), vec2<bool>(var_2.d, false), vec2<bool>(var_2.d, true)))), func_5(func_4(var_2, Struct_1(var_2.a, var_1.b, vec3<f32>(-954f, var_1.c.x, var_0.x), true)), select(var_2.b.x <= u_input.a.x, func_5(Struct_1(var_2.a, var_2.b, vec3<f32>(-400f, -1273f, -1567f), var_2.d), false, vec4<i32>(-1771i, -2147483647i, 0i, u_input.a.x), var_1).d, var_2.d), _wgslsmith_sub_vec4_i32(vec4<i32>(5516i, var_2.b.x, 0i, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(2147483647i, var_1.b.x, 1109i, u_input.a.x)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 4294967295u), var_1.a, vec2<u32>(9130u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)])), vec2<i32>(u_input.a.x, var_2.b.x) ^ vec2<i32>(var_1.b.x, u_input.a.x), vec3<f32>(-1000f, var_2.c.x, -1277f), var_1.d))).a.x, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~func_5(func_5(var_2, var_1.d, vec4<i32>(var_2.b.x, 0i, -28090i, -3819i), Struct_1(vec2<u32>(60149u, var_2.a.x), vec2<i32>(22192i, 26392i), vec3<f32>(-1741f, -1000f, var_0.x), var_1.d)), true, -vec4<i32>(-2147483647i, 15486i, var_2.b.x, -32911i), func_1(var_1.a.x)).a.x, 29181u, countOneBits(11369u)));
}

