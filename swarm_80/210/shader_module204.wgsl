struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: i32 = -1i;

var<private> global2: array<f32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, -538f, global2[_wgslsmith_index_u32(~3884u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(75712u, 2u)]))))));
    global0 = array<vec3<bool>, 16>();
    let var_1 = Struct_3(false, var_0, !global0[_wgslsmith_index_u32(~(~24471u), 16u)], Struct_1(~select(~vec3<u32>(73075u, 4294967295u, 1u), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(88089u, 28784u, 16970u)), false), vec4<bool>(!arg_0.a.x, !arg_0.a.x, !arg_0.a.x & true, true)));
    let var_2 = _wgslsmith_dot_vec4_i32(arg_2, ~(-firstLeadingBit(vec4<i32>(-9705i, u_input.a, u_input.a, arg_2.x))));
    let var_3 = !any(select(select(arg_0.a.zw, vec2<bool>(arg_0.a.x, true), vec2<bool>(var_1.d.b.x, false)), vec2<bool>(true, var_1.d.a.x == var_1.d.a.x), false));
    return var_1.d.a << (var_1.d.a % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_1(func_3(Struct_2(select(vec4<bool>(false, false, true, arg_2.c.x), vec4<bool>(arg_0.b.x, arg_3, true, arg_1.b.x), arg_1.b)), arg_2.b.zxx, countOneBits(vec4<i32>(42302i, u_input.b, u_input.a, 25173i))) << (_wgslsmith_mod_vec3_u32(select(~vec3<u32>(19914u, arg_1.a.x, arg_2.d.a.x), arg_0.a >> (vec3<u32>(46006u, 14648u, arg_2.d.a.x) % vec3<u32>(32u)), !arg_2.c), firstTrailingBit(vec3<u32>(39326u, arg_1.a.x, arg_2.d.a.x))) % vec3<u32>(32u)), arg_0.b);
    var var_1 = arg_1.a.x;
    var_1 = 38030u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]))), -481f)) - _wgslsmith_f_op_f32(-1164f * 2054f)) + arg_2.b.x);
    global2 = array<f32, 2>();
    return !vec3<bool>(arg_2.d.b.x, false, arg_2.a);
}

