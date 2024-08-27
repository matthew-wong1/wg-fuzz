struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: Struct_2;

var<private> global2: f32 = 1243f;

var<private> global3: array<f32, 6> = array<f32, 6>(2378f, -900f, -1021f, 1000f, 2432f, 368f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(firstTrailingBit(~(global1.a | ~global1.a)), firstTrailingBit(u_input.a.x), global1.c);
    global2 = 125f;
    let var_1 = 1311f;
    var var_2 = vec4<bool>(true, all(!select(!vec4<bool>(global1.c.x, global1.c.x, false, var_0.c.x), select(vec4<bool>(true, global1.c.x, false, global1.c.x), vec4<bool>(true, var_0.c.x, global1.c.x, global1.c.x), false), false)), global1.c.x, !(!any(var_0.c)) | !(!global1.c.x & all(vec4<bool>(false, global1.c.x, false, true))));
    global1 = Struct_2(select(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, var_0.a.x, global1.a.x, 4294967295u), vec4<u32>(13293u, 70481u, var_0.a.x, var_0.a.x))), u_input.c, 1u, ~1u), vec4<u32>(1u, u_input.b, var_0.a.x, ~var_0.a.x << (min(4294967295u, u_input.c) % 32u)), global1.c.x), max((min(var_0.b, global1.b) >> (~global1.a.x % 32u)) << (abs(global1.a.x) % 32u), var_0.b), select(var_0.c, !var_2.wwz, true));
    return ~4294967295u;
}

