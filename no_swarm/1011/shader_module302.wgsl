struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
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

var<private> global0: u32;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(42467i ^ arg_0.d.x, vec3<bool>(select(arg_1.b.b.x, any(select(vec3<bool>(false, false, arg_0.c.x), vec3<bool>(true, true, false), false)), arg_0.c.x), false, !arg_1.b.b.x), u_input.d, ~_wgslsmith_sub_i32(reverseBits(arg_2.x), _wgslsmith_div_i32(arg_2.x, u_input.a.x)), _wgslsmith_div_f32(-245f, -969f));
    global1 = max(vec2<u32>(abs(~arg_0.a.x), ~(~arg_0.a.x)), vec2<u32>(global1.x, _wgslsmith_mod_u32(global1.x, ~select(u_input.c, 0u, arg_0.b.b.x))));
    var var_1 = 23115u > arg_0.a.x;
    var_1 = var_0.b.x;
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.a.wwz, -min(_wgslsmith_sub_vec3_i32(~arg_0.d.ywz, arg_2), _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.a.yzx), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -8023i), arg_0.d.zxw))));
    return !arg_1.b.b;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(62114u, 0u)), select(vec2<u32>(u_input.b.x, 9238u), vec2<u32>(1u, 1u), true), all(!vec2<bool>(false, arg_0.x))) | vec2<u32>(_wgslsmith_div_u32(reverseBits(4517u), 23265u), ~(global1.x ^ global1.x)), Struct_1(~_wgslsmith_mult_i32(-1i, max(-21159i, u_input.d)), !func_3(Struct_2(vec2<u32>(global1.x, u_input.c), Struct_1(-7612i, arg_0, -1i, -40061i, 1475f), arg_0.yx, u_input.a), Struct_3(vec3<f32>(329f, -355f, -123f), Struct_1(27863i, arg_0, u_input.a.x, 20195i, -1677f), vec3<f32>(556f, 1058f, 963f)), vec3<i32>(-24417i, 38681i, -18957i)), _wgslsmith_clamp_i32(-9118i >> (global1.x % 32u), u_input.d, -56983i) & select(1i, select(u_input.d, u_input.d, true), all(arg_0)), u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(230f, _wgslsmith_f_op_f32(-302f - -1942f)))))), arg_0.zy, -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 5635i, u_input.a.x), arg_0.x), vec4<i32>(u_input.a.x, u_input.d, -2147483647i, -2147483647i) & vec4<i32>(u_input.a.x, 14786i, 1i, 19152i)), u_input.a));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-911f, 175f, -1384f))), var_0.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-925f * -488f), _wgslsmith_f_op_f32(max(-1151f, -2182f)), 913f), vec3<f32>(var_0.b.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.e))), 244f))));
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.a))), var_1.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.e, -195f, var_0.b.e), vec3<f32>(var_0.b.e, -1286f, 1000f))))))), false);
    global1 = select(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 0u), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(8869u, 36041u, 0u, var_0.a.x), vec4<u32>(1u, var_0.a.x, var_0.a.x, var_0.a.x)))), firstTrailingBit(u_input.b.yx), var_1.b.b.zy);
    global1 = vec2<u32>(global1.x, u_input.c);
    return var_1.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    var var_0 = 1078f;
    let var_1 = -1000f;
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 458f))), _wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(min(arg_1.b.e, _wgslsmith_f_op_f32(-arg_1.b.e)))), -540f), func_2(arg_1.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.wxx), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_2.yww * vec3<f32>(var_1, arg_2.x, -338f)), vec3<f32>(-243f, arg_1.b.e, arg_2.x), all(arg_1.b.b))))));
    var var_3 = arg_2.x;
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_1, 128f) - var_2.c), var_2.c, arg_1.c.x || false))))), func_2(vec3<bool>(!(true && var_2.b.b.x), true, var_2.b.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.e), var_1, _wgslsmith_f_op_f32(815f + -708f)) - vec3<f32>(_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(var_1 + -1668f)), _wgslsmith_f_op_f32(trunc(1303f)), _wgslsmith_f_op_f32(f32(-1f) * -483f))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-461f))))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * var_1)));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~61106u;
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.c, 4294967295u, 1u)) | vec4<u32>(~var_0, 1u, 4294967295u, var_0), select(vec4<u32>(~(var_0 | var_0), ~(43181u << (var_0 % 32u)), 35535u, global1.x >> (reverseBits(1u) % 32u)), ~vec4<u32>(abs(global1.x), global1.x, _wgslsmith_clamp_u32(22554u, 28938u, global1.x), 6940u >> (1u % 32u)), select(vec4<bool>(true, arg_3.b.b.x, true, !arg_3.b.b.x), vec4<bool>(any(arg_3.b.b.xx), false, func_3(Struct_2(u_input.b.xz, Struct_1(arg_2.x, vec3<bool>(arg_3.b.b.x, arg_3.b.b.x, true), arg_1, u_input.a.x, 442f), arg_3.b.b.xx, u_input.a), arg_3, vec3<i32>(arg_1, u_input.a.x, 4291i)).x, 278f != arg_3.b.e), select(!vec4<bool>(arg_3.b.b.x, true, arg_3.b.b.x, true), !vec4<bool>(arg_3.b.b.x, arg_3.b.b.x, false, true), true))), reverseBits(~(~firstLeadingBit(vec4<u32>(0u, var_0, 1u, 38273u)))));
    let var_2 = select(true, true, arg_3.b.b.x);
    var var_3 = arg_3.b.b;
    var var_4 = 55731u;
    return Struct_1(max(firstLeadingBit(~(-29086i)) & arg_3.b.d, -58966i), arg_3.b.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(17676i, -16648i, arg_3.b.c), max(vec3<i32>(arg_1, arg_2.x, -1i), vec3<i32>(-26325i, arg_3.b.d, arg_1))), abs(vec3<i32>(23577i, 39882i, -37846i))), u_input.d), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-34342i >> ((var_0 << (4294967295u % 32u)) % 32u), ~_wgslsmith_mod_i32(-4212i, 13734i))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.b.e, _wgslsmith_f_op_f32(ceil(arg_3.a.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<i32> {
    global1 = u_input.b.yz;
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(vec4<u32>(~global1.x, ~_wgslsmith_div_u32(global1.x, 0u), global1.x, u_input.c), Struct_2(u_input.b.yx, func_2(vec3<bool>(true, true, true)), vec2<bool>(true, true), abs(-u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, -416f, 668f, arg_1.x)) * vec4<f32>(-895f, arg_1.x, arg_1.x, 1240f)), vec4<f32>(-193f, arg_0.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), -119f)))), u_input.a.x, abs(_wgslsmith_clamp_vec3_i32(u_input.a.xwx, u_input.a.xzw, _wgslsmith_sub_vec3_i32(u_input.a.xzx, u_input.a.zzz) & ~u_input.a.www)), Struct_3(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1169f, arg_0.x))), _wgslsmith_f_op_f32(round(arg_0.x))), func_2(func_2(vec3<bool>(true, true, false)).b), arg_0.wzy));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.xww))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, arg_0.x, var_0.e) - _wgslsmith_f_op_vec3_f32(exp2(arg_0.xyx)))), var_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), var_0.e, func_2(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)).e)), !any(vec3<bool>(var_0.b.x, false, !var_0.b.x)));
    var var_2 = Struct_2(vec2<u32>(global1.x, u_input.b.x), func_5(arg_0.x, abs(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(-1i, var_0.a))), u_input.a.ywz, var_1.a), var_0.b.yz, abs(vec4<i32>(var_0.d, _wgslsmith_div_i32(firstTrailingBit(-2147483647i), i32(-1i) * -32310i), var_1.a.b.d, 0i)));
    global1 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(~(~6965u), _wgslsmith_mult_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 46784u, var_2.a.x, 3009u), vec4<u32>(global1.x, global1.x, var_2.a.x, global1.x))))), reverseBits(~var_2.a));
    return var_2.d.yzy;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_4 {
    var var_0 = arg_2;
    return Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1958f * -1000f), _wgslsmith_div_f32(-471f, -207f), false)), func_5(func_2(vec3<bool>(false, arg_2, arg_2)).e, reverseBits(u_input.d), abs(vec3<i32>(1i, arg_1.x, u_input.a.x)), Struct_3(vec3<f32>(1000f, -721f, -1555f), Struct_1(u_input.a.x, vec3<bool>(true, arg_2, arg_2), arg_0.x, -18086i, 401f), vec3<f32>(-1326f, 769f, -368f))).e, -1000f), func_2(func_3(Struct_2(vec2<u32>(u_input.c, u_input.b.x), Struct_1(u_input.a.x, vec3<bool>(true, true, true), 45452i, 2147483647i, -1524f), vec2<bool>(arg_2, arg_2), vec4<i32>(1i, u_input.d, arg_1.x, 36949i)), Struct_3(vec3<f32>(1000f, -488f, 1000f), Struct_1(arg_0.x, vec3<bool>(false, true, arg_2), arg_1.x, 29989i, -1117f), vec3<f32>(176f, -827f, 1480f)), vec3<i32>(0i, u_input.d, u_input.d))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-523f, -1188f, -1000f) + vec3<f32>(-158f, -2439f, -582f))))))), false);
}

