struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-4334i, 4954i), 859u, i32(-2147483648), vec4<f32>(-885f, -144f, 1000f, -364f), vec2<u32>(0u, 51857u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global0 = Struct_1(max(vec2<i32>(max(-1i, -2147483647i) << (global0.e.x % 32u), arg_2.c), -global0.a), abs(_wgslsmith_mult_u32(0u, u_input.d.x)), ~2147483647i, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(round(1400f))), -486f, arg_1)), global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-718f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1153f)))), global0.d.x), select(abs(_wgslsmith_div_vec2_u32(vec2<u32>(37214u, 49019u), arg_2.e)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 24956u), global0.e, vec2<u32>(5133u, arg_2.e.x)), ~arg_2.e), all(vec4<bool>(false, arg_1, arg_1, arg_1)) && true) >> ((arg_2.e ^ vec2<u32>(0u, arg_2.e.x)) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-357f)) * global0.d.x))));
    var var_1 = arg_2.c;
    var var_2 = Struct_1(~arg_2.a << (arg_2.e % vec2<u32>(32u)), 44935u, ~(i32(-1i) * -2922i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(step(477f, global0.d.x)), 831f, arg_2.d.x), arg_2.d, !(!select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1))))), global0.e);
    let var_3 = !(!vec4<bool>(any(vec4<bool>(arg_1, false, true, false)) != select(true, arg_1, arg_1), select(arg_1, arg_0 > var_2.c, true), arg_1, false));
    return vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2.d.x)), -786f)))), arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1965f, -108f, false)) + _wgslsmith_f_op_f32(-1000f * var_2.d.x)))) - _wgslsmith_f_op_f32(ceil(-308f))), -395f);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(select(_wgslsmith_sub_vec2_i32(u_input.e, global0.a), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global0.c, 537i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, -46656i), u_input.e), _wgslsmith_div_vec2_i32(global0.a, u_input.e)), !any(vec4<bool>(false, false, true, true))) << ((vec2<u32>(3860u, ~4294967295u) & ~select(global0.e, vec2<u32>(10874u, u_input.a.x), vec2<bool>(true, true))) % vec2<u32>(32u)), ~global0.e.x, ~(-2147483647i), _wgslsmith_f_op_vec4_f32(func_3(~u_input.e.x, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), Struct_1(-(vec2<i32>(-9399i, -1342i) >> (u_input.a.yz % vec2<u32>(32u))), global0.e.x, _wgslsmith_dot_vec2_i32(abs(u_input.e), _wgslsmith_div_vec2_i32(vec2<i32>(47141i, arg_0), vec2<i32>(global0.a.x, u_input.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.d))), ~vec2<u32>(38988u, 107026u)))), vec2<u32>(~(~firstLeadingBit(0u)), ~(~(~u_input.c.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_1(u_input.e >> (vec2<u32>(~u_input.b.x, func_2(~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, arg_1.b.d.x, arg_1.b.d.x, global0.d.x))).b) % vec2<u32>(32u)), _wgslsmith_add_u32(min(arg_3.a.e.x, ~0u), _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_3.b.e.x, u_input.d.x), 1u)), countOneBits(arg_0.x) & ~_wgslsmith_dot_vec2_i32(u_input.e, arg_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.d.x), _wgslsmith_f_op_f32(min(-1064f, -385f)), _wgslsmith_f_op_f32(global0.d.x * -176f), _wgslsmith_f_op_f32(arg_3.c.a.d.x * 1010f)), arg_1.a.d)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_3.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.b.d.x, 484f, -626f, -435f) + global0.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, global0.d.x, arg_1.a.d.x, arg_1.b.d.x)))))), global0.e);
    var var_1 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = func_2(global0.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.d)))), vec4<f32>(arg_1.a.d.x, var_0.d.x, -791f, arg_3.c.a.d.x))));
    var var_2 = u_input.a.wyw >> (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.b.b, 40390u, global0.e.x, arg_3.a.e.x)), ~vec4<u32>(1u, 0u, arg_1.c.d, 1u)), global0.b), 49013u << (_wgslsmith_sub_u32(~1u, ~1u) % 32u), var_0.b) % vec3<u32>(32u));
    var var_3 = any(select(vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, true)), true, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, -18989i < arg_2.x, true), true), select(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, false), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), false, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, all(vec4<bool>(true, true, true, false))))));
    return _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) * _wgslsmith_div_f32(-196f, var_0.d.x)) + arg_3.b.d.x), true)) >= -595f;
}

