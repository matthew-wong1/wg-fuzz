struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<i32, 16>;

var<private> global2: vec3<bool>;

var<private> global3: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = abs(_wgslsmith_mult_u32(u_input.b, u_input.c));
    global2 = vec3<bool>(any(global2.xz), !(!(!(global0[_wgslsmith_index_u32(6396u, 14u)] >= global0[_wgslsmith_index_u32(var_0, 14u)]))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 14u)] * -232f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 14u)])), global0[_wgslsmith_index_u32(select(u_input.b, ~47511u, false), 14u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1666f, -449f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)]), vec2<f32>(-1282f, -1219f), global2.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(56769u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)]))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], 731f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0, 14u)], 437f)))), all(global2.xx))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-896f, -1591f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(26509u, 14u)], -581f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], -1051f, -1335f, var_1.x))))) + vec4<f32>(_wgslsmith_f_op_f32(step(1669f, var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(98539u, 14u)] * global0[_wgslsmith_index_u32(u_input.c, 14u)]), var_1.x)), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i << (u_input.b % 32u), u_input.a, u_input.a), _wgslsmith_add_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.c, 16u)], 8450i), 2147483647i << (var_0 % 32u))), !(!select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, true, global2.x), global2.x)), ~(~select(vec2<u32>(0u, var_0), vec2<u32>(u_input.b, var_0), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-var_1.x))))) * global0[_wgslsmith_index_u32(~firstTrailingBit(abs(1u)), 14u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_f32(f32(-1f) * -196f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(565f, 823f, -1553f, var_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(var_1.x - global0[_wgslsmith_index_u32(var_0, 14u)]), 1218f, -1037f, _wgslsmith_f_op_f32(select(1302f, global0[_wgslsmith_index_u32(var_0, 14u)], global2.x)))), ~(~vec2<i32>(0i, 49849i)), !vec3<bool>(!global2.x, any(global2.xz), !global2.x), select(vec2<u32>(u_input.b, 16168u), vec2<u32>(u_input.b, 4294967295u), global2.x) << (countOneBits(max(vec2<u32>(4975u, u_input.b), vec2<u32>(4294967295u, var_0))) % vec2<u32>(32u))), max(_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 14770u, 1u), vec3<u32>(var_0, u_input.c, var_0))), ~(~vec3<u32>(0u, u_input.c, 6836u))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29617u, u_input.c), vec2<u32>(1u, var_0)), ~u_input.c, 1u)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(-623f + -943f)), vec2<f32>(257f, _wgslsmith_f_op_f32(select(-1082f, var_1.x, global2.x)))), vec4<f32>(var_1.x, -923f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-215f - 1319f) - -710f)), vec2<i32>(abs(2147483647i), -u_input.a), vec3<bool>(global2.x, global2.x, global2.x), vec2<u32>(1u, 4294967295u)));
    var var_3 = Struct_5(global2.x, false, any(select(!vec4<bool>(false, var_2.a.d.x, false, var_2.e.d.x), select(vec4<bool>(true, false, false, global2.x), select(vec4<bool>(global2.x, var_2.a.d.x, var_2.e.d.x, var_2.c.d.x), vec4<bool>(var_2.e.d.x, var_2.a.d.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, true)), var_2.b <= var_2.e.a.x), all(select(var_2.a.d.xz, vec2<bool>(var_2.a.d.x, true), vec2<bool>(false, var_2.a.d.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.b * var_2.a.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.e.b * var_2.e.b) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(831f, -605f, var_2.e.b.x, global0[_wgslsmith_index_u32(u_input.b, 14u)]), var_2.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.e.b))))));
    return _wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(firstLeadingBit(~61169u), 16u)], global1[_wgslsmith_index_u32(32704u, 16u)]);
}