fn func_7(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    global0 = 77157u;
    global0 = 36087u;
    global0 = u_input.c;
    global1 = arg_1;
    let var_0 = Struct_4(arg_3.a, false);
    return arg_3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_sub_i32(u_input.a.x, abs(_wgslsmith_mod_i32(2237i, 36176i))), vec3<bool>(!(_wgslsmith_div_i32(-1i, 2147483647i) < _wgslsmith_mult_i32(0i, u_input.d)), ((0u | u_input.c) <= (u_input.c & u_input.c)) || !(-11075i <= u_input.d), var_0), countOneBits(reverseBits(_wgslsmith_sub_i32(u_input.a.x >> (u_input.b.x % 32u), _wgslsmith_mod_i32(u_input.d, u_input.a.x)))), u_input.a.x, _wgslsmith_f_op_f32(step(-292f, -513f)));
    var_1 = func_7(var_1.e, vec2<u32>(u_input.b.x << (abs(~1u) % 32u), u_input.c), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e)) * var_1.e)), var_1.e), func_6(_wgslsmith_sub_vec3_i32(-abs(u_input.a.xzw), ~func_1(vec4<f32>(var_1.e, var_1.e, -503f, -1222f), vec4<f32>(-1978f, var_1.e, var_1.e, 525f))), ((vec4<i32>(u_input.d, -2147483647i, var_1.c, -1i) ^ u_input.a) & vec4<i32>(1i, u_input.d, -1i, u_input.a.x)) >> ((~vec4<u32>(global1.x, 64420u, u_input.b.x, global1.x) ^ vec4<u32>(u_input.b.x, 1u, global1.x, 17264u)) % vec4<u32>(32u)), !(true | any(var_1.b))));
    var var_2 = 0i;
    let var_3 = vec3<bool>(true, var_1.b.x, true);
    global1 = vec2<u32>(u_input.c, ~global1.x);
    global1 = u_input.b.xy;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-990f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - _wgslsmith_div_f32(var_1.e, var_1.e)))) + 647f);
    var var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(func_1(vec4<f32>(var_1.e, var_1.e, 345f, 1691f), vec4<f32>(var_1.e, -1105f, var_1.e, 708f)).yx, ~vec2<i32>(0i, 0i)), abs(vec2<i32>(5397i, -21364i) & reverseBits(vec2<i32>(-1i, u_input.d)))));
}

