struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_4(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, arg_2.b.x, arg_2.b.x, -1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.b.x, -612f, arg_0.x, arg_0.x))), false)))), 1u);
    var var_1 = ~44386i;
    let var_2 = reverseBits(1i);
    let var_3 = (u_input.d & u_input.d) ^ vec2<u32>(arg_3.d, _wgslsmith_mult_u32(~arg_1, 97778u) >> (0u % 32u));
    global0 = array<bool, 8>();
    return -1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = ~firstTrailingBit(~arg_1.c.zx | u_input.a.xz);
    let var_1 = arg_1;
    let var_2 = any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(67868u, 8u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.a, 8u)], true, global0[_wgslsmith_index_u32(u_input.b, 8u)])), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(5251u, 8u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 8u)])), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(32911u, 1u, u_input.d.x), 8u)], -10946i > var_0.x, global0[_wgslsmith_index_u32(~arg_1.d, 8u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(40165u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]))), vec4<bool>(true, false & global0[_wgslsmith_index_u32(u_input.b, 8u)], true, global0[_wgslsmith_index_u32(u_input.b, 8u)] != true))) & all(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(35999u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)])), select(vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), true), false));
    var var_3 = true;
    var var_4 = reverseBits(select(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d, arg_1.d, u_input.d.x, 4294967295u), vec4<u32>(u_input.b, u_input.d.x, arg_1.b, 0u)) << (vec4<u32>(u_input.d.x, 20894u, arg_1.b, u_input.b) % vec4<u32>(32u))), vec4<u32>(~67947u, u_input.b, var_1.e << (u_input.b % 32u), firstTrailingBit(u_input.d.x)) ^ max(~vec4<u32>(60182u, 38577u, u_input.d.x, arg_1.d), _wgslsmith_mult_vec4_u32(vec4<u32>(38627u, 33052u, 0u, u_input.d.x), vec4<u32>(1u, u_input.d.x, 63027u, arg_1.b))), global0[_wgslsmith_index_u32(0u, 8u)]));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) + 1040f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1925f)) * 809f) + _wgslsmith_f_op_f32(f32(-1f) * -711f)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_i32(select(vec2<i32>(func_3(vec4<f32>(-731f, 721f, 558f, 495f), arg_0, Struct_4(Struct_2(Struct_1(arg_0, u_input.b, u_input.a, 66988u, arg_0), Struct_1(arg_0, 1u, vec3<i32>(-2147483647i, 1i, u_input.c.x), 34413u, arg_0), vec2<f32>(-281f, 203f), 6762i, false), vec4<f32>(145f, 357f, -1000f, -1251f), u_input.b), Struct_1(0u, u_input.b, u_input.a, arg_0, arg_1.x)), reverseBits(-1i)), u_input.a.xz, global0[_wgslsmith_index_u32(~1u, 8u)]), _wgslsmith_add_vec2_i32(u_input.c, u_input.c)), Struct_1(arg_1.x, u_input.b ^ ~arg_1.x, select(vec3<i32>(3090i, u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, -76997i, u_input.c.x))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, -17093i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))), global0[_wgslsmith_index_u32(1u, 8u)]), ~_wgslsmith_add_u32(49440u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 14056u, u_input.d.x, u_input.d.x), vec4<u32>(58324u, arg_1.x, arg_1.x, arg_0))), arg_0 >> (~u_input.b % 32u)), vec4<i32>(52981i, -u_input.c.x, u_input.c.x | 12449i, 18003i), vec4<i32>(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(39273i, u_input.c.x) >> (arg_1 % vec2<u32>(32u)), ~u_input.a.xy), _wgslsmith_dot_vec3_i32(~u_input.a, min(max(u_input.a, u_input.a), ~u_input.a)), 20253i)));
    let var_1 = ~vec2<i32>(2147483647i, -48902i);
    var var_2 = arg_1.x;
    return Struct_2(Struct_1(13905u, _wgslsmith_clamp_u32(arg_0, reverseBits(arg_0), ~4294967295u), u_input.a, _wgslsmith_clamp_u32(select(max(arg_0, arg_0), abs(69418u), true), min(_wgslsmith_add_u32(arg_0, arg_0), 65434u), countOneBits(15651u >> (1u % 32u))), select(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(40518u, 1u)), 4095u, any(!vec4<bool>(global0[_wgslsmith_index_u32(52268u, 8u)], global0[_wgslsmith_index_u32(36838u, 8u)], global0[_wgslsmith_index_u32(arg_1.x, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)])))), Struct_1(_wgslsmith_mult_u32(~0u, u_input.b), _wgslsmith_mult_u32(~arg_1.x, 1492u), select(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c.x, -43924i, var_1.x))), ~vec3<i32>(-20658i, var_1.x, var_1.x), !global0[_wgslsmith_index_u32(1u, 8u)]), min(arg_0, 1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(55098u, u_input.b, arg_0) << (vec3<u32>(u_input.b, 1u, 4294967295u) % vec3<u32>(32u)), min(vec3<u32>(arg_1.x, u_input.d.x, 17440u), vec3<u32>(u_input.b, arg_0, arg_1.x))), ~arg_1.x)), vec2<f32>(815f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(var_0)))), 0i, !any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)] | true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 1u), 8u)], true, select(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false, global0[_wgslsmith_index_u32(arg_0, 8u)]))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.b, arg_0.b), u_input.b) | _wgslsmith_clamp_u32(u_input.d.x, ~firstTrailingBit(1u), firstLeadingBit(max(0u, 25437u))), _wgslsmith_add_vec2_u32(~u_input.d, u_input.d));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x) + -480f)));
    let var_2 = Struct_3(all(vec2<bool>(true, true)), 9876i & (arg_0.c.x & _wgslsmith_add_i32(var_0.d, -var_0.d)));
    let var_3 = abs(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a), vec3<i32>(var_0.b.c.x, var_2.b, 0i)), func_2(~122607u, max(u_input.d, u_input.d)).b.c.x), 27389i, ~28195i));
    let var_4 = ~2147483647i;
    return Struct_3(arg_0.e != ~(~(~var_0.a.b)), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d, 1i, var_4, 2147483647i), vec4<i32>(-1i, -45453i, var_4, 66897i)), countOneBits(vec4<i32>(u_input.c.x, 2147483647i, -18906i, -58103i))), var_0.d));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = 34781u;
    var_0 = select(u_input.d.x, 1u, all(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false, true, false)))));
    var_0 = ~0u;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, u_input.a.x, 0i, arg_1), vec4<i32>(2147483647i, _wgslsmith_div_i32(arg_1, _wgslsmith_mult_i32(arg_1, arg_1)), -30175i, arg_0.b));
    var_0 = ~u_input.d.x;
    return Struct_2(func_2(u_input.b, ~u_input.d).a, func_2(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15681u, 72117u, 16624u), vec3<u32>(u_input.d.x, 1u, u_input.d.x)), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.d.x)), ~max(u_input.d, u_input.d))).b, vec2<f32>(arg_3, 1628f), u_input.c.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x), vec4<u32>(72409u, u_input.d.x, u_input.b, u_input.b)) & ~u_input.b) > (abs(firstLeadingBit(u_input.d.x)) ^ u_input.d.x));
}

