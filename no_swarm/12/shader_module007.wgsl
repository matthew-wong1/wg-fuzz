struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-213f, 910f, 1038f, -652f), vec4<f32>(-1734f, 1006f, 193f, 345f), vec4<f32>(-586f, 2384f, 396f, 185f), vec4<f32>(-533f, 608f, 1305f, -522f), vec4<f32>(275f, 584f, 2170f, -513f), vec4<f32>(268f, -958f, 618f, -478f), vec4<f32>(827f, 177f, -1000f, 1486f), vec4<f32>(-509f, -361f, 373f, -155f), vec4<f32>(-869f, -542f, 505f, 611f), vec4<f32>(-919f, -940f, 166f, -1553f), vec4<f32>(920f, 690f, -710f, 1608f), vec4<f32>(1690f, -234f, -149f, -388f), vec4<f32>(-444f, 998f, 745f, 275f), vec4<f32>(531f, 201f, 605f, -354f), vec4<f32>(-125f, -643f, -1233f, 368f), vec4<f32>(776f, -1645f, 1565f, 766f), vec4<f32>(263f, -943f, 196f, 419f), vec4<f32>(-191f, 1554f, -345f, 331f), vec4<f32>(622f, -1063f, 166f, 2957f), vec4<f32>(-662f, -780f, -1216f, -599f), vec4<f32>(-1368f, -609f, 1213f, -811f), vec4<f32>(1000f, -2484f, 941f, 1321f), vec4<f32>(440f, 635f, -2022f, -700f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = abs(u_input.d);
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(46101u, 23u)]) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, -941f, -720f, -1000f)))))), Struct_1(vec4<f32>(-751f, _wgslsmith_f_op_f32(f32(-1f) * -1181f), -380f, _wgslsmith_f_op_f32(-801f + -2623f))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 32691i), 1096i), 0i), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -21478i, 1769i, u_input.c.x), vec4<i32>(-2147483647i, arg_0.x, 18721i, -56731i)))), Struct_1(global0[_wgslsmith_index_u32(var_0, 23u)]));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d.a.x, _wgslsmith_f_op_f32(floor(var_1.a.a.x)))) + 937f);
    return var_1.b;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(880f, -184f, arg_0.b.a.x, 3000f) * global0[_wgslsmith_index_u32(u_input.d, 23u)]))) + global0[_wgslsmith_index_u32((10583u ^ u_input.d) << (~u_input.d % 32u), 23u)])), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, 1000f, arg_0.a.a.x))) * vec4<f32>(arg_0.b.a.x, -1000f, _wgslsmith_f_op_f32(-arg_0.d.a.x), _wgslsmith_f_op_f32(trunc(arg_0.b.a.x))))), 0i, func_2(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-13308i, arg_0.c), 0i, 2147483647i))));
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_div_vec4_i32(-vec4<i32>(10326i, ~(~4746i), select(u_input.e.x, -1i, false), max(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, var_0.c))), -reverseBits(vec4<i32>(u_input.e.x | 1i, -28743i, u_input.e.x, _wgslsmith_mod_i32(arg_0.c, 29652i))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(var_1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1260f, 480f, 1362f, arg_0.b.a.x) - vec4<f32>(1129f, var_1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1381f, arg_0.d.a.x, arg_0.b.a.x, -687f))), vec4<bool>(true, true, true, true))) - arg_0.a.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_div_vec4_u32(select(abs(vec4<u32>(0u, 4294967295u, u_input.d, 16537u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 24247u, 6145u, 0u), vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d)), vec4<bool>(false, false, true, true)), _wgslsmith_add_vec4_u32(max(vec4<u32>(97264u, u_input.d, 41747u, 67277u), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))));
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    var var_1 = u_input.e;
    let var_2 = vec4<u32>(~(~abs(var_0.x) & ~16972u), u_input.d, reverseBits(reverseBits(min(var_0.x, ~60927u))), u_input.d);
    return arg_0.b;
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_2(func_3(Struct_2(func_2(u_input.c), func_2(u_input.c), u_input.e.x << (u_input.d % 32u), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)]))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_mod_i32(-abs(38758i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, -25363i), vec2<i32>(-1i, 1i))), func_3(Struct_2(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)]), u_input.b.x, Struct_1(vec4<f32>(194f, 912f, -536f, 372f)))), Struct_1(global0[_wgslsmith_index_u32(30673u, 23u)]), u_input.b.x, func_2(vec3<i32>(u_input.b.x, 31523i, u_input.b.x))))), vec4<f32>(1125f, -1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f * -107f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1407f, 401f, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-950f))))), _wgslsmith_f_op_f32(1048f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1331f * _wgslsmith_f_op_f32(abs(-544f)))))), u_input.a);
    var var_1 = Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 23u)]), Struct_1(var_0.a), 5923i, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 475f))), _wgslsmith_f_op_vec4_f32(min(var_0.a, global0[_wgslsmith_index_u32(u_input.d, 23u)])), -710f, reverseBits(u_input.e.x)), func_4(Struct_2(Struct_1(vec4<f32>(-1488f, 587f, var_0.a.x, 1795f)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1738f)), 10628i, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -974f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1923f, var_0.a.x, var_0.a.x, var_0.a.x) * vec4<f32>(-1120f, 140f, 1000f, -2498f)), _wgslsmith_div_f32(-658f, var_0.a.x), abs(u_input.a)), -22873i, Struct_1(vec4<f32>(var_0.a.x, 239f, -307f, 429f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -1777f, var_0.a.x, var_0.a.x))) * vec4<f32>(-1000f, -213f, func_3(Struct_2(Struct_1(vec4<f32>(-515f, -1000f, var_0.a.x, var_0.a.x)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -183f, var_0.a.x)), -2147483647i, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 23u)]))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 733f, (_wgslsmith_mult_i32(u_input.b.x, -3998i) & -2147483647i) ^ u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1041f, var_0.a.x, var_0.a.x, var_0.a.x)), global0[_wgslsmith_index_u32(~1u, 23u)]))), ~(-1i), func_3(Struct_2(Struct_1(func_2(vec3<i32>(u_input.a, 1i, u_input.c.x)).a), func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 23u)]), Struct_1(vec4<f32>(var_0.a.x, -153f, var_0.a.x, -722f)), 26373i, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 699f, var_0.a.x))), var_0.a, _wgslsmith_div_f32(-1000f, var_0.a.x), u_input.c.x), _wgslsmith_add_i32(1i, select(u_input.b.x, -1i, false)), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))));
    var_0 = var_1.b;
    let var_2 = Struct_2(Struct_1(var_1.a.a), func_2(vec3<i32>(7528i, (0i << (u_input.d % 32u)) & 0i, 1i)), -select(var_1.c, var_1.c, true), var_1.b);
    let var_3 = firstTrailingBit(7851i);
    return 214u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(countOneBits(32364i), abs(u_input.a)), ~u_input.b.x, firstTrailingBit(countOneBits(-max(u_input.b.x, u_input.c.x))));
    var var_1 = ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, u_input.d, 29357u)), vec3<u32>(2910u, max(u_input.d >> (85136u % 32u), ~4294967295u), ~u_input.d));
    let var_2 = ~_wgslsmith_mod_u32(func_1(), var_1.x);
    var var_3 = vec4<i32>(-_wgslsmith_mult_i32(abs(-1i), ~min(u_input.a, 64648i)), _wgslsmith_dot_vec3_i32(u_input.c, ~select(u_input.c | vec3<i32>(22065i, var_0.x, 42189i), vec3<i32>(0i, -57173i, 1i), vec3<bool>(true, true, true))), ~(-31898i), _wgslsmith_clamp_i32(select(-u_input.c.x, ~u_input.b.x ^ countOneBits(-20543i), false), -27869i, u_input.c.x >> (var_2 % 32u)));
    let var_4 = select(select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, !any(vec3<bool>(false, true, false)), select(true, true, true)), !vec4<bool>(true, all(vec2<bool>(true, true)), var_2 > 52195u, true)), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(max(u_input.e.x, u_input.e.x) < reverseBits(u_input.b.x), true, any(vec4<bool>(true, false, false, true)) & false, !(var_3.x < -1i))), true);
    var var_5 = min(vec4<u32>(select(var_2, ~var_1.x, false), ~0u, u_input.d, ~32209u), max(vec4<u32>(0u, 54166u, u_input.d, 43175u), vec4<u32>(71910u, u_input.d, 4294967295u, var_1.x) | vec4<u32>(4294967295u, var_1.x, 4294967295u, 51554u)) ^ vec4<u32>(_wgslsmith_add_u32(15631u, 110u), 11309u, _wgslsmith_sub_u32(var_1.x, 4294967295u), u_input.d)) & _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, ~var_1.x, var_2 & var_2, reverseBits(var_1.x)), min(~vec4<u32>(39192u, var_1.x, var_1.x, var_2), ~vec4<u32>(u_input.d, 0u, 4294967295u, 45015u)), vec4<u32>(0u, func_1(), var_2 & var_2, u_input.d << (6121u % 32u))), vec4<u32>(~(3499u ^ u_input.d), ~_wgslsmith_mod_u32(1u, 32648u), ~(~u_input.d), u_input.d), ~(~vec4<u32>(0u, 42100u, 59038u, var_1.x) & firstLeadingBit(vec4<u32>(88483u, 0u, var_1.x, 1u))));
    var var_6 = vec4<i32>(var_0.x, ~_wgslsmith_div_i32(90497i, var_3.x), -2147483647i, i32(-1i) * -2147483647i);
    var var_7 = !(!(any(vec3<bool>(false, var_4.x, var_4.x)) != all(!var_4.zxw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2 ^ ~u_input.d, func_3(Struct_2(func_2(vec3<i32>(var_0.x, u_input.c.x, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(var_1.x, 23u)]), var_0.x, func_2(-var_3.yxz))).a.x, var_1.x);
}

