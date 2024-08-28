struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1440f, -1375f, -555f, -1264f, -1178f, 1000f, -1000f, 270f, -3011f, 356f, 528f, -828f, 383f, 178f, -873f, 239f, -1726f, -898f, 725f, 482f, -2720f, -670f, -1790f, 199f, -1424f, 835f);

var<private> global1: vec3<u32> = vec3<u32>(24660u, 67457u, 40001u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global1 = vec3<u32>(countOneBits(global1.x) | ~reverseBits(1942u), ~11473u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.x, _wgslsmith_clamp_u32(38731u, global1.x, global1.x)), min(~vec2<u32>(u_input.c, 29890u), vec2<u32>(53039u, 4294967295u))));
    global1 = ~countOneBits(_wgslsmith_div_vec3_u32(select(~vec3<u32>(global1.x, global1.x, global1.x), countOneBits(u_input.e.xwz), true), ~min(vec3<u32>(1u, u_input.e.x, global1.x), u_input.e.xzy)));
    let var_0 = Struct_1(~(max(_wgslsmith_dot_vec3_i32(u_input.b.zxz, vec3<i32>(-27141i, u_input.b.x, u_input.b.x)), _wgslsmith_add_i32(-1i, u_input.b.x)) >> ((67061u ^ global1.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(14016u, global1.x), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -375f), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 26u)])))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(12721u, 26u)], _wgslsmith_f_op_f32(125f + global0[_wgslsmith_index_u32(52897u, 26u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 26u)] * global0[_wgslsmith_index_u32(u_input.a.x, 26u)]) + 371f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(abs(~1u), 26u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(61404u, 26u)], global0[_wgslsmith_index_u32(120572u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36438u, 26u)])), -107f)), true, vec3<i32>(i32(-1i) * -54383i, -min(~u_input.b.x, u_input.b.x), 0i));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.wyx, ~u_input.e.yyz << (~vec3<u32>(u_input.a.x, global1.x, 4032u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, global1.x, 1u)), u_input.a.ywy | (abs(vec3<u32>(global1.x, u_input.e.x, 34612u)) | u_input.e.zxy)), abs(global1.x), 11138u, _wgslsmith_dot_vec2_u32(~max(u_input.a.zx, u_input.a.wy), abs(firstLeadingBit(u_input.a.yw))));
    return -1000f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    global0 = array<f32, 26>();
    var var_0 = u_input.d;
    let var_1 = !select(vec2<bool>(arg_1.d, true), !(!(!vec2<bool>(arg_2.d, arg_1.d))), any(select(vec2<bool>(false, arg_2.d), select(vec2<bool>(arg_2.d, arg_1.d), vec2<bool>(true, true), vec2<bool>(arg_2.d, arg_1.d)), -2168f != arg_1.c.x)));
    var var_2 = !(!var_1.x);
    global0 = array<f32, 26>();
    return true & all(!var_1);
}

