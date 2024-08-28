struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 1u;

var<private> global2: vec2<u32> = vec2<u32>(47718u, 55804u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = vec4<f32>(387f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) - _wgslsmith_f_op_f32(-arg_1.e.b.a)), _wgslsmith_div_f32(1000f, arg_0.a.a), all(vec3<bool>(false, false, false)) && true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1180f, 781f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-502f + -1277f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-519f, 1747f, false)), -798f)))));
    let var_1 = countOneBits(~_wgslsmith_div_vec3_i32(-vec3<i32>(-13797i, 0i, u_input.b) | -vec3<i32>(arg_1.a.x, u_input.b, -43074i), vec3<i32>(-u_input.b, 27536i << (0u % 32u), 1i)));
    var var_2 = Struct_4(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.d.x, 0u, global2.x), global2.x, _wgslsmith_div_u32(0u, 1u)), arg_0.d.x), vec3<bool>(true, true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(max(0u, 2612u), 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.b, global2.x) ^ arg_1.e.d.zw, ~arg_1.e.d.yw)), vec2<u32>(u_input.e.x, ~u_input.a), abs(~vec2<u32>(arg_1.b.b, 4294967295u))), vec4<u32>(21551u, 4294967295u, 1u, _wgslsmith_mod_u32(~arg_1.d.b, arg_0.c)) >> (arg_1.e.d % vec4<u32>(32u)));
    var var_3 = Struct_4(var_2.d.x, !vec3<bool>(false, var_2.b.x, true | var_2.b.x), ~(~_wgslsmith_div_vec2_u32(u_input.c.xx, ~var_2.d.yz)), vec4<u32>(arg_0.c, ~abs(firstTrailingBit(4294967295u)), _wgslsmith_sub_u32(~arg_1.b.b, 0u), 21935u << (arg_0.e.b % 32u)));
    let var_4 = _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(var_3.d.wzz >> (var_2.d.wxz % vec3<u32>(32u)), ~vec3<u32>(4294967295u, global2.x, var_3.d.x)), ~47956u) >> (4294967295u % 32u);
    return vec3<bool>(false, false, var_3.b.x);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = 1000f;
    global2 = vec2<u32>(0u, arg_0.b);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-519f - var_0.a), _wgslsmith_f_op_f32(var_0.a + arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a))) - _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f * arg_0.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-var_0.a), any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(356f)) * 162f))));
    var var_1 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), func_3(Struct_2(var_0, arg_0, arg_0.b, vec4<u32>(var_0.b, arg_0.b, global2.x, var_0.b), Struct_1(-493f, var_0.b)), Struct_3(vec2<i32>(30089i, u_input.b), Struct_1(arg_0.a, u_input.e.x), -832f, Struct_1(183f, 18914u), Struct_2(var_0, Struct_1(var_0.a, var_0.b), 33576u, vec4<u32>(56205u, arg_0.b, arg_0.b, var_0.b), var_0))), vec3<bool>(true, true, true)), any(func_3(Struct_2(var_0, Struct_1(var_0.a, var_0.b), var_0.b, vec4<u32>(4294967295u, 20102u, arg_0.b, arg_0.b), var_0), Struct_3(vec2<i32>(u_input.b, 8092i), arg_0, arg_0.a, Struct_1(-352f, arg_0.b), Struct_2(Struct_1(arg_0.a, 0u), var_0, 1u, u_input.d, Struct_1(-370f, 4294967295u)))).xx)), false);
    return u_input.d;
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<bool> {
    let var_0 = ~83228u;
    global0 = 991f;
    var var_1 = u_input.a == _wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(~u_input.d)), ~func_2(Struct_1(636f, arg_0)));
    global2 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), firstLeadingBit(_wgslsmith_add_u32(abs(5755u), _wgslsmith_dot_vec3_u32(u_input.d.wyx, u_input.c.xxw)))), u_input.c.wz);
    var_1 = false;
    return !select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, func_3(Struct_2(Struct_1(226f, 0u), Struct_1(-1154f, 18286u), arg_1, u_input.c, Struct_1(-1000f, 17072u)), Struct_3(vec2<i32>(u_input.b, 0i), Struct_1(-1318f, u_input.c.x), 776f, Struct_1(-335f, var_0), Struct_2(Struct_1(183f, arg_1), Struct_1(770f, arg_0), 48646u, u_input.c, Struct_1(635f, 9423u)))).x, true, !all(vec2<bool>(false, true))), vec4<bool>(all(vec2<bool>(true, true)), true, true, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(511f))));
    var var_1 = -8508i;
    global2 = ~u_input.c.zx >> (~(~select(select(vec2<u32>(u_input.e.x, 29216u), u_input.d.zx, vec2<bool>(arg_1.b.x, false)), ~arg_1.c, false)) % vec2<u32>(32u));
    var var_2 = ~0u;
    global2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(reverseBits(global2.x), ~arg_1.d.x), u_input.d.x), vec2<u32>(50545u, 78332u), _wgslsmith_div_vec2_u32(func_2(arg_2).yw, reverseBits(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2.x), vec2<u32>(arg_1.a, arg_1.d.x))))));
    return -(~(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(1i, -1i)), u_input.b | 1i) | 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-1070f * 1470f);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1936f)) + _wgslsmith_f_op_f32(min(-486f, _wgslsmith_f_op_f32(f32(-1f) * -474f)))));
    let var_1 = ~(-2147483647i);
    var var_2 = func_4(select(vec3<bool>(any(vec3<bool>(true, false, false)), all(func_1(33919u, 0u)), func_1(abs(21642u), 1u).x), vec3<bool>(-u_input.b >= _wgslsmith_add_i32(var_1, var_1), true, true), vec3<bool>(11355u <= global2.x, false, true)), Struct_4(firstLeadingBit(~1u), func_3(Struct_2(Struct_1(var_0, global2.x), Struct_1(963f, u_input.d.x), u_input.c.x, u_input.c, Struct_1(-940f, 4294967295u)), Struct_3(vec2<i32>(u_input.b, -15962i), Struct_1(-630f, 49384u), 227f, Struct_1(var_0, global2.x), Struct_2(Struct_1(var_0, global2.x), Struct_1(1938f, u_input.a), u_input.e.x, u_input.c, Struct_1(var_0, u_input.a)))), ~u_input.d.zw, max(max(u_input.c, vec4<u32>(u_input.d.x, 13099u, 11089u, global2.x)), vec4<u32>(global2.x << (4294967295u % 32u), global2.x, 0u, ~4382u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(sign(var_0))) - 1016f), 33845u));
    var var_3 = reverseBits(abs(vec2<i32>(_wgslsmith_add_i32(-2147483647i, 53618i), 2147483647i)) | ((min(vec2<i32>(-15015i, var_1), vec2<i32>(3611i, 2147483647i)) ^ ~vec2<i32>(var_1, 44421i)) & -(~vec2<i32>(20729i, 1i))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1955f);
    var var_4 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 11595i, u_input.b, var_1), vec4<i32>(u_input.b, var_1, 23544i, 11923i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, u_input.b, -2147483647i, 1i))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, -1i, -10277i), vec4<i32>(u_input.b, var_1, -1i, -30247i))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, 0i, var_1, 7386i), vec4<i32>(7042i, -1i, var_3.x, var_3.x))) >> ((vec4<u32>(u_input.c.x, global2.x, 0u, 19915u) << (~vec4<u32>(0u, 22858u, 20016u, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_5 = Struct_5(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1u), var_1, !func_1(_wgslsmith_mult_u32(37605u, u_input.e.x ^ 4294967295u), global2.x).wx, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~u_input.d.xw)), 34956u);
}

