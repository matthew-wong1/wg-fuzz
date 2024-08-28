struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<f32>, 4>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(717f, any(vec4<bool>(select(true, true, any(vec3<bool>(true, true, true))), all(vec4<bool>(false, false, false, true)), !(1u > u_input.a.x), true)), -u_input.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(17624u, 4u)])), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4446u, 4u)]))), vec4<f32>(-1296f, -192f, -1526f, _wgslsmith_f_op_f32(max(1000f, -1605f))))), Struct_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), -firstLeadingBit(select(vec3<i32>(u_input.d.x, -1i, 2147483647i), u_input.d, vec3<bool>(true, false, true))), ~firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.c)) | max(reverseBits(vec4<u32>(u_input.a.x, global0.x, u_input.c, 1u)), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b)), -292i, !vec2<bool>(false, all(vec3<bool>(false, true, true)))));
    var var_1 = vec3<i32>(min(u_input.d.x ^ 1i, u_input.d.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0.c), -vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x)) ^ (var_0.e.b.x ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, 630i), var_0.e.b), min(vec3<i32>(var_0.c, 1i, -27071i), u_input.d))), _wgslsmith_add_i32(-_wgslsmith_add_i32(~u_input.d.x, min(var_0.e.d, u_input.d.x)), 0i));
    var var_2 = ~_wgslsmith_add_u32(~min(reverseBits(var_0.e.c.x), _wgslsmith_add_u32(1u, global0.x)), _wgslsmith_add_u32(4294967295u, u_input.a.x));
    global0 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, u_input.c, countOneBits(global0.x), firstTrailingBit(8000u)), _wgslsmith_mod_vec4_u32(var_0.e.c, _wgslsmith_mod_vec4_u32(var_0.e.c, vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x)))) | var_0.e.c);
    global0 = var_0.e.c >> (var_0.e.c % vec4<u32>(32u));
    return firstTrailingBit(countOneBits(min(var_0.c, ~11399i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec4<f32>, 4>();
    let var_0 = false;
    global1 = array<vec4<f32>, 4>();
    var var_1 = ~(-1i);
    global0 = vec4<u32>(global0.x, ~0u >> (~(_wgslsmith_sub_u32(global0.x, u_input.b) & firstLeadingBit(4294967295u)) % 32u), ~countOneBits(~u_input.b), u_input.a.x);
    return Struct_1(vec4<bool>(select(var_0, var_0, _wgslsmith_sub_i32(u_input.d.x, 14551i) == u_input.d.x), any(!(!vec3<bool>(false, var_0, false))), true, false), -u_input.d, ~reverseBits(~vec4<u32>(0u, 15126u, u_input.c, 37602u)), func_3() & u_input.d.x, select(select(vec2<bool>(false, var_0 || true), select(vec2<bool>(false, true), !vec2<bool>(false, var_0), vec2<bool>(var_0, true)), vec2<bool>(arg_0 == 689f, any(vec4<bool>(var_0, var_0, var_0, var_0)))), !(!vec2<bool>(var_0, true)), vec2<bool>(false, -82476i > u_input.d.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_2 {
    var var_0 = arg_1.a.c;
    var_0 = vec4<u32>(global0.x, var_0.x, select(u_input.a.x, arg_0, -_wgslsmith_sub_i32(1i, u_input.d.x) >= func_2(_wgslsmith_f_op_f32(f32(-1f) * -773f)).d), arg_1.a.c.x);
    global1 = array<vec4<f32>, 4>();
    global0 = vec4<u32>(min(reverseBits(_wgslsmith_add_u32(global0.x, arg_1.a.c.x)), 4294967295u), var_0.x, ~(~arg_0) | func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1107f, -483f)) * _wgslsmith_f_op_f32(min(-121f, -1808f)))).c.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(114f, 653f))) * _wgslsmith_f_op_f32(f32(-1f) * -949f))).c.x);
    global0 = arg_1.a.c;
    return Struct_2(1281f, true, 10536i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(min(-181f, -655f))), _wgslsmith_f_op_f32(sign(761f)), 1413f, 1f)), func_2(-208f));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_5 {
    let var_0 = ~(firstTrailingBit(countOneBits(vec4<i32>(arg_1.c, -21919i, arg_1.e.d, 0i)) >> (~arg_1.e.c % vec4<u32>(32u))) | -vec4<i32>(u_input.d.x, u_input.d.x, 1i, -46853i));
    var var_1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(u_input.c, Struct_5(arg_1.e)).d.x, 417f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(991f, -475f) - arg_2)), arg_1.b))).a;
    var var_2 = func_4(_wgslsmith_div_u32(_wgslsmith_mod_u32(57648u, ~firstTrailingBit(arg_1.e.c.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(49430u, arg_1.e.c.x), ~u_input.c) | select(4294967295u, 37339u ^ arg_1.e.c.x, false & arg_1.b)), Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_2) - _wgslsmith_f_op_f32(exp2(arg_2))))));
    var_1 = !(!vec4<bool>(true, arg_1.b, !(!arg_1.e.a.x), arg_1.e.a.x));
    let var_3 = var_2.d.x;
    return Struct_5(func_4(min(~(~0u), 27785u), Struct_5(arg_1.e)).e);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(984f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-820f)));
    global1 = array<vec4<f32>, 4>();
    var var_2 = Struct_3(func_2(var_0), true, !any(select(vec3<bool>(true, arg_2.e.e.x, false), arg_1.a.a.yzz, arg_2.e.a.ywx)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, arg_2.c, -22512i, arg_2.c), vec4<i32>(arg_1.a.b.x, 0i, 0i, u_input.d.x)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.d.x, arg_2.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_1.a.d), vec2<i32>(arg_0.a.x, -21661i)), ~arg_0.a.x)) << (vec4<u32>(4120u, _wgslsmith_mod_u32(1u, global0.x), 4294967295u, 0u) % vec4<u32>(32u)), func_5(var_1, Struct_2(var_1, arg_1.a.e.x, _wgslsmith_sub_i32(arg_0.a.x, reverseBits(u_input.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, var_1, arg_0.b, 645f) - vec4<f32>(-239f, arg_2.d.x, 281f, -1434f)) - vec4<f32>(-225f, arg_0.b, var_0, 211f)), func_5(_wgslsmith_f_op_f32(trunc(253f)), func_4(arg_2.e.c.x, Struct_5(arg_2.e)), 334f).a), var_0).a);
    global0 = ~(~(vec4<u32>(arg_1.a.c.x, 23754u, var_2.e.c.x, abs(u_input.b)) & vec4<u32>(firstTrailingBit(global0.x), 11477u, _wgslsmith_dot_vec4_u32(arg_2.e.c, arg_1.a.c), func_2(600f).c.x)));
    return Struct_1(!arg_1.a.a, arg_0.a.zxx, arg_2.e.c, -1i, !vec2<bool>(false, all(vec2<bool>(true, arg_1.a.e.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    var var_0 = func_6(Struct_4(vec4<i32>(_wgslsmith_mult_i32(-24735i, _wgslsmith_add_i32(-26152i, -32250i)), abs(countOneBits(u_input.d.x)), -(u_input.d.x | u_input.d.x), u_input.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1412f)), -1841f), _wgslsmith_f_op_f32(floor(-416f)), !arg_2.x))), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-2895f - 1067f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(960f * -1118f), 1000f))), func_4(abs(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(13036u, 4294967295u))), Struct_5(func_2(-1329f))), func_4(1u, Struct_5(func_2(-759f))).d.x), func_4(_wgslsmith_sub_u32(abs(u_input.b), func_5(_wgslsmith_f_op_f32(sign(194f)), Struct_2(-790f, true, 19780i, global1[_wgslsmith_index_u32(u_input.b, 4u)], Struct_1(arg_0, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.b, 67009u, 4294967295u, 4294967295u), u_input.d.x, vec2<bool>(true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1542f)).a.c.x), Struct_5(func_4(7843u >> (1u % 32u), Struct_5(Struct_1(arg_0, u_input.d, vec4<u32>(u_input.a.x, 19446u, 53013u, 20534u), arg_1, arg_2.zx))).e)));
    global0 = ~select(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 4294967295u, 0u), countOneBits(var_0.c))), var_0.c, var_0.a);
    let var_1 = Struct_3(Struct_1(var_0.a, var_0.b, ~((var_0.c ^ vec4<u32>(global0.x, global0.x, global0.x, var_0.c.x)) | func_6(Struct_4(vec4<i32>(arg_1, var_0.b.x, arg_1, 27914i), 1124f), Struct_5(Struct_1(var_0.a, vec3<i32>(-19743i, u_input.d.x, u_input.d.x), var_0.c, 2147483647i, arg_2.yx)), Struct_2(352f, var_0.a.x, 0i, global1[_wgslsmith_index_u32(u_input.c, 4u)], Struct_1(vec4<bool>(true, false, arg_2.x, var_0.a.x), var_0.b, var_0.c, var_0.d, var_0.a.xz))).c), select(u_input.d.x, u_input.d.x, false), !(!vec2<bool>(arg_2.x, true))), true, true, -vec4<i32>(u_input.d.x, func_6(Struct_4(vec4<i32>(79674i, 1777i, 10529i, -1i), 1311f), Struct_5(Struct_1(vec4<bool>(arg_0.x, false, arg_2.x, var_0.a.x), u_input.d, vec4<u32>(1u, 4294967295u, global0.x, var_0.c.x), 10583i, arg_0.wz)), func_4(global0.x, Struct_5(Struct_1(vec4<bool>(true, arg_0.x, var_0.e.x, arg_0.x), vec3<i32>(u_input.d.x, arg_1, arg_1), vec4<u32>(1u, 415u, 45167u, 55992u), u_input.d.x, arg_0.yx)))).b.x, func_2(-1610f).b.x, _wgslsmith_div_i32(-2147483647i, min(u_input.d.x, arg_1))), Struct_1(!(!(!arg_0)), u_input.d, vec4<u32>(_wgslsmith_clamp_u32(global0.x, global0.x, u_input.b), 4294967295u, ~u_input.b, 72632u) ^ vec4<u32>(6661u, ~var_0.c.x, min(var_0.c.x, u_input.b), ~3963u), ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(7478i, -2182i, 32453i, u_input.d.x)), firstTrailingBit(vec4<i32>(2147483647i, -45267i, -1i, -1i))), func_2(-254f).e));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-232f - 176f), 412f, 1000f, _wgslsmith_f_op_f32(floor(-625f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, 1058f, 577f, -896f) + vec4<f32>(1104f, 1210f, 507f, 1003f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, 557f, 198f, 246f)) - _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)] + vec4<f32>(946f, -293f, -1392f, -1276f))))));
    let var_3 = vec3<i32>(-32373i, func_3(), -arg_1);
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(102f)) - _wgslsmith_f_op_f32(var_2.x + var_2.x))))), Struct_2(-261f, arg_2.x, -var_3.x, global1[_wgslsmith_index_u32(5414u, 4u)], func_4(_wgslsmith_add_u32(_wgslsmith_sub_u32(64634u, 23057u), 2814u | var_0.c.x), func_5(_wgslsmith_f_op_f32(floor(-348f)), func_4(u_input.b, Struct_5(var_1.e)), var_2.x)).e), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), 4294967295u), ~(~var_0.c.zy)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * _wgslsmith_f_op_f32(-var_2.x)), func_4(global0.x >> (var_0.c.x % 32u), func_5(769f, Struct_2(611f, false, arg_1, global1[_wgslsmith_index_u32(u_input.c, 4u)], var_1.a), var_2.x)), var_2.x)).a).a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(vec4<u32>(u_input.b, 46781u, reverseBits(_wgslsmith_mod_u32(0u, global0.x)), func_1(vec4<bool>(true, select(true, true, true), true, true), -(u_input.d.x >> (0u % 32u)), vec3<bool>(any(vec3<bool>(false, true, true)), true, u_input.d.x == -1i))));
    global0 = vec4<u32>(func_1(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), 1i, !func_2(964f).a.xxz), ~abs(global0.x), abs(u_input.b), 0u);
    global0 = vec4<u32>(_wgslsmith_sub_u32(~(~(global0.x << (global0.x % 32u))), func_5(-372f, func_4(u_input.c, Struct_5(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c, 0u, u_input.a.x, u_input.c), 2147483647i, vec2<bool>(false, false)))), -426f).a.c.x & global0.x), 67500u, ~(1u << ((115412u & u_input.a.x) % 32u)), ~(_wgslsmith_div_u32(countOneBits(u_input.a.x), 4294967295u) & _wgslsmith_dot_vec2_u32(~u_input.a, min(vec2<u32>(u_input.c, 1u), vec2<u32>(global0.x, global0.x)))));
    global0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.c, ~_wgslsmith_add_u32(0u, 0u), u_input.c, _wgslsmith_sub_u32(countOneBits(global0.x), firstTrailingBit(4294967295u))), ~firstTrailingBit(~vec4<u32>(global0.x, 0u, global0.x, global0.x)));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(805f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-523f)) - 539f)), true || (u_input.d.x == 9345i), u_input.d.x, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(func_6(Struct_4(firstLeadingBit(vec4<i32>(-52078i, u_input.d.x, -39446i, 37383i)), -135f), func_5(_wgslsmith_f_op_f32(f32(-1f) * -216f), Struct_2(-1000f, true, u_input.d.x, vec4<f32>(761f, 424f, 105f, 1000f), Struct_1(vec4<bool>(false, false, false, false), u_input.d, vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.b), -1i, vec2<bool>(false, false))), _wgslsmith_f_op_f32(1975f * -150f)), func_4(_wgslsmith_div_u32(4294967295u, 4294967295u), func_5(-1561f, Struct_2(-172f, true, 1i, global1[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(vec4<bool>(true, true, false, true), u_input.d, vec4<u32>(u_input.c, 1u, global0.x, global0.x), -4064i, vec2<bool>(true, true))), -2015f))).c.x, 4u)]), func_4(28652u, Struct_5(Struct_1(vec4<bool>(true, false, false, true), u_input.d >> (global0.wyx % vec3<u32>(32u)), vec4<u32>(1u, global0.x, 0u, 4294967295u) ^ vec4<u32>(7807u, 12626u, 64835u, 0u), 1i, vec2<bool>(true, false)))).e);
    var var_1 = false;
    let var_2 = func_4(4294967295u ^ ~(_wgslsmith_add_u32(u_input.a.x, 1u) & 36551u), Struct_5(var_0.e));
    global0 = var_0.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1743f * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), var_2.e.e.x)), _wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, -981f))), _wgslsmith_sub_vec3_i32(vec3<i32>(-6397i, _wgslsmith_mod_i32(var_0.c, func_4(u_input.b, Struct_5(var_0.e)).e.b.x), _wgslsmith_mult_i32(~var_2.c, -u_input.d.x)), ~(_wgslsmith_sub_vec3_i32(var_2.e.b, var_0.e.b) << (vec3<u32>(24768u, global0.x, 0u) % vec3<u32>(32u)))), var_2.e.b.xx);
}

