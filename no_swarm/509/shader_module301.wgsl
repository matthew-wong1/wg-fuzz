struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648), vec4<i32>(1i, 2147483647i, -339i, i32(-2147483648)), vec3<u32>(62064u, 36723u, 79693u), vec4<i32>(-1i, 18526i, 33323i, i32(-2147483648)));

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = ~vec3<i32>(~u_input.a, -_wgslsmith_sub_i32(1i, global0.b), 1i);
    let var_1 = Struct_1(global0.a, select(_wgslsmith_add_i32(min(-11376i, 0i), ~(-16003i)), 1i, any(vec3<bool>(global0.a.x, true, global0.a.x))) ^ -_wgslsmith_mod_i32(~(-2147483647i), u_input.a << (56105u % 32u)), select(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.b, 1i, var_0.x), global0.e.xxz), global0.e.x, -28070i, global0.e.x), -(global0.c ^ _wgslsmith_mod_vec4_i32(global0.e, global0.e)), global0.a.x), global0.d << (global0.d % vec3<u32>(32u)), -global0.e);
    var var_2 = ~(~(-18755i | countOneBits(var_0.x)) | (-50137i | var_0.x));
    let var_3 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, ~89432u), ~var_1.d.yy), vec2<u32>(4294967295u, u_input.b.x));
    let var_4 = _wgslsmith_mult_vec3_u32(select(firstLeadingBit(countOneBits(vec3<u32>(u_input.b.x, 1u, global0.d.x) | vec3<u32>(15390u, u_input.b.x, 0u))), reverseBits(select(vec3<u32>(u_input.b.x, 1u, global0.d.x), global0.d, !global0.a.wwy)), !(!all(vec3<bool>(true, false, true)))), ~global0.d);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1013f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(379f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(func_3()), -403f);
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(true, false | arg_1.a.a.x, global0.a.x, all(arg_1.a.a.wwx)), vec4<bool>(true, all(global0.a), true, true), global0.a.x), u_input.a ^ global0.b, vec4<i32>(0i, -1i >> (reverseBits(u_input.b.x) % 32u), arg_1.a.c.x, -1i), vec3<u32>(~global0.d.x, arg_0 >> (arg_0 % 32u), ~u_input.b.x), global0.c), 1000f);
    global1 = array<Struct_1, 30>();
    var var_2 = Struct_1(select(!select(arg_1.a.a, arg_1.a.a, all(vec3<bool>(false, arg_1.a.a.x, false))), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(true, true)), false), !(!arg_1.a.a)), u_input.a, firstLeadingBit(var_1.a.e), ~(select(var_1.a.d & vec3<u32>(75442u, arg_1.a.d.x, 1837u), vec3<u32>(arg_1.a.d.x, var_1.a.d.x, 14564u), vec3<bool>(global0.a.x, var_1.a.a.x, false)) << (min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.d.x, 21981u), arg_1.a.d), arg_1.a.d) % vec3<u32>(32u))), -global0.c);
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d.x, 19924u, 0u | ~var_1.a.d.x, arg_1.a.d.x) << (countOneBits(min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 2503u, 4294967295u), vec4<u32>(arg_0, 32475u, global0.d.x, 85872u)), vec4<u32>(u_input.b.x, arg_0, 1u, 60066u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(4294967295u, var_2.d.x, 36987u, 40984u)), firstTrailingBit(vec4<u32>(var_2.d.x, 1u, 2327u, 30189u))));
    return Struct_2(arg_1.a, _wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(floor(var_1.b))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    let var_0 = func_2(_wgslsmith_dot_vec2_u32(~(arg_0.d.xz & ~vec2<u32>(1u, 4294967295u)), global0.d.zx), Struct_2(global1[_wgslsmith_index_u32(~u_input.b.x | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.d.x, 0u), 1u, 0u), 30u)], _wgslsmith_f_op_f32(-510f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1528f, 416f) - _wgslsmith_div_f32(-1057f, -1000f)))));
    global0 = Struct_1(func_2(~u_input.b.x, func_2(~(~0u), Struct_2(Struct_1(vec4<bool>(false, var_0.a.a.x, true, true), global0.e.x, vec4<i32>(arg_0.b, global0.c.x, 962i, arg_0.c.x), var_0.a.d, vec4<i32>(global0.b, 1105i, global0.c.x, global0.e.x)), _wgslsmith_f_op_f32(var_0.b - var_0.b)))).a.a, _wgslsmith_mod_i32(~(-1i), arg_0.b), vec4<i32>(~arg_0.c.x, 1i, var_0.a.b, -arg_0.b) & vec4<i32>(arg_0.e.x, u_input.a | select(arg_0.e.x, arg_0.b, var_0.a.a.x), var_0.a.c.x, global0.e.x), abs(select(vec3<u32>(~var_0.a.d.x, ~u_input.b.x, u_input.b.x), select(func_2(var_0.a.d.x, var_0).a.d, _wgslsmith_sub_vec3_u32(arg_0.d, vec3<u32>(arg_0.d.x, u_input.b.x, 1u)), !vec3<bool>(false, true, global0.a.x)), !(!global0.a.zzy))), vec4<i32>(11930i, firstLeadingBit(_wgslsmith_add_i32(-31224i, arg_0.c.x)) << (~1u % 32u), _wgslsmith_add_i32(-1097i ^ func_2(4294967295u, var_0).a.c.x, 17385i), ~40981i));
    var var_1 = var_0;
    var var_2 = Struct_1(!vec4<bool>(arg_0.a.x, true, var_0.a.a.x, all(vec2<bool>(true, global0.a.x))), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(23833i, arg_0.b, arg_0.c.x, 10410i), vec4<i32>(arg_0.e.x, var_1.a.b, u_input.a, var_0.a.c.x)), global0.c >> (vec4<u32>(u_input.b.x, 1u, 0u, 16754u) % vec4<u32>(32u))), arg_0.e.x), _wgslsmith_div_vec4_i32(var_1.a.e, var_1.a.c), arg_0.d, vec4<i32>(-1i) * -max(vec4<i32>(16878i, 32701i, var_1.a.c.x, 39858i) & vec4<i32>(-1379i, arg_0.e.x, global0.e.x, var_0.a.e.x), var_1.a.c));
    global1 = array<Struct_1, 30>();
    return vec4<u32>(_wgslsmith_add_u32(global0.d.x, 4294967295u), 2258u, arg_0.d.x, select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, 15903u, var_2.d.x) | ~global0.d, ~vec3<u32>(u_input.b.x, var_1.a.d.x, 0u)), ~_wgslsmith_add_u32(u_input.b.x, 0u), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(global0.d.x, 30u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) + _wgslsmith_f_op_f32(779f + _wgslsmith_f_op_f32(-arg_2.x)))));
    return func_2(reverseBits(25397u), Struct_2(global1[_wgslsmith_index_u32(func_2(arg_0.x, func_2(global0.d.x, Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 30u)], 1059f))).a.d.x, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -586f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = func_4(~select(~vec4<u32>(0u, 8186u, 1u, 25503u), func_1(global1[_wgslsmith_index_u32(15761u | u_input.b.x, 30u)], true), true), 2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(787f, 322f), vec2<f32>(1434f, -646f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(341f, 1491f) + vec2<f32>(1071f, 139f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 146f), vec2<f32>(1695f, -981f)), vec2<f32>(-1111f, 474f), func_2(global0.d.x, Struct_2(Struct_1(vec4<bool>(true, true, true, global0.a.x), -44262i, global0.e, vec3<u32>(23797u, 33447u, u_input.b.x), global0.c), -374f)).a.a.xy)))), vec2<f32>(_wgslsmith_f_op_f32(496f + _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(-1671f + _wgslsmith_f_op_f32(ceil(1486f))))), all(!select(select(vec2<bool>(global0.a.x, true), global0.a.xw, global0.a.x), func_2(4294967295u, Struct_2(Struct_1(global0.a, u_input.a, vec4<i32>(global0.b, 2147483647i, u_input.a, global0.b), global0.d, global0.e), 1192f)).a.a.xx, !var_0.wy)));
    let var_2 = var_1;
    global1 = array<Struct_1, 30>();
    global0 = func_2(u_input.b.x, var_2).a;
    let var_3 = vec3<bool>(true, !var_1.a.a.x, var_2.a.a.x == all(vec3<bool>(true, true, 1i == u_input.a)));
    var var_4 = var_1;
    var var_5 = func_4(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.a.d.x, var_1.a.d.x, var_1.a.d.x, 6136u), vec4<u32>(u_input.b.x, 1u, 1u, 35001u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.d.x, 41293u, 20788u, var_2.a.d.x), vec4<u32>(var_1.a.d.x, global0.d.x, 42292u, 14711u)) % vec4<u32>(32u)))), 1i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f * _wgslsmith_f_op_f32(-var_4.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1604f))), 763f), true).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
}