fn func_2() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(34355u, 2u)];
    let var_1 = Struct_3(!(all(vec2<bool>(false, false)) & (true & any(vec4<bool>(true, true, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25567u, 32222u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 2u)])), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16209u, 0u, 113277u), vec4<u32>(1u, 1u, 1u, 1u)), 2u)])), _wgslsmith_f_op_f32(107f * -2131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1065f + global2[_wgslsmith_index_u32(0u, 2u)]), 1f))), !func_4(Struct_1(func_3(Struct_2(vec4<bool>(true, false, false, false)), vec3<f32>(global2[_wgslsmith_index_u32(58982u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), vec4<i32>(u_input.b, -35874i, 1i, 19117i)), vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(1u, 42295u, 36759u), vec4<bool>(false, false, true, true)), Struct_3(all(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(6666u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], 774f, global2[_wgslsmith_index_u32(5749u, 2u)]), vec4<f32>(global2[_wgslsmith_index_u32(12452u, 2u)], global2[_wgslsmith_index_u32(1782u, 2u)], -1217f, global2[_wgslsmith_index_u32(82415u, 2u)]))), !global0[_wgslsmith_index_u32(1u, 16u)], Struct_1(vec3<u32>(4294967295u, 592u, 28099u), vec4<bool>(true, true, false, true))), any(vec4<bool>(true, true, false, false))), Struct_1(vec3<u32>(abs(72652u), 1u, ~(~0u)), vec4<bool>(!any(vec2<bool>(true, false)), select(true, false, false), any(select(global0[_wgslsmith_index_u32(17211u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], false)), all(vec3<bool>(false, false, true)))));
    var var_2 = Struct_2(!(!var_1.d.b));
    let var_3 = var_1.b.wzx;
    var var_4 = Struct_2(!select(!(!var_2.a), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_2.a.x, var_1.c.x, var_2.a.x), false), var_1.c.x));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 16>();
    var var_0 = Struct_2(arg_2.b);
    let var_1 = arg_2.b.wz;
    var var_2 = Struct_1(~(~(~arg_2.a & ~vec3<u32>(0u, 37913u, 53913u))), vec4<bool>(-31238i != _wgslsmith_div_i32(firstTrailingBit(u_input.b), u_input.b), !(!arg_2.b.x) | true, true, false));
    var_0 = Struct_2(!select(vec4<bool>(any(vec2<bool>(true, true)), any(var_2.b), false, func_2()), vec4<bool>(true, true, true, var_2.b.x), !vec4<bool>(var_1.x, true, var_1.x, false)));
    return select(u_input.b, u_input.a, any(!var_0.a.zyz));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(93339u, 16u)];
    var var_1 = reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(12769i, u_input.a), vec2<i32>(u_input.b, u_input.b), arg_1), vec2<i32>(u_input.b, arg_1.x)), arg_1.x, ~u_input.b)) ^ (~vec3<i32>(firstTrailingBit(-22224i), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(1i, arg_1.x)), -u_input.a) << (_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_0, arg_0, arg_0)), func_3(Struct_2(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec3<f32>(1226f, arg_2, global2[_wgslsmith_index_u32(arg_0, 2u)]), vec4<i32>(1i, 0i, arg_1.x, -2147483647i)) >> (vec3<u32>(arg_0, 83264u, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = !func_4(Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(4960u, arg_0, 0u), vec3<u32>(83038u, 52378u, 20694u)), !(!vec4<bool>(true, var_0.x, false, true))), Struct_1(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 31008u, 0u), vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 4294967295u))), select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, false, false, false)), vec4<bool>(var_0.x, true, false, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x))), Struct_3(!var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1171f, arg_2, global2[_wgslsmith_index_u32(arg_0, 2u)], 741f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, 682f, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)]))), !global0[_wgslsmith_index_u32(1u, 16u)], Struct_1(vec3<u32>(arg_0, 4294967295u, 22291u), !vec4<bool>(true, var_0.x, var_0.x, true))), any(select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, false))));
    let var_2 = Struct_3(!(!var_0.x != (~arg_0 >= (arg_0 >> (38458u % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 2u)], arg_2, -1141f, -1146f)), vec4<f32>(1906f, 506f, global2[_wgslsmith_index_u32(arg_0, 2u)], 540f), vec4<bool>(true, true, true, true))) * vec4<f32>(arg_2, global2[_wgslsmith_index_u32(arg_0, 2u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 2u)]), _wgslsmith_f_op_f32(-1731f - 1258f)))), vec3<bool>(_wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(78993u, 2u)])) > 1660f, true, select(true, true, true)), Struct_1(~min(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(0u, arg_0, arg_0)), vec4<bool>(false, var_0.x, !var_0.x, true)));
    var var_3 = func_4(Struct_1(~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(83786u, 4294967295u, 1u), vec3<u32>(18921u, 1u, var_2.d.a.x)), func_3(Struct_2(var_2.d.b), var_2.b.wzw, vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x))), vec4<bool>(var_0.x, var_0.x, var_2.d.b.x, !all(vec3<bool>(false, false, false)))), Struct_1(vec3<u32>(_wgslsmith_mod_u32(max(arg_0, 4583u), ~40311u), _wgslsmith_div_u32(func_3(Struct_2(vec4<bool>(true, false, var_2.a, false)), var_2.b.zwx, vec4<i32>(-1i, u_input.a, -22249i, u_input.b)).x, _wgslsmith_sub_u32(4294967295u, 24837u)), 89745u), var_2.d.b), Struct_3(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 1120f, global2[_wgslsmith_index_u32(23433u, 2u)], 707f)), _wgslsmith_f_op_vec4_f32(-var_2.b)), !select(select(global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(30256u, 16u)], vec3<bool>(var_2.a, var_0.x, var_2.d.b.x)), !var_2.c, vec3<bool>(var_2.a, false, true)), Struct_1(func_3(Struct_2(var_2.d.b), vec3<f32>(global2[_wgslsmith_index_u32(76674u, 2u)], -680f, global2[_wgslsmith_index_u32(41896u, 2u)]), -vec4<i32>(arg_1.x, u_input.a, 1i, 40963i)), !(!var_2.d.b))), func_4(var_2.d, var_2.d, var_2, var_2.c.x).x);
    return var_2.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1970f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~13995u, ~43005u, 1u, _wgslsmith_sub_u32(20702u, 2867u)), vec4<u32>(max(52078u, 4294967295u), _wgslsmith_mod_u32(86632u, 17839u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25196u), vec2<u32>(4294967295u, 4294967295u)), 1u)), vec4<u32>(1u, 1u, 1u, min(1u, _wgslsmith_add_u32(0u, 41766u)))), 2u)]);
    global1 = -3494i;
    global0 = array<vec3<bool>, 16>();
    let var_1 = Struct_1(vec3<u32>(func_5(_wgslsmith_mod_u32(1u, ~1u), vec2<i32>(u_input.b, func_1(13638u, vec4<f32>(793f, -243f, global2[_wgslsmith_index_u32(4294967295u, 2u)], var_0.x), Struct_1(vec3<u32>(9578u, 4294967295u, 54805u), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(exp2(var_0.x))), ~func_3(Struct_2(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(120f, -1161f, global2[_wgslsmith_index_u32(54434u, 2u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -1i), vec4<i32>(u_input.a, u_input.b, -7715i, u_input.a), vec4<i32>(88058i, u_input.b, 2147483647i, 14613i))).x, ~(~(~12672u))), !vec4<bool>(true, all(vec2<bool>(true, false)), true, func_4(Struct_1(vec3<u32>(4294967295u, 41860u, 53204u), vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(4294967295u, 31877u, 30500u), vec4<bool>(false, true, false, true)), Struct_3(true, vec4<f32>(global2[_wgslsmith_index_u32(93182u, 2u)], global2[_wgslsmith_index_u32(55518u, 2u)], 516f, -621f), global0[_wgslsmith_index_u32(44736u, 16u)], Struct_1(vec3<u32>(24571u, 18378u, 25178u), vec4<bool>(true, false, false, true))), true).x && true));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u)), vec3<u32>(var_1.a.x, var_1.a.x, 104290u)), vec3<u32>(~min(0u, var_1.a.x), var_1.a.x, ~(~0u))), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x) & vec2<u32>(4294967295u, 8316u), vec2<u32>(48230u, 0u) & var_1.a.xx), max(abs(4294967295u), func_5(var_1.a.x, vec2<i32>(u_input.b, u_input.a), var_0.x)), var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(0i, -1i) ^ vec2<i32>(u_input.b, u_input.a)) & select(vec2<i32>(-35762i, 14708i), vec2<i32>(u_input.a, u_input.b), false), ~vec2<i32>(u_input.a, u_input.a)), 2147483647i), _wgslsmith_sub_u32(~0u, func_5(~_wgslsmith_dot_vec2_u32(var_1.a.yx, vec2<u32>(var_1.a.x, 4294967295u)), vec2<i32>(_wgslsmith_mod_i32(u_input.b, 2147483647i), _wgslsmith_clamp_i32(9413i, u_input.a, -32509i)), 1559f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), -450f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(74030u, 2u)], -796f, var_1.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(56879u, var_1.a.x), 2u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1000f, var_0.x, global2[_wgslsmith_index_u32(var_1.a.x, 2u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1888f, 1824f, 548f, -1743f) - vec4<f32>(-1332f, 1705f, -247f, 1538f)), var_1.b)))));
}

