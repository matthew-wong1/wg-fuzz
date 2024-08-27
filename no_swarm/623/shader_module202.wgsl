struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: f32 = -1238f;

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(-1000f, -358f, 425f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = Struct_1(~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(arg_1.b.x, arg_2, arg_0.b.x))))));
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-879f, arg_1.a, 896f), arg_1.b)) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.b))))));
    var var_1 = vec4<f32>(arg_2, -656f, _wgslsmith_f_op_f32(1177f + -2104f), -520f);
    global0 = array<i32, 27>();
    let var_2 = !select((_wgslsmith_f_op_f32(-683f + arg_2) < -1050f) && (_wgslsmith_f_op_f32(abs(1000f)) != arg_2), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), u_input.a > countOneBits(~47546u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(trunc(-114f));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(1359f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(224f, global3.x, 272f))), 872f), Struct_2(2497f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 658f, global3.x)))), -616f), -623f, (select(54816u, 9498u, true) << ((u_input.b << (u_input.d.x % 32u)) % 32u)) & ~(~4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 303f))) - vec3<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_div_f32(global3.x, global3.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(104f, global3.x))))), global3.x);
    global1 = global3.x;
    var var_1 = vec3<bool>(true, !all(vec4<bool>(true, true, arg_0.x != -21737i, true)), true);
    var_1 = vec3<bool>(!var_1.x, var_1.x, false);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -556f))), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(348f, global3.x)) - global3.x) - _wgslsmith_f_op_f32(-1000f - var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(991f + var_0.a) - global3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f), var_0.a))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global1 = arg_0.a;
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.c) - _wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -2529f)))), _wgslsmith_f_op_f32(-498f - arg_0.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(min(vec3<i32>(u_input.c, -1i, -2147483647i), vec3<i32>(u_input.c, -28754i, 32914i))).b.x - _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(trunc(arg_0.c)))) * -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)))), _wgslsmith_f_op_f32(546f + _wgslsmith_f_op_f32(func_3(arg_0, func_2(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.c, -42475i)), _wgslsmith_f_op_f32(-223f * 1021f), u_input.b))));
    let var_2 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !vec2<bool>(true, any(vec4<bool>(true, true, false, true))), vec2<bool>(any(vec2<bool>(false, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))), select(!vec2<bool>(false, any(vec4<bool>(true, true, false, false))), vec2<bool>(any(vec2<bool>(true, true)), reverseBits(u_input.c) == (i32(-1i) * -48356i)), true));
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 27u)]) ^ vec2<i32>(global0[_wgslsmith_index_u32(61602u, 27u)], -15760i), ~vec2<i32>(global0[_wgslsmith_index_u32(64213u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), vec2<i32>(global0[_wgslsmith_index_u32(reverseBits(1u), 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), ~max(~vec2<i32>(-15818i, global0[_wgslsmith_index_u32(0u, 27u)]), min(vec2<i32>(12849i, -26486i), vec2<i32>(-2147483647i, -20280i)))), min(select(_wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.c) >> (_wgslsmith_mod_u32(u_input.a, 93415u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-24509i, global0[_wgslsmith_index_u32(1416u, 27u)]), 57538i), var_2.x), firstLeadingBit(select(global0[_wgslsmith_index_u32(u_input.d.x << (u_input.a % 32u), 27u)], firstTrailingBit(14465i), select(true, true, var_2.x)))));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(min(-(~u_input.c), abs(-38695i) << (_wgslsmith_mod_u32(1u, 101540u) % 32u)), 1i, ~(-(u_input.c ^ global0[_wgslsmith_index_u32(1u, 27u)])), 32038i), ~vec4<i32>(u_input.c, func_4(func_2(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -19614i, u_input.c))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(21582i, global0[_wgslsmith_index_u32(0u, 27u)], -1i), vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 27u)], u_input.c))), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], -8474i, u_input.c, u_input.c), vec4<i32>(33952i, global0[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.c, -21151i))));
    let var_1 = Struct_1(firstLeadingBit(max(0u, countOneBits(_wgslsmith_mult_u32(23836u, 33817u)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(global3.x - -425f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, arg_0, global3.x) + vec3<f32>(786f, -1000f, global3.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1117f, -1000f, global3.x), vec3<f32>(arg_0, 981f, -2023f))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))))));
    global1 = global3.x;
    global1 = _wgslsmith_f_op_f32(-global3.x);
    var var_2 = func_2(var_0.www);
    return select(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), true), vec3<bool>(any(vec3<bool>(false, true, false)), true, false), !any(vec4<bool>(false, true, true, false))), select(!vec3<bool>(-2502i != u_input.c, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), any(vec3<bool>(true, true, true)))), select(vec3<bool>(false, false, any(vec4<bool>(true, false, false, false)) || true), vec3<bool>(true, true, true), true));
}

fn func_5(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), 108740u), u_input.b, ~_wgslsmith_clamp_u32(~u_input.a, max(u_input.b, 75499u), ~0u)));
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(310f, -305f), global3.x, -1000f)));
    let var_2 = global3.x;
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -47069i ^ global0[_wgslsmith_index_u32(4294967295u, 27u)], 6154i, 1i), ~abs(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(0u, 27u)], -1i, global0[_wgslsmith_index_u32(1u, 27u)]))) >> (u_input.d % vec4<u32>(32u)), ~vec4<i32>(u_input.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(8624u, 27u)], 2147483647i), vec3<i32>(u_input.c, 2147483647i, global0[_wgslsmith_index_u32(3475u, 27u)])), -2147483647i, global0[_wgslsmith_index_u32(~(~339u), 27u)]));
    return var_3.wy;
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-func_2(abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 0i, u_input.c))).a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(abs(-214f)), -1293f)), vec3<f32>(-631f, _wgslsmith_f_op_f32(111f * global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1359f, global3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-265f, -1554f))));
    var var_1 = u_input.d.wzy;
    var var_2 = func_1(-1151f).x || all(func_1(func_2(vec3<i32>(27910i, -1i, global0[_wgslsmith_index_u32(arg_0, 27u)])).b.x));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, 643f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-690f))))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(min(1000f, 623f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1831f, var_0.c, arg_2)))), var_0.b)));
    return 5090i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 855f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(533f * global3.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)) + _wgslsmith_f_op_f32(sign(599f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x)))));
    let var_0 = -vec2<i32>(_wgslsmith_add_i32(u_input.c, ~33372i), (i32(-1i) * -2147483647i) >> ((~u_input.b ^ u_input.a) % 32u));
    global2 = -func_6(33557u >> (_wgslsmith_clamp_u32(min(35088u, 45722u), ~32894u, abs(91959u)) % 32u), func_5(func_1(_wgslsmith_f_op_f32(-global3.x))), false);
    var var_1 = u_input.c | min(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_dot_vec3_i32(~(vec3<i32>(var_0.x, u_input.c, -2147483647i) >> (u_input.d.zzx % vec3<u32>(32u))), ~abs(vec3<i32>(var_0.x, 34832i, -1i))));
    var_1 = ~(1i >> (~(~u_input.a << (u_input.a % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.d.x, u_input.d.zz, _wgslsmith_f_op_vec2_f32(-func_2(select(vec3<i32>(-2147483647i, u_input.c, -34741i), ~vec3<i32>(0i, 31285i, global0[_wgslsmith_index_u32(82532u, 27u)]), false)).b.xz), _wgslsmith_mult_u32(~u_input.b, u_input.d.x));
}

