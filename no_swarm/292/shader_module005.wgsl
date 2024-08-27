struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(global0.a.x, _wgslsmith_f_op_f32(ceil(-396f)) < -1925f, any(global1[_wgslsmith_index_u32(24803u, 8u)]), global0.c.x), ~(_wgslsmith_div_u32(global0.b, 31774u) ^ global0.b), !vec4<bool>(any(vec3<bool>(false, true, true)), true, global0.c.x, true)), Struct_1(select(!(!vec4<bool>(false, global0.c.x, false, true)), vec4<bool>(false, all(global0.c), all(vec3<bool>(false, global0.a.x, global0.a.x)), false), !(!vec4<bool>(global0.c.x, false, global0.a.x, true))), ~(_wgslsmith_mod_u32(59843u, u_input.a) << (~global0.b % 32u)), vec4<bool>(!global0.c.x, !(global0.a.x || true), !global0.a.x, false)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 4110i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, 0i)), ~_wgslsmith_mod_i32(u_input.c.x, 65854i)), ~(-63079i), i32(-1i) * -3239i), ~(~(vec4<u32>(1u, 431u, 4294967295u, 0u) ^ (vec4<u32>(4294967295u, 0u, global0.b, u_input.a) >> (vec4<u32>(1725u, global0.b, 48946u, 1u) % vec4<u32>(32u))))));
    var var_1 = var_0;
    var var_2 = -117f;
    let var_3 = firstLeadingBit(_wgslsmith_sub_u32(1u, var_0.d.x));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2069f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-951f))) * -1601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1854f * 962f))))));
    return -2260i & select(1i, ~(i32(-1i) * -1i), true);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = -2147483647i;
    var var_1 = vec3<i32>(arg_0.c >> (u_input.a % 32u), 2147483647i, func_3());
    var var_2 = min(~(-countOneBits(-vec4<i32>(var_1.x, arg_0.c, -20323i, -2530i))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.b), _wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, u_input.b.x, var_1.x, -1i) | vec4<i32>(arg_0.c, 1i, u_input.b.x, var_1.x)), vec4<i32>(~u_input.b.x, -1i, arg_0.c >> (1u % 32u), 1i)), abs(max(~var_1.x, select(2147483647i, var_1.x, arg_1))), -6434i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(910f * 983f) - _wgslsmith_f_op_f32(766f - 727f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-345f - -396f), _wgslsmith_f_op_f32(trunc(-141f)))))));
    let var_4 = arg_0.d << (~(~arg_0.d) % vec4<u32>(32u));
    return Struct_2(arg_0.a, Struct_1(vec4<bool>(!arg_0.a.a.x & !global0.c.x, !any(vec2<bool>(arg_1, arg_0.b.c.x)), true, !global0.c.x), var_4.x, select(!global0.c, !arg_0.b.a, any(arg_0.b.c))), var_1.x, var_4);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(arg_0.d.yy, max(_wgslsmith_div_vec2_u32(arg_0.d.yz, vec2<u32>(0u, u_input.a)) ^ arg_0.d.wz, ~arg_0.d.xy), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.d.zx, arg_0.d.xw, vec2<u32>(arg_0.d.x, 32220u)), arg_0.d.xz));
    let var_1 = func_2(func_2(arg_0, !(global0.c.x != (u_input.b.x > arg_0.c)), false), !(!arg_2.x), true).a;
    let var_2 = !global0.a.zy;
    let var_3 = Struct_1(!vec4<bool>(!(arg_0.d.x >= 45079u), (arg_2.x & true) & arg_0.b.a.x, arg_2.x, _wgslsmith_f_op_f32(-555f - arg_1.x) < _wgslsmith_f_op_f32(-2050f - 213f)), u_input.a, func_2(Struct_2(func_2(arg_0, arg_1.x != 838f, true).a, func_2(arg_0, any(global0.a.wx), global0.a.x).a, u_input.b.x, ~(~arg_0.d)), !any(vec4<bool>(true, true, true, true)), all(!(!global0.a.zzz))).a.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1494f, 744f, arg_1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -1353f, arg_1.x))), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - 346f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - _wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    return vec4<bool>(true, true, var_3.c.x, !var_3.c.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = select(func_4(func_2(func_2(func_2(Struct_2(arg_1, arg_1, -2147483647i, vec4<u32>(0u, arg_1.b, global0.b, global0.b)), true, arg_1.a.x), arg_1.c.x | arg_2.x, global0.c.x), true, !arg_2.x), vec3<f32>(1f, -1524f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-744f))))), !select(!vec4<bool>(true, arg_2.x, global0.a.x, true), func_2(Struct_2(arg_1, arg_1, -2147483647i, vec4<u32>(u_input.a, u_input.a, global0.b, global0.b)), global0.a.x, arg_2.x).a.c, true)), vec4<bool>(any(!(!vec2<bool>(false, global0.c.x))), ~global0.b > (~8677u | (arg_0 ^ arg_0)), select(all(vec3<bool>(true, true, true)), true, (global0.a.x && true) | arg_1.a.x), reverseBits(4294967295u) == _wgslsmith_div_u32(1u, ~u_input.a)), global0.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1174f, 909f, 1077f))))));
    let var_2 = var_1.x;
    var var_3 = select(func_4(func_2(Struct_2(arg_1, arg_1, _wgslsmith_clamp_i32(0i, 2147483647i, u_input.b.x), vec4<u32>(global0.b, 4294967295u, 29471u, 4294967295u) | vec4<u32>(40583u, arg_0, arg_1.b, u_input.a)), var_0.x, var_2 != _wgslsmith_f_op_f32(var_2 - var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(var_1.x, var_1.x, 251f)), _wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(-1000f, var_1.x, var_2)))), arg_1.c), var_0, arg_1.a.x);
    var_3 = func_4(Struct_2(func_2(func_2(func_2(Struct_2(Struct_1(vec4<bool>(global0.a.x, arg_1.a.x, false, false), 6778u, vec4<bool>(arg_1.c.x, arg_2.x, false, false)), Struct_1(var_0, 19386u, vec4<bool>(true, false, false, var_0.x)), u_input.b.x, vec4<u32>(u_input.a, 17981u, 25872u, global0.b)), arg_1.a.x, var_0.x), select(false, var_3.x, arg_2.x), true), all(arg_1.c.zxy), false).b, arg_1, func_3(), vec4<u32>(~_wgslsmith_clamp_u32(68751u, arg_1.b, 116936u), 0u, ~abs(1u), global0.b)), vec3<f32>(_wgslsmith_f_op_f32(abs(var_2)), -327f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.x)), 321f))), func_4(Struct_2(arg_1, Struct_1(!vec4<bool>(global0.c.x, arg_1.a.x, global0.a.x, false), _wgslsmith_sub_u32(0u, 0u), var_0), _wgslsmith_add_i32(20783i, firstTrailingBit(u_input.b.x)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(39880u, u_input.a, arg_0, 56093u), vec4<u32>(1u, arg_1.b, 50939u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1762f, 370f)) - var_1), select(vec4<bool>(true, !var_0.x, func_4(Struct_2(Struct_1(var_0, u_input.a, arg_2), Struct_1(vec4<bool>(false, arg_1.c.x, false, global0.a.x), 1u, arg_2), u_input.c.x, vec4<u32>(48838u, 22943u, arg_1.b, global0.b)), vec3<f32>(1457f, var_1.x, 126f), var_0).x, true), global0.a, vec4<bool>(true, global0.c.x, func_2(Struct_2(Struct_1(vec4<bool>(true, arg_2.x, arg_1.c.x, true), arg_1.b, vec4<bool>(false, var_3.x, false, true)), arg_1, 1i, vec4<u32>(u_input.a, 3209u, u_input.a, 69753u)), true, true).b.a.x, all(vec4<bool>(global0.c.x, true, var_3.x, var_3.x))))));
    return Struct_2(Struct_1(!var_0, func_2(Struct_2(arg_1, Struct_1(vec4<bool>(true, true, arg_1.c.x, true), 6841u, vec4<bool>(arg_2.x, false, false, false)), u_input.b.x, vec4<u32>(u_input.a, global0.b, u_input.a, 52691u)), arg_2.x, all(arg_2)).b.b ^ 1u, select(select(!global0.a, arg_1.a, global0.a), vec4<bool>(true, any(global0.c), global0.c.x, var_2 >= var_1.x), arg_2)), Struct_1(var_0, arg_1.b, !vec4<bool>(any(global0.c.zw), all(arg_1.a.zzz), all(arg_2), var_3.x)), _wgslsmith_add_i32(-_wgslsmith_sub_i32(u_input.b.x, 1i), i32(-1i) * -29046i), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(31307u, 1u), 63584u >> (1u % 32u)), global0.b, arg_0, ~max(46618u, 0u)));
}

