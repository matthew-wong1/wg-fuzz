struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global1: vec4<f32> = vec4<f32>(1579f, -1811f, -1195f, 471f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(885f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1469f)) + 400f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), arg_1.a.a.x)))));
    let var_1 = Struct_2(any(select(!(!vec4<bool>(arg_2.c.x, arg_2.c.x, false, arg_1.d.c.x)), !(!vec4<bool>(arg_2.a, arg_2.c.x, false, arg_0.a)), vec4<bool>(var_0.a, arg_2.c.x, arg_2.c.x | true, select(arg_2.c.x, arg_2.a, arg_1.d.a)))), ~_wgslsmith_mod_vec3_i32(var_0.b, arg_1.d.b), select(var_0.c, select(arg_0.c, vec2<bool>(false, true), true), arg_0.c));
    let var_2 = u_input.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, global1.x, 1109f, -2271f)), vec4<f32>(588f, 335f, 289f, 405f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(414f, 1958f, 1098f, -1231f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(933f, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, arg_1.a.a.x, global1.x, 178f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(297f, -878f, arg_1.a.a.x, global1.x), vec4<f32>(global1.x, -629f, -2651f, arg_1.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, -209f, arg_1.a.a.x, 207f) - vec4<f32>(884f, global1.x, global1.x, arg_1.a.a.x)))))));
    return _wgslsmith_mod_i32(countOneBits(-1i), min(-(arg_1.d.b.x << (1u % 32u)), ~0i));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-144f))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(-237f, global1.x, true)), any(vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))))) + vec4<f32>(-3752f, 394f, _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-272f - global1.x)))));
    let var_0 = arg_1;
    return abs(1u);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> u32 {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_0 = Struct_2(all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), vec3<bool>(any(vec3<bool>(false, false, false)), false, false), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, false, true))))), vec3<i32>(min(1i, arg_0.c.x ^ u_input.a.x) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8130i, u_input.a.x), arg_0.c), -11045i), 50830i, 18799i), !vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-410f - 708f), -674f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-773f + _wgslsmith_f_op_f32(-arg_0.a.x)), -401f)), -404f, -185f);
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(~(-u_input.a.x), reverseBits(_wgslsmith_div_i32(2147483647i << (arg_0.b.x % 32u), u_input.a.x | -1i))), ~1i, ~firstTrailingBit(arg_0.c.x));
    return 1u;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_clamp_u32(func_5(Struct_1(global1.yxw, ~(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]) & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(66366u, 1u)])), reverseBits(~vec2<i32>(u_input.a.x, u_input.a.x))), global1.x, vec4<u32>(27392u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71664u, 1u)], 1u)], 30457u), func_4(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(139397u, 1u)], 1u), func_3(Struct_2(false, u_input.a.zwz, vec2<bool>(false, false)), Struct_3(Struct_1(vec3<f32>(-2357f, -1000f, global1.x), vec2<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 24542u), u_input.a.wy), vec4<u32>(27796u, 179u, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35585u, 1u)], 1u)]), 1i, Struct_2(false, u_input.a.yxz, vec2<bool>(false, false))), Struct_2(false, u_input.a.wyz, vec2<bool>(false, true))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 1u)]), 1u)], 1u)]), abs(~4294967295u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1889f, global1.x)))), 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)] & _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 1u)])) | 595u, 1u)]);
    global0 = array<u32, 1>();
    let var_1 = vec3<u32>(global0[_wgslsmith_index_u32(var_0, 1u)], _wgslsmith_sub_u32(~min(~var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, var_0), 1u)], 1u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(1u, 1u)], 107036u, global0[_wgslsmith_index_u32(1u, 1u)] >> (51015u % 32u), 47441u), vec4<u32>(~70788u, abs(7573u), var_0, 43919u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(70098u, 1u)], var_0), 29981u ^ firstTrailingBit(1u)));
    var var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), max(-_wgslsmith_clamp_i32(u_input.a.x, -22220i, -25460i), (i32(-1i) * -2147483647i) | u_input.a.x) == ~(_wgslsmith_add_i32(2147483647i, u_input.a.x) << (var_0 % 32u)));
    let var_3 = true;
    return _wgslsmith_mult_u32(abs(~4294967295u), 1u);
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: vec4<bool>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-621f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-343f + 549f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.x)))) - global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(816f, 559f))), 1736f), global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 549f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-693f, global1.x, 264f, global1.x)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1454f, global1.x, global1.x, 1221f)))))));
    var var_0 = select(vec3<bool>(true, false, arg_2.x), !(!(!select(arg_2.yxw, vec3<bool>(false, false, false), arg_2.zwy))), !(arg_2.x & (0i < ~u_input.a.x)));
    var var_1 = Struct_2(all(vec2<bool>(false, abs(0u) >= arg_0)), u_input.a.wxz, !vec2<bool>(!(488f > global1.x), all(!vec4<bool>(arg_2.x, false, var_0.x, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1836f, -1223f, global1.x), vec3<f32>(global1.x, 350f, global1.x)) - global1.zwz), vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(2378f - global1.x)), any(vec4<bool>(arg_2.x, true, true, true)) && false)))), ~firstLeadingBit(~vec2<u32>(0u, 1u)), vec2<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_1.b.x, 19243i))), _wgslsmith_dot_vec2_i32(var_1.b.zz, u_input.a.zy)));
    var var_3 = Struct_2(var_1.a, firstLeadingBit(reverseBits(var_1.b)), select(vec2<bool>(var_1.c.x, any(var_0.zy)), select(select(var_0.zz, vec2<bool>(false, false), select(vec2<bool>(true, var_0.x), var_1.c, arg_2.x)), !vec2<bool>(true, var_1.a), select(select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.x), !arg_2.yy, vec2<bool>(false, arg_2.x))), !(!var_1.c.x)));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -657f, global1.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(761f, 339f, var_2.a.x)))), var_2.b, ~_wgslsmith_add_vec2_i32(vec2<i32>(-9777i, -6758i), firstLeadingBit(var_2.c))), select(vec4<u32>(~(~arg_1), ~global0[_wgslsmith_index_u32(var_2.b.x, 1u)] ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, var_2.b.x, arg_1, 13250u), vec4<u32>(25921u, arg_1, 34326u, var_2.b.x)), ~func_2(), max(_wgslsmith_div_u32(arg_1, 15469u), ~var_2.b.x)), vec4<u32>(abs(arg_1) << (15363u % 32u), arg_0, ~0u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~var_2.b.x), 1u)]), any(!select(arg_2, arg_2, false))), min(var_1.b.x << (_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.b.x, 1u)], 1u)]), arg_0) % 32u), var_3.b.x), Struct_2(arg_2.x | all(select(arg_2.xz, vec2<bool>(arg_2.x, var_0.x), arg_2.x)), select(var_3.b, -min(var_1.b, var_3.b), !vec3<bool>(false, true, var_1.c.x)), select(var_1.c, arg_2.yw, false)));
}

