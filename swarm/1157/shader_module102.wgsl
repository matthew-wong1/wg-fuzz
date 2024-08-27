struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 1> = array<f32, 1>(-911f);

var<private> global2: array<vec2<bool>, 3>;

var<private> global3: i32 = -1i;

var<private> global4: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = select(global4[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 20u)], !vec3<bool>(false, arg_3.x, any(vec2<bool>(arg_0.c, true))), true);
    global4 = array<vec3<bool>, 20>();
    global2 = array<vec2<bool>, 3>();
    var var_1 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(37746u, 1u)]));
    var var_2 = -arg_1.b.c;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 1u)] + 1882f) + _wgslsmith_f_op_f32(245f * arg_1.b.b.x)), arg_1.b.a.b.x), _wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_1.e.a.b))))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 32256u), 3u)], vec4<f32>(306f, -899f, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]), true, ~vec3<u32>(1u, global0.x, 0u)), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], 140f, 2705f, -820f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(global0.x, 3u)], vec4<f32>(global1[_wgslsmith_index_u32(8587u, 1u)], -1503f, 722f, global1[_wgslsmith_index_u32(global0.x, 1u)]), true, vec3<u32>(90678u, global0.x, 42921u)), vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], 305f, global1[_wgslsmith_index_u32(4294967295u, 1u)]), 10518i, true, vec4<f32>(-373f, 583f, global1[_wgslsmith_index_u32(0u, 1u)], -265f)), vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~global0.x, Struct_2(Struct_1(vec2<bool>(true, true), vec4<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(88646u, 1u)], 286f, -1227f), false, vec3<u32>(0u, global0.x, global0.x)), vec4<f32>(-753f, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]), u_input.b.x, false, vec4<f32>(-549f, 684f, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(28020u, 1u)]))), reverseBits(~global0.x), vec3<bool>(false, 884f == global1[_wgslsmith_index_u32(global0.x, 1u)], true)))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(global0.x, 3u)], vec4<f32>(global1[_wgslsmith_index_u32(max(4294967295u, global0.x), 1u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global0.x, 1u)], 233f, false)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.x, 1u)])), _wgslsmith_f_op_f32(max(-272f, global1[_wgslsmith_index_u32(27094u, 1u)]))), all(vec3<bool>(true, true, true)), vec3<u32>(38353u, _wgslsmith_mult_u32(global0.x, global0.x), 29058u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]))))), ~_wgslsmith_mult_i32(37145i, u_input.a.x), all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(1u, 3u)], false), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 1u)] * global1[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f)), _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 1u)])))), ~(~firstLeadingBit(~vec4<u32>(global0.x, 20094u, 4294967295u, global0.x))), 1u, Struct_2(Struct_1(select(global2[_wgslsmith_index_u32(firstLeadingBit(global0.x), 3u)], vec2<bool>(true, false), select(global2[_wgslsmith_index_u32(0u, 3u)], vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2215f, global1[_wgslsmith_index_u32(global0.x, 1u)], 178f, global1[_wgslsmith_index_u32(49154u, 1u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], 1545f, -382f), vec4<f32>(-557f, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(32024u, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]))))), true, vec3<u32>(_wgslsmith_mod_u32(global0.x, global0.x), global0.x & 1u, global0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], 890f, 1608f, global1[_wgslsmith_index_u32(global0.x, 1u)]) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(38803u, 1u)], 1000f, global1[_wgslsmith_index_u32(global0.x, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, 2063f, global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(5006u, 1u)])))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], -513f, global1[_wgslsmith_index_u32(global0.x, 1u)]) - vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], global1[_wgslsmith_index_u32(8975u, 1u)], 236f, global1[_wgslsmith_index_u32(global0.x, 1u)])))), any(vec4<bool>(true, true, true, true)))), 2147483647i, true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global0.x, 1u)])), -383f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 29650u), 1u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -128f, -2050f, -676f) + vec4<f32>(1978f, 812f, global1[_wgslsmith_index_u32(4294967295u, 1u)], -2052f)), any(vec4<bool>(false, false, true, false))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 906f, global1[_wgslsmith_index_u32(var_0.d, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)])), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.e.a.a, vec4<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)], 872f, global1[_wgslsmith_index_u32(21513u, 1u)]), false, var_0.b.a.d), Struct_3(var_0.b.e, Struct_2(Struct_1(vec2<bool>(true, false), vec4<f32>(var_0.e.a.b.x, var_0.a.x, 1000f, var_0.b.e.x), true, vec3<u32>(global0.x, 45111u, 85504u)), var_0.b.a.b, u_input.b.x, var_0.b.a.a.x, vec4<f32>(-359f, 509f, var_0.e.e.x, global1[_wgslsmith_index_u32(0u, 1u)])), var_0.c, 1u, var_0.b), 4294967295u, global4[_wgslsmith_index_u32(global0.x, 20u)])), true)) * vec4<f32>(global1[_wgslsmith_index_u32(var_0.b.a.d.x, 1u)], -629f, 1711f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.b, var_0.c, global0.x, Struct_2(Struct_1(vec2<bool>(true && var_0.e.d, var_0.b.d), vec4<f32>(var_0.e.e.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27924u, 1u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(90936u, 1u)], -1188f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(10015u, 1u)]))), true, var_0.b.a.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-301f, -955f, global1[_wgslsmith_index_u32(60420u, 1u)], -1907f))))), firstLeadingBit(-_wgslsmith_div_i32(var_0.b.c, -972i)), !var_0.b.d, vec4<f32>(1f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(369f, var_0.a.x, var_0.b.d))), var_0.e.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x + var_0.e.a.b.x))))));
    let var_2 = vec3<i32>(~(~abs(-1i | u_input.b.x)), min(var_0.b.c, _wgslsmith_mod_i32(abs(0i), ~33182i)), 42057i);
    var var_3 = reverseBits(vec3<i32>((_wgslsmith_mult_i32(var_1.e.c, var_2.x) ^ firstLeadingBit(0i)) >> (_wgslsmith_mult_u32(countOneBits(var_1.c.x), ~4294967295u) % 32u), ~0i, 2147483647i));
    var var_4 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 3u)], vec4<f32>(var_0.e.e.x, -1170f, _wgslsmith_f_op_f32(abs(var_0.b.b.x)), 1410f), !(!var_1.b.d || var_1.b.d), min(~var_0.c.zzz, ~(var_0.e.a.d & var_1.e.a.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1150f, var_1.b.e.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 1u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.a.d.x, 1u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(34400u, 1u)]))), 0i, true, var_1.b.b);
    return var_4.d;
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = 1u;
    let var_1 = Struct_1(select(vec2<bool>(true, func_2()), !global2[_wgslsmith_index_u32(var_0, 3u)], true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2242f, -557f, 1000f, arg_0.x)))))))), arg_0.x < _wgslsmith_f_op_f32(-arg_0.x), vec3<u32>(~(var_0 ^ 89165u) >> (48059u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(max(97256u, 4294967295u), _wgslsmith_mult_u32(global0.x, var_0), global0.x), ~reverseBits(vec3<u32>(var_0, global0.x, var_0))), global0.x));
    var var_2 = Struct_2(Struct_1(!select(select(vec2<bool>(true, var_1.a.x), global2[_wgslsmith_index_u32(global0.x, 3u)], vec2<bool>(var_1.c, false)), !var_1.a, global2[_wgslsmith_index_u32(~32363u, 3u)]), _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(-1655f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.d.x, var_0), 1u)], arg_0.x, _wgslsmith_f_op_f32(step(arg_0.x, var_1.b.x)))), !(26147i < -u_input.b.x), vec3<u32>(69642u, ~_wgslsmith_div_u32(4294967295u, 8151u), 1u)), vec4<f32>(-134f, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(695f)), _wgslsmith_f_op_f32(f32(-1f) * -513f))) + -264f), _wgslsmith_f_op_f32(select(886f, 1f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_1.d.x, 1u)], global1[_wgslsmith_index_u32(83048u, 1u)])) != 1164f))), -1i, !any(vec3<bool>(arg_0.x >= var_1.b.x, var_1.a.x != var_1.c, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(round(-974f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1774f - global1[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(574f - 1000f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, -1668f, var_1.b.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.e.x, var_1.b.x, -752f, var_1.b.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(592f, arg_0.x, 524f, 879f))), var_2.e)))), Struct_2(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1, Struct_3(vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(1u, 1u)], 410f, var_2.e.x), Struct_2(var_1, vec4<f32>(arg_0.x, var_1.b.x, var_2.e.x, -1337f), var_2.c, var_1.a.x, var_2.a.b), vec4<u32>(var_2.a.d.x, 1u, 1u, var_0), var_2.a.d.x, Struct_2(var_2.a, vec4<f32>(var_2.b.x, 1056f, 383f, arg_0.x), u_input.a.x, var_1.c, var_2.b)), 4294967295u, global4[_wgslsmith_index_u32(1u, 20u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.b.x, global1[_wgslsmith_index_u32(var_1.d.x, 1u)], var_1.b.x, var_2.b.x)))), countOneBits(u_input.a.x ^ min(var_2.c, 2147483647i)), var_1.a.x, _wgslsmith_f_op_vec4_f32(-var_1.b)), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.a.d.x, 23041u, 0u), vec4<u32>(11608u, global0.x, 13001u, 124518u)))), var_1.d.x, Struct_2(Struct_1(var_2.a.a, vec4<f32>(893f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] + -1000f), _wgslsmith_f_op_f32(1527f + 128f), _wgslsmith_f_op_f32(exp2(var_1.b.x))), any(vec4<bool>(var_2.d, true, true, var_2.a.c)), var_1.d | _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, var_1.d.x, 68087u), var_1.d)), var_2.a.b, -1i, var_1.c, _wgslsmith_f_op_vec4_f32(func_3(var_2.a, Struct_3(vec4<f32>(-435f, 1619f, -745f, var_1.b.x), Struct_2(Struct_1(vec2<bool>(var_1.c, var_2.a.a.x), vec4<f32>(-822f, 1106f, 1054f, var_2.a.b.x), false, vec3<u32>(var_0, 1u, var_0)), var_2.a.b, 0i, true, var_1.b), _wgslsmith_mult_vec4_u32(vec4<u32>(63182u, 2927u, var_1.d.x, 4294967295u), vec4<u32>(var_2.a.d.x, 4294967295u, var_2.a.d.x, 4294967295u)), var_1.d.x, Struct_2(var_2.a, vec4<f32>(global1[_wgslsmith_index_u32(65244u, 1u)], 1664f, arg_0.x, 707f), -22117i, var_1.a.x, var_1.b)), var_0, !(!global4[_wgslsmith_index_u32(50429u, 20u)])))));
    global4 = array<vec3<bool>, 20>();
    return !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, var_2.a.a.x, true), vec4<bool>(true, var_1.a.x, true, true), true), true | var_1.c), !vec4<bool>(false, var_2.d, false, false), select(!vec4<bool>(false, var_3.e.a.c, true, false), vec4<bool>(true, true, var_3.e.a.a.x, false), select(vec4<bool>(var_2.a.c, false, false, false), vec4<bool>(var_3.e.a.a.x, true, var_1.a.x, false), false))), !vec4<bool>(false, false, var_1.c, false), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 1u)], -657f) - vec2<f32>(1865f, 574f))), !any(vec3<bool>(true, true, false))), vec4<bool>(true & all(vec3<bool>(false, true, true)), true, func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(230f, global1[_wgslsmith_index_u32(0u, 1u)])))).x, false), !all(vec4<bool>(true, true, false, true))), !vec4<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(58552u, 36786u), vec2<u32>(global0.x, global0.x)) > 4441u, false, true), !select(vec4<bool>(true, true, true, 1000f <= global1[_wgslsmith_index_u32(1u, 1u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true)));
    let var_1 = -7061i;
    let var_2 = Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]) * vec2<f32>(global1[_wgslsmith_index_u32(36269u, 1u)], global1[_wgslsmith_index_u32(54881u, 1u)]))))).zy, vec4<f32>(1f, -503f, _wgslsmith_f_op_f32(-1647f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(40829u, 1u), 1u)])), 789f), false, vec3<u32>(((4294967295u & global0.x) ^ ~1u) ^ ~4294967295u, abs(firstLeadingBit(_wgslsmith_sub_u32(global0.x, global0.x))), _wgslsmith_mod_u32(~(global0.x | 19848u), 0u)));
    var var_3 = ~(~max(vec4<i32>(-29452i, -1i, u_input.a.x | -1i, 1i), vec4<i32>(firstTrailingBit(var_1), -var_1, 0i, _wgslsmith_clamp_i32(1i, var_1, -25237i))));
    var var_4 = Struct_1(vec2<bool>(false, (~0u & _wgslsmith_div_u32(var_2.d.x, var_2.d.x)) < select(global0.x, 0u & global0.x, !var_2.a.x)), vec4<f32>(_wgslsmith_div_f32(-596f, var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-782f, var_2.b.x, true)))) + var_2.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 1u)])), var_2.c, min(~vec3<u32>(30712u | global0.x, 47790u, abs(global0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(global0.x, 1u, 1u, 4294967295u)), ~var_2.d.x, ~var_2.d.x), ~(~vec3<u32>(var_2.d.x, 1u, global0.x)), var_2.d)));
    let var_5 = _wgslsmith_f_op_f32(-var_4.b.x);
    global3 = u_input.a.x;
    var var_6 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.d.x, 1u)] + 238f)), _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<bool>(var_0.x, false), vec4<f32>(-654f, global1[_wgslsmith_index_u32(18017u, 1u)], var_2.b.x, -1640f), false, vec3<u32>(var_2.d.x, var_2.d.x, var_2.d.x)), Struct_3(vec4<f32>(-891f, var_2.b.x, var_2.b.x, 1234f), Struct_2(Struct_1(vec2<bool>(true, var_2.c), var_2.b, false, vec3<u32>(4243u, 32377u, global0.x)), vec4<f32>(global1[_wgslsmith_index_u32(var_2.d.x, 1u)], 220f, 1236f, 184f), 9152i, var_4.a.x, var_4.b), vec4<u32>(60775u, 4294967295u, 47328u, 53341u), 0u, Struct_2(var_2, var_4.b, -10306i, var_4.c, vec4<f32>(-2063f, 988f, var_4.b.x, -254f))), var_4.d.x, global4[_wgslsmith_index_u32(var_4.d.x, 20u)])).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_4.b)))), global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(34291u, global0.x), 1u)] * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), var_4.d.yz, vec3<f32>(var_5, _wgslsmith_div_f32(-887f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-333f)), _wgslsmith_f_op_f32(var_5 - 443f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x * -1909f)), global1[_wgslsmith_index_u32(abs(abs(var_4.d.x)), 1u)], any(vec3<bool>(false, false, var_6.x))))));
}

