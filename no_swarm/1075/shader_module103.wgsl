struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
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

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<i32, 27> = array<i32, 27>(13471i, -26952i, -22494i, 4485i, i32(-2147483648), i32(-2147483648), -8752i, 1i, -26724i, 8304i, 0i, -68259i, 0i, 2147483647i, -27955i, 2147483647i, -30515i, -7835i, 2147483647i, -1i, i32(-2147483648), -10804i, -24660i, 0i, -22713i, 1i, 33036i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~0u), max(0u << (global0.c.x % 32u), ~4294967295u), 4294967295u, _wgslsmith_mult_u32(~arg_1.c.x, _wgslsmith_div_u32(37733u, 24716u))), firstLeadingBit(abs(vec4<u32>(global0.c.x, 31642u, global3.c.x, 0u)))), 22181u, ~(_wgslsmith_add_u32(global2.c.x, ~u_input.c.x) << (~17191u % 32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_2 {
    global4 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-945f, 1779f, global0.b)))), _wgslsmith_f_op_vec3_f32(-arg_0.xwz))));
    global1 = array<Struct_2, 9>();
    var var_1 = Struct_1(global3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(594f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(-668f, -144f))))), ~abs(~func_3(u_input.d, Struct_1(false, global2.b, u_input.c, false), global0.b)), true);
    global1 = array<Struct_2, 9>();
    return global1[_wgslsmith_index_u32(0u, 9u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = !vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, global3.d), true)) && true, ~func_2(vec4<f32>(arg_1.c.x, 1054f, -1384f, -1014f), vec3<bool>(false, arg_1.a.d, true)).b.x < (-1i >> (min(u_input.c.x, u_input.c.x) % 32u)));
    return func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1334f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * 1449f) - _wgslsmith_f_op_f32(-arg_1.c.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1040f, _wgslsmith_f_op_f32(sign(1423f)), _wgslsmith_f_op_f32(max(-688f, 422f)), global2.b))), vec3<bool>(false == !(global3.c.x <= 0u), false, var_0.x | func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, arg_1.a.b, 555f, global2.b) + vec4<f32>(global2.b, global0.b, arg_1.d.b, 670f)), !vec3<bool>(global3.a, global3.d, global2.d)).d.d)).d;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: f32) -> vec3<i32> {
    var var_0 = !select(vec4<bool>(arg_2.x, global2.a, !global2.a, global3.d), vec4<bool>(!(global0.a & arg_2.x), any(arg_2), global3.a, true), arg_2.x);
    let var_1 = Struct_2(Struct_1(!(_wgslsmith_f_op_f32(sign(-1000f)) >= -577f), 234f, vec3<u32>(global2.c.x ^ ~84025u, ~11415u, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.c.x, 0u), vec3<u32>(0u, 69795u, 6607u)))), false), min(-u_input.d, vec3<i32>(global4[_wgslsmith_index_u32(~u_input.c.x, 27u)], ~_wgslsmith_div_i32(6258i, -39643i), global4[_wgslsmith_index_u32(u_input.c.x, 27u)])), vec3<f32>(global0.b, global2.b, _wgslsmith_div_f32(global2.b, 747f)), func_4(vec2<i32>(-u_input.a | (1i << (1u % 32u)), global4[_wgslsmith_index_u32(max(7229u, ~4294967295u), 27u)]), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global3.b, arg_3, 1231f), vec4<f32>(1906f, global0.b, arg_3, 316f))), select(select(var_0.zwy, vec3<bool>(true, false, global2.d), arg_2.x), select(var_0.www, vec3<bool>(false, var_0.x, true), var_0.wyw), select(var_0.wyz, var_0.www, true)))));
    global0 = var_1.d;
    global2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-462f, global2.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + arg_3))), vec3<u32>((~global0.c.x & ~arg_0.x) | global0.c.x, ~((global2.c.x | 4294967295u) ^ 58583u), ~40572u), any(select(select(!arg_2, var_0.wy, false || var_1.a.d), select(select(vec2<bool>(false, true), vec2<bool>(var_1.a.d, var_1.a.d), vec2<bool>(arg_2.x, arg_2.x)), select(vec2<bool>(false, var_1.d.d), arg_2, arg_2), !global3.d), vec2<bool>(any(var_0.yx), true))));
    global3 = var_1.a;
    return vec3<i32>(firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.b) & -var_1.b.x, -(global4[_wgslsmith_index_u32(global3.c.x, 27u)] | 0i), u_input.b, countOneBits(u_input.b)), vec4<i32>(~u_input.a, -_wgslsmith_add_i32(var_1.b.x, u_input.d.x), _wgslsmith_clamp_i32(-1i, -1i, 1i), 2147483647i)), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 0i, u_input.d.x) & vec3<i32>(48028i, -2147483647i, global4[_wgslsmith_index_u32(1u, 27u)]), u_input.d), -u_input.b));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(43145i, -(i32(-1i) * -14025i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -1043f, global2.b)), vec3<f32>(_wgslsmith_f_op_f32(min(-203f, 251f)), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-758f * 214f))) + vec3<f32>(_wgslsmith_f_op_f32(-1505f - global2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1465f - global0.b), _wgslsmith_f_op_f32(trunc(-1000f)))), -1070f)));
    global3 = func_4(u_input.d.xy >> (firstLeadingBit(max(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.c.x), vec2<u32>(global0.c.x, 76213u)), global0.c.yy << (vec2<u32>(global0.c.x, global0.c.x) % vec2<u32>(32u)))) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, arg_1, global2.b, global2.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1702f, global3.b, global2.b, arg_1)))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), !select(vec3<bool>(global2.a, false, true), vec3<bool>(false, global0.d, global0.a), vec3<bool>(global2.d, global2.a, true)))).a.c.x, 9u)]);
    global0 = func_2(vec4<f32>(-655f, _wgslsmith_f_op_f32(-global2.b), -1114f, _wgslsmith_f_op_f32(select(-203f, _wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(sign(var_1.x))), false))), select(vec3<bool>(false, global0.a, func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, global4[_wgslsmith_index_u32(10769u, 27u)]), arg_2.yw), Struct_2(Struct_1(global3.a, global2.b, vec3<u32>(global3.c.x, 44500u, 45570u), false), vec3<i32>(global4[_wgslsmith_index_u32(global3.c.x, 27u)], var_0, 13766i), var_1, Struct_1(true, global0.b, vec3<u32>(u_input.c.x, 1u, arg_0), false))).d), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, global3.a, true), vec3<bool>(true, global3.a, false), false), select(vec3<bool>(global3.d, true, true), vec3<bool>(global0.a, false, global2.a), true)), true)).a;
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global2.b, _wgslsmith_f_op_f32(floor(557f)), 1f)), vec3<bool>(global2.d, true, all(vec3<bool>(any(vec3<bool>(global0.d, global3.a, global3.a)), true, arg_2.x < 17265i)))).c;
    return func_4(firstTrailingBit(vec2<i32>(arg_2.x, abs(~(-57601i)))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_div_f32(var_1.x, arg_1), 1076f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_1, var_2.x, 881f), vec4<f32>(var_2.x, 1543f, global0.b, global3.b))))), select(select(!vec3<bool>(false, global0.a, global3.a), select(vec3<bool>(true, global0.a, true), vec3<bool>(false, global2.a, global0.d), vec3<bool>(false, global2.a, global3.a)), !vec3<bool>(true, global3.d, false)), vec3<bool>(all(vec2<bool>(global3.a, false)), true, true || global3.d), select(vec3<bool>(global2.d, global0.a, global3.d), select(vec3<bool>(false, true, true), vec3<bool>(global0.d, global3.d, global3.a), true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(~(-1230i)), -2147483647i) >> (abs(countOneBits(vec2<u32>(min(0u, u_input.c.x), firstLeadingBit(global3.c.x)))) % vec2<u32>(32u));
    global4 = array<i32, 27>();
    global4 = array<i32, 27>();
    global3 = func_5(~u_input.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))))), vec4<i32>(~u_input.a, _wgslsmith_add_i32(i32(-1i) * -var_0.x, -19955i), _wgslsmith_div_i32(~global4[_wgslsmith_index_u32(u_input.c.x, 27u)], firstTrailingBit(u_input.d.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.x, global4[_wgslsmith_index_u32(global3.c.x, 27u)]) << (vec3<u32>(19697u, 4294967295u, 2116u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~u_input.d, func_1(global0.c, global0.c, vec2<bool>(false, global0.d), -957f)))));
    var var_1 = _wgslsmith_clamp_vec4_i32(abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -55861i, -38938i, u_input.b) ^ vec4<i32>(2147483647i, u_input.a, u_input.b, global4[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, global4[_wgslsmith_index_u32(5079u, 27u)], global4[_wgslsmith_index_u32(1u, 27u)], u_input.d.x), vec4<i32>(var_0.x, 42104i, -15239i, 5300i), vec4<i32>(0i, -13895i, global4[_wgslsmith_index_u32(u_input.c.x, 27u)], -2147483647i))), vec4<i32>(var_0.x & global4[_wgslsmith_index_u32(global0.c.x, 27u)], -19670i, _wgslsmith_add_i32(-2147483647i, global4[_wgslsmith_index_u32(45070u, 27u)]), var_0.x), !vec4<bool>(global0.a, false, global3.a, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_sub_i32(i32(-1i) * -30051i, select(-1i, 0i, true)), u_input.d.x, abs(-27148i)), vec4<i32>(_wgslsmith_clamp_i32(max(48773i, var_0.x), -80100i, _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(global3.c.x, 27u)], -1i, global4[_wgslsmith_index_u32(43496u, 27u)])), 69i, -1i, var_0.x)), ~(~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, 37335i, -2147483647i), vec4<i32>(u_input.a, 15332i, u_input.d.x, var_0.x)))));
    var var_2 = ~_wgslsmith_mod_u32(firstTrailingBit(global3.c.x << (abs(global3.c.x) % 32u)), global3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(7844i, firstTrailingBit(u_input.b), var_0.x));
}

