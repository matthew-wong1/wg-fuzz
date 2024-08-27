struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: vec2<u32>;

var<private> global1: Struct_4;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(84937u, 77996u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 123564u), vec3<u32>(88376u, 0u, 2869u), vec3<u32>(4294967295u, 4294967295u, 47748u), vec3<u32>(0u, 25548u, 10150u), vec3<u32>(7150u, 103677u, 24575u), vec3<u32>(85670u, 3834u, 1u), vec3<u32>(1u, 1u, 0u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> u32 {
    global1 = Struct_4(firstLeadingBit(global1.a));
    let var_0 = _wgslsmith_add_i32(select(_wgslsmith_dot_vec2_i32(arg_3.b.xx, vec2<i32>(arg_0.a, -2147483647i)) & 23608i, ~(-18352i), arg_3.a.e.x), -arg_3.a.d) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a.b.x, 0u, 4294967295u), vec3<u32>(71105u, 4294967295u, 15654u)), max(vec3<u32>(10385u, 0u, 1u), global1.a)), 1u << (_wgslsmith_sub_u32(0u, global1.a.x) % 32u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, arg_3.a.b.x), countOneBits(vec3<u32>(5213u, global0.x, 39758u))))) % 32u);
    global1 = Struct_4(reverseBits(firstLeadingBit(~abs(u_input.b))));
    var var_1 = Struct_1(vec2<u32>(firstLeadingBit(~(~51438u)), u_input.b.x), global1.a.zy ^ (global1.a.xz | vec2<u32>(global1.a.x, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.c.x)))), arg_3.b.x, select(vec4<bool>(!(!arg_3.a.e.x), all(select(vec3<bool>(arg_0.d.e.x, arg_0.d.e.x, arg_0.d.e.x), vec3<bool>(true, arg_3.a.e.x, arg_0.e.e.x), arg_3.a.e.zyx)), !arg_3.a.e.x, arg_3.a.e.x), arg_0.c, (i32(-1i) * -2147483647i) != -arg_0.e.d));
    var var_2 = vec3<u32>(1u, max(_wgslsmith_dot_vec3_u32(global1.a, ~vec3<u32>(global1.a.x, 1u, 1685u)), ~select(arg_3.a.a.x, 0u, !var_1.e.x)), u_input.b.x & 1u);
    return ~_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(~arg_2, ~0u), abs(~0u), arg_0.b);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: f32) -> Struct_2 {
    global2 = array<vec3<u32>, 9>();
    let var_0 = vec2<u32>(global1.a.x, 4294967295u);
    global1 = Struct_4(vec3<u32>(~(~_wgslsmith_div_u32(global0.x, global0.x)), ~(func_3(Struct_2(-16444i, global0.x, vec4<bool>(false, arg_2, true, arg_2), Struct_1(vec2<u32>(0u, global0.x), vec2<u32>(31305u, 0u), vec2<f32>(292f, 478f), -49288i, vec4<bool>(arg_2, false, arg_2, arg_2)), Struct_1(vec2<u32>(global0.x, 35358u), vec2<u32>(0u, global1.a.x), vec2<f32>(arg_0, 1312f), -1i, vec4<bool>(true, false, true, false))), vec2<f32>(arg_0, arg_1), 37837u, Struct_3(Struct_1(vec2<u32>(4294967295u, global0.x), vec2<u32>(u_input.b.x, 73713u), vec2<f32>(arg_1, -1000f), 14513i, vec4<bool>(arg_2, arg_2, arg_2, arg_2)), vec4<i32>(0i, 24409i, -10000i, -28495i))) >> (_wgslsmith_sub_u32(global0.x, 22790u) % 32u)), global1.a.x));
    global0 = _wgslsmith_sub_vec2_u32(var_0, _wgslsmith_div_vec2_u32(vec2<u32>(max(select(global0.x, 426u, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(15864u, 0u, 8271u, 0u), vec4<u32>(4294967295u, 35097u, 61762u, 35110u))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 93159u, global1.a.x), vec3<u32>(56860u, 1u, u_input.b.x)))), _wgslsmith_clamp_vec2_u32(u_input.b.xx, ~vec2<u32>(global1.a.x, global0.x), vec2<u32>(~var_0.x, ~var_0.x))));
    var var_1 = !(!vec3<bool>(_wgslsmith_f_op_f32(min(arg_1, 117f)) > _wgslsmith_f_op_f32(f32(-1f) * -314f), any(vec3<bool>(false, false, true)), true || (arg_1 > arg_1)));
    return Struct_2(u_input.a, ~global0.x, select(!(!select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(arg_2, var_1.x, false, var_1.x), true)), select(!vec4<bool>(false, arg_2, false, true), !select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(false, var_1.x, true, arg_2), arg_2), vec4<bool>(arg_2, var_1.x & var_1.x, false, false)), -1i == ~min(-1i, u_input.a)), Struct_1(~u_input.b.zx, vec2<u32>(1u, _wgslsmith_add_u32(34984u, 35283u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, 2030f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 2043f)))), i32(-1i) * -firstTrailingBit(-28253i), select(!vec4<bool>(true, false, arg_2, var_1.x), !(!vec4<bool>(var_1.x, false, arg_2, var_1.x)), 29595i <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))), Struct_1(~(~vec2<u32>(4294967295u, u_input.b.x)), firstLeadingBit(global1.a.xz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1366f, arg_3), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 791f) * vec2<f32>(1069f, 1000f)))))), 2147483647i, select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.x, var_1.x, arg_2, arg_2), select(vec4<bool>(var_1.x, false, arg_2, arg_2), vec4<bool>(var_1.x, var_1.x, true, arg_2), vec4<bool>(arg_2, false, var_1.x, false))), select(!vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(arg_2, false, false, var_1.x), select(vec4<bool>(var_1.x, false, arg_2, false), vec4<bool>(var_1.x, arg_2, var_1.x, arg_2), vec4<bool>(arg_2, true, false, var_1.x))), vec4<bool>(arg_2, !arg_2, var_0.x != 26884u, arg_2))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_4(~abs(select(min(vec3<u32>(10600u, arg_1.a.x, arg_0.b), vec3<u32>(arg_1.a.x, u_input.b.x, 35445u)), arg_1.a, !arg_0.e.e.xyx)));
    var var_1 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.d.d, -54937i, u_input.a, u_input.a)) >> (~vec4<u32>(63715u, 1u, global0.x, 1u) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.a, 37891i, -1i, u_input.a)), abs(vec4<i32>(-33486i, arg_0.e.d, 2147483647i, -2147483647i))), ~vec4<i32>(-1i, u_input.a, u_input.a, arg_0.d.d ^ arg_0.e.d));
    var var_2 = abs((u_input.b.xx ^ abs(global1.a.zx)) | vec2<u32>(global1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.b.x, global1.a.x, global0.x), vec3<u32>(u_input.b.x, global1.a.x, 1u)), global1.a.x)));
    var_2 = u_input.b.yx;
    global1 = Struct_4(vec3<u32>(1u, ~(~8151u), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.x, 2861u), _wgslsmith_mult_u32(var_2.x, 12873u)) ^ firstLeadingBit(~1u)));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_4 {
    global1 = func_4(func_2(_wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(-1787f * 1f)), _wgslsmith_f_op_f32(-func_2(1000f, _wgslsmith_f_op_f32(f32(-1f) * -656f), true, _wgslsmith_f_op_f32(796f - 159f)).e.c.x), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1036f, -274f)))), func_4(Struct_2(select(i32(-1i) * -15110i, u_input.a, any(vec3<bool>(false, arg_0, arg_0))), ~6745u, !(!vec4<bool>(arg_0, false, false, true)), Struct_1(~vec2<u32>(4294967295u, 13022u), abs(global1.a.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, 859f)), abs(-1i), select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, false), arg_0)), func_2(_wgslsmith_div_f32(422f, 469f), -144f, true, 1f).d), func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_div_f32(-809f, 363f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -961f)), func_4(Struct_2(-2147483647i, global1.a.x, vec4<bool>(arg_0, arg_0, true, true), Struct_1(vec2<u32>(arg_1.a.x, arg_1.a.x), vec2<u32>(global1.a.x, global0.x), vec2<f32>(-894f, -402f), u_input.a, vec4<bool>(true, true, false, arg_0)), Struct_1(vec2<u32>(109702u, arg_1.a.x), arg_1.a.yy, vec2<f32>(-2351f, 128f), 0i, vec4<bool>(arg_0, arg_0, arg_0, arg_0))), func_4(Struct_2(0i, u_input.b.x, vec4<bool>(arg_0, arg_0, false, false), Struct_1(arg_1.a.yx, vec2<u32>(73356u, 25418u), vec2<f32>(1509f, -706f), u_input.a, vec4<bool>(arg_0, arg_0, true, arg_0)), Struct_1(vec2<u32>(global0.x, 4294967295u), arg_1.a.xz, vec2<f32>(-1988f, -1071f), -24015i, vec4<bool>(false, true, false, arg_0))), Struct_4(vec3<u32>(global0.x, 58188u, 27990u)))))));
    var var_0 = abs(vec2<i32>((~26938i | -u_input.a) & u_input.a, firstTrailingBit(~_wgslsmith_div_i32(u_input.a, -2147483647i))));
    var var_1 = Struct_1(firstTrailingBit(countOneBits(max(global1.a.xz, vec2<u32>(4294967295u, 6554u) ^ vec2<u32>(0u, global1.a.x)))), ~(~(~select(u_input.b.xy, arg_1.a.xz, vec2<bool>(true, arg_0)))), vec2<f32>(1031f, 1f), abs(1i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-188f * -891f))) + 1809f), _wgslsmith_f_op_f32(f32(-1f) * -1173f), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f * 464f)))).c);
    let var_2 = var_1.c.x;
    var var_3 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_mod_i32(~(-31344i), -var_1.d)), 1u, var_1.e, Struct_1((vec2<u32>(1u, global1.a.x) << (~vec2<u32>(48674u, arg_1.a.x) % vec2<u32>(32u))) & (~vec2<u32>(13027u, 0u) ^ vec2<u32>(arg_1.a.x, 3414u)), _wgslsmith_div_vec2_u32(~abs(var_1.a), ~(~vec2<u32>(global0.x, var_1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.c))) - vec2<f32>(498f, var_1.c.x)), -17182i | u_input.a, !(!vec4<bool>(false, var_1.e.x, var_1.e.x, arg_0))), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.b, _wgslsmith_add_vec2_u32(var_1.b, vec2<u32>(var_1.a.x, 1u))), vec2<u32>(arg_1.a.x, 17960u) >> (var_1.b % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(u_input.b.yy, func_2(-555f, var_1.c.x, !var_1.e.x, -1753f).d.a), var_1.c, _wgslsmith_clamp_i32(firstLeadingBit(u_input.a | u_input.a), -24903i, 14643i), select(select(var_1.e, select(vec4<bool>(var_1.e.x, true, true, false), var_1.e, arg_0), !var_1.e), select(var_1.e, select(var_1.e, var_1.e, vec4<bool>(arg_0, true, var_1.e.x, true)), var_1.e), func_2(var_1.c.x, var_1.c.x, false, _wgslsmith_f_op_f32(-var_1.c.x)).d.e)));
    return func_4(func_2(_wgslsmith_f_op_f32(-1458f - var_3.d.c.x), var_1.c.x, any(!vec3<bool>(var_3.d.e.x, var_3.c.x, arg_0)) & ((1i & var_1.d) >= -1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-177f - var_3.e.c.x)))), arg_1);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = ~u_input.b.yz;
    let var_0 = arg_0;
    var var_1 = func_5(true, func_4(func_2(_wgslsmith_f_op_f32(select(1381f, _wgslsmith_f_op_f32(f32(-1f) * -1202f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - 1516f) * _wgslsmith_f_op_f32(round(1190f))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(278f)))), Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, arg_0), 9u)] | select(u_input.b, vec3<u32>(var_0, 12302u, var_0), false))));
    return Struct_1(var_1.a.xy ^ ~var_1.a.yz, ~(~vec2<u32>(var_0, var_1.a.x) >> (vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(var_1.a.zz, var_1.a.zx)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-107f, 253f), vec2<f32>(872f, -940f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, -1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1918f)), _wgslsmith_f_op_f32(-1845f * -1322f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-731f)), _wgslsmith_f_op_f32(round(-350f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-252f, 1228f)))))), -5i, select(vec4<bool>(all(vec3<bool>(true, true, true)), true != (0i > u_input.a), true, func_2(922f, -1913f, true, _wgslsmith_f_op_f32(trunc(2195f))).d.e.x), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), true), true));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 9>();
    global2 = array<vec3<u32>, 9>();
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - -573f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(132f))), arg_0.e.x, arg_0.c.x).d, ~min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 45638i), vec2<i32>(u_input.a, -2147483647i)), -5015i, u_input.a, u_input.a), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, 33616i), vec4<i32>(34708i, arg_0.d, arg_0.d, arg_0.d), vec4<i32>(arg_0.d, u_input.a, arg_0.d, u_input.a))));
    global2 = array<vec3<u32>, 9>();
    global1 = Struct_4(~max(global2[_wgslsmith_index_u32(global1.a.x, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(Struct_2(-2147483647i, 1u, arg_0.e, var_0.a, Struct_1(u_input.b.yy, var_0.a.b, vec2<f32>(277f, arg_0.c.x), u_input.a, vec4<bool>(arg_0.e.x, var_0.a.e.x, true, false))), Struct_4(global1.a)).a.x, _wgslsmith_mod_u32(0u, global0.x)), 9u)]));
    return arg_0;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 9>();
    let var_0 = _wgslsmith_div_u32(~global0.x, _wgslsmith_add_u32(0u, 33246u));
    let var_1 = ~(i32(-1i) * -func_1(~global0.x, 2147483647i).d);
    var var_2 = ~u_input.b.yy;
    global1 = func_4(func_2(-1827f, func_1(u_input.b.x, -21994i).c.x, arg_0.e.x | (func_6(arg_0).c.x <= _wgslsmith_f_op_f32(-arg_0.c.x)), -1071f), func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), 1152f, func_6(func_2(-968f, 372f, arg_0.e.x, arg_0.c.x).e).e.x, 1095f), func_5(~0u > (arg_0.b.x ^ global1.a.x), func_4(func_2(arg_0.c.x, arg_0.c.x, true, 595f), func_5(false, Struct_4(global1.a))))));
    return arg_0;
}