fn func_1() -> Struct_1 {
    let var_0 = !func_4(vec4<i32>(29608i, _wgslsmith_div_i32(u_input.e.x ^ global0.a.x, ~global0.c), reverseBits(-1i), -26047i), Struct_3(func_2(select(u_input.e.x, -82i, false), vec4<f32>(250f, global0.d.x, -710f, -429f)), func_2(u_input.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 114f, global0.d.x, global0.d.x))), Struct_2(func_2(u_input.e.x, global0.d), func_2(u_input.e.x, global0.d), func_2(67377i, global0.d), u_input.b.x, func_2(52406i, vec4<f32>(global0.d.x, -643f, global0.d.x, global0.d.x)))), global0.a, Struct_3(Struct_1(u_input.e | vec2<i32>(-4257i, 60895i), 38796u, -global0.c, vec4<f32>(global0.d.x, 1000f, global0.d.x, global0.d.x), countOneBits(u_input.a.wz)), Struct_1(firstTrailingBit(u_input.e), firstTrailingBit(8676u), -u_input.e.x, vec4<f32>(global0.d.x, 1361f, global0.d.x, 1565f), max(vec2<u32>(1u, u_input.a.x), global0.e)), Struct_2(Struct_1(global0.a, 4294967295u, u_input.e.x, vec4<f32>(global0.d.x, 600f, -1000f, global0.d.x), u_input.b), func_2(u_input.e.x, global0.d), Struct_1(global0.a, 53199u, -2147483647i, vec4<f32>(739f, global0.d.x, -1076f, -1064f), vec2<u32>(3205u, u_input.c.x)), 4294967295u, Struct_1(vec2<i32>(u_input.e.x, -2147483647i), global0.b, global0.a.x, vec4<f32>(-1659f, -602f, global0.d.x, -1000f), vec2<u32>(global0.e.x, 79984u)))));
    global0 = func_2(1i, global0.d);
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.e) & vec2<i32>(-7361i, u_input.e.x), func_2(u_input.e.x, _wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(-1560f, global0.d.x, global0.d.x, 1320f))).a), ~(-select(vec2<i32>(u_input.e.x, 35806i), vec2<i32>(global0.c, -2147483647i), vec2<bool>(false, var_0)))), u_input.b.x, (19222i | global0.c) << (76727u % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), -1728f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2907f, 1000f, global0.d.x, global0.d.x), global0.d))))), ~(~vec2<u32>(21807u, _wgslsmith_mult_u32(4294967295u, global0.b))));
    let var_1 = !select(select(!vec2<bool>(false, var_0), !vec2<bool>(true, var_0), var_0), !select(vec2<bool>(false, true), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), !var_0);
    let var_2 = Struct_3(func_2(global0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d - global0.d))), func_2(i32(-1i) * -2147483647i, vec4<f32>(global0.d.x, global0.d.x, 1214f, global0.d.x)), Struct_2(Struct_1(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, 6963i), global0.a, u_input.e), u_input.a.x, -global0.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -1189f, -152f, -992f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x) - global0.d)), u_input.b), Struct_1(u_input.e, _wgslsmith_dot_vec2_u32(global0.e >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), max(vec2<u32>(u_input.c.x, 113042u), vec2<u32>(50450u, 1u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2171i, u_input.e.x), vec2<i32>(1i, u_input.e.x)), _wgslsmith_add_vec2_i32(u_input.e, global0.a)), vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), _wgslsmith_f_op_f32(-576f + -122f), _wgslsmith_f_op_f32(1000f * global0.d.x), 1f), ~(~vec2<u32>(36514u, global0.e.x))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(global0.c, 0i), -2147483647i), 0u, select(global0.a.x, i32(-1i) * -41145i, var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, global0.d.x, global0.d.x, -1350f) - vec4<f32>(2167f, 1987f, -1327f, 227f)))), vec2<u32>(_wgslsmith_sub_u32(38056u, global0.b), 0u)), select(global0.e.x, global0.e.x, true || var_1.x) | 48315u, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 1864i), vec4<i32>(1i, 24821i, u_input.e.x, 2147483647i)) << (~u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(func_3(reverseBits(0i), !var_0, func_2(6042i, global0.d))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-10815i >> (_wgslsmith_clamp_u32(global0.b, max(53939u, global0.b), global0.e.x) % 32u), global0.a.x, -global0.a.x), ~abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(-29578i, 0i, global0.c), vec3<i32>(u_input.e.x, global0.c, global0.a.x))));
    let var_1 = func_1();
    var var_2 = global0.b;
    global0 = var_1;
    let var_3 = Struct_1(~(-min(vec2<i32>(global0.a.x, -6558i), vec2<i32>(var_1.a.x, u_input.e.x))) | abs(func_2(-104410i, _wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(986f, var_1.d.x, global0.d.x, var_1.d.x))).a), 4294967295u, -2147483647i, vec4<f32>(1291f, _wgslsmith_f_op_f32(1000f + var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2480f) - -414f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(991f)))), var_1.d.x), ~max(_wgslsmith_add_vec2_u32(min(u_input.c.yw, u_input.c.wz), firstLeadingBit(var_1.e)), u_input.c.yw));
    var_0 = ~(~max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, var_1.c, -5709i), vec3<i32>(24249i, 2147483647i, global0.c), true), min(vec3<i32>(u_input.e.x, global0.c, 14547i), vec3<i32>(var_1.c, var_1.a.x, 61028i))), vec3<i32>(-global0.c, _wgslsmith_sub_i32(var_1.a.x, var_1.a.x), -10632i)));
    let var_4 = any(vec3<bool>(false, ~(~10156u) == global0.e.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(26254u | _wgslsmith_add_u32(28581u, ~_wgslsmith_add_u32(4294967295u, u_input.a.x)), -func_2(-u_input.e.x << (~u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-628f, var_3.d.x, global0.d.x, -2631f) - vec4<f32>(var_3.d.x, var_3.d.x, global0.d.x, -230f))).a);
}

