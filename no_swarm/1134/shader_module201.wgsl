struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(0i, 8124i, 2147483647i, -46943i, 2147483647i, 60208i, 0i, 7402i, -24274i, -15306i, 1i, i32(-2147483648), 44329i, -1i, 9525i, 38336i, 0i, 2807i, -9704i, 5578i, 0i, 2147483647i, -1i, -25627i, 34529i, 1i, 96657i, 1i, 13456i, 47835i, 0i, 2147483647i);

var<private> global1: f32 = 664f;

var<private> global2: array<i32, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = Struct_5(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true)), Struct_2(-firstTrailingBit(abs(vec4<i32>(-18935i, global2[_wgslsmith_index_u32(71596u, 25u)], u_input.b, -13211i))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(ceil(-598f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -312f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1064f, -2542f, false)), _wgslsmith_f_op_f32(step(215f, -351f))), _wgslsmith_f_op_f32(f32(-1f) * -520f)), ~(-vec4<i32>(0i, global2[_wgslsmith_index_u32(arg_0.x, 25u)], 1352i, 1i))));
    let var_1 = Struct_4(var_0.b, Struct_3(vec2<i32>(firstTrailingBit(abs(35582i)), 45157i)));
    global0 = array<i32, 32>();
    global2 = array<i32, 25>();
    global1 = 101f;
    return vec2<u32>(4294967295u, min(_wgslsmith_mult_u32(select(u_input.c, abs(u_input.d), u_input.b < global2[_wgslsmith_index_u32(arg_0.x, 25u)]), firstLeadingBit(arg_0.x) << (u_input.d % 32u)), arg_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_3.b;
    var var_1 = reverseBits(_wgslsmith_div_vec2_u32(func_3(vec3<u32>(0u, u_input.d, ~6198u)), vec2<u32>(0u, func_3(u_input.a | u_input.a).x)));
    let var_2 = !(!any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_3.a.b.x, 877f, -1238f)))));
    var_0 = Struct_3(_wgslsmith_sub_vec2_i32(arg_1.c.wx, arg_3.a.a.zw));
    return Struct_2(vec4<i32>(firstTrailingBit(-_wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_1.x, 32u)], -26468i)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(-34291i, max(1i, var_0.a.x), ~1i)), ~min(_wgslsmith_sub_i32(arg_1.c.x, 18003i), arg_1.a.x), _wgslsmith_dot_vec4_i32(-(~arg_0.a), ~arg_3.a.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f - _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f + -671f) * -169f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(trunc(var_3.x))) * arg_2.x), 1f), -_wgslsmith_add_vec4_i32(~select(vec4<i32>(arg_0.c.x, -49972i, arg_1.c.x, -7992i), vec4<i32>(u_input.b, arg_1.a.x, global0[_wgslsmith_index_u32(14607u, 32u)], 2147483647i), vec4<bool>(false, var_2, var_2, var_2)), _wgslsmith_mod_vec4_i32(arg_3.a.a, -arg_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = arg_3.b;
    var_0 = arg_3.b;
    return select(!select(vec4<bool>(false, select(true, false, false), arg_2 >= 1769f, select(false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), false), vec4<bool>(all(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(u_input.c, 32u)] > global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true, any(vec3<bool>(false, true, true)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, u_input.a.x < u_input.d, all(vec3<bool>(false, true, false)), true), select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(false, -616f == arg_2, any(vec2<bool>(true, false)), true), true)), true);
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1167f, 607f, 571f, -1000f)) - vec4<f32>(339f, -303f, -703f, -431f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1225f, -559f, 658f, 1167f), vec4<f32>(-1775f, -1708f, -1473f, -1030f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-996f, -1617f, -1834f, -232f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1705f, -1404f, 492f, 459f) + vec4<f32>(-1194f, -1199f, 1000f, 375f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-727f, -1548f, -2141f, 675f) * vec4<f32>(562f, -1001f, 187f, 1570f))))), vec4<bool>(!arg_1, true, all(!vec2<bool>(arg_1, arg_1)), false)))));
    global1 = var_0.x;
    let var_1 = !(!(!func_4(func_2(Struct_2(vec4<i32>(1i, 0i, global0[_wgslsmith_index_u32(1u, 32u)], arg_0), var_0, vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 38066i, u_input.b, -27880i)), Struct_2(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], -2147483647i, u_input.b, -1i), vec4<f32>(865f, var_0.x, var_0.x, var_0.x), vec4<i32>(-53162i, 3480i, -2147483647i, global2[_wgslsmith_index_u32(29092u, 25u)])), var_0.xxx, Struct_4(Struct_2(vec4<i32>(arg_0, -1i, global2[_wgslsmith_index_u32(27765u, 25u)], u_input.b), var_0, vec4<i32>(2147483647i, 64771i, arg_0, arg_0)), Struct_3(vec2<i32>(global2[_wgslsmith_index_u32(0u, 25u)], 19975i)))), reverseBits(2147483647i), _wgslsmith_f_op_f32(-var_0.x), Struct_4(Struct_2(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 35583i), vec4<f32>(var_0.x, 216f, -1367f, var_0.x), vec4<i32>(10984i, -2147483647i, arg_0, -95468i)), Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(25414u, 32u)]))))));
    var var_2 = Struct_2(select(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(29242i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 32u)], -9143i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c, 32u)], u_input.b, -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(67562u, 25u)], global2[_wgslsmith_index_u32(u_input.c, 25u)], arg_0, -1i)), func_2(Struct_2(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], -55558i, 14276i, arg_0), var_0, vec4<i32>(48898i, global2[_wgslsmith_index_u32(u_input.c, 25u)], 27845i, 26987i)), func_2(Struct_2(vec4<i32>(-2793i, 37788i, 1i, 619i), var_0, vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], 1i)), Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(26285u, 32u)], u_input.b, global2[_wgslsmith_index_u32(u_input.c, 25u)], u_input.b), var_0, vec4<i32>(u_input.b, arg_0, 55919i, -21350i)), var_0.ywy, Struct_4(Struct_2(vec4<i32>(-5163i, u_input.b, 1i, u_input.b), vec4<f32>(var_0.x, 911f, var_0.x, -210f), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b, u_input.b, u_input.b)), Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(26003u, 32u)])))), _wgslsmith_f_op_vec3_f32(max(var_0.xwy, vec3<f32>(2671f, 1000f, -510f))), Struct_4(Struct_2(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(37959u, 32u)], global2[_wgslsmith_index_u32(u_input.d, 25u)], 2147483647i), var_0, vec4<i32>(global2[_wgslsmith_index_u32(12398u, 25u)], -35640i, 73997i, 1i)), Struct_3(vec2<i32>(global2[_wgslsmith_index_u32(29135u, 25u)], -1i)))).c), _wgslsmith_div_vec4_i32(~(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 0i, global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)])), ~(vec4<i32>(-3742i, -27252i, global2[_wgslsmith_index_u32(25144u, 25u)], u_input.b) & vec4<i32>(1i, global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(u_input.c, 25u)], arg_0))), func_4(func_2(func_2(Struct_2(vec4<i32>(36408i, 0i, global2[_wgslsmith_index_u32(70450u, 25u)], -2147483647i), vec4<f32>(var_0.x, var_0.x, var_0.x, -280f), vec4<i32>(50712i, global0[_wgslsmith_index_u32(u_input.d, 32u)], -12344i, -45434i)), Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(61655u, 32u)], arg_0, u_input.b, u_input.b), vec4<f32>(var_0.x, var_0.x, -1029f, var_0.x), vec4<i32>(u_input.b, -1i, -1i, global0[_wgslsmith_index_u32(u_input.c, 32u)])), var_0.xxy, Struct_4(Struct_2(vec4<i32>(38178i, 10868i, global2[_wgslsmith_index_u32(70318u, 25u)], -19627i), vec4<f32>(var_0.x, var_0.x, 347f, var_0.x), vec4<i32>(arg_0, 0i, -66295i, 2147483647i)), Struct_3(vec2<i32>(-2147483647i, 5077i)))), Struct_2(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.c, 32u)], 12939i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), var_0, vec4<i32>(-25533i, arg_0, -33228i, 1i)), _wgslsmith_f_op_vec3_f32(ceil(var_0.zyw)), Struct_4(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(6183u, 32u)], -50081i, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 1i), vec4<f32>(var_0.x, var_0.x, var_0.x, -590f), vec4<i32>(arg_0, 0i, global2[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(1u, 32u)])), Struct_3(vec2<i32>(34141i, -7498i)))), -(12464i >> (0u % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(462f)))), Struct_4(Struct_2(vec4<i32>(arg_0, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 39385i), vec4<f32>(var_0.x, -707f, -949f, -1070f), vec4<i32>(-1197i, 1i, -2147483647i, 57821i)), Struct_3(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c, 25u)]))))), var_0, _wgslsmith_div_vec4_i32(select(-vec4<i32>(-1i, -56888i, 59464i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) ^ firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], u_input.b, global0[_wgslsmith_index_u32(53301u, 32u)], global0[_wgslsmith_index_u32(21401u, 32u)])), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0, -59481i, 5890i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -2147483647i)), !func_4(Struct_2(vec4<i32>(-1i, u_input.b, -1i, global0[_wgslsmith_index_u32(u_input.d, 32u)]), var_0, vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 6530i, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])), arg_0, var_0.x, Struct_4(Struct_2(vec4<i32>(1i, -1i, arg_0, -20144i), vec4<f32>(1321f, 832f, var_0.x, -1095f), vec4<i32>(arg_0, 0i, -2147483647i, u_input.b)), Struct_3(vec2<i32>(-2147483647i, 2147483647i)))).x), ~(~vec4<i32>(-1i, 14779i, global2[_wgslsmith_index_u32(4294967295u, 25u)], arg_0))));
    let var_3 = Struct_4(func_2(Struct_2(var_2.c, var_0, vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(arg_0, -24963i), _wgslsmith_mult_i32(arg_0, 1i), global0[_wgslsmith_index_u32(u_input.d, 32u)])), Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(var_2.c, var_2.c), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), -arg_0, abs(arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, var_2.b.x, 1000f, var_0.x)) - vec4<f32>(1000f, 423f, 2058f, var_2.b.x)), vec4<i32>(16634i, 55168i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 32u)]), var_2.c.yy), func_2(Struct_2(var_2.c, vec4<f32>(-2049f, var_2.b.x, -677f, 1165f), var_2.a), Struct_2(var_2.a, vec4<f32>(var_2.b.x, var_0.x, 1652f, var_0.x), vec4<i32>(arg_0, 1i, u_input.b, 2147483647i)), vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), Struct_4(Struct_2(vec4<i32>(-26212i, -47502i, 1i, 0i), vec4<f32>(-1438f, var_2.b.x, var_2.b.x, 726f), vec4<i32>(-24929i, 23002i, 0i, global2[_wgslsmith_index_u32(u_input.c, 25u)])), Struct_3(var_2.c.zy))).c.x)), _wgslsmith_f_op_vec3_f32(abs(var_2.b.xyy)), Struct_4(func_2(func_2(Struct_2(var_2.a, var_0, var_2.c), Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1i, var_2.a.x, u_input.b), vec4<f32>(var_0.x, -494f, var_2.b.x, -1110f), vec4<i32>(-59004i, u_input.b, 16952i, -1i)), var_0.wxw, Struct_4(Struct_2(var_2.a, var_0, var_2.c), Struct_3(var_2.a.xx))), func_2(Struct_2(vec4<i32>(-4369i, -32884i, var_2.c.x, arg_0), vec4<f32>(var_2.b.x, 627f, var_0.x, var_2.b.x), var_2.c), Struct_2(var_2.c, vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, var_0.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 25u)], -1i, 1i, var_2.a.x)), vec3<f32>(var_2.b.x, var_0.x, var_0.x), Struct_4(Struct_2(var_2.a, var_2.b, vec4<i32>(-40210i, 2147483647i, global2[_wgslsmith_index_u32(0u, 25u)], 7006i)), Struct_3(var_2.c.xy))), vec3<f32>(var_0.x, -127f, var_0.x), Struct_4(Struct_2(var_2.a, var_0, vec4<i32>(10417i, -761i, -2147483647i, u_input.b)), Struct_3(var_2.a.ww))), Struct_3(-vec2<i32>(arg_0, 23513i)))), Struct_3(vec2<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.c, 25u)], 0i) >> ((1u & u_input.d) % 32u), ~u_input.b)));
    return ~(~28228i) << (u_input.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(14993i, select(!(any(vec3<bool>(true, true, true)) || true), ~u_input.a.x == 1u, any(vec4<bool>(true, true, true, true))));
    let var_1 = u_input.d;
    var var_2 = vec4<i32>(global2[_wgslsmith_index_u32(~(~(~u_input.c)), 25u)], abs(-2147483647i), firstTrailingBit(global2[_wgslsmith_index_u32(1u, 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, false) & ~vec3<u32>(4977u, 0u, 1u), ~(~u_input.a)) << (_wgslsmith_mult_u32(var_1, u_input.d) % 32u), 32u)]);
    let var_3 = vec4<i32>(-1i) * -max(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<i32>(-24326i, 1i, -28919i, var_2.x)), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 8345i, -57252i)) ^ vec4<i32>(global0[_wgslsmith_index_u32(22383u, 32u)], u_input.b, 1i, 53877i));
    var_0 = reverseBits(global2[_wgslsmith_index_u32(~select(1629u, reverseBits(_wgslsmith_clamp_u32(0u, var_1, var_1)), true), 25u)]);
    let var_4 = !func_4(Struct_2(-func_2(Struct_2(vec4<i32>(1i, 1i, u_input.b, var_2.x), vec4<f32>(644f, 996f, 1939f, -1571f), var_3), Struct_2(var_3, vec4<f32>(605f, 1064f, -1000f, -660f), vec4<i32>(-42264i, 2147483647i, u_input.b, 2147483647i)), vec3<f32>(-1000f, 993f, 287f), Struct_4(Struct_2(var_3, vec4<f32>(754f, -614f, 261f, 144f), vec4<i32>(2147483647i, u_input.b, 1i, 2147483647i)), Struct_3(var_2.xx))).a, vec4<f32>(_wgslsmith_f_op_f32(-969f * -1488f), _wgslsmith_f_op_f32(-1875f - 950f), 1748f, func_2(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(9014u, 32u)], u_input.b, var_2.x, var_3.x), vec4<f32>(1000f, 1347f, 2083f, -1000f), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], u_input.b, global0[_wgslsmith_index_u32(u_input.d, 32u)], var_2.x)), Struct_2(vec4<i32>(0i, var_2.x, 1192i, global2[_wgslsmith_index_u32(0u, 25u)]), vec4<f32>(779f, -186f, 1000f, 1487f), var_3), vec3<f32>(464f, -1025f, 1051f), Struct_4(Struct_2(vec4<i32>(u_input.b, -15777i, global0[_wgslsmith_index_u32(u_input.d, 32u)], 0i), vec4<f32>(533f, 933f, -992f, 242f), var_3), Struct_3(var_3.ww))).b.x), -vec4<i32>(var_2.x, -7577i, var_3.x, var_3.x)), var_2.x, -772f, Struct_4(Struct_2(~var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1829f, -596f, -2351f, -792f)), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], var_2.x, 0i, var_3.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(var_1, 32u)], 10785i, -23055i))), Struct_3(var_2.ww ^ var_2.zy))).wz;
    let x = u_input.a;
    s_output = StorageBuffer(-1116f, -1i << ((~(0u << (var_1 % 32u)) | (~var_1 | 1u)) % 32u), vec4<i32>(firstLeadingBit(var_3.x), global0[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_dot_vec3_i32(-firstLeadingBit(var_3.zww), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_2.x, -10180i), var_3.wyw)), func_1(countOneBits(func_2(Struct_2(vec4<i32>(-43355i, u_input.b, 1i, 35358i), vec4<f32>(-1768f, 1000f, 255f, 1507f), var_3), Struct_2(var_3, vec4<f32>(434f, 1130f, 770f, -332f), vec4<i32>(16299i, var_2.x, -50906i, var_3.x)), vec3<f32>(1752f, 3021f, -2304f), Struct_4(Struct_2(var_3, vec4<f32>(1000f, 1000f, -339f, 816f), vec4<i32>(1i, -2147483647i, -10053i, 1i)), Struct_3(var_2.xw))).c.x), all(vec3<bool>(false, true, false)) | (false && var_4.x))));
}

