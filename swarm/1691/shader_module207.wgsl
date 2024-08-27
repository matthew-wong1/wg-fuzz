struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1i, vec3<f32>(-1287f, -569f, 179f)), Struct_1(-1i, vec3<f32>(205f, 1194f, -1000f)), Struct_1(-27528i, vec3<f32>(-2405f, 257f, 1997f)), Struct_1(-30049i, vec3<f32>(-809f, -940f, 1000f)), Struct_1(2650i, vec3<f32>(-2128f, 220f, -504f)), Struct_1(0i, vec3<f32>(565f, 849f, -169f)), Struct_1(2147483647i, vec3<f32>(1878f, -1000f, -889f)), Struct_1(1i, vec3<f32>(663f, -1000f, 1345f)), Struct_1(0i, vec3<f32>(491f, -333f, 2483f)), Struct_1(0i, vec3<f32>(-634f, 548f, -1072f)), Struct_1(11458i, vec3<f32>(404f, 1213f, -831f)), Struct_1(-1i, vec3<f32>(-108f, -255f, -1380f)), Struct_1(2147483647i, vec3<f32>(-228f, -1591f, -213f)), Struct_1(55321i, vec3<f32>(-983f, 953f, -342f)), Struct_1(17981i, vec3<f32>(933f, -1374f, 902f)), Struct_1(0i, vec3<f32>(944f, 1685f, -551f)), Struct_1(9359i, vec3<f32>(1146f, 851f, -1845f)), Struct_1(16670i, vec3<f32>(-245f, 667f, 534f)), Struct_1(1i, vec3<f32>(352f, 255f, 870f)), Struct_1(1i, vec3<f32>(722f, -708f, 1000f)), Struct_1(16705i, vec3<f32>(-281f, 610f, 1146f)), Struct_1(i32(-2147483648), vec3<f32>(1754f, 949f, -1000f)), Struct_1(57803i, vec3<f32>(1178f, 712f, -671f)), Struct_1(-1i, vec3<f32>(-101f, -813f, 1897f)), Struct_1(24834i, vec3<f32>(-1789f, 414f, 879f)));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 1170f, -628f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = Struct_1(_wgslsmith_mult_i32(~(i32(-1i) * -16764i), firstLeadingBit(arg_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)) - _wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(-965f * arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(arg_0.b.x, 650f))), !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, true, arg_1.x))))));
    var var_2 = var_1.b.x;
    var var_3 = 4294967295u;
    var var_4 = vec3<f32>(-3047f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1305f))));
    return Struct_1(-28635i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_4.x, global1.x) * vec3<f32>(var_1.b.x, arg_0.b.x, 564f))))), var_1.b, arg_3 >= 98493u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.a, u_input.a, arg_1 & ~u_input.a, 0u);
    let var_1 = vec3<bool>(!all(vec4<bool>(true, false, true, false)), false, !(!all(vec3<bool>(false, true, false))));
    let var_2 = all(vec2<bool>(false, false));
    global0 = array<Struct_1, 25>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(arg_1, ~13538u) >> (firstTrailingBit(~(var_0.x & 4294967295u)) % 32u)), 25u)];
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(arg_0.a >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4989u, u_input.a, 615u, 57603u) >> (vec4<u32>(u_input.a, 12770u, 5715u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u), abs(arg_0.a), max(-arg_0.a, 1i));
    let var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(1u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 7439u, 1u))), ~u_input.a, u_input.a, 47962u)), vec4<u32>(u_input.a, select(u_input.a, 111557u ^ ~u_input.a, any(vec4<bool>(false, true, true, false)) & (var_0.x != 0i)), min(1769u, 3837u ^ abs(u_input.a)), 88282u));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + 1225f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - arg_0.b.x)) * _wgslsmith_f_op_f32(round(arg_0.b.x))), select(any(vec4<bool>(true, false, false, false)) | false, true, true))), arg_0.b.x, -733f);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) + _wgslsmith_f_op_f32(step(global1.x, arg_0.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.b.x, func_3(arg_0, var_1.x, var_0, arg_0.a).b.x, any(vec2<bool>(true, true)))), arg_0.b.x))));
    let var_2 = arg_0;
    return Struct_1(~(~countOneBits(var_0.x) ^ 35642i), _wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(arg_0.b, var_2.b)), var_2.b, vec3<bool>(true, true, false)))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global1.zx + _wgslsmith_f_op_vec2_f32(round(arg_0.b.zz)));
    return func_4(func_3(func_2(Struct_1(-arg_0.a, vec3<f32>(-111f, global1.x, var_0.x)), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false), 1u, u_input.a), ~(u_input.a >> (~0u % 32u)), ~vec3<i32>(~2147483647i, -4009i, 0i), ~arg_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = func_3(Struct_1(reverseBits(arg_0.a << (_wgslsmith_mult_u32(u_input.a, 89822u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) + _wgslsmith_f_op_vec3_f32(abs(arg_0.b))))), select(~_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, (143420u > u_input.a) && true), ~(select(vec3<i32>(-2147483647i, 0i, arg_0.a), vec3<i32>(2147483647i, arg_0.a, arg_0.a), vec3<bool>(arg_1, false, false)) >> (~vec3<u32>(92238u, 4294967295u, u_input.a) % vec3<u32>(32u))) << ((~(~vec3<u32>(u_input.a, 0u, u_input.a)) ^ ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), func_3(arg_0, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 45728u) | vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), 4294967295u), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(15214i, arg_0.a, arg_0.a), vec3<i32>(arg_0.a, 18770i, 0i)) >> (select(vec3<u32>(33265u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), false) % vec3<u32>(32u))), 3526i).a);
    var var_2 = func_4(Struct_1(-(countOneBits(var_1.a) | _wgslsmith_sub_i32(var_1.a, var_1.a)), var_1.b));
    var var_3 = _wgslsmith_f_op_f32(step(global1.x, var_2.b.x));
    var var_4 = func_2(global0[_wgslsmith_index_u32(u_input.a, 25u)], select(!vec4<bool>(arg_1, arg_1, arg_1 != true, !arg_1), !select(vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, true, true)), !(!select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, true)))), _wgslsmith_mod_u32(~1u | u_input.a, (u_input.a << (31516u % 32u)) | ~u_input.a) >> (abs(u_input.a) % 32u), 68979u);
    return Struct_1(var_4.a, vec3<f32>(-917f, 774f, func_2(func_4(func_4(Struct_1(0i, var_1.b))), vec4<bool>(arg_1, !arg_1, all(vec4<bool>(arg_1, false, arg_1, true)), var_4.a > -2147483647i), u_input.a ^ ~0u, u_input.a).b.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec4<u32>(4294967295u, ~(~select(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), false)), 9649u, ~u_input.a);
    var_0 = reverseBits(vec4<u32>(~u_input.a, abs(~var_0.x), 1u, select(~47500u, ~(var_0.x & var_0.x), true)));
    return vec3<bool>(!all(vec4<bool>(arg_1.a < arg_1.a, true, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1695f, global1.x, 590f) * vec3<f32>(global1.x, -373f, -681f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1518f, global1.x, -2151f) * vec3<f32>(1047f, 683f, -662f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1647f, -223f, global1.x))))), vec3<f32>(-1225f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 414f)), _wgslsmith_f_op_f32(-788f * _wgslsmith_f_op_f32(round(global1.x)))), func_6(~vec4<i32>(-2147483647i, -1i, 26380i, -1i), func_5(func_1(global0[_wgslsmith_index_u32(u_input.a, 25u)]), true)))));
    let var_0 = global0[_wgslsmith_index_u32(max(max(_wgslsmith_dot_vec4_u32(min(vec4<u32>(58724u, 1u, 66690u, 38740u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) << ((vec4<u32>(u_input.a, u_input.a, 88355u, u_input.a) & vec4<u32>(49092u, 0u, 0u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 6155u, u_input.a, 1u), ~vec4<u32>(u_input.a, 57878u, u_input.a, 4294967295u))), ~(~min(65246u, 80129u))), u_input.a), 25u)];
    var var_1 = func_1(global0[_wgslsmith_index_u32(u_input.a, 25u)]);
    var var_2 = ~(~(vec4<u32>(u_input.a, ~41154u, u_input.a, ~u_input.a) ^ vec4<u32>(_wgslsmith_mult_u32(u_input.a, 0u), select(u_input.a, u_input.a, true), firstTrailingBit(49999u), 4294967295u)));
    var_2 = firstTrailingBit(vec4<u32>(u_input.a, var_2.x, 1u, 1u));
    var var_3 = func_1(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, var_1.b.x, var_1.b.x)) * var_1.b)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.xy)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1497f, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -242f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1561f - var_3.b.x))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)));
}