fn func_2() -> vec2<i32> {
    global3 = select(_wgslsmith_sub_i32(u_input.a, ~(-1i)) >> (u_input.b % 32u), func_3(), !all(!vec4<bool>(global2.x, true, global2.x, global2.x)));
    global0 = array<f32, 14>();
    global2 = vec3<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(263f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 14u)])) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 14u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 14u)]))), global2.x);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 14u)]) * global0[_wgslsmith_index_u32(~63882u, 14u)]), 1f))));
    global3 = max(~17979i, global1[_wgslsmith_index_u32(~min(4294967295u, 75090u), 16u)]);
    return ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-40986i, -2147483647i) & vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, 5218i))) & vec2<i32>(~1i, global1[_wgslsmith_index_u32(select(u_input.c, 92531u, _wgslsmith_add_i32(u_input.a, 25035i) == global1[_wgslsmith_index_u32(9991u, 16u)]), 16u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = vec4<u32>(~4294967295u, u_input.b, arg_3.c.d.x << (~(~1u) % 32u), arg_0.e.x);
    global3 = -1i;
    var_0 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(~vec4<u32>(4673u, var_0.x, arg_3.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(22071u, 1u, 0u, var_0.x), ~vec4<u32>(98269u, 33460u, 4294967295u, arg_0.e.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, arg_3.c.e.e.x, u_input.c, var_0.x), vec4<u32>(~u_input.c, 0u, ~arg_3.c.a.e.x, 4294967295u), vec4<u32>(reverseBits(var_0.x), arg_0.e.x, min(26259u, 57503u), _wgslsmith_mod_u32(arg_1, u_input.b)))), _wgslsmith_mult_vec4_u32(abs(max(~vec4<u32>(4294967295u, arg_1, arg_3.c.e.e.x, 0u), vec4<u32>(arg_3.c.d.x, arg_0.e.x, 1u, 53378u))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.e.x, 0u, arg_3.c.e.e.x, 1u) ^ ~vec4<u32>(u_input.b, 1u, arg_0.e.x, arg_0.e.x), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a, 10260u, 1u, arg_3.a), vec4<u32>(4294967295u, arg_0.e.x, 44723u, u_input.c))))));
    var var_1 = arg_3.c.e;
    var_0 = _wgslsmith_sub_vec4_u32(~(~max(vec4<u32>(50248u, 1u, var_0.x, 28203u), vec4<u32>(89633u, arg_3.c.e.e.x, u_input.c, var_1.e.x))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0.x, 3777u, u_input.b)), vec4<u32>(arg_3.a, arg_3.c.e.e.x, 1u, var_1.e.x), abs(vec4<u32>(var_1.e.x, 60055u, arg_0.e.x, 4294967295u))))) & vec4<u32>(~arg_1, var_1.e.x, 1u, max(abs(u_input.c), _wgslsmith_div_u32(reverseBits(1u), ~arg_0.e.x)));
    return vec3<bool>(!(!arg_3.c.a.d.x), var_1.d.x, -1683f >= global0[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global2 = vec3<bool>(abs(~u_input.b) <= ~83858u, 1919f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f)) - _wgslsmith_f_op_f32(-533f * global0[_wgslsmith_index_u32(7130u, 14u)])), !(!any(vec3<bool>(true, true, true))));
    global2 = func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(540f))), 183f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 14u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(30692u, 14u)] + -1012f) - _wgslsmith_f_op_f32(f32(-1f) * -445f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19591u, 14u)]), -1249f), func_2(), vec3<bool>(global2.x | arg_0, true, false), vec2<u32>(u_input.c, 47762u ^ ~u_input.b)), min(_wgslsmith_mult_u32(firstTrailingBit(~u_input.b), 36157u), select(firstLeadingBit(0u), _wgslsmith_mod_u32(arg_1.x, ~0u), arg_0)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -337f), global0[_wgslsmith_index_u32(arg_1.x, 14u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1.x, 14u)])), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(77461u, 14u)]))))))), Struct_3(arg_1.x | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_1.yxw, vec3<u32>(u_input.c, u_input.b, arg_1.x)), ~u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], -517f))))), Struct_2(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(5400u, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 1021f, global0[_wgslsmith_index_u32(arg_1.x, 14u)], 562f), ~vec2<i32>(0i, 0i), select(vec3<bool>(global2.x, true, true), vec3<bool>(false, true, true), vec3<bool>(false, arg_0, global2.x)), abs(arg_1.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-741f, global0[_wgslsmith_index_u32(arg_1.x, 14u)]) * vec2<f32>(480f, global0[_wgslsmith_index_u32(7737u, 14u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], -1072f, -1249f, -1264f) + vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], -152f, global0[_wgslsmith_index_u32(0u, 14u)], 507f)), _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], -1i), vec2<i32>(u_input.a, u_input.a)), vec3<bool>(arg_0, true, arg_0), arg_1.yx), ~_wgslsmith_mod_vec3_u32(arg_1.xyw, arg_1.wzx), Struct_1(vec2<f32>(869f, global0[_wgslsmith_index_u32(arg_1.x, 14u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], -851f, -880f, global0[_wgslsmith_index_u32(1u, 14u)]), -vec2<i32>(global1[_wgslsmith_index_u32(793u, 16u)], global1[_wgslsmith_index_u32(6373u, 16u)]), !vec3<bool>(false, arg_0, false), arg_1.zz << (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u)))), select(!(!vec2<bool>(arg_0, arg_0)), global2.zz, (global1[_wgslsmith_index_u32(arg_1.x, 16u)] ^ -9302i) <= 5749i)));
    let var_0 = global2.xy;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~arg_1.x, 14u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_1.x, 14u)], 240f)), 1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(72150u, 14u)] * global0[_wgslsmith_index_u32(arg_1.x, 14u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], -226f, 1379f, -744f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, 1342f, global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, -730f, 1912f, 250f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], 102f, 832f, global0[_wgslsmith_index_u32(4294967295u, 14u)])), vec4<bool>(global2.x, true, arg_0, global2.x))))), ~firstLeadingBit(vec4<i32>(i32(-1i) * -1i, -26300i, 11310i & u_input.a, max(2147483647i, 16271i))));
    global0 = array<f32, 14>();
    return Struct_1(vec2<f32>(-122f, 385f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), var_1.b.wy, select(!vec3<bool>(true, true, !var_0.x), vec3<bool>(!(!arg_0), global2.x, any(!vec3<bool>(arg_0, var_0.x, true))), !(!vec3<bool>(false, arg_0, var_0.x))), reverseBits(vec2<u32>(~arg_1.x, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(0u, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 310f)))), vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 1565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 14u)])))), Struct_2(func_1(4294967295u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.b, 0u)), ~vec4<u32>(u_input.c, 81605u, u_input.b, 1579u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstTrailingBit(0u), abs(~39775u)), 14u)], func_1(all(select(global2.yx, global2.xx, true)), min(vec4<u32>(4294967295u, 22470u, 8347u, u_input.b), vec4<u32>(u_input.c, u_input.c, 60897u, u_input.b)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.b, 1u), vec4<u32>(u_input.c, 1u, 26899u, u_input.b))), _wgslsmith_add_vec3_u32(select(select(vec3<u32>(3113u, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, 1u), true), vec3<u32>(1u, 0u, 4294967295u) | vec3<u32>(u_input.b, u_input.b, 4294967295u), !vec3<bool>(global2.x, global2.x, true)), ~(~vec3<u32>(4294967295u, 4294967295u, 0u))), func_1(select(-2147483647i <= global1[_wgslsmith_index_u32(u_input.b, 16u)], !global2.x, true), vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(55483u, u_input.b, u_input.b, u_input.b), vec4<u32>(61387u, 1u, u_input.c, u_input.b)), max(1741u, 4294967295u), u_input.c))), select(global2.zy, vec2<bool>(true, global2.x), select(vec2<bool>(false, global2.x), !(!vec2<bool>(global2.x, false)), true)));
    global0 = array<f32, 14>();
    global3 = func_3();
    global3 = 5991i;
    var var_1 = var_0;
    let var_2 = Struct_5(~u_input.c > ((reverseBits(u_input.c) >> (_wgslsmith_clamp_u32(1916u, var_1.c.c.e.x, var_0.c.e.e.x) % 32u)) ^ 4180u), global2.x, !(!var_0.c.e.d.x) | var_0.d.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1028f))) + var_1.b.x), 833f, 1049f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1634f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1137f + global0[_wgslsmith_index_u32(0u, 14u)])))))));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(_wgslsmith_sub_vec3_u32(var_1.c.d, var_0.c.d))), ~vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.a), var_0.a << (0u % 32u), var_0.a)), countOneBits(var_0.c.c.e.x), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.x))), firstTrailingBit(func_2()), reverseBits(vec4<i32>(-max(var_0.c.c.c.x, 32278i), countOneBits(_wgslsmith_sub_i32(13186i, 14419i)), ~(-1741i), 2147483647i)), _wgslsmith_f_op_f32(select(1968f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))), 430f)), false)));
}

