struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<u32, 12> = array<u32, 12>(57542u, 1u, 24409u, 26410u, 0u, 4294967295u, 0u, 43707u, 4294967295u, 121931u, 1u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(select(-2147483647i, 1i, global1[_wgslsmith_index_u32(1u, 4u)]), 30677i), vec2<i32>(_wgslsmith_add_i32(0i, 23675i), max(-2147483647i, 18504i)))), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(1i, 1i)), vec2<i32>(-55668i, min(1i, 1i)), select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), select(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), firstTrailingBit(vec2<i32>(-4491i, -1i)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)] && global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31157u, 12u)], 12u)], 12u)], 4u)], any(vec2<bool>(false, false))))));
    var var_1 = vec2<bool>(true, !(!(!(var_0.x > 66180i))));
    return max(max(var_0.x, -1i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, var_0.x, -7020i), ~vec4<i32>(var_0.x, 0i, 2147483647i, 22316i)), -2147483647i, false));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_1 = _wgslsmith_dot_vec2_u32(~(~u_input.b.yz), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(36280u, u_input.c, 81617u, 16328u)), max(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 12u)], 12u)])), vec2<u32>(~75265u, 0u)) << (((var_0.b.yy | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(107268u, 12u)], 12u)], global3[_wgslsmith_index_u32(var_0.b.x, 12u)])) | u_input.b.xz) % vec2<u32>(32u)));
    var_1 = max(_wgslsmith_sub_u32(12083u >> (max(global3[_wgslsmith_index_u32(12011u, 12u)], arg_3.b.x) % 32u), global3[_wgslsmith_index_u32(74002u ^ ~u_input.b.x, 12u)]) >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(var_0.b.x, 12u)], _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(14724u, 22376u, arg_3.b.x, 0u))), 4689u & _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), ~u_input.b.xz));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-979f, -1606f)));
    var var_3 = Struct_1(var_0.d, abs(_wgslsmith_add_vec3_u32(~vec3<u32>(11698u, 40972u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 12u)], u_input.d.x, global3[_wgslsmith_index_u32(31378u, 12u)] ^ u_input.c))), var_0.c, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~(~global3[_wgslsmith_index_u32(38853u, 12u)])), 12u)], 4u)] != global1[_wgslsmith_index_u32(79753u, 4u)]);
    return 0u & reverseBits(var_0.b.x | u_input.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_mod_vec3_u32(vec3<u32>(func_4(_wgslsmith_f_op_f32(-1517f * arg_1), func_3(), 2147483647i, global2[_wgslsmith_index_u32(arg_3, 24u)]), select(~95926u, _wgslsmith_div_u32(0u, arg_2), false || arg_0.x), u_input.d.x), firstTrailingBit(abs(u_input.b))), _wgslsmith_dot_vec3_i32(firstLeadingBit(min(abs(vec3<i32>(0i, 0i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-7761i, 44045i, -51395i), vec3<i32>(-14606i, 1i, 0i), vec3<i32>(-1i, 34570i, -48182i)))), vec3<i32>(1i, 1i, 1i) & max(select(vec3<i32>(37530i, -6671i, -2147483647i), vec3<i32>(-1i, -10044i, -2147483647i), vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], true, false)), ~vec3<i32>(0i, 19762i, 22517i))), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = !(!vec4<bool>(true, all(!arg_0.zz), !(var_0.d | var_0.d), true));
    var_1 = 788f;
    var var_3 = ~_wgslsmith_clamp_i32(var_0.c, 0i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_add_i32(var_0.c, 11095i))));
    return global2[_wgslsmith_index_u32(~var_0.b.x ^ var_0.b.x, 24u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(vec3<bool>(false, ((1u >> (arg_0 % 32u)) < ~0u) || (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 3271i, -13814i, -1i), vec4<i32>(-45600i, 20438i, -6315i, -57125i)) > 14172i), false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(282f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(788f, -268f)))))), _wgslsmith_mult_u32(~(firstTrailingBit(1u) ^ 0u), 16676u), 1u);
    var var_1 = vec3<u32>(global3[_wgslsmith_index_u32(~4294967295u, 12u)], func_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_0.d), var_0.d), !select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, false)), false), _wgslsmith_f_op_f32(f32(-1f) * -981f), ~_wgslsmith_sub_u32(~var_0.b.x, arg_1 << (0u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), _wgslsmith_sub_u32(var_0.b.x, 1u))).b.x, 4294967295u);
    global3 = array<u32, 12>();
    let var_2 = Struct_1(!global1[_wgslsmith_index_u32(~(~reverseBits(var_1.x)), 4u)], ~vec3<u32>(~_wgslsmith_sub_u32(arg_0, 4294967295u), var_0.b.x, 4294967295u), -2147483647i, !(!any(vec2<bool>(true, global1[_wgslsmith_index_u32(57939u, 4u)]))));
    global1 = array<bool, 4>();
    return Struct_1(false, var_0.b, func_3() & -max(var_0.c, var_0.c | -22059i), !((_wgslsmith_f_op_f32(1000f - arg_2) == arg_2) & any(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], var_0.a, true, var_0.d))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 24>();
    let var_0 = u_input.d;
    var var_1 = Struct_1(arg_1, func_2(!(!vec3<bool>(arg_3.a, true, arg_3.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1218f + -1066f))), reverseBits(4294967295u), var_0.x).b & ~select(_wgslsmith_add_vec3_u32(vec3<u32>(78663u, global3[_wgslsmith_index_u32(109664u, 12u)], arg_0.b.x), arg_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(19471u, 42970u, 0u), u_input.b, u_input.d.xyx), arg_3.c > arg_2.x), -31102i, any(vec2<bool>(true, arg_1)));
    var var_2 = ~(~var_0.wy);
    var_2 = arg_3.b.zx;
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = func_5(func_5(global2[_wgslsmith_index_u32(min(1u, _wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(arg_1.b.x, 75448u, arg_1.b.x))) ^ _wgslsmith_mod_u32(func_1(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 12u)], -1501f).b.x, 43810u), 24u)], true, -firstTrailingBit(vec3<i32>(0i, arg_1.c, 71119i)) >> ((u_input.b | ~u_input.d.xwx) % vec3<u32>(32u)), Struct_1(!func_5(arg_1, false, vec3<i32>(-17166i, 1i, -17461i), Struct_1(global1[_wgslsmith_index_u32(29286u, 4u)], u_input.d.zzw, arg_0, global1[_wgslsmith_index_u32(11241u, 4u)])).a, abs(u_input.d.wzw), arg_0, true)), false, abs(countOneBits(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.c, arg_0, arg_0), vec3<i32>(arg_1.c, -2147483647i, arg_0), vec3<i32>(arg_0, -29592i, arg_1.c)), -vec3<i32>(arg_0, arg_1.c, arg_1.c)))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~u_input.d.x), _wgslsmith_add_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(arg_1.b.x, 12u)], 4294967295u), ~_wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32(arg_1.b.x, 12u)])), max(4294967295u, ~94742u)), 24u)]);
    global0 = func_1(~(1u << ((4294967295u << (firstTrailingBit(31555u) % 32u)) % 32u)), reverseBits(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)) - _wgslsmith_div_f32(-1373f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-297f - 388f), -2204f)))).a;
    var var_1 = vec3<i32>(~(~(-_wgslsmith_div_i32(0i, var_0.c))), 0i, 2147483647i);
    var var_2 = Struct_1(func_2(select(!select(vec3<bool>(true, arg_1.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.d), vec3<bool>(false, global1[_wgslsmith_index_u32(48469u, 4u)], false)), vec3<bool>(true, false, !var_0.d), vec3<bool>(var_0.d | var_0.d, 45807u >= global3[_wgslsmith_index_u32(30067u, 12u)], !arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1369f)) + _wgslsmith_f_op_f32(f32(-1f) * -483f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1154f))))), ~firstTrailingBit(arg_1.b.x), min(_wgslsmith_add_u32(44377u, u_input.c), 1u)).d, vec3<u32>(~(63158u & ~u_input.a), ~arg_1.b.x, 28124u), _wgslsmith_mult_i32(~(firstTrailingBit(var_0.c) | firstTrailingBit(-2147483647i)), ((arg_0 << (4294967295u % 32u)) | _wgslsmith_mod_i32(var_1.x, var_0.c)) & ~var_1.x), !func_2(!(!vec3<bool>(arg_1.d, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(275f, 109f) * _wgslsmith_f_op_f32(356f + -587f)), var_0.b.x | ~14418u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 73953u, 4294967295u), var_0.b), ~var_0.b)).a);
    var_1 = abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, var_0.c << (global3[_wgslsmith_index_u32(u_input.a, 12u)] % 32u), var_0.c ^ arg_1.c), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, 1i, 1i), vec3<i32>(1i, var_0.c, -31543i)))) ^ vec3<i32>(_wgslsmith_div_i32(abs(var_0.c), ~18452i), func_2(!vec3<bool>(global1[_wgslsmith_index_u32(74633u, 4u)], true, true), -1084f, _wgslsmith_clamp_u32(abs(arg_1.b.x), arg_1.b.x, 12003u), _wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(4294967295u, 1u, 58117u))).c, 0i);
    return ~(~(~func_2(select(vec3<bool>(arg_1.d, true, false), vec3<bool>(arg_1.d, arg_1.a, false), var_2.a), -1361f, firstTrailingBit(65686u), u_input.c).b));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<bool>(false, all(select(vec2<bool>(arg_2, any(vec3<bool>(true, arg_2, arg_2))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(arg_2, global1[_wgslsmith_index_u32(33965u, 4u)]), vec2<bool>(arg_2, true), true), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true), vec2<bool>(false, arg_2)), arg_1.x == 20340i))), false, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(863f, 1008f) * vec2<f32>(1668f, 722f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-423f, -1189f), vec2<f32>(2504f, -141f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, -721f))) * vec2<f32>(_wgslsmith_f_op_f32(602f - 598f), _wgslsmith_div_f32(365f, 1000f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    global0 = global1[_wgslsmith_index_u32(max(1u, 48996u), 4u)] & all(var_0);
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-11604i, reverseBits(arg_1.x), _wgslsmith_sub_i32(-1i, countOneBits(1i)), _wgslsmith_add_i32(-20564i, arg_1.x)) ^ -max(select(arg_1, vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 0i), true), min(arg_1, vec4<i32>(arg_1.x, -1i, -1i, 2147483647i))), vec4<i32>(~arg_1.x >> (max(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(108701u, 12u)], 12u)], 46605u, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), ~u_input.d.x) % 32u), arg_1.x, ~arg_1.x, -2147483647i), -vec4<i32>(-_wgslsmith_mod_i32(arg_1.x, arg_1.x), _wgslsmith_sub_i32(arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), arg_1.wzw)), i32(-1i) * -arg_1.x, arg_1.x));
    return global2[_wgslsmith_index_u32(reverseBits(7650u), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(~(~39660i), func_5(global2[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]), 24u)], _wgslsmith_f_op_f32(sign(-363f)) >= _wgslsmith_f_op_f32(f32(-1f) * -387f), vec3<i32>(1i, ~(-2147483647i), _wgslsmith_sub_i32(-18531i, -9376i)), func_1(20784u, u_input.d.x, _wgslsmith_f_op_f32(-1107f + -522f)))), min(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 0i, 1i, ~2147483647i)), all(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(78774u, 4u)], true)), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_4(-392f, 49628i, _wgslsmith_add_i32(395i, 1i), func_5(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7098u, 12u)], 24u)], global1[_wgslsmith_index_u32(1u, 4u)], vec3<i32>(2147483647i, 2147483647i, -2147483647i), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78306u, 12u)], 24u)])), 12u)], 4u)])));
    let var_1 = Struct_1(!(select(var_0.b.x, 1u, var_0.a & var_0.a) < ~u_input.b.x), func_1(~11588u, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(90045u, var_0.b.x), 12u)], 12u)]), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f), -1629f), -959f))).b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(5481i, -1i) << (_wgslsmith_div_vec2_u32(var_0.b.zx, var_0.b.yx) % vec2<u32>(32u)), vec2<i32>(func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 12u)], 4u)], var_0.a), 1218f, 17540u, global3[_wgslsmith_index_u32(33420u, 12u)]).c, -var_0.c)), min(_wgslsmith_add_vec2_i32(abs(vec2<i32>(-61712i, var_0.c)), -vec2<i32>(0i, -2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(var_0.c, var_0.c, -9307i)), -33753i))), any(!select(vec3<bool>(false, var_0.a, false), !vec3<bool>(var_0.d, var_0.d, true), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 12u)], 4u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 4u)]), vec3<bool>(true, var_0.a, false), true))));
    global2 = array<Struct_1, 24>();
    let var_2 = all(vec3<bool>(all(!select(vec2<bool>(global1[_wgslsmith_index_u32(2574u, 4u)], false), vec2<bool>(var_0.d, true), global1[_wgslsmith_index_u32(4294967295u, 4u)])), true, select((var_0.a | global1[_wgslsmith_index_u32(4787u, 4u)]) | var_0.d, true || !var_1.d, !(var_1.c >= var_1.c))));
    let var_3 = global2[_wgslsmith_index_u32(0u, 24u)];
    let var_4 = Struct_1(func_5(func_1(~34158u ^ reverseBits(var_0.b.x), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1335f, 335f)))), var_1.a, ~vec3<i32>(func_1(u_input.a, u_input.a, -980f).c, var_3.c, var_1.c), Struct_1(true, vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b.x), ~var_0.b.x, var_1.b.x & var_0.b.x), ~(1i << (global3[_wgslsmith_index_u32(20155u, 12u)] % 32u)), false)).d, func_5(var_0, func_2(select(vec3<bool>(global1[_wgslsmith_index_u32(30626u, 4u)], var_0.d, var_1.d), vec3<bool>(false, var_0.a, var_2), var_1.c != -31371i), _wgslsmith_f_op_f32(f32(-1f) * -277f), ~85134u, abs(select(38245u, u_input.d.x, global1[_wgslsmith_index_u32(0u, 4u)]))).d, ~(vec3<i32>(-2147483647i, 4820i, -7134i) | vec3<i32>(var_0.c, 1i, var_1.c)) >> (var_3.b % vec3<u32>(32u)), Struct_1(true, (vec3<u32>(1u, 40731u, 4294967295u) << (var_1.b % vec3<u32>(32u))) >> (~var_3.b % vec3<u32>(32u)), var_1.c, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_3.b.x, 4294967295u), 4u)])).b, func_3(), var_3.a);
    let var_5 = 0i;
    var var_6 = !select(select(!vec2<bool>(var_4.a, global1[_wgslsmith_index_u32(var_1.b.x, 4u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], var_2), vec2<bool>(false, var_4.d), var_0.a), select(vec2<bool>(false, var_3.a), vec2<bool>(false, global1[_wgslsmith_index_u32(113759u, 4u)]), var_0.a), select(vec2<bool>(false, true), vec2<bool>(var_0.d, var_1.a), global1[_wgslsmith_index_u32(115707u, 4u)])), global1[_wgslsmith_index_u32(u_input.b.x ^ func_5(Struct_1(false, var_0.b, var_1.c, true), false, vec3<i32>(26279i, 2147483647i, -1i), var_1).b.x, 4u)]), !vec2<bool>(!var_3.a, any(vec4<bool>(var_1.d, var_4.a, true, false))), false);
    let var_7 = vec4<bool>(!(true & func_7(var_1.b | vec3<u32>(var_0.b.x, var_0.b.x, u_input.a), ~vec4<i32>(23210i, var_5, 0i, var_3.c), func_7(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 12u)], 58197u), vec4<i32>(2147483647i, var_3.c, -2147483647i, var_5), var_1.a).d).d), false, true, !var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(193f, -3453f, 991f, -831f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(710f, -2065f, -2765f, -1931f))))), func_2(select(select(var_7.zxz, select(vec3<bool>(false, true, var_7.x), vec3<bool>(var_0.d, false, var_3.d), vec3<bool>(global1[_wgslsmith_index_u32(99481u, 4u)], true, var_2)), true), vec3<bool>(!var_7.x, !var_1.a, true), vec3<bool>(true, any(vec3<bool>(false, true, true)), false)), -676f, ~var_3.b.x, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~var_0.b.x, 12u)], u_input.b.x)).c, _wgslsmith_add_i32(var_3.c, -var_5));
}

