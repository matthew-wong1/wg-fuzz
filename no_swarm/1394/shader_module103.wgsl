struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: vec3<f32> = vec3<f32>(1414f, 367f, -1321f);

var<private> global2: array<vec4<bool>, 5>;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(57081u, -1i, 1210f, -1i), Struct_1(71807u, 21266i, -1098f, -67525i), Struct_1(1u, 1i, 1177f, -8785i), Struct_1(84387u, -1i, -757f, 41151i), Struct_1(1u, 7247i, -161f, -35960i), Struct_1(25098u, 139089i, 2387f, 37058i), Struct_1(35805u, 1i, 523f, 2147483647i), Struct_1(0u, -1i, -1862f, 1i), Struct_1(27865u, -1i, 116f, -15962i), Struct_1(0u, -1i, -912f, -12860i), Struct_1(14014u, 38119i, 736f, 2147483647i), Struct_1(54219u, -4788i, -1831f, -1i), Struct_1(4294967295u, i32(-2147483648), -982f, -25020i), Struct_1(0u, 2147483647i, 143f, 2147483647i), Struct_1(1u, 2147483647i, 118f, 1i), Struct_1(1u, 0i, -508f, -19242i), Struct_1(4294967295u, 0i, 2189f, 2147483647i), Struct_1(1u, 0i, -988f, -23602i), Struct_1(0u, 66867i, -1976f, 1i), Struct_1(1u, 2147483647i, 316f, 0i), Struct_1(0u, -1i, 980f, 49669i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global3 = array<Struct_1, 21>();
    var var_0 = 1u;
    var_0 = 0u;
    var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1133f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - global1.x), 1986f), -216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1036f, -732f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -143f)))));
    let var_1 = -157f;
    global2 = array<vec4<bool>, 5>();
    global2 = array<vec4<bool>, 5>();
    global1 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 39130u))) * _wgslsmith_f_op_f32(abs(1f)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1472f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, -959f, arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(round(arg_0.x)))));
    var var_1 = vec2<bool>(any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), false);
    var var_2 = false;
    var var_3 = ~(abs(-(u_input.a & -31542i)) ^ _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-6973i, u_input.b, u_input.b), vec3<i32>(-24723i, 0i, -3349i))), abs(min(u_input.a, -1i))));
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(reverseBits(37435u), _wgslsmith_mult_i32(i32(-1i) * -13554i, firstLeadingBit(u_input.a) ^ max(13774i, 2147483647i)), var_0.x, 0i));
    return Struct_3(Struct_1(86336u & ~var_4.a.a, min(var_4.b.d, ~(-34328i)), 174f, ~(~var_4.a.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, var_4.a.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(478f - -315f))))), -1400f));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> u32 {
    global1 = vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(arg_2.a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1015f, global1.x)) - -1366f))), -1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1961f, _wgslsmith_div_f32(arg_2.a.c, -350f)), _wgslsmith_f_op_f32(-arg_2.b.x)))));
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, global1.x, arg_2.a.c, global1.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, -582f, 443f, -560f)))))));
    global2 = array<vec4<bool>, 5>();
    var var_1 = -132f;
    return ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c | vec3<u32>(0u, u_input.c.x, u_input.c.x), countOneBits(u_input.c)), ~(~vec3<u32>(4294967295u, 0u, arg_2.a.a))), u_input.c.x);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<Struct_2, 20>();
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-691f, global1.x)) * _wgslsmith_f_op_f32(-342f + global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 2275f), global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(273f * global1.x), global1.x, _wgslsmith_f_op_f32(-781f * 767f)), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(806f * global1.x))))));
    global0 = array<Struct_2, 20>();
    var var_0 = arg_3;
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -204f) - _wgslsmith_f_op_f32(trunc(-1278f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_2(arg_3.x, vec3<f32>(-2006f, global1.x, 641f)))))))).a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global1.xx, global1.xx, false)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 242f)))))), _wgslsmith_f_op_vec2_f32(round(global1.zy))) - _wgslsmith_f_op_vec2_f32(-global1.zx));
}

fn func_6(arg_0: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 45911u), 0u);
    global0 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -19984i, i32(-1i) * -15504i), ~u_input.b));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(1u, _wgslsmith_mod_u32(58518u ^ u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, 21399u)), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), u_input.c.x), 20u)];
    global3 = array<Struct_1, 21>();
    return -_wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(1i, 0i, u_input.a)) >> ((vec3<u32>(0u, u_input.c.x, 14993u) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(-vec3<i32>(2147483647i, 12544i, 1i)), true), select(vec3<i32>(var_1, var_2.b.d, -2147483647i), select(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, 1i), vec3<i32>(1i, 56106i, var_1)), vec3<i32>(2147483647i, u_input.a, -14638i), arg_0.x >= -361f), vec3<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.c.x, 59760u)) | u_input.c.x), ~u_input.c.x);
    var var_1 = vec2<bool>(true, true);
    var var_2 = 1u;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 0u), 20u)];
    var var_4 = func_6(_wgslsmith_f_op_vec2_f32(func_5(var_3.b.d, func_4(min(~(-2147483647i), reverseBits(-12810i)), var_1.x, func_1(vec2<f32>(1000f, var_3.b.c))), ~(min(vec4<u32>(u_input.c.x, 85446u, 1u, u_input.c.x), vec4<u32>(4294967295u, 4294967295u, 51260u, 4294967295u)) | vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)), (vec2<u32>(19069u, 0u) << (vec2<u32>(51199u, u_input.c.x) % vec2<u32>(32u))) << (vec2<u32>(~1u, ~84264u) % vec2<u32>(32u)))));
    let var_5 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    global2 = array<vec4<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec4_i32(vec4<i32>(-11334i, u_input.a, -16227i, var_3.a.d) >> (vec4<u32>(var_3.a.a, var_5.a.a, 0u, 7648u) % vec4<u32>(32u)), vec4<i32>(var_5.b.d, u_input.a, u_input.b, var_3.b.d)) << (((vec4<u32>(4294967295u, 4294967295u, 477u, 0u) ^ vec4<u32>(u_input.c.x, 4294967295u, var_3.a.a, 4294967295u)) >> ((vec4<u32>(var_5.b.a, var_5.b.a, 4294967295u, 4970u) | vec4<u32>(var_5.b.a, var_5.a.a, 77822u, var_3.b.a)) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