fn func_1(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = func_5(1u, Struct_1(global0.a, u_input.a, select(func_4(func_2(Struct_2(Struct_1(vec4<bool>(false, global0.c.x, true, global0.a.x), global0.b, vec4<bool>(false, global0.c.x, global0.c.x, false)), Struct_1(global0.a, 61223u, global0.a), u_input.b.x, vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), true, false), vec3<f32>(175f, -241f, 1228f), func_2(Struct_2(Struct_1(vec4<bool>(global0.c.x, false, false, global0.a.x), 85062u, vec4<bool>(global0.c.x, global0.a.x, true, false)), Struct_1(vec4<bool>(global0.a.x, false, global0.c.x, global0.a.x), 4294967295u, vec4<bool>(global0.a.x, global0.a.x, true, false)), -1i, vec4<u32>(18234u, 4294967295u, 0u, 89300u)), false, false).a.c), global0.a, !select(vec4<bool>(global0.a.x, global0.a.x, global0.c.x, global0.a.x), vec4<bool>(false, true, true, global0.c.x), true))), global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * 1140f)))), 1f, -807f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -720f, 935f)))), vec3<f32>(-350f, _wgslsmith_f_op_f32(min(-822f, 1000f)), -1098f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, 1969f, -578f) + vec3<f32>(135f, -539f, 536f)) - vec3<f32>(233f, 1970f, 995f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-307f, 1000f, 421f) * vec3<f32>(947f, 236f, -1786f))))));
    var_0 = Struct_2(func_5(_wgslsmith_div_u32(func_5(1u, Struct_1(vec4<bool>(global0.c.x, global0.c.x, var_0.b.a.x, global0.a.x), 0u, global0.c), func_5(global0.b, var_0.a, vec4<bool>(global0.a.x, var_0.a.c.x, false, var_0.b.c.x)).b.c).b.b, ~10631u), var_0.a, vec4<bool>(true, true, false, var_0.a.a.x)).a, Struct_1(select(select(vec4<bool>(false, var_0.a.a.x, true, true), !var_0.a.c, true), !(!var_0.b.c), !any(global0.c.zz)), (var_0.d.x << (var_0.a.b % 32u)) ^ countOneBits(~0u), vec4<bool>(true, true, !var_0.a.c.x, !all(var_0.a.c.yz))), func_3(), var_0.d);
    var var_2 = vec3<bool>(true, global0.c.x, func_5(~(~(~22219u)), Struct_1(!var_0.a.c, ~(~u_input.a), !select(vec4<bool>(false, global0.a.x, true, var_0.b.c.x), var_0.a.a, vec4<bool>(var_0.a.a.x, true, false, global0.c.x))), func_4(func_5(func_2(Struct_2(Struct_1(var_0.a.a, u_input.a, vec4<bool>(global0.c.x, true, global0.c.x, true)), var_0.b, 0i, var_0.d), true, false).d.x, func_5(var_0.d.x, var_0.b, var_0.a.c).a, func_5(25172u, Struct_1(vec4<bool>(true, true, global0.a.x, false), var_0.d.x, var_0.b.a), vec4<bool>(var_0.a.a.x, false, global0.c.x, var_0.a.a.x)).a.a), vec3<f32>(628f, 478f, _wgslsmith_f_op_f32(-var_1.x)), !var_0.a.c)).a.a.x);
    var var_3 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, -725f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), u_input.c << (vec3<u32>(global0.b, 53555u, 0u) % vec3<u32>(32u))))))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, global0.b, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 61396u), select(1u, global0.b, false), _wgslsmith_add_u32(1u, 1u), u_input.a)) << (4294967295u % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(min(global0.b, u_input.a) >> (~0u % 32u), _wgslsmith_dot_vec3_u32(func_2(Struct_2(Struct_1(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.a.x), global0.b, global0.c), Struct_1(global0.a, global0.b, global0.a), 0i, vec4<u32>(1u, u_input.a, 49701u, 4294967295u)), global0.c.x, global0.a.x).d.xwy, vec3<u32>(u_input.a, u_input.a, global0.b))), func_5(u_input.a, func_2(func_5(24894u, Struct_1(vec4<bool>(false, false, global0.a.x, true), global0.b, vec4<bool>(global0.c.x, false, global0.c.x, false)), vec4<bool>(global0.c.x, global0.a.x, true, global0.c.x)), true, !global0.a.x).a, vec4<bool>(!global0.a.x, global0.a.x, all(global0.a.wzx), false)).b.b), 63643u);
    var var_2 = Struct_2(func_2(Struct_2(Struct_1(select(global0.a, global0.c, false), _wgslsmith_mod_u32(var_1.x, global0.b), global0.a), Struct_1(func_4(Struct_2(Struct_1(global0.c, global0.b, vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), Struct_1(global0.a, u_input.a, global0.c), 0i, vec4<u32>(global0.b, 1u, 0u, 28729u)), vec3<f32>(var_0.x, -770f, -1392f), vec4<bool>(true, true, false, false)), max(4294967295u, 4128u), global0.a), firstLeadingBit(-2147483647i), (vec4<u32>(1u, u_input.a, 1u, global0.b) & vec4<u32>(global0.b, 4294967295u, global0.b, 0u)) << (~vec4<u32>(u_input.a, global0.b, 4294967295u, u_input.a) % vec4<u32>(32u))), true, global0.c.x).b, func_2(func_2(Struct_2(Struct_1(vec4<bool>(false, false, global0.a.x, false), 62895u, global0.c), Struct_1(vec4<bool>(global0.c.x, global0.a.x, global0.c.x, global0.a.x), u_input.a, global0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(56952i, -24428i, -20869i), vec3<i32>(0i, -1i, u_input.c.x)), vec4<u32>(1u, u_input.a, var_1.x, u_input.a)), select(true, true, func_4(Struct_2(Struct_1(global0.c, 4294967295u, vec4<bool>(false, global0.c.x, false, global0.c.x)), Struct_1(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), global0.b, global0.a), -16517i, vec4<u32>(global0.b, 36164u, 1u, var_1.x)), vec3<f32>(114f, var_0.x, var_0.x), vec4<bool>(global0.a.x, false, false, false)).x), false), global0.a.x, true).a, ~(-28126i), _wgslsmith_mod_vec4_u32(max(reverseBits(~vec4<u32>(47135u, 13252u, global0.b, 65781u)), min(vec4<u32>(61669u, var_1.x, global0.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.a, u_input.a, global0.b), vec4<u32>(1u, u_input.a, 43023u, 4294967295u), vec4<u32>(0u, 57255u, var_1.x, global0.b)))), vec4<u32>(global0.b, _wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1, var_1), abs(var_1)), 4294967295u)));
    var var_3 = func_2(Struct_2(func_5(88794u, func_2(Struct_2(Struct_1(vec4<bool>(global0.a.x, false, var_2.b.c.x, global0.a.x), var_1.x, vec4<bool>(var_2.a.a.x, false, true, var_2.b.c.x)), var_2.b, 76767i, var_2.d), var_2.a.a.x, true).a, vec4<bool>(global0.a.x, var_2.b.a.x | true, true, true)).b, Struct_1(select(!vec4<bool>(global0.a.x, true, false, false), select(global0.c, var_2.a.c, false), !global0.a), ~4294967295u, !func_4(Struct_2(var_2.a, var_2.b, -10141i, var_2.d), vec3<f32>(-737f, var_0.x, -324f), global0.c)), var_2.c, vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(0u, var_2.b.b, 4294967295u)), ~_wgslsmith_mod_u32(43106u, var_2.d.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(9416u, 17184u, u_input.a), u_input.a), ~min(var_2.a.b, global0.b))), false, false).a;
    var_0 = vec2<f32>(640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1030f * _wgslsmith_f_op_f32(round(var_0.x))))));
    var_2 = func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(vec4<bool>(true, var_2.b.a.x, global0.c.x, var_3.c.x), u_input.a, var_3.a), var_2.a, 0i, vec4<u32>(global0.b, var_3.b, 95964u, 37029u)), true, true), true, false).a, func_2(Struct_2(var_2.a, var_2.b, var_2.c, ~vec4<u32>(81007u, 0u, var_2.d.x, 30774u)), var_3.a.x, func_2(Struct_2(Struct_1(var_3.c, 4294967295u, global0.c), Struct_1(var_3.a, var_1.x, var_2.a.a), 2147483647i, var_2.d), var_3.a.x, var_2.b.c.x && var_3.a.x).b.a.x).b, var_2.c, ~_wgslsmith_mod_vec4_u32(var_2.d, var_2.d)), (~abs(var_1.x) > 1u) & (!(10896u == global0.b) | var_3.c.x), var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

