struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, i32(-2147483648), -1i);

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 63161u, 136077u, 26984u), vec4<u32>(4294967295u, 88677u, 50767u, 4294967295u), vec4<u32>(58204u, 4294967295u, 4294967295u, 1u), vec4<u32>(50117u, 58294u, 1u, 9003u), vec4<u32>(10182u, 0u, 0u, 47512u), vec4<u32>(12321u, 67694u, 4294967295u, 20252u), vec4<u32>(13857u, 4294967295u, 35434u, 13960u), vec4<u32>(45210u, 1u, 34417u, 4294967295u), vec4<u32>(4294967295u, 60430u, 0u, 65871u), vec4<u32>(1u, 46103u, 69271u, 26081u), vec4<u32>(38833u, 4294967295u, 4294967295u, 16913u), vec4<u32>(20635u, 8246u, 4294967295u, 1u), vec4<u32>(29303u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 29181u), vec4<u32>(2524u, 41516u, 20362u, 0u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    return _wgslsmith_div_u32(var_0.a, ~95436u) >> (max(arg_2.a, ~countOneBits(u_input.d)) % 32u);
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-332f)) + 934f);
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -850f, var_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1847f) + vec3<f32>(var_0, -758f, 2387f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, var_0, var_0) + vec3<f32>(var_0, 118f, var_0))))));
    let var_3 = vec3<bool>(select(1i < _wgslsmith_sub_i32(u_input.a, ~u_input.a), true && !any(vec2<bool>(false, true)), !all(vec2<bool>(true, true))), func_3(_wgslsmith_f_op_f32(-var_0), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.d), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)]), 1u), Struct_2(~39923u)) <= _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, arg_0.a, u_input.b) & ~vec3<u32>(0u, 23708u, arg_0.a), ~(~vec3<u32>(u_input.b, u_input.c, 0u))), true);
    global1 = array<vec4<u32>, 15>();
    return _wgslsmith_div_f32(-1541f, _wgslsmith_f_op_f32(-var_2.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    global0 = ~firstLeadingBit(~(vec3<i32>(-1i) * -vec3<i32>(global0.x, 2147483647i, -1i)));
    var var_0 = ~(~48581u);
    global0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-_wgslsmith_mult_i32(-9613i, global0.x), -39123i, select(_wgslsmith_sub_i32(-15902i, global0.x), _wgslsmith_add_i32(global0.x, u_input.a), true))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, global0.x) | vec3<i32>(-20955i, u_input.a, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, -11360i), vec3<i32>(global0.x, -1i, u_input.a))), -1i, -(~u_input.a)) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, firstLeadingBit(34238u), 0u), select(~vec3<u32>(arg_3.a, 47753u, 16568u), vec3<u32>(1u, u_input.c, u_input.b), !vec3<bool>(arg_0.x, true, false))) % vec3<u32>(32u)));
    let var_1 = arg_3.a;
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a, abs(global0.x), -(i32(-1i) * -49596i) | firstTrailingBit(_wgslsmith_sub_i32(global0.x, u_input.a)), 1i), ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 38062i), vec3<i32>(-54523i, u_input.a, u_input.a)), countOneBits(-15555i)), u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(50643i, u_input.a, 1i, global0.x), vec4<i32>(u_input.a, 0i, 11442i, 2147483647i)), vec4<i32>(67116i, global0.x, global0.x, -3245i))));
    return var_2.yxw;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global0 = arg_0.e;
    var var_1 = abs(var_0.b);
    let var_2 = _wgslsmith_div_vec3_i32(func_4(vec4<bool>(arg_1, false, var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -186f) == _wgslsmith_f_op_f32(select(1769f, -170f, var_0.c.x))), -961f, _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_mult_u32(0u, 5922u)))), Struct_2(0u)), var_0.e);
    var_1 = vec4<i32>(-2147483647i, global0.x ^ -select(~var_2.x, ~25865i, true), var_0.e.x, global0.x);
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = max(~vec4<u32>(arg_1.x, ~1u, firstLeadingBit(~u_input.c), ~1u), global1[_wgslsmith_index_u32(arg_2.a, 15u)]);
    var_0 = func_1(arg_2, _wgslsmith_mod_u32(4294967295u, 60298u) >= arg_2.a, Struct_2(~reverseBits(~arg_2.a)), Struct_2(4294967295u));
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.x, abs(8751u)), _wgslsmith_add_u32(4294967295u, func_1(func_1(Struct_1(arg_2.a, vec4<i32>(54043i, arg_2.e.x, 63425i, -1i), arg_2.c, arg_2.d, arg_2.e), arg_2.c.x, Struct_2(var_1.x), Struct_2(u_input.d)), all(vec3<bool>(arg_2.d, true, var_0.d)), Struct_2(1u), Struct_2(u_input.b)).a), var_1.x) >> (_wgslsmith_mult_u32(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(32148u, 1u), vec2<u32>(arg_2.a, 4294967295u)), arg_0 | arg_2.a, true), ~_wgslsmith_mult_u32(var_1.x, select(var_0.a, u_input.c, false))) % 32u);
    let var_3 = !vec4<bool>(all(vec3<bool>(all(vec4<bool>(arg_2.d, false, var_0.d, var_0.d)), false, arg_2.c.x)), true, (1i >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u)) >= global0.x, any(select(vec2<bool>(false, false), arg_2.c, vec2<bool>(var_0.d, false))) || any(!vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.d, arg_2.d)));
    return func_4(vec4<bool>(var_3.x, true, ((arg_2.b.x << (4294967295u % 32u)) < _wgslsmith_mod_i32(global0.x, -1i)) & var_3.x, var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-796f - _wgslsmith_f_op_f32(ceil(767f))), -1493f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f) - _wgslsmith_f_op_f32(-1f)))), Struct_2(reverseBits(~(~arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 15>();
    let var_0 = true;
    global0 = firstTrailingBit(vec3<i32>(select(u_input.a, -17533i, u_input.a <= global0.x) | u_input.a, global0.x, -22995i));
    global1 = array<vec4<u32>, 15>();
    global0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, global0.x, -2147483647i) ^ vec3<i32>(1i, 2147483647i, global0.x), abs(vec3<i32>(-24864i, global0.x, global0.x)), !var_0), vec3<i32>(i32(-1i) * -1i, u_input.a | global0.x, u_input.a)), ~func_5(54450u, ~vec3<u32>(u_input.b, 1u, u_input.b), func_1(Struct_1(u_input.b, vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -10274i), vec2<bool>(var_0, var_0), var_0, vec3<i32>(2147483647i, -4952i, 0i)), true, Struct_2(u_input.b), Struct_2(29018u))), ~vec3<i32>(func_5(u_input.c, vec3<u32>(59511u, 7880u, u_input.b), Struct_1(32148u, vec4<i32>(26185i, -1i, u_input.a, global0.x), vec2<bool>(var_0, var_0), true, vec3<i32>(-225i, 2147483647i, u_input.a))).x, u_input.a, -2147483647i));
    let var_1 = Struct_1(~0u, countOneBits(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, 23649i, 13007i), vec4<i32>(-2147483647i, -2147483647i, -10705i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -19000i, 0i), vec4<i32>(u_input.a, 0i, -1i, u_input.a)) | -456i, u_input.a, global0.x)), select(!(!vec2<bool>(var_0, var_0)), select(select(vec2<bool>(var_0, false), select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), true), all(vec4<bool>(var_0, var_0, false, false))), select(!vec2<bool>(var_0, false), vec2<bool>(true, false), vec2<bool>(true, var_0)), vec2<bool>(var_0 && var_0, true)), !func_1(Struct_1(u_input.d, vec4<i32>(0i, 2147483647i, u_input.a, u_input.a), vec2<bool>(var_0, true), var_0, vec3<i32>(42429i, global0.x, u_input.a)), var_0, Struct_2(49336u), Struct_2(57811u)).d), false, reverseBits(vec3<i32>(-_wgslsmith_sub_i32(1i, global0.x), -func_1(Struct_1(1u, vec4<i32>(-17902i, 31830i, 0i, 34746i), vec2<bool>(false, var_0), var_0, vec3<i32>(u_input.a, 13852i, 2147483647i)), var_0, Struct_2(u_input.d), Struct_2(u_input.c)).e.x, -1i)));
    let var_2 = var_1.d;
    global1 = array<vec4<u32>, 15>();
    global0 = vec3<i32>(global0.x, 2147483647i, 5553i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, u_input.d), u_input.d), ~0u, 0u, 0u), ~vec3<u32>(4294967295u, 20347u, ~u_input.c), global0.zz, -1057f);
}

