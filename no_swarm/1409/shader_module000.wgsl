struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 4294967295u, 41494u, 54557u, 1u, 9649u, 23865u);

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<u32, 30>;

var<private> global3: array<vec4<u32>, 15>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~1u, 32u)];
    let var_1 = arg_0.x;
    var var_2 = ~0u;
    var var_3 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(min(-283f, var_0.a)) == 1034f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))), firstLeadingBit(vec2<u32>(42191u, 0u) << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1540f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a * -542f), var_0.a)), arg_0.x & _wgslsmith_div_i32(reverseBits(var_1), arg_0.x)), ~(~(~1u)), _wgslsmith_add_i32(u_input.a.x, u_input.c.x), true, true);
    let var_4 = Struct_3(433f, _wgslsmith_mult_vec3_i32(-(~vec3<i32>(-2147483647i, 51613i, u_input.a.x)) | ~firstTrailingBit(vec3<i32>(u_input.a.x, u_input.c.x, -2147483647i)), abs(vec3<i32>(-18010i, 20274i, 38199i))));
    return select(~(~(~countOneBits(vec3<u32>(78916u, u_input.b.x, 4294967295u)))), vec3<u32>(global2[_wgslsmith_index_u32(0u, 30u)], var_3.a.c.x, ~u_input.b.x), ((_wgslsmith_add_i32(-1806i, 11983i) >= u_input.c.x) & ((var_3.d & true) & (var_3.a.a.x | var_3.d))) | (_wgslsmith_add_u32(32098u << (var_3.a.c.x % 32u), 69221u) != select(_wgslsmith_div_u32(u_input.b.x, 4294967295u), ~global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72142u, 7u)], 7u)])));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 43553i), u_input.a.yy) >> (vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6156u, 7u)], 30u)], 14929u) % vec2<u32>(32u))) << ((~firstLeadingBit(vec3<u32>(u_input.b.x, 4921u, 61771u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 127393u, global2[_wgslsmith_index_u32(6418u, 30u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], 1u, global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(11569u, 7u)], 1u)), ~vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))) % vec3<u32>(32u)), ~select(firstTrailingBit(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 7u)], global0[_wgslsmith_index_u32(14793u, 7u)])), vec3<u32>(34919u, u_input.b.x, global2[_wgslsmith_index_u32(abs(94916u), 30u)]), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    let var_1 = (~reverseBits(max(global3[_wgslsmith_index_u32(var_0.x, 15u)], global3[_wgslsmith_index_u32(29887u, 15u)])) & global3[_wgslsmith_index_u32(max(~(0u ^ var_0.x), (4294967295u | u_input.b.x) >> ((var_0.x >> (60151u % 32u)) % 32u)), 15u)]) >> (~vec4<u32>(_wgslsmith_clamp_u32(30608u, 36696u, 0u), max(3691u << (u_input.b.x % 32u), u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 15u)], abs(global3[_wgslsmith_index_u32(41087u, 15u)])), 30u)], var_0.x) % vec4<u32>(32u));
    var_0 = firstLeadingBit(vec3<u32>(1u, global2[_wgslsmith_index_u32(~2796u, 30u)], min(var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(16488u, 7u)], var_1.x, 1u, global2[_wgslsmith_index_u32(var_0.x, 30u)]), var_1), var_1))));
    let var_2 = Struct_2(Struct_1(vec3<bool>(!(var_1.x >= global0[_wgslsmith_index_u32(29760u, 7u)]), -u_input.a.x == u_input.c.x, true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), reverseBits(vec2<u32>(0u, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-arg_0), u_input.a.x), ~var_0.x, 12769i, !(-46503i > (u_input.c.x >> (var_1.x % 32u))), true);
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    var var_0 = Struct_5(Struct_1(vec3<bool>(arg_2.c.b.x != 1i, arg_3, !func_2(vec4<f32>(arg_2.a, arg_1.x, 1229f, arg_0.d.a), -782f)), select(!select(vec4<bool>(arg_3, false, false, false), vec4<bool>(arg_3, arg_3, true, arg_3), arg_3), vec4<bool>(true, true, true, arg_2.c.b.x < u_input.c.x), vec4<bool>(true, true, true, true)), ~u_input.b | vec2<u32>(~68452u, abs(50141u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.a, arg_1.x, arg_1.x, 549f) - vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(min(arg_2.a, -1000f)), _wgslsmith_div_f32(-799f, 1109f), _wgslsmith_f_op_f32(round(1064f)))), reverseBits(arg_2.d.b.x ^ firstTrailingBit(1i))));
    global3 = array<vec4<u32>, 15>();
    var var_1 = -(_wgslsmith_div_vec2_i32(-arg_0.c.b.zx, ~_wgslsmith_mod_vec2_i32(u_input.a.yx, arg_2.c.b.xz)) << (abs(u_input.b) % vec2<u32>(32u)));
    global1 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_f_op_f32(step(-1677f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-829f)))))));
    return ~abs(select(vec2<i32>(-1i, ~5317i), ~vec2<i32>(var_0.a.e, 2147483647i), select(false, var_0.a.a.x, arg_3)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = max(vec4<i32>(_wgslsmith_mult_i32(~(~arg_0.x), ~(u_input.c.x >> (global0[_wgslsmith_index_u32(28921u, 7u)] % 32u))), ((u_input.a.x | -27830i) | _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, arg_0.x, arg_0.x, u_input.a.x))) << (_wgslsmith_clamp_u32(u_input.b.x, 0u, ~global0[_wgslsmith_index_u32(u_input.b.x, 7u)]) % 32u), u_input.c.x, abs(arg_0.x)), ~vec4<i32>(arg_0.x, -1i, 1i, ~1i));
    let var_1 = Struct_5(Struct_1(vec3<bool>(true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), (40321u == global0[_wgslsmith_index_u32(0u, 7u)]) && true, func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2148f, -562f, -388f, 1099f))), _wgslsmith_f_op_f32(f32(-1f) * -248f)), true), arg_1.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -1000f, -578f, -161f)))), 1i));
    var var_2 = vec3<i32>(~(-(_wgslsmith_mult_i32(-77899i, 1i) >> ((global0[_wgslsmith_index_u32(u_input.b.x, 7u)] | global2[_wgslsmith_index_u32(51384u, 30u)]) % 32u))), firstLeadingBit(func_1(Struct_4(_wgslsmith_f_op_f32(abs(var_1.a.d.x)), _wgslsmith_sub_u32(u_input.b.x, 0u), Struct_3(var_1.a.d.x, vec3<i32>(var_1.a.e, -7776i, -7579i)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_1.a.c.x), 32u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a.d.x, -935f) + vec3<f32>(131f, -128f, var_1.a.d.x))), Struct_4(_wgslsmith_f_op_f32(floor(-119f)), ~35310u, Struct_3(var_1.a.d.x, u_input.a.wzx), Struct_3(-339f, vec3<i32>(-22454i, var_1.a.e, arg_0.x))), _wgslsmith_add_i32(var_0.x, arg_0.x) == -1i).x), i32(-1i) * -1i);
    var_2 = ~vec3<i32>(firstLeadingBit(firstLeadingBit(u_input.a.x)) & ~1i, 1i << (0u % 32u), 42099i);
    let var_3 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(abs(arg_1.x), 0u, 4294967295u)), ~abs(vec3<u32>(global0[_wgslsmith_index_u32(3133u, 7u)], ~4294967295u, 1u)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x)) - 1000f)), 1u, Struct_3(478f, _wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(9257i, arg_0.x, -60711i)), var_0.zyy, ~vec3<i32>(var_2.x, var_1.a.e, -1i))), global1[_wgslsmith_index_u32(var_3, 32u)]);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_5(Struct_1(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_1), false), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, false, true), arg_1), all(select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1))), select(!select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), false), vec4<bool>(arg_1 == arg_1, true, any(vec4<bool>(true, arg_1, false, arg_1)), arg_1), arg_1), vec2<u32>(global2[_wgslsmith_index_u32(reverseBits(31988u), 30u)], 0u | arg_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1037f, arg_0.c.a, arg_0.c.a, -226f), vec4<f32>(arg_0.a, arg_2.x, arg_0.c.a, arg_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1829f, arg_0.a, arg_2.x, arg_2.x) - arg_2), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, false)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, 529f, arg_2.x, arg_0.a), vec4<f32>(-1000f, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_1, arg_1, true, false))), !(!vec4<bool>(false, arg_1, arg_1, arg_1)))), _wgslsmith_div_i32(u_input.c.x << (1u % 32u), _wgslsmith_mod_i32(-24840i, arg_0.c.b.x)) & ~select(0i, 2147483647i, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-164f, arg_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-1356f + arg_0.c.a))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.d.a, 1426f, arg_1)) + 1845f), -537f))));
    var var_2 = select(select(select(var_0.a.a.yx, !select(var_0.a.b.zx, var_0.a.b.xy, var_0.a.a.yy), !all(vec4<bool>(false, false, true, true))), var_0.a.a.xy, var_0.a.a.zy), vec2<bool>(true, true), var_0.a.b.zz);
    global3 = array<vec4<u32>, 15>();
    var var_3 = Struct_2(Struct_1(vec3<bool>(all(vec2<bool>(arg_1, false)), var_0.a.b.x, true), var_0.a.b, ~vec2<u32>(u_input.b.x & 0u, global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_vec4_f32(trunc(var_0.a.d)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.c.b, vec3<i32>(2147483647i, var_0.a.e, -36418i)), -_wgslsmith_clamp_vec3_i32(arg_0.c.b, vec3<i32>(u_input.c.x, -3438i, u_input.a.x), vec3<i32>(arg_0.c.b.x, 0i, 19094i)))), arg_3.x, _wgslsmith_div_i32(2147483647i, abs(u_input.a.x)), false, all(select(var_0.a.b.yw, var_0.a.b.yw, !(!arg_1))));
    return vec4<bool>(!(true | var_2.x), !all(!(!vec4<bool>(false, false, true, var_0.a.a.x))), false == all(var_0.a.b.zxy), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    var var_0 = 1000f;
    let var_1 = true;
    let var_2 = Struct_1(!select(!select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, false), var_1), !(!vec3<bool>(var_1, false, var_1)), vec3<bool>(true, any(vec4<bool>(true, var_1, var_1, true)), !var_1)), !func_5(func_4(func_1(Struct_4(-1000f, u_input.b.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12965u, 30u)], 30u)], 7u)], 30u)], 7u)], 30u)], 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 30u)], 30u)], 32u)]), vec3<f32>(245f, -448f, -492f), Struct_4(-658f, 19938u, global1[_wgslsmith_index_u32(13804u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), false), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 24619u, 22499u, 9724u) >> (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 15u)] % vec4<u32>(32u))), true, vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1289f), -875f, _wgslsmith_f_op_f32(step(-490f, 1110f))), vec4<u32>(~81839u, reverseBits(u_input.b.x), 4294967295u >> (global0[_wgslsmith_index_u32(1u, 7u)] % 32u), ~19466u)), _wgslsmith_div_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(~u_input.b, u_input.b) << (firstLeadingBit(vec2<u32>(5554u, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, 1661f, 1062f, -357f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1404f, -1249f, 987f, -750f) - vec4<f32>(2833f, 465f, 589f, -246f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(163f, -657f, -1750f, -1000f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(676f, -231f, -695f, -595f)))))), select(-(~(u_input.a.x << (u_input.b.x % 32u))), ~_wgslsmith_mod_i32(-2147483647i, ~u_input.a.x), global2[_wgslsmith_index_u32((1u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)] % 32u)) >> (0u % 32u), 30u)] <= ~0u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x);
}

