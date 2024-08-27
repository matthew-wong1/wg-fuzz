struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1045f, -147f, -1121f, 741f, 462f, -1507f, -675f, 614f, 1046f, 313f, 710f, 659f, 622f, -199f, -1539f, -146f, 234f, 285f, -1009f, -1686f, -1000f, 261f, -1035f, 442f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_0.c;
    var var_1 = var_0.c;
    return select(!vec4<bool>(arg_3, _wgslsmith_f_op_f32(ceil(829f)) > global0[_wgslsmith_index_u32(arg_2.b.x, 24u)], any(select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, arg_3, arg_0.a), true)), true), select(select(vec4<bool>(select(arg_3, arg_3, true), true, all(vec2<bool>(true, true)), false), select(select(vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(arg_0.a, true, arg_0.a, arg_3), vec4<bool>(false, true, arg_3, arg_0.a)), vec4<bool>(false, true, true, arg_3), vec4<bool>(false, true, arg_3, true)), true), select(vec4<bool>(arg_2.b.x > 1u, false, true, select(false, arg_0.a, arg_3)), vec4<bool>(false, any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, arg_0.a)), 586f <= global0[_wgslsmith_index_u32(1u, 24u)]), !select(vec4<bool>(arg_0.a, true, arg_0.a, arg_3), vec4<bool>(arg_0.a, true, arg_0.a, arg_3), true)), arg_0.a & ((global0[_wgslsmith_index_u32(27402u, 24u)] < -1000f) | (1i < u_input.a.x))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3)), !vec2<bool>(arg_0.a, true), all(vec2<bool>(false, true))), vec2<bool>(arg_3, arg_3))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.b.xy;
    var var_1 = all(select(vec4<bool>(false, all(func_3(Struct_2(false, Struct_1(vec2<i32>(-15513i, u_input.a.x), u_input.b.yx, u_input.a.x, arg_0.x, vec2<i32>(24906i, -2387i)), Struct_1(u_input.a.xw, vec2<u32>(4294967295u, var_0.x), -1465i, 964f, u_input.a.yw), Struct_1(vec2<i32>(u_input.a.x, -2147483647i), u_input.b.xy, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.a.zw), 29439i), 78509u, Struct_1(u_input.a.ww, vec2<u32>(4294967295u, var_0.x), 1i, arg_0.x, u_input.a.wz), true)), true, false), vec4<bool>(any(func_3(Struct_2(true, Struct_1(u_input.a.zy, var_0, u_input.a.x, global0[_wgslsmith_index_u32(67598u, 24u)], vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(u_input.a.wy, vec2<u32>(48949u, 23744u), 9987i, 941f, vec2<i32>(-2147483647i, u_input.a.x)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), var_0, -33972i, -580f, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x), u_input.b.x, Struct_1(u_input.a.yy, vec2<u32>(var_0.x, 31661u), u_input.a.x, 862f, u_input.a.xx), false).yz), true, all(func_3(Struct_2(false, Struct_1(vec2<i32>(-1i, u_input.a.x), vec2<u32>(var_0.x, 27027u), u_input.a.x, 668f, u_input.a.zz), Struct_1(u_input.a.zx, vec2<u32>(1u, 4294967295u), 18959i, arg_0.x, u_input.a.yx), Struct_1(vec2<i32>(u_input.a.x, -86764i), vec2<u32>(91796u, 0u), u_input.a.x, -1000f, u_input.a.wz), -1i), u_input.b.x, Struct_1(u_input.a.wx, var_0, 8369i, global0[_wgslsmith_index_u32(var_0.x, 24u)], u_input.a.zy), false)), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true)));
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_2 = abs(firstTrailingBit(max(select(_wgslsmith_div_vec2_u32(var_0, vec2<u32>(var_0.x, 13630u)), vec2<u32>(14266u, var_0.x), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<u32>(1u, 1u) ^ _wgslsmith_mult_vec2_u32(var_0, vec2<u32>(52007u, 67818u)))));
    return Struct_2(func_3(Struct_2(any(vec2<bool>(true, false)), Struct_1(vec2<i32>(u_input.a.x, -41961i), u_input.b.xy, u_input.a.x, 431f, u_input.a.yx), Struct_1(u_input.a.zx, vec2<u32>(0u, 16257u), -83694i, -880f, u_input.a.wx), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 20717u), u_input.a.x, global0[_wgslsmith_index_u32(var_2.x, 24u)], vec2<i32>(-1i, u_input.a.x)), u_input.a.x), _wgslsmith_add_u32(var_0.x, 4294967295u), Struct_1(min(u_input.a.wx, u_input.a.yx), _wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, 22410u)), countOneBits(u_input.a.x), _wgslsmith_f_op_f32(1515f * arg_0.x), u_input.a.yw), !func_3(Struct_2(true, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), var_0, u_input.a.x, 425f, u_input.a.yx), Struct_1(u_input.a.yw, u_input.b.zx, u_input.a.x, global0[_wgslsmith_index_u32(var_2.x, 24u)], u_input.a.xz), Struct_1(vec2<i32>(u_input.a.x, 0i), u_input.b.zx, 2147483647i, global0[_wgslsmith_index_u32(var_2.x, 24u)], u_input.a.xx), u_input.a.x), 35863u, Struct_1(u_input.a.yw, var_0, 1i, global0[_wgslsmith_index_u32(39628u, 24u)], u_input.a.wx), false).x).x | true, Struct_1(vec2<i32>(-1i) * -(vec2<i32>(u_input.a.x, u_input.a.x) >> (u_input.b.zz % vec2<u32>(32u))), select(~vec2<u32>(1u, var_0.x), ~u_input.b.xy, select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(false, false)))), u_input.a.x, -700f, -vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 2147483647i))), Struct_1(u_input.a.xw & u_input.a.yx, vec2<u32>(var_0.x << ((1u & var_2.x) % 32u), countOneBits(u_input.b.x)), 2147483647i, _wgslsmith_f_op_f32(floor(arg_0.x)), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.wz, vec2<i32>(40029i, 1i)), u_input.a.wx ^ vec2<i32>(-5319i, u_input.a.x)))), Struct_1(_wgslsmith_mod_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -24758i), u_input.a.zw), vec2<i32>(-2147483647i, -2147483647i)), u_input.a.xz | (u_input.a.wx ^ vec2<i32>(u_input.a.x, u_input.a.x))), vec2<u32>(firstTrailingBit(u_input.b.x), 0u), u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 24u)] * -1160f), 1f), arg_0.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 2334i), -u_input.a.zz, u_input.a.xz << (u_input.b.yy % vec2<u32>(32u)))), _wgslsmith_div_i32(u_input.a.x >> (select(abs(var_0.x), ~var_0.x, true) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(u_input.a.x), u_input.a.x), -19918i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = vec3<bool>(arg_1.a, func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, arg_1.d.d, 289f)))), 7779u, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, arg_1.b.d, arg_1.d.d) - vec3<f32>(826f, 838f, -1189f))).b, !any(func_3(arg_1, 32439u, arg_0, arg_1.a).xxw)).x, true);
    let var_1 = _wgslsmith_div_i32(arg_1.d.e.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(69774i, -7811i), ~_wgslsmith_mult_i32(arg_1.e, arg_1.e), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, arg_0.e.x))), arg_0.e.x));
    var var_2 = any(var_0.xy);
    let var_3 = _wgslsmith_f_op_f32(358f + -1819f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f - arg_0.d) * _wgslsmith_div_f32(arg_1.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * 1131f)))));
    return !arg_1.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_2(vec3<f32>(192f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(136f, arg_1.b.d)) * -375f), _wgslsmith_f_op_f32(exp2(arg_1.d.d)))), _wgslsmith_f_op_f32(-arg_1.b.d)));
    var var_1 = vec2<bool>(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, global0[_wgslsmith_index_u32(var_0.d.b.x, 24u)], arg_3.c.d)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-599f, -486f, arg_3.b.d), vec3<f32>(var_0.d.d, arg_3.d.d, arg_1.d.d))))).a, ((abs(4294967295u) ^ u_input.b.x) > u_input.b.x) && !select(any(vec4<bool>(arg_0, arg_1.a, true, arg_2)), all(vec2<bool>(true, false)), true || arg_2));
    var_0 = Struct_2(true, arg_1.c, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, arg_3.b.d, global0[_wgslsmith_index_u32(arg_1.b.b.x, 24u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1.b.b.x, 24u)], global0[_wgslsmith_index_u32(arg_3.b.b.x, 24u)], 436f)), vec3<f32>(arg_1.c.d, -897f, arg_3.c.d), select(var_0.a, true, false)))))).b, Struct_1(vec2<i32>(-1i) * -(~vec2<i32>(2147483647i, u_input.a.x)), ~(~arg_1.b.b), -var_0.c.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.d))))), vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(arg_3.d.c, -30242i)), _wgslsmith_mod_i32(u_input.a.x, -17201i))), -24225i);
    var var_2 = ~((-4308i & _wgslsmith_sub_i32(arg_3.c.a.x, abs(1i))) << (min(reverseBits(~u_input.b.x), var_0.d.b.x) % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, arg_3.b.d, _wgslsmith_f_op_f32(var_0.c.d * global0[_wgslsmith_index_u32(arg_3.b.b.x, 24u)]))), vec3<f32>(500f, _wgslsmith_f_op_f32(-1f), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-172f, -265f, arg_1.b.d), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -608f), false))).b.d))) - _wgslsmith_div_vec3_f32(vec3<f32>(func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1524f, arg_3.d.d, global0[_wgslsmith_index_u32(4294967295u, 24u)])))).b.d, 1182f, arg_1.d.d), vec3<f32>(1558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.c.b.x, 24u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.b.d, -1378f, arg_3.a)), _wgslsmith_f_op_f32(-var_0.d.d))))));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = func_5(false || func_4(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.b.zx, i32(-1i) * -2147483647i, 432f, abs(vec2<i32>(u_input.a.x, -24449i))), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(990f, -1297f, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<f32>(1632f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -482f)))), Struct_2(true, Struct_1(max(~vec2<i32>(u_input.a.x, -73087i), func_2(vec3<f32>(-706f, -1066f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])).b.a), _wgslsmith_sub_vec2_u32(vec2<u32>(40989u, 1u), ~vec2<u32>(u_input.b.x, u_input.b.x)), u_input.a.x & _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -631f, min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(9597i, 30220i)), ~u_input.a.zy)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(12894u, 24u)], -353f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]) - vec3<f32>(-694f, 678f, global0[_wgslsmith_index_u32(0u, 24u)])) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(31973u, 24u)]))).c, Struct_1(u_input.a.ww, firstLeadingBit(countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_mult_i32(u_input.a.x, -2147483647i & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(568f * global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -34041i), vec2<i32>(u_input.a.x, u_input.a.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 60333u), u_input.b.yz, u_input.b.yy) % vec2<u32>(32u))), -u_input.a.x), all(arg_0.zz), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]) * _wgslsmith_f_op_f32(step(-493f, global0[_wgslsmith_index_u32(36746u, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2118f + 542f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))));
    global0 = array<f32, 24>();
    var var_1 = -15215i;
    var var_2 = var_0.b;
    let var_3 = Struct_2(true | ((true | all(vec4<bool>(false, true, arg_0.x, arg_0.x))) | true), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(var_0.c.c, 19094i), var_2.e) & var_2.e, _wgslsmith_mult_vec2_i32(-var_2.a, u_input.a.xx)), ~vec2<u32>(29059u, _wgslsmith_mod_u32(0u, u_input.b.x)), abs(max(max(2147483647i, -54870i), -var_0.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d))), vec2<i32>(u_input.a.x & u_input.a.x, u_input.a.x)), func_5(~u_input.b.x < ~var_0.d.b.x, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.d, 746f, var_0.d.d) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.d, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_2.d))))), true, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.d, 546f, var_2.d), vec3<f32>(global0[_wgslsmith_index_u32(0u, 24u)], var_0.d.d, -519f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1249f, var_0.b.d, global0[_wgslsmith_index_u32(var_2.b.x, 24u)])))))).d, var_0.d, 10777i);
    return !arg_0.wy;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~(~u_input.b);
    global0 = array<f32, 24>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(196f, arg_1.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1214f), arg_0.x)) <= _wgslsmith_f_op_f32(-arg_1.d), arg_1, Struct_1(vec2<i32>(arg_1.a.x >> (25990u % 32u), func_2(vec3<f32>(global0[_wgslsmith_index_u32(38622u, 24u)], -232f, global0[_wgslsmith_index_u32(arg_1.b.x, 24u)])).d.c) & u_input.a.xw, arg_1.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.a.x, -23875i), u_input.a.wxz) & ~u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(439f)) - arg_1.d))), select(-(~u_input.a.yz), func_5(true, Struct_2(arg_0.x, arg_1, Struct_1(vec2<i32>(u_input.a.x, -2147483647i), vec2<u32>(33224u, u_input.b.x), 20757i, arg_1.d, vec2<i32>(u_input.a.x, 63640i)), Struct_1(vec2<i32>(5773i, arg_1.e.x), vec2<u32>(4294967295u, arg_1.b.x), 1i, 535f, u_input.a.xx), 776i), arg_0.x, func_2(vec3<f32>(1668f, global0[_wgslsmith_index_u32(23932u, 24u)], arg_1.d))).b.e, arg_0.x)), func_5(false, Struct_2(arg_0.x, Struct_1(func_2(vec3<f32>(arg_1.d, -1206f, arg_1.d)).b.a, vec2<u32>(arg_2, 4294967295u), max(u_input.a.x, arg_1.c), global0[_wgslsmith_index_u32(~18709u, 24u)], max(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.a.x, 2147483647i))), Struct_1(vec2<i32>(0i, arg_1.c) | arg_1.a, arg_1.b, i32(-1i) * -28713i, _wgslsmith_f_op_f32(sign(700f)), u_input.a.wz), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(arg_2, 24u)], arg_1.d) + vec3<f32>(-889f, global0[_wgslsmith_index_u32(4294967295u, 24u)], 385f))).c, abs(9780i)), !any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 139f, arg_1.d))))).d, u_input.a.x);
    global0 = array<f32, 24>();
    var var_2 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(-(~arg_1.c), -2723i), 1i);
    return func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.d, 468f, 1000f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(781f, global0[_wgslsmith_index_u32(19794u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]))), vec3<f32>(382f, 558f, arg_1.d), !vec3<bool>(false, arg_0.x, arg_0.x))))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    let var_0 = func_6(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, false))), select(func_1(vec4<bool>(true, true, true, false)), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), func_3(Struct_2(false, Struct_1(u_input.a.yz, u_input.b.xz, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.a.yw), Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(0u, 4294967295u), 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec2<i32>(u_input.a.x, -2147483647i)), Struct_1(u_input.a.yz, vec2<u32>(u_input.b.x, u_input.b.x), u_input.a.x, -1000f, u_input.a.wz), 2607i), ~u_input.b.x, func_2(vec3<f32>(-337f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)])).c, u_input.a.x != u_input.a.x).ww), vec2<bool>(false, true), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 1000f, -438f))))).a), func_2(vec3<f32>(144f, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)])).b, 60302u);
    var var_1 = vec4<i32>(firstLeadingBit(u_input.a.x), var_0.e.x, _wgslsmith_sub_i32(u_input.a.x, 0i), func_5(!((i32(-1i) * -66738i) <= _wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.xy)), Struct_2((var_0.b.x ^ 0u) != u_input.b.x, func_5(true, func_2(vec3<f32>(834f, var_0.d, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), func_4(Struct_1(vec2<i32>(-8810i, 16932i), var_0.b, -2147483647i, -734f, u_input.a.wz), Struct_2(false, var_0, Struct_1(vec2<i32>(u_input.a.x, 33317i), var_0.b, 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec2<i32>(var_0.c, -2147483647i)), Struct_1(var_0.a, vec2<u32>(var_0.b.x, 1u), 77068i, -799f, var_0.e), u_input.a.x)), Struct_2(false, var_0, Struct_1(var_0.a, u_input.b.yz, -1i, global0[_wgslsmith_index_u32(1u, 24u)], vec2<i32>(-44371i, 34073i)), Struct_1(var_0.e, var_0.b, 2147483647i, global0[_wgslsmith_index_u32(1u, 24u)], vec2<i32>(var_0.e.x, -1i)), u_input.a.x)).c, Struct_1(max(u_input.a.wx, u_input.a.xz), var_0.b, ~var_0.e.x, var_0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c, var_0.e.x), vec2<i32>(var_0.a.x, u_input.a.x))), func_6(vec2<bool>(true, true), func_5(false, Struct_2(true, var_0, Struct_1(var_0.a, vec2<u32>(3593u, 25503u), u_input.a.x, 1436f, var_0.a), var_0, 2147483647i), false, Struct_2(true, var_0, Struct_1(var_0.a, vec2<u32>(0u, u_input.b.x), u_input.a.x, var_0.d, vec2<i32>(var_0.a.x, u_input.a.x)), var_0, u_input.a.x)).d, ~47297u), 1i), var_0.d < 664f, Struct_2(true, func_6(vec2<bool>(true, true), func_6(vec2<bool>(true, true), Struct_1(u_input.a.yy, vec2<u32>(0u, 4294967295u), u_input.a.x, var_0.d, var_0.e), 91373u), ~var_0.b.x), func_6(vec2<bool>(true, true), func_2(vec3<f32>(global0[_wgslsmith_index_u32(2504u, 24u)], -1551f, global0[_wgslsmith_index_u32(23169u, 24u)])).d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.x), vec2<u32>(1u, 0u))), Struct_1(vec2<i32>(-1i, u_input.a.x) ^ vec2<i32>(-21355i, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(var_0.b.x, var_0.b.x)), 1i, -398f, _wgslsmith_add_vec2_i32(vec2<i32>(1i, -14999i), vec2<i32>(0i, var_0.e.x))), countOneBits(firstLeadingBit(24884i)))).b.c);
    var var_2 = Struct_1(vec2<i32>(9828i, var_1.x << (u_input.b.x % 32u)), abs(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, -2536f, global0[_wgslsmith_index_u32(42227u, 24u)]), vec3<f32>(1410f, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.d)), vec3<f32>(1271f, -485f, -936f), all(vec4<bool>(false, true, true, false))))).c.b), -46025i, -283f, ~var_1.ww);
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.d));
    var_2 = func_5(true, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(var_2.b.x, 24u)], var_2.d, 2117f), vec3<f32>(-2451f, -1150f, var_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(round(-1563f)), -255f, -934f)))), (func_3(func_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -1044f, var_2.d)), u_input.b.x, func_2(vec3<f32>(495f, global0[_wgslsmith_index_u32(var_0.b.x, 24u)], -2533f)).d, true).x || (_wgslsmith_f_op_f32(f32(-1f) * -607f) != _wgslsmith_f_op_f32(var_0.d + -415f))) && false, Struct_2(true, func_6(vec2<bool>(false, true), func_6(vec2<bool>(true, true), var_0, _wgslsmith_clamp_u32(70198u, 0u, 0u)), ~(var_0.b.x | 0u)), var_0, Struct_1(vec2<i32>(-2147483647i, min(2147483647i, 2147483647i)), var_0.b, -1i, var_0.d, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -604f, -610f))).c.e), var_2.c)).b;
    var var_4 = 50301u;
    let x = u_input.a;
    s_output = StorageBuffer(-664f, -1i, countOneBits(var_0.a), abs(u_input.a));
}