fn func_1() -> f32 {
    let var_0 = vec3<i32>(u_input.a.x, max(select(u_input.a.x, _wgslsmith_sub_i32(-1i, u_input.a.x), true), u_input.a.x) & u_input.a.x, -2147483647i);
    var var_1 = Struct_1(global1.ywz, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 43353u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 4294967295u, 1u)), vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 1u)], 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 1u)], ~60752u)), ~79331u), ~((u_input.a.ww << (vec2<u32>(global0[_wgslsmith_index_u32(8908u, 1u)], 29103u) % vec2<u32>(32u))) | vec2<i32>(var_0.x, var_0.x)) >> (abs(~vec2<u32>(27503u, global0[_wgslsmith_index_u32(1u, 1u)]) | ~vec2<u32>(global0[_wgslsmith_index_u32(19433u, 1u)], 13140u)) % vec2<u32>(32u)));
    var var_2 = func_6(_wgslsmith_sub_u32(~max(func_2(), 0u), ~(global0[_wgslsmith_index_u32(1u, 1u)] | (global0[_wgslsmith_index_u32(1u, 1u)] | var_1.b.x))), 37206u, select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 1u)] <= 1u, 38057u > var_1.b.x, true, false), -1i < var_1.c.x));
    var_1 = Struct_1(vec3<f32>(-810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), global1.x))), var_1.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.b.xw, abs(_wgslsmith_sub_vec2_u32(var_2.b.zz, var_1.b)), vec2<u32>(_wgslsmith_div_u32(34341u, var_2.b.x), 27783u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.b.x, 79075u), _wgslsmith_div_vec2_u32(vec2<u32>(38520u, 4294967295u), var_1.b)))), var_0.yy);
    let var_3 = func_6(41756u, abs(~(~(~32243u))), !(!vec4<bool>(var_2.d.c.x, true, var_2.d.c.x, var_2.d.a)));
    return 1401f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) + _wgslsmith_f_op_f32(-global1.x)))) + global1.x), _wgslsmith_f_op_f32(func_1()));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(689f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2160f)))), _wgslsmith_f_op_f32(-406f * 379f));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, 982f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(383f, var_0.x))), -1633f));
    var var_2 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i) * -u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 15463i), u_input.a.yz), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, -2147483647i))), true), ~(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a) >> (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(20179u, 1u)]) % vec4<u32>(32u)))) ^ countOneBits(vec4<i32>(u_input.a.x, min(_wgslsmith_mod_i32(1i, -1i), u_input.a.x), u_input.a.x, ~(~u_input.a.x)));
    let var_3 = Struct_2(false, ~(-abs(~u_input.a.zzy)), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)] != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)])));
    var var_4 = func_6(select(0u, ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~29873u, 1u)], 1u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91135u, 1u)], 1u)], 1u)]), false), ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1524u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29934u, 1u)], 1u)], 4294967295u, 4294967295u), var_3.a), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43972u, 1u)], 1u)]), vec3<u32>(61247u, 38733u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]))), vec4<bool>(var_3.a, true, var_3.c.x, var_3.a & var_3.c.x)).a;
    var var_5 = vec4<u32>(1u, var_4.b.x, _wgslsmith_mult_u32(4294967295u >> (1u % 32u), func_6(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)] ^ 0u, vec4<bool>(false, all(vec3<bool>(false, var_3.a, var_3.a)), var_3.c.x, true)).a.b.x), ~firstTrailingBit(~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 1u)])));
    var_0 = var_1;
    let var_6 = !(!(!select(!vec4<bool>(var_3.a, var_3.c.x, var_3.c.x, false), !vec4<bool>(false, false, var_3.c.x, var_3.a), select(vec4<bool>(false, var_3.c.x, true, false), vec4<bool>(true, false, var_3.a, true), vec4<bool>(true, var_3.c.x, true, var_3.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, -32017i, vec4<u32>(4323u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_4.b.x, var_5.x), 1u)], var_4.b.x, 47810u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_5.x << (global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(20763u, 33113u), 1u)] % 32u), 1u)], 1u)], global1.x);
}