fn func_6(arg_0: Struct_2) -> f32 {
    global0 = array<bool, 8>();
    var var_0 = func_5(func_1(func_2(u_input.d.x, ~min(u_input.d, u_input.d)).a), arg_0.d, select(global0[_wgslsmith_index_u32(~reverseBits(u_input.d.x), 8u)], countOneBits(firstLeadingBit(u_input.c.x)) <= u_input.c.x, arg_0.e), _wgslsmith_f_op_f32(-334f * -1164f));
    let var_1 = var_0.e;
    var_0 = func_5(func_1(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.e, 4294967295u, 0u), vec3<u32>(var_0.a.d, 5170u, u_input.b)) >> (26388u % 32u), min(arg_0.a.a, 25616u) & 5731u, func_5(Struct_3(false, -2147483647i), func_3(vec4<f32>(1000f, 2132f, 632f, var_0.c.x), var_0.b.e, Struct_4(Struct_2(Struct_1(var_0.a.e, var_0.a.b, vec3<i32>(var_0.a.c.x, -1i, u_input.a.x), arg_0.b.a, var_0.b.d), arg_0.a, var_0.c, var_0.a.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec4<f32>(2973f, 402f, 156f, var_0.c.x), arg_0.b.e), Struct_1(4056u, 0u, vec3<i32>(var_0.a.c.x, -2147483647i, u_input.a.x), arg_0.b.d, 4294967295u)), !global0[_wgslsmith_index_u32(1u, 8u)], arg_0.c.x).a.c, 0u, (u_input.b | 0u) >> (arg_0.a.a % 32u))), 9018i, all(select(vec2<bool>(true, true & arg_0.e), vec2<bool>(func_5(Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], -2147483647i), arg_0.d, true, arg_0.c.x).e, true), any(!vec3<bool>(false, arg_0.e, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1012f, _wgslsmith_f_op_f32(-var_0.c.x)) - var_0.c.x)));
    var var_2 = u_input.d;
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(func_5(func_1(Struct_1(_wgslsmith_sub_u32(80456u, u_input.b), select(1618u, 27087u, true), firstTrailingBit(u_input.a), ~u_input.d.x, u_input.b << (u_input.b % 32u))), i32(-1i) * -36839i, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1063f)), _wgslsmith_f_op_f32(f32(-1f) * -453f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f * 1199f)), _wgslsmith_f_op_f32(ceil(-574f))))));
    let var_1 = _wgslsmith_mod_u32(1u, u_input.b);
    let var_2 = 0i;
    let var_3 = Struct_2(func_2(26061u, abs(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.b), _wgslsmith_mod_u32(4294967295u, u_input.b)))).a, func_2(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(45129u, u_input.b, 70823u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, var_1), vec3<u32>(45663u, var_1, var_1))) | var_1, u_input.d).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1058f, -577f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, 1428f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-731f, 698f), vec2<f32>(-1780f, -913f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(140f, -802f) + vec2<f32>(-251f, -527f))))), i32(-1i) * -1i, all(!(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1, 8u)]))));
    var var_4 = 63725u;
    global0 = array<bool, 8>();
    var var_5 = select(!select(vec4<bool>(8433u >= var_3.b.a, true, var_3.e, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_3.e, true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 8u)], var_3.e, true), vec4<bool>(global0[_wgslsmith_index_u32(var_3.b.d, 8u)], var_3.e, var_3.e, var_3.e)), var_3.e), vec4<bool>(true, select(var_3.e, false, var_3.e), func_5(Struct_3(global0[_wgslsmith_index_u32(85822u, 8u)], var_3.b.c.x), var_3.b.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], var_3.c.x).e, global0[_wgslsmith_index_u32(u_input.d.x, 8u)])), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)] & (global0[_wgslsmith_index_u32(76467u, 8u)] && false), var_3.e, true, _wgslsmith_f_op_f32(-174f * var_3.c.x) < var_3.c.x), select(!select(select(vec4<bool>(var_3.e, global0[_wgslsmith_index_u32(4294967295u, 8u)], var_3.e, true), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1, 8u)], true, var_3.e), vec4<bool>(false, false, false, true)), !vec4<bool>(var_3.e, var_3.e, global0[_wgslsmith_index_u32(var_3.b.e, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]), !var_3.e), vec4<bool>(select(246f >= var_3.c.x, any(vec2<bool>(true, true)), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], var_3.e))), false, true, var_3.e & (var_3.e | global0[_wgslsmith_index_u32(var_1, 8u)])), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)], var_3.e, true)), select(vec4<bool>(true, var_3.e, var_3.e, var_3.e), select(vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_3.e, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, false, false, var_3.e)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], var_3.e, false, global0[_wgslsmith_index_u32(1u, 8u)])), !(!vec4<bool>(true, var_3.e, global0[_wgslsmith_index_u32(u_input.b, 8u)], false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-584f, var_3.b.b >> (4294967295u % 32u), func_5(func_1(Struct_1(var_3.a.d, ~0u, u_input.a, firstLeadingBit(58520u), var_3.b.a)), -1i, var_3.e & (true | (var_3.c.x < var_3.c.x)), 105f).c.x, reverseBits(var_3.a.c.zx), ~firstLeadingBit(var_3.b.e & var_3.a.d));
}

