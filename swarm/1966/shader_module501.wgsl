struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<bool, 7>;

var<private> global2: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(i32(-2147483648), 35792i, -50159i, 31775i), vec4<i32>(698i, -7723i, -1i, -3391i), vec4<i32>(1i, -816i, -3492i, 1i), vec4<i32>(i32(-2147483648), -36241i, -5827i, -3728i), vec4<i32>(-19280i, 12818i, 25080i, -11564i), vec4<i32>(77149i, 25957i, -22829i, 0i), vec4<i32>(0i, 39851i, -22708i, 0i), vec4<i32>(2147483647i, 2147483647i, -50710i, 2147483647i), vec4<i32>(4791i, -1i, i32(-2147483648), -56654i), vec4<i32>(2147483647i, 2147483647i, 43508i, i32(-2147483648)), vec4<i32>(20594i, 2147483647i, 29408i, 2147483647i), vec4<i32>(0i, 2147483647i, 1i, -9062i), vec4<i32>(-81900i, 0i, 54827i, 1i), vec4<i32>(2147483647i, 2147483647i, -1i, 1792i), vec4<i32>(i32(-2147483648), -19757i, -30371i, 32637i), vec4<i32>(0i, 2147483647i, -49240i, -3191i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global2 = array<vec4<i32>, 16>();
    var var_0 = Struct_2(Struct_1(-993f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.a.a.d)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.e, 552f, arg_0.a.e, arg_0.c.a.b.x))))), select(firstTrailingBit(arg_0.c.a.c), -vec4<i32>(arg_0.a.c.c.x, -2147483647i, arg_0.a.b.x, u_input.a.x), !vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], arg_0.b)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36446u, 6967u, 42024u, 4294967295u), vec4<u32>(0u, 1u, 47811u, 88022u)), 1u, 0u, countOneBits(1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(271f + 799f), arg_0.a.a.d.x, _wgslsmith_f_op_f32(select(arg_0.a.a.b.x, 1427f, global1[_wgslsmith_index_u32(41544u, 7u)])), -226f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.a.a.d)))), !select(arg_0.a.c.e, !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, false, global1[_wgslsmith_index_u32(56057u, 7u)]), arg_0.b)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(40174i, arg_0.a.c.c.x, u_input.a.x) >> (vec3<u32>(1u, 56333u, 9936u) % vec3<u32>(32u)), arg_0.a.c.c.wxx), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 17341i, -1i, arg_0.c.a.c.x), vec4<i32>(arg_0.a.c.c.x, arg_0.a.c.c.x, 0i, u_input.a.x)), firstLeadingBit(u_input.a.x)), -arg_0.a.c.c.xxx), Struct_1(_wgslsmith_f_op_f32(sign(-890f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e, -263f, -266f, arg_0.a.c.d.x))))), vec4<i32>(~u_input.a.x, u_input.a.x >> (20344u % 32u), 0i, _wgslsmith_mod_i32(-2887i, countOneBits(u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.e), _wgslsmith_f_op_f32(arg_0.c.a.d.x * arg_0.a.e), -290f, -867f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1746f, arg_0.a.a.d.x, arg_0.a.c.b.x, arg_0.c.a.b.x) + arg_0.a.a.b))), select(arg_0.c.c.e, select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 7u)], arg_0.c.a.e.x), !vec4<bool>(global1[_wgslsmith_index_u32(42371u, 7u)], global1[_wgslsmith_index_u32(36123u, 7u)], false, true), arg_0.b || true), select(any(arg_0.a.d), global1[_wgslsmith_index_u32(4294967295u, 7u)] & arg_0.b, all(arg_0.c.d)))), select(!arg_0.c.d, select(arg_0.a.c.e.xyy, vec3<bool>(arg_0.a.c.e.x, true, global1[_wgslsmith_index_u32(11106u, 7u)]), !arg_0.c.a.e.x), select(!vec3<bool>(arg_0.c.c.e.x, false, true), select(arg_0.a.c.e.yyz, arg_0.a.a.e.zzw, !arg_0.c.d), any(vec4<bool>(true, arg_0.b, arg_0.a.d.x, global1[_wgslsmith_index_u32(4294967295u, 7u)])))), arg_0.c.e);
    let var_1 = Struct_1(1000f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.d.x + 497f)) * 474f), 366f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(-1567f - 184f)), _wgslsmith_div_f32(arg_0.c.c.d.x, _wgslsmith_f_op_f32(-1613f + -1493f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(round(arg_0.a.e))))), reverseBits(firstTrailingBit(var_0.a.c)), var_0.a.d, var_0.a.e);
    var_0 = Struct_2(arg_0.c.a, vec3<i32>(arg_0.a.c.c.x, abs(firstTrailingBit(1i)), ~reverseBits(reverseBits(u_input.a.x))), arg_0.a.c, vec3<bool>(-2147483647i <= u_input.a.x, arg_0.a.d.x & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(774f, -468f))) < arg_0.c.c.a), _wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(-1891f + -1000f)));
    let var_2 = ~(-(~_wgslsmith_div_i32(arg_0.a.b.x, 21566i))) | select(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(arg_0.c.a.c.x), var_1.c.x), -var_1.c.x), _wgslsmith_mod_u32(~0u, 1u) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(9423u, 19819u, 3395u, 35422u), ~vec4<u32>(4294967295u, 24546u, 1u, 1u)));
    return !vec2<bool>(true, all(!var_1.e));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 1u)), select(vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(8712u, 1u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(65137u, 1u)), ~vec2<u32>(31266u, 4294967295u))), ~vec2<u32>(abs(0u), 4294967295u), !(!func_3(Struct_3(global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(20731u, 1u)])))));
    global1 = array<bool, 7>();
    global2 = array<vec4<i32>, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, -448f, 820f, -1792f)), vec4<f32>(655f, 712f, -1197f, -400f), !global1[_wgslsmith_index_u32(48072u, 7u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(841f, -1531f, -167f, 214f) + vec4<f32>(376f, 1000f, -1119f, 439f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, -1184f, -458f, 131f) + vec4<f32>(254f, 1000f, 1000f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1622f - 2486f))), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(374f)), _wgslsmith_div_f32(1000f, -717f))), _wgslsmith_f_op_f32(479f - -1659f)))));
    var var_2 = _wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1387f, -2004f, false)), _wgslsmith_f_op_f32(var_1.x + 1161f))), true & (var_0.x >= var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<vec4<i32>, 16>();
    global2 = array<vec4<i32>, 16>();
    var var_0 = -_wgslsmith_mod_i32(-2147483647i, -arg_0.c.x & _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.a.x, -6441i)), vec3<i32>(u_input.a.x, -46177i, 0i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1077f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.b.x) * _wgslsmith_f_op_f32(arg_0.a * 815f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_div_f32(-1062f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(exp2(arg_0.b.x))), -abs(global2[_wgslsmith_index_u32(~(~4294967295u), 16u)]), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - -586f), arg_0.d.x, true)), 620f, -351f, 1068f), vec4<bool>(any(select(select(vec3<bool>(arg_0.e.x, false, arg_0.e.x), arg_0.e.wxz, arg_0.e.wwz), select(arg_0.e.yww, arg_0.e.wyx, arg_0.e.zxy), true)), true, true || select(all(arg_0.e.yw), true, false), func_3(Struct_3(Struct_2(Struct_1(-1030f, arg_0.b, arg_0.c, arg_0.b, arg_0.e), vec3<i32>(-64057i, 0i, arg_0.c.x), arg_0, vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)], false), arg_0.b.x), any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)])), global0[_wgslsmith_index_u32(~2608u, 1u)])).x));
    let var_2 = -(~_wgslsmith_mult_i32(~6363i, _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(-1956i, 42747i))));
    return arg_0.e.xwz;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) - _wgslsmith_f_op_f32(f32(-1f) * -835f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1911f, -1651f)) + -1084f)) - -1593f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(417f)));
    var var_1 = global2[_wgslsmith_index_u32(25501u, 16u)];
    var var_2 = Struct_3(Struct_2(Struct_1(-257f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, 1397f, -2063f, 1165f)), abs(vec4<i32>(-1i, 2147483647i, -35049i, var_1.x) << (vec4<u32>(0u, 0u, 0u, 92104u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(622f, -810f, 133f, -1560f) + vec4<f32>(272f, -692f, -479f, 474f)) + vec4<f32>(170f, 510f, 1030f, -292f)), !(!vec4<bool>(false, true, arg_0.x, arg_0.x))), vec3<i32>(var_1.x, var_1.x, ~(0i & var_1.x)), Struct_1(_wgslsmith_f_op_f32(-1423f * -1678f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-859f, -1336f, -487f, 410f))), ~select(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec4<i32>(var_1.x, 248i, var_1.x, var_1.x), vec4<bool>(arg_1, true, arg_1, false)), vec4<f32>(_wgslsmith_div_f32(604f, -692f), -221f, -594f, _wgslsmith_f_op_f32(-242f + -407f)), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(53065u, 7u)], true, arg_1, arg_1))), vec3<bool>(any(!vec4<bool>(arg_1, arg_0.x, global1[_wgslsmith_index_u32(41832u, 7u)], true)), arg_0.x, !(!global1[_wgslsmith_index_u32(23669u, 7u)])), _wgslsmith_f_op_f32(-1f)), true == arg_1, global0[_wgslsmith_index_u32(~(~(8384u >> (select(0u, 112154u, global1[_wgslsmith_index_u32(42497u, 7u)]) % 32u))), 1u)]);
    let var_3 = _wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(57454u, ~15101u, max(0u, 4294967295u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_4(select(!(!func_1(Struct_1(-459f, vec4<f32>(-512f, -734f, 882f, 1819f), global2[_wgslsmith_index_u32(44308u, 16u)], vec4<f32>(915f, -675f, -920f, 627f), vec4<bool>(false, global1[_wgslsmith_index_u32(14735u, 7u)], global1[_wgslsmith_index_u32(639u, 7u)], global1[_wgslsmith_index_u32(20849u, 7u)])))), !select(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 7u)], false), vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(9992u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], false)), true), func_1(Struct_1(_wgslsmith_f_op_f32(min(-291f, -226f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, -1180f, -1000f, 1409f) * vec4<f32>(-257f, -157f, 2599f, 1801f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 385f, 312f, -1000f))), vec4<i32>(-1i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -1i, 0i), vec4<f32>(1f, _wgslsmith_f_op_f32(-727f * 610f), -1355f, 1f), select(!vec4<bool>(global1[_wgslsmith_index_u32(12469u, 7u)], false, false, false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(37059u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)], true, global1[_wgslsmith_index_u32(20859u, 7u)]), false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(1411u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(18994u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), global1[_wgslsmith_index_u32(4294967295u, 7u)])))).x), 1u)];
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(96635u, 1u)], !global1[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(1569u, 1u)]);
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e))), var_1.c.a.d, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), global2[_wgslsmith_index_u32(abs(8918u), 16u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(var_1.a.c.b)))), var_1.c.c.e), min(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.c.c.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, 17125i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, var_0.a.c.x, u_input.a.x) & var_0.b, vec3<i32>(u_input.a.x, 34063i, -1i), vec3<i32>(-1i, 32616i, 1i))), var_1.a.c, var_1.a.a.e.wyz, _wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), all(vec4<bool>(!var_0.d.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(0u), _wgslsmith_clamp_u32(64348u, 4294967295u, 0u)), 7u)], global1[_wgslsmith_index_u32(1u, 7u)], false)), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), -1861f)), var_1.c.a.b, vec4<i32>(-var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.x, 32338i, var_1.a.c.c.x, 22785i), vec4<i32>(var_0.b.x, 0i, u_input.a.x, var_0.c.c.x)), var_0.b.x, -2147483647i & var_0.a.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, 448f, -2228f, -2130f)), vec4<bool>(true, false, all(vec3<bool>(false, var_0.d.x, var_0.c.e.x)), !var_1.b)), abs(var_0.a.c.xww << (vec3<u32>(53474u, 81711u, 0u) % vec3<u32>(32u))) ^ ~_wgslsmith_sub_vec3_i32(var_0.a.c.wwz, vec3<i32>(u_input.a.x, var_1.c.a.c.x, -8697i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.a.c.d, var_0.a.d), vec4<f32>(575f, var_0.e, -1213f, -328f)), vec4<i32>(1i, -26180i, select(2610i, -31246i, var_0.a.e.x), 3714i), vec4<f32>(-637f, _wgslsmith_f_op_f32(-var_1.c.c.b.x), _wgslsmith_f_op_f32(-var_1.a.a.d.x), var_1.c.e), var_1.c.c.e), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_3 = vec2<f32>(var_1.a.a.b.x, var_2.c.a.b.x);
    let var_4 = vec3<u32>(abs(reverseBits(firstLeadingBit(~0u))), 45029u, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~10275u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(8403u, 84734u, 1316u, 4294967295u))));
    global2 = array<vec4<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_4.x, var_4.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) - 2070f))), 7908u);
}