fn func_8(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = u_input.a << (func_5(!arg_1.e.x, func_4(Struct_2(1i & u_input.a, arg_1.b.x & arg_1.b.x, !arg_1.e, arg_1, arg_1), Struct_4(vec3<u32>(arg_0, u_input.b.x, 4294967295u)))).a.x % 32u);
    global0 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(abs(~(~arg_1.a.x)), global0.x));
    global1 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(73489u), ~4294967295u, arg_1.b.x), vec3<u32>(_wgslsmith_mult_u32(4294967295u, global0.x), global0.x, func_2(arg_2, arg_2, false, arg_1.c.x).d.a.x)) << (_wgslsmith_add_vec3_u32(~u_input.b, vec3<u32>(_wgslsmith_mult_u32(arg_1.a.x, u_input.b.x), 0u, abs(1933u))) % vec3<u32>(32u)));
    global1 = Struct_4(global2[_wgslsmith_index_u32(firstTrailingBit(global1.a.x), 9u)]);
    var var_1 = all(!(!(!func_2(1000f, -987f, false, 1049f).d.e)));
    return func_4(Struct_2(var_0, u_input.b.x, vec4<bool>(!arg_1.e.x, func_7(Struct_1(u_input.b.zz, vec2<u32>(global1.a.x, global0.x), arg_1.c, -2147483647i, arg_1.e)).e.x, !func_1(35968u, var_0).e.x, true), func_7(func_7(func_7(Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(1u, global1.a.x), vec2<f32>(331f, arg_1.c.x), arg_1.d, vec4<bool>(arg_1.e.x, false, arg_1.e.x, arg_1.e.x))))), func_6(Struct_1(vec2<u32>(arg_0, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, arg_0), global1.a.yx), _wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(arg_1.c.x, arg_1.c.x)), arg_1.d, arg_1.e))), func_5(!(!select(arg_1.e.x, false, arg_1.e.x)), Struct_4(~vec3<u32>(u_input.b.x, 15758u, global1.a.x) << (vec3<u32>(0u, 1u, global0.x) % vec3<u32>(32u)))));
}

