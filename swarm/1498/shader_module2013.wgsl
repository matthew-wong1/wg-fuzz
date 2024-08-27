struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(270f, 445f, 639f), vec3<f32>(-1000f, -1086f, -397f), vec3<f32>(-244f, -484f, -107f), vec3<f32>(-625f, 321f, -168f), vec3<f32>(-1213f, -681f, -563f), vec3<f32>(-633f, -2570f, -1882f), vec3<f32>(-241f, 262f, -1000f), vec3<f32>(657f, -1000f, -1096f), vec3<f32>(-1316f, -1255f, -422f), vec3<f32>(1413f, -413f, -565f), vec3<f32>(484f, -936f, 787f), vec3<f32>(1221f, 635f, -368f), vec3<f32>(-217f, -261f, -478f), vec3<f32>(1461f, -1000f, -1000f), vec3<f32>(-1335f, 1275f, -239f), vec3<f32>(1468f, 1379f, -531f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = ~firstLeadingBit(-(_wgslsmith_mult_i32(0i, var_1.a) ^ 1i));
    var var_3 = all(select(vec3<bool>(false, !any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true))));
    global2 = var_2;
    return u_input.a.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1244f)) - global0.b)), u_input.b.x, Struct_1(~func_3(Struct_1(global0.a, global0.b)), global0.b), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b + 2328f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_div_f32(global0.b, global0.b))))), Struct_1(_wgslsmith_dot_vec4_i32(min(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, global0.a)) << ((vec4<u32>(31556u, 68267u, 1u, 33295u) << (vec4<u32>(u_input.c.x, 27788u, u_input.b.x, 5916u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(34852i >> (u_input.b.x % 32u), u_input.a.x << (u_input.d % 32u), global0.a & u_input.a.x, 46072i)), global0.b));
    let var_1 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))), 61984u, var_0.a, var_0.e, var_0.e);
    let var_2 = u_input.a.wyx;
    var var_3 = select(vec4<u32>(u_input.c.x, var_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~var_0.b), vec2<u32>(4294967295u, u_input.c.x)), max(firstLeadingBit(u_input.c.x), reverseBits(var_1.b) >> (var_1.b % 32u))), min(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(48956u, var_1.b, 4294967295u, 35887u)), ~vec4<u32>(u_input.c.x, 45818u, var_1.b, var_0.b)) | firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 5903u, var_0.b, var_1.b), vec4<u32>(0u, 24868u, 1u, u_input.d))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(22093u, u_input.c.x)) | ~0u, ~(~54403u), u_input.b.x, 49533u & _wgslsmith_mult_u32(var_0.b, 4294967295u))), vec4<bool>(true, select(true, false, any(vec4<bool>(true, true, true, true))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global2 = 33258i;
    return !vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), any(vec2<bool>(true, false)))), true, false);
}

fn func_1() -> Struct_2 {
    var var_0 = any(!(!vec4<bool>(any(vec4<bool>(false, true, true, false)), true, u_input.c.x >= 78481u, false)));
    let var_1 = -select(-u_input.a.zxx, u_input.a.wzy, select(vec3<bool>(true, true, true), !func_2(), true));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(trunc(global0.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -326f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(934f, -1000f) * global0.b) * _wgslsmith_f_op_f32(-global0.b)), true)), _wgslsmith_f_op_f32(-global0.b), all(vec4<bool>(true, true, true, true))));
    global2 = _wgslsmith_dot_vec3_i32(-reverseBits(~(var_1 ^ vec3<i32>(-9282i, -27873i, 35210i))), var_1);
    var_2 = _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(global0.b - global0.b)))))));
    return Struct_2(Struct_1(53239i, _wgslsmith_f_op_f32(2177f * global0.b)), u_input.d << (1u % 32u), Struct_1(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-794f - -1529f) - _wgslsmith_div_f32(global0.b, -194f)))), Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1155f))))), Struct_1((i32(-1i) * -1807i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(8151u, u_input.b.x, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.d, 0u, u_input.b.x)) % 32u), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(784f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    global2 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.a, arg_0.d.a, _wgslsmith_mod_i32(abs(global0.a), global0.a >> (arg_1.b % 32u))) ^ (abs(_wgslsmith_mult_i32(44382i, -1i)) | _wgslsmith_clamp_i32(global0.a, -arg_1.c.a, firstLeadingBit(arg_1.e.a))), ~(-27791i));
    let var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1643f, -681f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b, -497f) * vec2<f32>(arg_1.c.b, 717f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.b, -174f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -360f)))))));
    global2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 24870i)), ~20118i ^ _wgslsmith_mod_i32(2147483647i, firstLeadingBit(arg_0.c.a))), _wgslsmith_dot_vec4_i32(u_input.a, reverseBits(u_input.a)));
    let var_2 = any(!vec3<bool>(-arg_0.e.a < countOneBits(2147483647i), true | all(vec2<bool>(false, true)), _wgslsmith_div_u32(arg_1.b, u_input.b.x) == _wgslsmith_mult_u32(0u, 81258u)));
    return _wgslsmith_sub_vec4_i32(select(u_input.a, u_input.a, var_2), countOneBits(firstTrailingBit(select(u_input.a, vec4<i32>(-1i, 52530i, 0i, arg_0.c.a), vec4<bool>(var_2, true, false, var_2)))) ^ select(firstTrailingBit(vec4<i32>(53509i, arg_2, -2147483647i, -18845i)), u_input.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = ~(func_4(Struct_2(Struct_1(32648i, 452f), 0u, Struct_1(global0.a, 1775f), Struct_1(2147483647i, global0.b), Struct_1(global0.a, 710f)), func_1(), global0.a) >> (((~vec4<u32>(var_0.x, u_input.b.x, var_0.x, var_0.x) | vec4<u32>(var_0.x, 1u, var_0.x, 4294967295u)) << (~vec4<u32>(u_input.d, u_input.c.x, var_0.x, 39583u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = vec2<bool>(true, any(select(vec4<bool>(var_1.x <= global0.a, true, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true))));
    var var_3 = func_1();
    var_3 = Struct_2(var_3.e, ~1u, Struct_1(func_4(func_1(), Struct_2(func_1().d, 21784u, var_3.a, func_1().a, var_3.a), 35599i).x, _wgslsmith_f_op_f32(-100f + -1864f)), Struct_1(var_3.d.a, -2264f), var_3.c);
    let var_4 = -min(1i, 0i);
    var var_5 = _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(-47802i << (u_input.b.x % 32u), var_1.x ^ 1i, var_3.c.a, -1i), u_input.a, select(vec4<bool>(true, false, var_2.x, true), !vec4<bool>(var_2.x, true, var_2.x, var_2.x), var_2.x))), select(~(vec4<i32>(43340i, -15699i, -129i, var_4) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_3.b, 20754u, var_0.x, 0u), vec4<u32>(74628u, 9522u, var_0.x, u_input.b.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(select(u_input.a, u_input.a, var_2.x) & vec4<i32>(u_input.a.x, global0.a, var_4, -9708i), u_input.a), !(var_2.x & false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, ~max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), select(var_3.b, 32082u, true)), firstLeadingBit(vec4<u32>(~var_3.b, 10572u & u_input.b.x, var_0.x, _wgslsmith_div_u32(0u, 12239u) >> (~u_input.c.x % 32u))), global0.b);
}