fn func_2() -> Struct_1 {
    global1 = ~(u_input.e.xzw ^ vec3<u32>(~global1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 25769u), u_input.a.zz >> (global1.yy % vec2<u32>(32u))), 86813u));
    var var_0 = func_4(1632f, Struct_1((1i << (~u_input.a.x % 32u)) | ~0i, vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(-135f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(33871u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.x, 26u)])) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c, 26u)], -1351f))), 1f), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global1.x, 26u)])), _wgslsmith_f_op_f32(trunc(1f)), 1467f, _wgslsmith_f_op_f32(f32(-1f) * -1478f)), any(vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(28415i, -1i, 29060i)), abs(vec3<i32>(72105i, 1i, -2147483647i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(34793u, 65891u, 6693u), u_input.e.wwz) % vec3<u32>(32u)))), Struct_1(u_input.b.x, vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(~(~global1.x), 26u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 26u)] - global0[_wgslsmith_index_u32(u_input.e.x, 26u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(675f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4428u, 26u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(71062u, 26u)], 909f, global0[_wgslsmith_index_u32(47527u, 26u)], global0[_wgslsmith_index_u32(u_input.d, 26u)])))), false, vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(35319i, u_input.b.x, u_input.b.x, -2147483647i)) << (u_input.d % 32u), ~(~u_input.b.x), 0i)), -1i);
    let var_1 = Struct_1(~u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 26u)])))), global0[_wgslsmith_index_u32(min(global1.x, ~u_input.a.x), 26u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 41792u), 26u)] + 662f))), global0[_wgslsmith_index_u32(global1.x, 26u)]), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.x, 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] + global0[_wgslsmith_index_u32(1u, 26u)]) + _wgslsmith_f_op_f32(1125f * global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -516f))), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, 623f, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(6661u, 26u)])), vec4<f32>(global0[_wgslsmith_index_u32(28755u, 26u)], -135f, global0[_wgslsmith_index_u32(global1.x, 26u)], -1445f), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(38221u, 26u)], -709f, -453f)))))), all(vec4<bool>(true, true, true, true)), select(~vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(2147483647i, u_input.b.x, -9024i), i32(-1i) * -2147483647i), vec3<i32>(32776i, select(~u_input.b.x, u_input.b.x, true), 33263i), !(true & any(vec4<bool>(false, false, true, true)))));
    global0 = array<f32, 26>();
    var var_2 = var_1;
    return var_1;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = ~global1.zy;
    global1 = abs(~((max(u_input.e.zyx, u_input.a.yzx) << (~vec3<u32>(8122u, 28303u, 4294967295u) % vec3<u32>(32u))) | vec3<u32>(~0u, ~var_1.x, 10583u)));
    let var_2 = 1u;
    global0 = array<f32, 26>();
    return func_2();
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = 0i;
    var var_1 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(arg_3.d, true), vec2<bool>(arg_1, arg_2.d), vec2<bool>(arg_1, arg_3.d)), !vec2<bool>(arg_1, true), vec2<bool>(false, arg_2.d)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), true), select(vec2<bool>(true, arg_2.d), vec2<bool>(true, true), arg_1), !vec2<bool>(arg_3.d, false)), func_2().d), select(select(select(vec2<bool>(false, true), vec2<bool>(false, arg_3.d), true), select(vec2<bool>(arg_3.d, arg_1), vec2<bool>(true, arg_1), arg_3.d), vec2<bool>(true, true)), !select(vec2<bool>(true, arg_1), vec2<bool>(true, false), vec2<bool>(true, arg_1)), arg_1));
    var var_2 = firstLeadingBit(u_input.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, any(vec3<bool>(func_5(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, global1.x, 54152u), vec3<u32>(u_input.c, 0u, u_input.e.x)), true, func_1(0u, -2147483647i, u_input.b.x), Struct_1(u_input.b.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], -1000f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 1015f, global0[_wgslsmith_index_u32(23454u, 26u)], 1000f), false, vec3<i32>(u_input.b.x, -24007i, u_input.b.x))), true, true)), !(!any(vec2<bool>(false, true))));
    let var_1 = Struct_1(abs(reverseBits(~select(u_input.b.x, 6911i, var_0.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, 908f, global0[_wgslsmith_index_u32(global1.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 26u)], -1095f, 1106f, 842f), vec4<f32>(1990f, global0[_wgslsmith_index_u32(u_input.e.x, 26u)], -1100f, -1499f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1384f, 688f, -205f, -343f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], -167f, 1538f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 1094f, global0[_wgslsmith_index_u32(1u, 26u)], 889f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2357f, -679f, global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(34399u, 26u)]) + vec4<f32>(-790f, global0[_wgslsmith_index_u32(u_input.e.x, 26u)], 1826f, global0[_wgslsmith_index_u32(u_input.d, 26u)]))) + _wgslsmith_f_op_vec4_f32(func_1(13648u, u_input.b.x, -2147483647i).c - func_1(4294967295u, -23157i, 51311i).c))), var_0.x, _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -11691i, u_input.b.x), u_input.b.xzx), -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(22664i, -5676i, u_input.b.x)), ~32137i, 0i), u_input.b.xyy));
    global0 = array<f32, 26>();
    var var_2 = var_0;
    let var_3 = 13735i;
    global1 = min(~reverseBits(~u_input.a.yyz), vec3<u32>(_wgslsmith_add_u32(0u, global1.x), abs(_wgslsmith_mult_u32(29125u, 0u) >> (_wgslsmith_mod_u32(global1.x, global1.x) % 32u)), 79159u));
    let var_4 = func_1(0u, -var_3, 0i);
    global1 = vec3<u32>(0u, 0u, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_f_op_f32(var_4.b.x + var_4.b.x), abs(u_input.a), vec2<f32>(var_1.c.x, 1418f), min(var_3, min(-_wgslsmith_mult_i32(var_1.e.x, 0i), var_3)));
}