fn func_9(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(~(abs(~arg_1) ^ select(~vec3<u32>(36312u, arg_0.a.x, u_input.b.x), ~vec3<u32>(1u, 1u, global0.x), true)));
    let var_1 = !all(vec4<bool>(false, ~54965u < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.x), global1.a.yy), select(true, false, true), all(vec2<bool>(true, true))));
    var var_2 = func_1(~(~90901u), -62116i);
    var var_3 = var_2.d;
    global0 = ~global1.a.zx;
    return Struct_3(func_1(global1.a.x, var_2.d), vec4<i32>(abs(~(var_2.d | 1i)), func_6(func_2(_wgslsmith_f_op_f32(1000f - 1143f), -236f, var_1, _wgslsmith_f_op_f32(-var_2.c.x)).d).d, func_1(49845u, select(1i, u_input.a, true)).d ^ u_input.a, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(~vec3<u32>(u_input.b.x, global1.a.x, reverseBits(~85184u)));
    let var_0 = func_9(func_8(_wgslsmith_add_u32(global1.a.x, ~(~global0.x)), func_7(func_6(func_1(global1.a.x, 33431i))), 463f), vec3<u32>(func_7(func_1(global0.x & global0.x, u_input.a)).a.x, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x | global0.x, ~4294967295u, global0.x, global0.x), min(vec4<u32>(global1.a.x, u_input.b.x, u_input.b.x, 4294967295u) & vec4<u32>(34372u, 0u, 4024u, u_input.b.x), vec4<u32>(global0.x, u_input.b.x, global1.a.x, u_input.b.x)))));
    var var_1 = var_0.a.e.x;
    let var_2 = Struct_2(~func_6(Struct_1(global1.a.zy, u_input.b.zy, vec2<f32>(1702f, 985f), -63139i, var_0.a.e)).d, firstTrailingBit(89220u), func_7(var_0.a).e, Struct_1(~func_4(func_2(-1362f, var_0.a.c.x, true, 265f), func_8(global1.a.x, Struct_1(u_input.b.yx, global1.a.yy, vec2<f32>(var_0.a.c.x, var_0.a.c.x), -15546i, var_0.a.e), var_0.a.c.x)).a.yy, _wgslsmith_add_vec2_u32(reverseBits(var_0.a.a), min(vec2<u32>(u_input.b.x, var_0.a.a.x), vec2<u32>(var_0.a.b.x, var_0.a.b.x)) ^ u_input.b.xx), vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) - _wgslsmith_f_op_f32(f32(-1f) * -583f))), -1i, !(!func_2(var_0.a.c.x, var_0.a.c.x, false, var_0.a.c.x).e.e)), var_0.a);
    let var_3 = func_9(func_5(any(vec3<bool>(false, var_0.a.e.x && false, var_0.a.e.x)), func_8(_wgslsmith_clamp_u32(~global1.a.x, var_2.d.b.x << (var_0.a.a.x % 32u), func_4(var_2, Struct_4(u_input.b)).a.x), var_2.e, var_2.e.c.x)), vec3<u32>(func_9(Struct_4(reverseBits(vec3<u32>(global1.a.x, 0u, 4294967295u))), abs(~global1.a)).a.b.x, global0.x, 22513u));
    global2 = array<vec3<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