fn func_4(arg_0: u32, arg_1: u32) -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(44774u, 4294967295u << (global1.a.x % 32u)) << (~(u_input.b | _wgslsmith_mult_u32(7455u, 0u)) % 32u)), 6u)];
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f * -594f) * global3[_wgslsmith_index_u32(14579u, 6u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(720f - 1000f))), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(true, false, global1.c.x, global1.c.x)), !vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), !vec4<bool>(false, global1.c.x, global1.c.x, true)), vec4<bool>(!global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(true, all(vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x)), false, global1.c.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, global3[_wgslsmith_index_u32(arg_1, 6u)], global3[_wgslsmith_index_u32(arg_0, 6u)], 1671f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 6u)], 620f, -1194f, global3[_wgslsmith_index_u32(u_input.b, 6u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_1, 6u)], -547f, 737f, 948f) + vec4<f32>(-794f, global3[_wgslsmith_index_u32(14828u, 6u)], -3127f, 1547f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(11451u, 6u)], -454f, global3[_wgslsmith_index_u32(10804u, 6u)], 533f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-796f, -250f, global3[_wgslsmith_index_u32(3566u, 6u)], global3[_wgslsmith_index_u32(16144u, 6u)]), vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 6u)], 1273f, 542f, global3[_wgslsmith_index_u32(u_input.b, 6u)])))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-451f, -303f, 1000f, -1314f), vec4<f32>(global3[_wgslsmith_index_u32(17139u, 6u)], -457f, 1818f, global3[_wgslsmith_index_u32(global1.a.x, 6u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(367f, global3[_wgslsmith_index_u32(22142u, 6u)], global3[_wgslsmith_index_u32(arg_1, 6u)], -901f) - vec4<f32>(-645f, 841f, global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(1078u, 6u)])))))), !global1.c.x));
    let var_2 = Struct_2(vec4<u32>(1u, 24836u >> (arg_0 % 32u), firstLeadingBit(u_input.c), countOneBits(u_input.b)), u_input.a.x, vec3<bool>(_wgslsmith_clamp_u32(43438u, _wgslsmith_dot_vec3_u32(global1.a.wxw, global1.a.xww), u_input.c << (arg_1 % 32u)) >= 12756u, false, !(!select(false, global1.c.x, global1.c.x))));
    let var_3 = 1i;
    return select(min(u_input.a, abs(vec3<i32>(-7828i, global1.b, _wgslsmith_sub_i32(var_3, 1i)))), select(select(vec3<i32>(global1.b, u_input.a.x, -648i), ~vec3<i32>(global1.b, global1.b, global1.b), vec3<bool>(global1.c.x, false, var_2.c.x)) & u_input.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.b, -2147483647i, global1.b), u_input.a << (vec3<u32>(arg_1, 37487u, arg_0) % vec3<u32>(32u))), u_input.a), global1.c.x), true);
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global1 = Struct_2(select(global1.a, global1.a, max(global1.a.x, 4294967295u) >= ~u_input.b) >> ((_wgslsmith_mult_vec4_u32(abs(global1.a), vec4<u32>(72006u, global1.a.x, u_input.c, u_input.b)) & ~global1.a) % vec4<u32>(32u)), abs(u_input.a.x), vec3<bool>(!any(select(global0[_wgslsmith_index_u32(u_input.b, 31u)], vec2<bool>(false, true), true)), true, true));
    let var_0 = func_4(~u_input.c, abs(_wgslsmith_add_u32(0u, func_3())));
    global1 = Struct_2(abs(vec4<u32>(41200u, reverseBits(abs(global1.a.x)), _wgslsmith_clamp_u32(global1.a.x << (4294967295u % 32u), 0u, ~global1.a.x), ~global1.a.x)), -(~_wgslsmith_sub_i32(-42150i, 0i)), global1.c);
    let var_1 = 995f;
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(102703u, 6u)]))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(19303u, 6u)] + -460f)))))));
    return _wgslsmith_mult_vec2_u32(global1.a.wy, vec2<u32>(7308u >> (1u % 32u), u_input.b << (abs(~u_input.b) % 32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(firstLeadingBit(firstTrailingBit(global1.a)), _wgslsmith_dot_vec3_i32(select(-_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(1i, 2147483647i, -45367i)), vec3<i32>(arg_1.d, 1i, arg_1.d), global1.c), vec3<i32>(1i, -1i, arg_1.d)), !vec3<bool>(global1.c.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) > ~(-1i), false));
    var var_1 = arg_1;
    global1 = Struct_2(vec4<u32>(~1u, u_input.b, 0u, 0u), ~func_4(_wgslsmith_mult_u32(var_0.a.x, 4294967295u) & _wgslsmith_add_u32(0u, var_0.a.x), 1u).x, vec3<bool>(!(!global1.c.x), !(all(var_0.c.xz) || any(vec3<bool>(arg_1.b, true, true))), !(global1.a.x != ~5760u)));
    var var_2 = -2147483647i << (_wgslsmith_clamp_u32(func_3(), var_0.a.x, func_3()) % 32u);
    var var_3 = Struct_1(var_1.a, false, select(var_0.c, vec3<bool>(all(!arg_1.c), arg_1.c.x, !var_1.b), vec3<bool>(all(var_0.c.xy), 14739u > var_0.a.x, any(!var_0.c.yx))), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1167f)))));
    return arg_1;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_mod_vec2_u32(~vec2<u32>(~23179u, ~4294967295u), func_2(global1.c.x) >> (global1.a.yy % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, _wgslsmith_f_op_f32(max(268f, 635f)), global3[_wgslsmith_index_u32(14741u, 6u)]) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-905f, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])))))), any(select(!vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, false, global1.c.x, global1.c.x), any(global1.c.yy))), select(vec3<bool>(global1.c.x, any(arg_0.yx), true), global1.c, vec3<bool>(false & global1.c.x, true, true)), global1.b, vec2<f32>(243f, _wgslsmith_f_op_f32(trunc(-763f)))));
    let var_1 = -_wgslsmith_mod_i32(var_0.d << (~1u % 32u), ~_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, u_input.a.x), var_0.d));
    return Struct_2(~global1.a >> (vec4<u32>(countOneBits(u_input.c), u_input.c, ~reverseBits(92988u), 1u) % vec4<u32>(32u)), ~global1.b, var_0.c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    global3 = array<f32, 6>();
    let var_0 = ~4294967295u;
    var var_1 = func_5(_wgslsmith_mod_vec2_u32(countOneBits(abs(~vec2<u32>(4294967295u, 0u))), reverseBits(arg_0.a.zz)), Struct_1(func_5(~vec2<u32>(global1.a.x, 4294967295u) >> (_wgslsmith_div_vec2_u32(arg_0.a.zw, vec2<u32>(arg_0.a.x, 4294967295u)) % vec2<u32>(32u)), func_5(~vec2<u32>(var_0, 4294967295u), arg_1)).a, !global1.c.x, vec3<bool>(any(select(vec4<bool>(global1.c.x, false, true, false), vec4<bool>(false, arg_0.c.x, arg_0.c.x, global1.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))), -112f == _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(30719u, 6u)])), 124f > _wgslsmith_f_op_f32(select(-238f, arg_1.a.x, true))), 2147483647i, arg_1.e));
    let var_2 = func_5(vec2<u32>(4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(global1.a.wz, vec2<u32>(var_0, 4294967295u) ^ vec2<u32>(12597u, var_0)))), func_5(arg_0.a.zz, func_5(~firstLeadingBit(vec2<u32>(arg_0.a.x, var_0)), Struct_1(vec3<f32>(arg_1.a.x, 2582f, -278f), !arg_0.c.x, vec3<bool>(var_1.b, false, var_1.c.x), _wgslsmith_add_i32(-38420i, arg_1.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, -305f)))))).a;
    var var_3 = 1i;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(1336f, 1548f) - _wgslsmith_f_op_vec2_f32(abs(var_2.yx))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-u_input.a.x, var_1.d | arg_0.b), max(-1i, arg_0.b) >> (_wgslsmith_clamp_u32(arg_0.a.x, 33198u, 0u) % 32u)), func_4(42491u, 12752u).zy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(vec3<bool>(true, true, true)), Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(max(0u, 4294967295u), 6u)], global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(40012u, u_input.b, u_input.c, 4294967295u), global1.a)), 6u)], global3[_wgslsmith_index_u32(~u_input.c, 6u)]), select(global1.b, -2147483647i, global1.c.x) > ~(~u_input.a.x), func_1(!select(vec3<bool>(global1.c.x, global1.c.x, true), vec3<bool>(true, global1.c.x, global1.c.x), global1.c)).c, i32(-1i) * -(1i >> (u_input.b % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3[_wgslsmith_index_u32(1u, 6u)]))))));
}

